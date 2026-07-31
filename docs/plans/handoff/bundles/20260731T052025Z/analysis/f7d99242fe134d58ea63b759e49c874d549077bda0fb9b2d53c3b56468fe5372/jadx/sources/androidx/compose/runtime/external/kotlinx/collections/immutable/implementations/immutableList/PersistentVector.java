package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.snapshots.SnapshotStateList$$ExternalSyntheticLambda0;
import androidx.room.util.SchemaInfoUtilKt;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.Arrays;
import java.util.ListIterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlinx.collections.immutable.implementations.immutableList.ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentVector extends AbstractPersistentList {
    public final Object[] root;
    public final int rootShift;
    public final int size;
    public final Object[] tail;

    public PersistentVector(Object[] objArr, Object[] objArr2, int i, int i2) {
        this.root = objArr;
        this.tail = objArr2;
        this.size = i;
        this.rootShift = i2;
        if (!(getSize() > 32)) {
            PreconditionsKt.throwIllegalArgumentException("Trie-based persistent vector should have at least 33 elements, got " + getSize());
        }
        int length = objArr2.length;
    }

    public static Object[] insertIntoRoot(Object[] objArr, int i, int i2, Object obj, ObjectRef objectRef) {
        int indexSegment = OAuthBearer.indexSegment(i2, i);
        if (i == 0) {
            Object[] copyOf = indexSegment == 0 ? new Object[32] : Arrays.copyOf(objArr, 32);
            ArraysKt___ArraysKt.copyInto(objArr, copyOf, indexSegment + 1, indexSegment, 31);
            objectRef.value = objArr[31];
            copyOf[indexSegment] = obj;
            return copyOf;
        }
        Object[] copyOf2 = Arrays.copyOf(objArr, 32);
        int i3 = i - 5;
        Object obj2 = objArr[indexSegment];
        obj2.getClass();
        copyOf2[indexSegment] = insertIntoRoot((Object[]) obj2, i3, i2, obj, objectRef);
        while (true) {
            indexSegment++;
            if (indexSegment >= 32 || copyOf2[indexSegment] == null) {
                break;
            }
            Object obj3 = objArr[indexSegment];
            obj3.getClass();
            copyOf2[indexSegment] = insertIntoRoot((Object[]) obj3, i3, 0, objectRef.value, objectRef);
        }
        return copyOf2;
    }

    public static Object[] pullLastBuffer(Object[] objArr, int i, int i2, ObjectRef objectRef) {
        Object[] pullLastBuffer;
        int indexSegment = OAuthBearer.indexSegment(i2, i);
        if (i == 5) {
            objectRef.value = objArr[indexSegment];
            pullLastBuffer = null;
        } else {
            Object obj = objArr[indexSegment];
            obj.getClass();
            pullLastBuffer = pullLastBuffer((Object[]) obj, i - 5, i2, objectRef);
        }
        if (pullLastBuffer == null && indexSegment == 0) {
            return null;
        }
        Object[] copyOf = Arrays.copyOf(objArr, 32);
        copyOf[indexSegment] = pullLastBuffer;
        return copyOf;
    }

    public static Object[] setInRoot(int i, int i2, Object obj, Object[] objArr) {
        int indexSegment = OAuthBearer.indexSegment(i2, i);
        Object[] copyOf = Arrays.copyOf(objArr, 32);
        if (i == 0) {
            copyOf[indexSegment] = obj;
            return copyOf;
        }
        Object obj2 = copyOf[indexSegment];
        obj2.getClass();
        copyOf[indexSegment] = setInRoot(i - 5, i2, obj, (Object[]) obj2);
        return copyOf;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.List
    public final AbstractPersistentList add(int i, Object obj) {
        int i2 = this.size;
        SchemaInfoUtilKt.checkPositionIndex$runtime(i, i2);
        if (i == i2) {
            return add(obj);
        }
        int rootSize = rootSize();
        Object[] objArr = this.root;
        if (i >= rootSize) {
            return insertIntoTail(objArr, i - rootSize, obj);
        }
        ObjectRef objectRef = new ObjectRef(null);
        return insertIntoTail(insertIntoRoot(objArr, this.rootShift, i, obj, objectRef), 0, objectRef.value);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList
    public final PersistentVectorBuilder builder() {
        return new PersistentVectorBuilder(this, this.root, this.tail, this.rootShift);
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object[] objArr;
        SchemaInfoUtilKt.checkElementIndex$runtime(i, getSize());
        if (rootSize() <= i) {
            objArr = this.tail;
        } else {
            Object[] objArr2 = this.root;
            for (int i2 = this.rootShift; i2 > 0; i2 -= 5) {
                Object[] objArr3 = objArr2[OAuthBearer.indexSegment(i, i2)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i & 31];
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.size;
    }

    public final PersistentVector insertIntoTail(Object[] objArr, int i, Object obj) {
        int rootSize = rootSize();
        int i2 = this.size;
        int i3 = i2 - rootSize;
        Object[] objArr2 = this.tail;
        Object[] copyOf = Arrays.copyOf(objArr2, 32);
        if (i3 < 32) {
            ArraysKt___ArraysKt.copyInto(objArr2, copyOf, i + 1, i, i3);
            copyOf[i] = obj;
            return new PersistentVector(objArr, copyOf, i2 + 1, this.rootShift);
        }
        Object obj2 = objArr2[31];
        ArraysKt___ArraysKt.copyInto(objArr2, copyOf, i + 1, i, i3 - 1);
        copyOf[i] = obj;
        Object[] objArr3 = new Object[32];
        objArr3[0] = obj2;
        return pushFilledTail(objArr, copyOf, objArr3);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        SchemaInfoUtilKt.checkPositionIndex$runtime(i, this.size);
        return new PersistentVectorIterator(this.root, this.tail, i, this.size, (this.rootShift / 5) + 1);
    }

    public final PersistentVector pushFilledTail(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int i = this.size;
        int i2 = i >> 5;
        int i3 = this.rootShift;
        if (i2 <= (1 << i3)) {
            return new PersistentVector(pushTail(i3, objArr, objArr2), objArr3, i + 1, i3);
        }
        Object[] objArr4 = new Object[32];
        objArr4[0] = objArr;
        int i4 = i3 + 5;
        return new PersistentVector(pushTail(i4, objArr4, objArr2), objArr3, i + 1, i4);
    }

    public final Object[] pushTail(int i, Object[] objArr, Object[] objArr2) {
        int indexSegment = OAuthBearer.indexSegment(getSize() - 1, i);
        Object[] copyOf = objArr != null ? Arrays.copyOf(objArr, 32) : new Object[32];
        if (i == 5) {
            copyOf[indexSegment] = objArr2;
            return copyOf;
        }
        copyOf[indexSegment] = pushTail(i - 5, (Object[]) copyOf[indexSegment], objArr2);
        return copyOf;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList
    public final AbstractPersistentList removeAll(SnapshotStateList$$ExternalSyntheticLambda0 snapshotStateList$$ExternalSyntheticLambda0) {
        PersistentVectorBuilder persistentVectorBuilder = new PersistentVectorBuilder(this, this.root, this.tail, this.rootShift);
        persistentVectorBuilder.removeAllWithPredicate(snapshotStateList$$ExternalSyntheticLambda0);
        return persistentVectorBuilder.build();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList
    public final AbstractPersistentList removeAt(int i) {
        SchemaInfoUtilKt.checkElementIndex$runtime(i, getSize());
        int rootSize = rootSize();
        int i2 = this.rootShift;
        Object[] objArr = this.root;
        return i >= rootSize ? removeFromTailAt(objArr, rootSize, i2, i - rootSize) : removeFromTailAt(removeFromRootAt(objArr, i2, i, new ObjectRef(this.tail[0])), rootSize, i2, 0);
    }

    public final Object[] removeFromRootAt(Object[] objArr, int i, int i2, ObjectRef objectRef) {
        int indexSegment = OAuthBearer.indexSegment(i2, i);
        if (i == 0) {
            Object[] copyOf = indexSegment == 0 ? new Object[32] : Arrays.copyOf(objArr, 32);
            ArraysKt___ArraysKt.copyInto(objArr, copyOf, indexSegment, indexSegment + 1, 32);
            copyOf[31] = objectRef.value;
            objectRef.value = objArr[indexSegment];
            return copyOf;
        }
        int indexSegment2 = objArr[31] == null ? OAuthBearer.indexSegment(rootSize() - 1, i) : 31;
        Object[] copyOf2 = Arrays.copyOf(objArr, 32);
        int i3 = i - 5;
        int i4 = indexSegment + 1;
        if (i4 <= indexSegment2) {
            while (true) {
                Object obj = copyOf2[indexSegment2];
                obj.getClass();
                copyOf2[indexSegment2] = removeFromRootAt((Object[]) obj, i3, 0, objectRef);
                if (indexSegment2 == i4) {
                    break;
                }
                indexSegment2--;
            }
        }
        Object obj2 = copyOf2[indexSegment];
        obj2.getClass();
        copyOf2[indexSegment] = removeFromRootAt((Object[]) obj2, i3, i2, objectRef);
        return copyOf2;
    }

    public final AbstractPersistentList removeFromTailAt(Object[] objArr, int i, int i2, int i3) {
        int i4 = this.size - i;
        if (i4 != 1) {
            Object[] objArr2 = this.tail;
            Object[] copyOf = Arrays.copyOf(objArr2, 32);
            int i5 = i4 - 1;
            if (i3 < i5) {
                ArraysKt___ArraysKt.copyInto(objArr2, copyOf, i3, i3 + 1, i4);
            }
            copyOf[i5] = null;
            return new PersistentVector(objArr, copyOf, (i + i4) - 1, i2);
        }
        if (i2 == 0) {
            if (objArr.length == 33) {
                objArr = Arrays.copyOf(objArr, 32);
            }
            return new SmallPersistentVector(objArr);
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] pullLastBuffer = pullLastBuffer(objArr, i2, i - 1, objectRef);
        pullLastBuffer.getClass();
        Object obj = objectRef.value;
        obj.getClass();
        Object[] objArr3 = (Object[]) obj;
        if (pullLastBuffer[1] != null) {
            return new PersistentVector(pullLastBuffer, objArr3, i, i2);
        }
        Object obj2 = pullLastBuffer[0];
        obj2.getClass();
        return new PersistentVector((Object[]) obj2, objArr3, i, i2 - 5);
    }

    public final int rootSize() {
        return (this.size - 1) & (-32);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, kotlin.collections.AbstractList, java.util.List
    public final AbstractPersistentList set(int i, Object obj) {
        int i2 = this.size;
        SchemaInfoUtilKt.checkElementIndex$runtime(i, i2);
        int rootSize = rootSize();
        Object[] objArr = this.root;
        Object[] objArr2 = this.tail;
        int i3 = this.rootShift;
        if (rootSize > i) {
            return new PersistentVector(setInRoot(i3, i, obj, objArr), objArr2, i2, i3);
        }
        Object[] copyOf = Arrays.copyOf(objArr2, 32);
        copyOf[i & 31] = obj;
        return new PersistentVector(objArr, copyOf, i2, i3);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.Collection, java.util.List
    public final AbstractPersistentList add(Object obj) {
        int rootSize = rootSize();
        int i = this.size;
        int i2 = i - rootSize;
        Object[] objArr = this.root;
        Object[] objArr2 = this.tail;
        if (i2 < 32) {
            Object[] copyOf = Arrays.copyOf(objArr2, 32);
            copyOf[i2] = obj;
            return new PersistentVector(objArr, copyOf, i + 1, this.rootShift);
        }
        Object[] objArr3 = new Object[32];
        objArr3[0] = obj;
        return pushFilledTail(objArr, objArr2, objArr3);
    }
}
