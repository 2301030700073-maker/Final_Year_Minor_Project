package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.snapshots.SnapshotStateList$$ExternalSyntheticLambda0;
import coil3.Extras;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.UIntArray;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PersistentVectorBuilder extends AbstractMutableList implements Collection, KMappedMarker {
    public EndOfChain ownership = new EndOfChain();
    public Object[] root;
    public int rootShift;
    public int size;
    public Object[] tail;
    public AbstractPersistentList vector;
    public Object[] vectorRoot;
    public Object[] vectorTail;

    public PersistentVectorBuilder(AbstractPersistentList abstractPersistentList, Object[] objArr, Object[] objArr2, int i) {
        this.vector = abstractPersistentList;
        this.vectorRoot = objArr;
        this.vectorTail = objArr2;
        this.rootShift = i;
        this.root = objArr;
        this.tail = objArr2;
        this.size = abstractPersistentList.getSize();
    }

    public static void copyToBuffer(Object[] objArr, int i, Iterator it) {
        while (i < 32 && it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        MathKt.checkPositionIndex$runtime(i, getSize());
        if (i == getSize()) {
            add(obj);
            return;
        }
        ((AbstractList) this).modCount++;
        int rootSize$1 = rootSize$1();
        if (i >= rootSize$1) {
            insertIntoTail(this.root, i - rootSize$1, obj);
            return;
        }
        Extras.Key key = new Extras.Key(null);
        Object[] objArr = this.root;
        objArr.getClass();
        insertIntoTail(insertIntoRoot$1(objArr, this.rootShift, i, obj, key), 0, key.f8default);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        Collection collection2;
        Object[] mutableBuffer;
        MathKt.checkPositionIndex$runtime(i, this.size);
        if (i == this.size) {
            return addAll(collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i2 = (i >> 5) << 5;
        int size = ((collection.size() + (this.size - i2)) - 1) / 32;
        if (size == 0) {
            int i3 = i & 31;
            int size2 = ((collection.size() + i) - 1) & 31;
            Object[] objArr = this.tail;
            Object[] makeMutable = makeMutable(objArr);
            ArraysKt.copyInto(objArr, makeMutable, size2 + 1, i3, tailSize());
            copyToBuffer(makeMutable, i3, collection.iterator());
            this.tail = makeMutable;
            this.size = collection.size() + this.size;
            return true;
        }
        Object[][] objArr2 = new Object[size][];
        int tailSize = tailSize();
        int size3 = collection.size() + this.size;
        if (size3 > 32) {
            size3 -= (size3 - 1) & (-32);
        }
        if (i >= rootSize$1()) {
            mutableBuffer = mutableBuffer();
            collection2 = collection;
            splitToBuffers(collection2, i, this.tail, tailSize, objArr2, size, mutableBuffer);
            objArr2 = objArr2;
        } else {
            collection2 = collection;
            Object[] objArr3 = this.tail;
            if (size3 > tailSize) {
                int i4 = size3 - tailSize;
                Object[] makeMutableShiftingRight = makeMutableShiftingRight(i4, objArr3);
                insertIntoRoot(collection2, i, i4, objArr2, size, makeMutableShiftingRight);
                objArr2 = objArr2;
                mutableBuffer = makeMutableShiftingRight;
            } else {
                mutableBuffer = mutableBuffer();
                int i5 = tailSize - size3;
                ArraysKt.copyInto(objArr3, mutableBuffer, 0, i5, tailSize);
                int i6 = 32 - i5;
                Object[] makeMutableShiftingRight2 = makeMutableShiftingRight(i6, this.tail);
                int i7 = size - 1;
                objArr2[i7] = makeMutableShiftingRight2;
                insertIntoRoot(collection2, i, i6, objArr2, i7, makeMutableShiftingRight2);
                collection2 = collection2;
            }
        }
        this.root = pushBuffersIncreasingHeightIfNeeded(this.root, i2, objArr2);
        this.tail = mutableBuffer;
        this.size = collection2.size() + this.size;
        return true;
    }

    public final AbstractPersistentList build() {
        AbstractPersistentList smallPersistentVector;
        Object[] objArr = this.root;
        if (objArr == this.vectorRoot && this.tail == this.vectorTail) {
            smallPersistentVector = this.vector;
        } else {
            this.ownership = new EndOfChain();
            this.vectorRoot = objArr;
            Object[] objArr2 = this.tail;
            this.vectorTail = objArr2;
            smallPersistentVector = objArr == null ? objArr2.length == 0 ? SmallPersistentVector.EMPTY : new SmallPersistentVector(Arrays.copyOf(objArr2, this.size)) : new PersistentVector(this.size, this.rootShift, objArr, objArr2);
        }
        this.vector = smallPersistentVector;
        return smallPersistentVector;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        Object[] objArr;
        MathKt.checkElementIndex$runtime(i, getSize());
        if (rootSize$1() <= i) {
            objArr = this.tail;
        } else {
            Object[] objArr2 = this.root;
            objArr2.getClass();
            for (int i2 = this.rootShift; i2 > 0; i2 -= 5) {
                Object[] objArr3 = objArr2[CloseableKt.indexSegment(i, i2)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i & 31];
    }

    public final int getModCount$runtime() {
        return ((AbstractList) this).modCount;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final int getSize() {
        return this.size;
    }

    public final void insertIntoRoot(Collection collection, int i, int i2, Object[][] objArr, int i3, Object[] objArr2) {
        if (this.root == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("root is null");
            return;
        }
        int i4 = i >> 5;
        AbstractListIterator leafBufferIterator = leafBufferIterator(rootSize$1() >> 5);
        int i5 = i3;
        Object[] objArr3 = objArr2;
        while (leafBufferIterator.index - 1 != i4) {
            Object[] objArr4 = (Object[]) leafBufferIterator.previous();
            ArraysKt.copyInto(objArr4, objArr3, 0, 32 - i2, 32);
            objArr3 = makeMutableShiftingRight(i2, objArr4);
            i5--;
            objArr[i5] = objArr3;
        }
        Object[] objArr5 = (Object[]) leafBufferIterator.previous();
        int rootSize$1 = i3 - (((rootSize$1() >> 5) - 1) - i4);
        if (rootSize$1 < i3) {
            objArr2 = objArr[rootSize$1];
            objArr2.getClass();
        }
        splitToBuffers(collection, i, objArr5, 32, objArr, rootSize$1, objArr2);
    }

    public final Object[] insertIntoRoot$1(Object[] objArr, int i, int i2, Object obj, Extras.Key key) {
        Object obj2;
        int indexSegment = CloseableKt.indexSegment(i2, i);
        if (i == 0) {
            key.f8default = objArr[31];
            Object[] makeMutable = makeMutable(objArr);
            ArraysKt.copyInto(objArr, makeMutable, indexSegment + 1, indexSegment, 31);
            makeMutable[indexSegment] = obj;
            return makeMutable;
        }
        Object[] makeMutable2 = makeMutable(objArr);
        int i3 = i - 5;
        Object obj3 = makeMutable2[indexSegment];
        obj3.getClass();
        makeMutable2[indexSegment] = insertIntoRoot$1((Object[]) obj3, i3, i2, obj, key);
        while (true) {
            indexSegment++;
            if (indexSegment >= 32 || (obj2 = makeMutable2[indexSegment]) == null) {
                break;
            }
            makeMutable2[indexSegment] = insertIntoRoot$1((Object[]) obj2, i3, 0, key.f8default, key);
        }
        return makeMutable2;
    }

    public final void insertIntoTail(Object[] objArr, int i, Object obj) {
        int tailSize = tailSize();
        Object[] makeMutable = makeMutable(this.tail);
        Object[] objArr2 = this.tail;
        if (tailSize >= 32) {
            Object obj2 = objArr2[31];
            ArraysKt.copyInto(objArr2, makeMutable, i + 1, i, 31);
            makeMutable[i] = obj;
            pushFilledTail(objArr, makeMutable, mutableBufferWith(obj2));
            return;
        }
        ArraysKt.copyInto(objArr2, makeMutable, i + 1, i, tailSize);
        makeMutable[i] = obj;
        this.root = objArr;
        this.tail = makeMutable;
        this.size++;
    }

    public final boolean isMutable(Object[] objArr) {
        return objArr.length == 33 && objArr[32] == this.ownership;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final AbstractListIterator leafBufferIterator(int i) {
        Object[] objArr = this.root;
        if (objArr == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Invalid root");
            return null;
        }
        int rootSize$1 = rootSize$1() >> 5;
        MathKt.checkPositionIndex$runtime(i, rootSize$1);
        int i2 = this.rootShift;
        return i2 == 0 ? new BufferIterator(objArr, i) : new TrieIterator(objArr, i, rootSize$1, i2 / 5);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        MathKt.checkPositionIndex$runtime(i, this.size);
        return new PersistentVectorMutableIterator(this, i);
    }

    public final Object[] makeMutable(Object[] objArr) {
        if (objArr == null) {
            return mutableBuffer();
        }
        if (isMutable(objArr)) {
            return objArr;
        }
        Object[] mutableBuffer = mutableBuffer();
        int length = objArr.length;
        if (length > 32) {
            length = 32;
        }
        ArraysKt.copyInto$default(objArr, mutableBuffer, 0, length, 6);
        return mutableBuffer;
    }

    public final Object[] makeMutableShiftingRight(int i, Object[] objArr) {
        if (isMutable(objArr)) {
            ArraysKt.copyInto(objArr, objArr, i, 0, 32 - i);
            return objArr;
        }
        Object[] mutableBuffer = mutableBuffer();
        ArraysKt.copyInto(objArr, mutableBuffer, i, 0, 32 - i);
        return mutableBuffer;
    }

    public final Object[] mutableBuffer() {
        Object[] objArr = new Object[33];
        objArr[32] = this.ownership;
        return objArr;
    }

    public final Object[] mutableBufferWith(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.ownership;
        return objArr;
    }

    public final Object[] nullifyAfter(Object[] objArr, int i, int i2) {
        if (i2 < 0) {
            PreconditionsKt.throwIllegalArgumentException("shift should be positive");
        }
        if (i2 == 0) {
            return objArr;
        }
        int indexSegment = CloseableKt.indexSegment(i, i2);
        Object obj = objArr[indexSegment];
        obj.getClass();
        Object nullifyAfter = nullifyAfter((Object[]) obj, i, i2 - 5);
        if (indexSegment < 31) {
            int i3 = indexSegment + 1;
            if (objArr[i3] != null) {
                if (isMutable(objArr)) {
                    Arrays.fill(objArr, i3, 32, (Object) null);
                }
                Object[] mutableBuffer = mutableBuffer();
                ArraysKt.copyInto(objArr, mutableBuffer, 0, 0, i3);
                objArr = mutableBuffer;
            }
        }
        if (nullifyAfter == objArr[indexSegment]) {
            return objArr;
        }
        Object[] makeMutable = makeMutable(objArr);
        makeMutable[indexSegment] = nullifyAfter;
        return makeMutable;
    }

    public final Object[] pullLastBuffer$1(Object[] objArr, int i, int i2, Extras.Key key) {
        Object[] pullLastBuffer$1;
        int indexSegment = CloseableKt.indexSegment(i2 - 1, i);
        if (i == 5) {
            key.f8default = objArr[indexSegment];
            pullLastBuffer$1 = null;
        } else {
            Object obj = objArr[indexSegment];
            obj.getClass();
            pullLastBuffer$1 = pullLastBuffer$1((Object[]) obj, i - 5, i2, key);
        }
        if (pullLastBuffer$1 == null && indexSegment == 0) {
            return null;
        }
        Object[] makeMutable = makeMutable(objArr);
        makeMutable[indexSegment] = pullLastBuffer$1;
        return makeMutable;
    }

    public final void pullLastBufferFromRoot(Object[] objArr, int i, int i2) {
        if (i2 == 0) {
            this.root = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.tail = objArr;
            this.size = i;
            this.rootShift = i2;
            return;
        }
        Extras.Key key = new Extras.Key(null);
        objArr.getClass();
        Object[] pullLastBuffer$1 = pullLastBuffer$1(objArr, i2, i, key);
        pullLastBuffer$1.getClass();
        Object obj = key.f8default;
        obj.getClass();
        this.tail = (Object[]) obj;
        this.size = i;
        if (pullLastBuffer$1[1] == null) {
            this.root = (Object[]) pullLastBuffer$1[0];
            this.rootShift = i2 - 5;
        } else {
            this.root = pullLastBuffer$1;
            this.rootShift = i2;
        }
    }

    public final Object[] pushBuffers(Object[] objArr, int i, int i2, Iterator it) {
        if (!it.hasNext()) {
            PreconditionsKt.throwIllegalArgumentException("invalid buffersIterator");
        }
        if (!(i2 >= 0)) {
            PreconditionsKt.throwIllegalArgumentException("negative shift");
        }
        if (i2 == 0) {
            return (Object[]) it.next();
        }
        Object[] makeMutable = makeMutable(objArr);
        int indexSegment = CloseableKt.indexSegment(i, i2);
        int i3 = i2 - 5;
        makeMutable[indexSegment] = pushBuffers((Object[]) makeMutable[indexSegment], i, i3, it);
        while (true) {
            indexSegment++;
            if (indexSegment >= 32 || !it.hasNext()) {
                break;
            }
            makeMutable[indexSegment] = pushBuffers((Object[]) makeMutable[indexSegment], 0, i3, it);
        }
        return makeMutable;
    }

    public final Object[] pushBuffersIncreasingHeightIfNeeded(Object[] objArr, int i, Object[][] objArr2) {
        UIntArray.Iterator iterator = new UIntArray.Iterator(objArr2);
        int i2 = i >> 5;
        int i3 = this.rootShift;
        Object[] pushBuffers = i2 < (1 << i3) ? pushBuffers(objArr, i, i3, iterator) : makeMutable(objArr);
        while (iterator.hasNext()) {
            this.rootShift += 5;
            pushBuffers = mutableBufferWith(pushBuffers);
            int i4 = this.rootShift;
            pushBuffers(pushBuffers, 1 << i4, i4, iterator);
        }
        return pushBuffers;
    }

    public final void pushFilledTail(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int i = this.size;
        int i2 = i >> 5;
        int i3 = this.rootShift;
        if (i2 > (1 << i3)) {
            this.root = pushTail(this.rootShift + 5, mutableBufferWith(objArr), objArr2);
            this.tail = objArr3;
            this.rootShift += 5;
            this.size++;
            return;
        }
        if (objArr == null) {
            this.root = objArr2;
            this.tail = objArr3;
            this.size = i + 1;
        } else {
            this.root = pushTail(i3, objArr, objArr2);
            this.tail = objArr3;
            this.size++;
        }
    }

    public final Object[] pushTail(int i, Object[] objArr, Object[] objArr2) {
        int indexSegment = CloseableKt.indexSegment(getSize() - 1, i);
        Object[] makeMutable = makeMutable(objArr);
        if (i == 5) {
            makeMutable[indexSegment] = objArr2;
            return makeMutable;
        }
        makeMutable[indexSegment] = pushTail(i - 5, (Object[]) makeMutable[indexSegment], objArr2);
        return makeMutable;
    }

    public final int recyclableRemoveAll(Function1 function1, Object[] objArr, int i, int i2, Extras.Key key, ArrayList arrayList, ArrayList arrayList2) {
        if (isMutable(objArr)) {
            arrayList.add(objArr);
        }
        Object obj = key.f8default;
        obj.getClass();
        Object[] objArr2 = (Object[]) obj;
        Object[] objArr3 = objArr2;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj2 = objArr[i3];
            if (!((Boolean) function1.invoke(obj2)).booleanValue()) {
                if (i2 == 32) {
                    objArr3 = !arrayList.isEmpty() ? (Object[]) arrayList.remove(arrayList.size() - 1) : mutableBuffer();
                    i2 = 0;
                }
                objArr3[i2] = obj2;
                i2++;
            }
        }
        key.f8default = objArr3;
        if (objArr2 != objArr3) {
            arrayList2.add(objArr2);
        }
        return i2;
    }

    public final int removeAll(Function1 function1, Object[] objArr, int i, Extras.Key key) {
        Object[] objArr2 = objArr;
        int i2 = i;
        boolean z = false;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                if (!z) {
                    objArr2 = makeMutable(objArr);
                    z = true;
                    i2 = i3;
                }
            } else if (z) {
                objArr2[i2] = obj;
                i2++;
            }
        }
        key.f8default = objArr2;
        return i2;
    }

    public final int removeAllFromTail(Function1 function1, int i, Extras.Key key) {
        int removeAll = removeAll(function1, this.tail, i, key);
        Object obj = key.f8default;
        if (removeAll == i) {
            return i;
        }
        obj.getClass();
        Object[] objArr = (Object[]) obj;
        Arrays.fill(objArr, removeAll, i, (Object) null);
        this.tail = objArr;
        this.size -= i - removeAll;
        return removeAll;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        if (r0 != r8) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if (removeAllFromTail(r1, r8, r5) != r8) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean removeAllWithPredicate(kotlin.jvm.functions.Function1 r16) {
        /*
            r15 = this;
            r1 = r16
            int r8 = r15.tailSize()
            coil3.Extras$Key r5 = new coil3.Extras$Key
            r9 = 0
            r5.<init>(r9)
            java.lang.Object[] r0 = r15.root
            r10 = 0
            r11 = 1
            if (r0 != 0) goto L1b
            int r0 = r15.removeAllFromTail(r1, r8, r5)
            if (r0 == r8) goto Ld1
        L18:
            r10 = r11
            goto Ld1
        L1b:
            androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator r12 = r15.leafBufferIterator(r10)
            r13 = 32
            r0 = r13
        L22:
            if (r0 != r13) goto L35
            boolean r2 = r12.hasNext()
            if (r2 == 0) goto L35
            java.lang.Object r0 = r12.next()
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            int r0 = r15.removeAll(r1, r0, r13, r5)
            goto L22
        L35:
            if (r0 != r13) goto L49
            int r0 = r15.removeAllFromTail(r1, r8, r5)
            if (r0 != 0) goto L46
            java.lang.Object[] r1 = r15.root
            int r2 = r15.size
            int r3 = r15.rootShift
            r15.pullLastBufferFromRoot(r1, r2, r3)
        L46:
            if (r0 == r8) goto Ld1
            goto L18
        L49:
            int r2 = r12.index
            int r2 = r2 - r11
            int r14 = r2 << 5
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            r4 = r0
        L59:
            boolean r0 = r12.hasNext()
            if (r0 == 0) goto L70
            java.lang.Object r0 = r12.next()
            r2 = r0
            java.lang.Object[] r2 = (java.lang.Object[]) r2
            r3 = 32
            r0 = r15
            int r4 = r0.recyclableRemoveAll(r1, r2, r3, r4, r5, r6, r7)
            r1 = r16
            goto L59
        L70:
            java.lang.Object[] r2 = r15.tail
            r0 = r15
            r1 = r16
            r3 = r8
            int r1 = r0.recyclableRemoveAll(r1, r2, r3, r4, r5, r6, r7)
            java.lang.Object r2 = r5.f8default
            r2.getClass()
            java.lang.Object[] r2 = (java.lang.Object[]) r2
            java.util.Arrays.fill(r2, r1, r13, r9)
            boolean r3 = r7.isEmpty()
            java.lang.Object[] r4 = r15.root
            if (r3 == 0) goto L90
            r4.getClass()
            goto L9a
        L90:
            int r3 = r15.rootShift
            java.util.Iterator r5 = r7.iterator()
            java.lang.Object[] r4 = r15.pushBuffers(r4, r14, r3, r5)
        L9a:
            int r3 = r7.size()
            int r3 = r3 << 5
            int r14 = r14 + r3
            r3 = r14 & 31
            if (r3 != 0) goto La6
            goto Lab
        La6:
            java.lang.String r3 = "invalid size"
            androidx.compose.runtime.PreconditionsKt.throwIllegalArgumentException(r3)
        Lab:
            if (r14 != 0) goto Lb0
            r15.rootShift = r10
            goto Lc8
        Lb0:
            int r3 = r14 + (-1)
        Lb2:
            int r5 = r15.rootShift
            int r6 = r3 >> r5
            if (r6 != 0) goto Lc4
            int r5 = r5 + (-5)
            r15.rootShift = r5
            r4 = r4[r10]
            r4.getClass()
            java.lang.Object[] r4 = (java.lang.Object[]) r4
            goto Lb2
        Lc4:
            java.lang.Object[] r9 = r15.nullifyAfter(r4, r3, r5)
        Lc8:
            r15.root = r9
            r15.tail = r2
            int r14 = r14 + r1
            r15.size = r14
            goto L18
        Ld1:
            if (r10 == 0) goto Ld8
            int r1 = r15.modCount
            int r1 = r1 + r11
            r15.modCount = r1
        Ld8:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder.removeAllWithPredicate(kotlin.jvm.functions.Function1):boolean");
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object removeAt(int i) {
        MathKt.checkElementIndex$runtime(i, getSize());
        ((AbstractList) this).modCount++;
        int rootSize$1 = rootSize$1();
        if (i >= rootSize$1) {
            return removeFromTailAt(this.root, rootSize$1, this.rootShift, i - rootSize$1);
        }
        Extras.Key key = new Extras.Key(this.tail[0]);
        Object[] objArr = this.root;
        objArr.getClass();
        removeFromTailAt(removeFromRootAt$1(objArr, this.rootShift, i, key), rootSize$1, this.rootShift, 0);
        return key.f8default;
    }

    public final Object[] removeFromRootAt$1(Object[] objArr, int i, int i2, Extras.Key key) {
        int indexSegment = CloseableKt.indexSegment(i2, i);
        if (i == 0) {
            Object obj = objArr[indexSegment];
            Object[] makeMutable = makeMutable(objArr);
            ArraysKt.copyInto(objArr, makeMutable, indexSegment, indexSegment + 1, 32);
            makeMutable[31] = key.f8default;
            key.f8default = obj;
            return makeMutable;
        }
        int indexSegment2 = objArr[31] == null ? CloseableKt.indexSegment(rootSize$1() - 1, i) : 31;
        Object[] makeMutable2 = makeMutable(objArr);
        int i3 = i - 5;
        int i4 = indexSegment + 1;
        if (i4 <= indexSegment2) {
            while (true) {
                Object obj2 = makeMutable2[indexSegment2];
                obj2.getClass();
                makeMutable2[indexSegment2] = removeFromRootAt$1((Object[]) obj2, i3, 0, key);
                if (indexSegment2 == i4) {
                    break;
                }
                indexSegment2--;
            }
        }
        Object obj3 = makeMutable2[indexSegment];
        obj3.getClass();
        makeMutable2[indexSegment] = removeFromRootAt$1((Object[]) obj3, i3, i2, key);
        return makeMutable2;
    }

    public final Object removeFromTailAt(Object[] objArr, int i, int i2, int i3) {
        int i4 = this.size - i;
        Object[] objArr2 = this.tail;
        if (i4 == 1) {
            Object obj = objArr2[0];
            pullLastBufferFromRoot(objArr, i, i2);
            return obj;
        }
        Object obj2 = objArr2[i3];
        Object[] makeMutable = makeMutable(objArr2);
        ArraysKt.copyInto(objArr2, makeMutable, i3, i3 + 1, i4);
        makeMutable[i4 - 1] = null;
        this.root = objArr;
        this.tail = makeMutable;
        this.size = (i + i4) - 1;
        this.rootShift = i2;
        return obj2;
    }

    public final int rootSize$1() {
        int i = this.size;
        if (i <= 32) {
            return 0;
        }
        return (i - 1) & (-32);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        MathKt.checkElementIndex$runtime(i, getSize());
        if (rootSize$1() > i) {
            Extras.Key key = new Extras.Key(null);
            Object[] objArr = this.root;
            objArr.getClass();
            this.root = setInRoot(objArr, this.rootShift, i, obj, key);
            return key.f8default;
        }
        Object[] makeMutable = makeMutable(this.tail);
        if (makeMutable != this.tail) {
            ((AbstractList) this).modCount++;
        }
        int i2 = i & 31;
        Object obj2 = makeMutable[i2];
        makeMutable[i2] = obj;
        this.tail = makeMutable;
        return obj2;
    }

    public final Object[] setInRoot(Object[] objArr, int i, int i2, Object obj, Extras.Key key) {
        int indexSegment = CloseableKt.indexSegment(i2, i);
        Object[] makeMutable = makeMutable(objArr);
        if (i != 0) {
            Object obj2 = makeMutable[indexSegment];
            obj2.getClass();
            makeMutable[indexSegment] = setInRoot((Object[]) obj2, i - 5, i2, obj, key);
            return makeMutable;
        }
        if (makeMutable != objArr) {
            ((AbstractList) this).modCount++;
        }
        key.f8default = makeMutable[indexSegment];
        makeMutable[indexSegment] = obj;
        return makeMutable;
    }

    public final void splitToBuffers(Collection collection, int i, Object[] objArr, int i2, Object[][] objArr2, int i3, Object[] objArr3) {
        Object[] mutableBuffer;
        if (i3 < 1) {
            PreconditionsKt.throwIllegalArgumentException("requires at least one nullBuffer");
        }
        Object[] makeMutable = makeMutable(objArr);
        objArr2[0] = makeMutable;
        int i4 = i & 31;
        int size = ((collection.size() + i) - 1) & 31;
        int i5 = (i2 - i4) + size;
        if (i5 < 32) {
            ArraysKt.copyInto(makeMutable, objArr3, size + 1, i4, i2);
        } else {
            int i6 = i5 - 31;
            if (i3 == 1) {
                mutableBuffer = makeMutable;
            } else {
                mutableBuffer = mutableBuffer();
                i3--;
                objArr2[i3] = mutableBuffer;
            }
            int i7 = i2 - i6;
            ArraysKt.copyInto(makeMutable, objArr3, 0, i7, i2);
            ArraysKt.copyInto(makeMutable, mutableBuffer, size + 1, i4, i7);
            objArr3 = mutableBuffer;
        }
        Iterator it = collection.iterator();
        copyToBuffer(makeMutable, i4, it);
        for (int i8 = 1; i8 < i3; i8++) {
            Object[] mutableBuffer2 = mutableBuffer();
            copyToBuffer(mutableBuffer2, 0, it);
            objArr2[i8] = mutableBuffer2;
        }
        copyToBuffer(objArr3, 0, it);
    }

    public final int tailSize() {
        int i = this.size;
        return i <= 32 ? i : i - ((i - 1) & (-32));
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        return removeAllWithPredicate(new SnapshotStateList$$ExternalSyntheticLambda0(2, collection));
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        ((AbstractList) this).modCount++;
        int tailSize = tailSize();
        if (tailSize < 32) {
            Object[] makeMutable = makeMutable(this.tail);
            makeMutable[tailSize] = obj;
            this.tail = makeMutable;
            this.size = getSize() + 1;
        } else {
            pushFilledTail(this.root, this.tail, mutableBufferWith(obj));
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int tailSize = tailSize();
        Iterator it = collection.iterator();
        if (32 - tailSize >= collection.size()) {
            Object[] makeMutable = makeMutable(this.tail);
            copyToBuffer(makeMutable, tailSize, it);
            this.tail = makeMutable;
            this.size = collection.size() + this.size;
            return true;
        }
        int size = ((collection.size() + tailSize) - 1) / 32;
        Object[][] objArr = new Object[size][];
        Object[] makeMutable2 = makeMutable(this.tail);
        copyToBuffer(makeMutable2, tailSize, it);
        objArr[0] = makeMutable2;
        for (int i = 1; i < size; i++) {
            Object[] mutableBuffer = mutableBuffer();
            copyToBuffer(mutableBuffer, 0, it);
            objArr[i] = mutableBuffer;
        }
        this.root = pushBuffersIncreasingHeightIfNeeded(this.root, rootSize$1(), objArr);
        Object[] mutableBuffer2 = mutableBuffer();
        copyToBuffer(mutableBuffer2, 0, it);
        this.tail = mutableBuffer2;
        this.size = collection.size() + this.size;
        return true;
    }
}
