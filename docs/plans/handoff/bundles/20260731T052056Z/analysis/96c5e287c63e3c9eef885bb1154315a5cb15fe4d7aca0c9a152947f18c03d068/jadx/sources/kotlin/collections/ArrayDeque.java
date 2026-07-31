package kotlin.collections;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import coil3.util.UtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrayDeque extends AbstractMutableList {
    public static final Object[] emptyElementData = new Object[0];
    public Object[] elementData;
    public int head;
    public int size;

    public ArrayDeque(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = emptyElementData;
        } else {
            if (i <= 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Illegal Capacity: "));
                throw null;
            }
            objArr = new Object[i];
        }
        this.elementData = objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2 = this.size;
        if (i < 0 || i > i2) {
            Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return;
        }
        if (i == i2) {
            addLast(obj);
            return;
        }
        if (i == 0) {
            addFirst(obj);
            return;
        }
        registerModification();
        ensureCapacity$1(this.size + 1);
        int positiveMod = positiveMod(this.head + i);
        int i3 = this.size;
        if (i < ((i3 + 1) >> 1)) {
            int length = positiveMod == 0 ? this.elementData.length - 1 : positiveMod - 1;
            int i4 = this.head;
            int length2 = i4 == 0 ? this.elementData.length - 1 : i4 - 1;
            Object[] objArr = this.elementData;
            if (length >= i4) {
                objArr[length2] = objArr[i4];
                ArraysKt___ArraysKt.copyInto(objArr, objArr, i4, i4 + 1, length + 1);
            } else {
                ArraysKt___ArraysKt.copyInto(objArr, objArr, i4 - 1, i4, objArr.length);
                Object[] objArr2 = this.elementData;
                objArr2[objArr2.length - 1] = objArr2[0];
                ArraysKt___ArraysKt.copyInto(objArr2, objArr2, 0, 1, length + 1);
            }
            this.elementData[length] = obj;
            this.head = length2;
        } else {
            int positiveMod2 = positiveMod(i3 + this.head);
            Object[] objArr3 = this.elementData;
            if (positiveMod < positiveMod2) {
                ArraysKt___ArraysKt.copyInto(objArr3, objArr3, positiveMod + 1, positiveMod, positiveMod2);
            } else {
                ArraysKt___ArraysKt.copyInto(objArr3, objArr3, 1, 0, positiveMod2);
                Object[] objArr4 = this.elementData;
                objArr4[0] = objArr4[objArr4.length - 1];
                ArraysKt___ArraysKt.copyInto(objArr4, objArr4, positiveMod + 1, positiveMod, objArr4.length - 1);
            }
            this.elementData[positiveMod] = obj;
        }
        this.size++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        int i2 = this.size;
        if (i < 0 || i > i2) {
            Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return false;
        }
        if (collection.isEmpty()) {
            return false;
        }
        if (i == this.size) {
            return addAll(collection);
        }
        registerModification();
        ensureCapacity$1(collection.size() + this.size);
        int positiveMod = positiveMod(this.size + this.head);
        int positiveMod2 = positiveMod(this.head + i);
        int size = collection.size();
        if (i >= ((this.size + 1) >> 1)) {
            int i3 = positiveMod2 + size;
            Object[] objArr = this.elementData;
            if (positiveMod2 < positiveMod) {
                int i4 = size + positiveMod;
                if (i4 <= objArr.length) {
                    ArraysKt___ArraysKt.copyInto(objArr, objArr, i3, positiveMod2, positiveMod);
                } else if (i3 >= objArr.length) {
                    ArraysKt___ArraysKt.copyInto(objArr, objArr, i3 - objArr.length, positiveMod2, positiveMod);
                } else {
                    int length = positiveMod - (i4 - objArr.length);
                    ArraysKt___ArraysKt.copyInto(objArr, objArr, 0, length, positiveMod);
                    Object[] objArr2 = this.elementData;
                    ArraysKt___ArraysKt.copyInto(objArr2, objArr2, i3, positiveMod2, length);
                }
            } else {
                ArraysKt___ArraysKt.copyInto(objArr, objArr, size, 0, positiveMod);
                Object[] objArr3 = this.elementData;
                if (i3 >= objArr3.length) {
                    ArraysKt___ArraysKt.copyInto(objArr3, objArr3, i3 - objArr3.length, positiveMod2, objArr3.length);
                } else {
                    ArraysKt___ArraysKt.copyInto(objArr3, objArr3, 0, objArr3.length - size, objArr3.length);
                    Object[] objArr4 = this.elementData;
                    ArraysKt___ArraysKt.copyInto(objArr4, objArr4, i3, positiveMod2, objArr4.length - size);
                }
            }
            copyCollectionElements(positiveMod2, collection);
            return true;
        }
        int i5 = this.head;
        int i6 = i5 - size;
        Object[] objArr5 = this.elementData;
        if (positiveMod2 < i5) {
            ArraysKt___ArraysKt.copyInto(objArr5, objArr5, i6, i5, objArr5.length);
            Object[] objArr6 = this.elementData;
            if (size >= positiveMod2) {
                ArraysKt___ArraysKt.copyInto(objArr6, objArr6, objArr6.length - size, 0, positiveMod2);
            } else {
                ArraysKt___ArraysKt.copyInto(objArr6, objArr6, objArr6.length - size, 0, size);
                Object[] objArr7 = this.elementData;
                ArraysKt___ArraysKt.copyInto(objArr7, objArr7, 0, size, positiveMod2);
            }
        } else if (i6 >= 0) {
            ArraysKt___ArraysKt.copyInto(objArr5, objArr5, i6, i5, positiveMod2);
        } else {
            i6 += objArr5.length;
            int i7 = positiveMod2 - i5;
            int length2 = objArr5.length - i6;
            if (length2 >= i7) {
                ArraysKt___ArraysKt.copyInto(objArr5, objArr5, i6, i5, positiveMod2);
            } else {
                ArraysKt___ArraysKt.copyInto(objArr5, objArr5, i6, i5, i5 + length2);
                Object[] objArr8 = this.elementData;
                ArraysKt___ArraysKt.copyInto(objArr8, objArr8, 0, this.head + length2, positiveMod2);
            }
        }
        this.head = i6;
        copyCollectionElements(negativeMod(positiveMod2 - size), collection);
        return true;
    }

    public final void addFirst(Object obj) {
        registerModification();
        ensureCapacity$1(this.size + 1);
        int i = this.head;
        if (i == 0) {
            i = this.elementData.length;
        }
        int i2 = i - 1;
        this.head = i2;
        this.elementData[i2] = obj;
        this.size++;
    }

    public final void addLast(Object obj) {
        registerModification();
        ensureCapacity$1(this.size + 1);
        this.elementData[positiveMod(this.size + this.head)] = obj;
        this.size++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            registerModification();
            nullifyNonEmpty(this.head, positiveMod(this.size + this.head));
        }
        this.head = 0;
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void copyCollectionElements(int i, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.elementData.length;
        while (i < length && it.hasNext()) {
            this.elementData[i] = it.next();
            i++;
        }
        int i2 = this.head;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.elementData[i3] = it.next();
        }
        this.size = collection.size() + this.size;
    }

    public final void ensureCapacity$1(int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Deque is too big.");
            return;
        }
        Object[] objArr = this.elementData;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == emptyElementData) {
            if (i < 10) {
                i = 10;
            }
            this.elementData = new Object[i];
            return;
        }
        int length = objArr.length;
        int i2 = length + (length >> 1);
        if (i2 - i < 0) {
            i2 = i;
        }
        if (i2 - 2147483639 > 0) {
            i2 = i > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i2];
        ArraysKt___ArraysKt.copyInto(objArr, objArr2, 0, this.head, objArr.length);
        Object[] objArr3 = this.elementData;
        int length2 = objArr3.length;
        int i3 = this.head;
        ArraysKt___ArraysKt.copyInto(objArr3, objArr2, length2 - i3, 0, i3);
        this.head = 0;
        this.elementData = objArr2;
    }

    public final Object first() {
        if (!isEmpty()) {
            return this.elementData[this.head];
        }
        Gson$$ExternalSyntheticBUOutline0.m$3("ArrayDeque is empty.");
        return null;
    }

    public final Object firstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return this.elementData[this.head];
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int i2 = this.size;
        if (i >= 0 && i < i2) {
            return this.elementData[positiveMod(this.head + i)];
        }
        Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, i2, "index: ", ", size: "));
        return null;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final int getSize() {
        return this.size;
    }

    public final int incremented(int i) {
        if (i == this.elementData.length - 1) {
            return 0;
        }
        return i + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int positiveMod = positiveMod(this.size + this.head);
        int i2 = this.head;
        if (i2 < positiveMod) {
            while (i2 < positiveMod) {
                if (Intrinsics.areEqual(obj, this.elementData[i2])) {
                    i = this.head;
                } else {
                    i2++;
                }
            }
            return -1;
        }
        if (isEmpty() || (i2 = this.head) < positiveMod) {
            return -1;
        }
        int length = this.elementData.length;
        while (true) {
            if (i2 >= length) {
                for (int i3 = 0; i3 < positiveMod; i3++) {
                    if (Intrinsics.areEqual(obj, this.elementData[i3])) {
                        i2 = i3 + this.elementData.length;
                        i = this.head;
                    }
                }
                return -1;
            }
            if (Intrinsics.areEqual(obj, this.elementData[i2])) {
                i = this.head;
                break;
            }
            i2++;
        }
        return i2 - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return getSize() == 0;
    }

    public final Object last() {
        if (isEmpty()) {
            Gson$$ExternalSyntheticBUOutline0.m$3("ArrayDeque is empty.");
            return null;
        }
        return this.elementData[positiveMod((getSize() - 1) + this.head)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i;
        int positiveMod = positiveMod(this.size + this.head);
        int i2 = this.head;
        if (i2 < positiveMod) {
            length = positiveMod - 1;
            if (i2 <= length) {
                while (!Intrinsics.areEqual(obj, this.elementData[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.head;
                return length - i;
            }
            return -1;
        }
        if (!isEmpty() && this.head >= positiveMod) {
            while (true) {
                positiveMod--;
                Object[] objArr = this.elementData;
                if (-1 >= positiveMod) {
                    length = objArr.length - 1;
                    int i3 = this.head;
                    if (i3 <= length) {
                        while (!Intrinsics.areEqual(obj, this.elementData[length])) {
                            if (length != i3) {
                                length--;
                            }
                        }
                        i = this.head;
                    }
                } else if (Intrinsics.areEqual(obj, objArr[positiveMod])) {
                    length = positiveMod + this.elementData.length;
                    i = this.head;
                    break;
                }
            }
            return length - i;
        }
        return -1;
    }

    public final Object lastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return this.elementData[positiveMod((getSize() - 1) + this.head)];
    }

    public final int negativeMod(int i) {
        return i < 0 ? i + this.elementData.length : i;
    }

    public final void nullifyNonEmpty(int i, int i2) {
        Object[] objArr = this.elementData;
        if (i < i2) {
            Arrays.fill(objArr, i, i2, (Object) null);
        } else {
            Arrays.fill(objArr, i, objArr.length, (Object) null);
            Arrays.fill(this.elementData, 0, i2, (Object) null);
        }
    }

    public final int positiveMod(int i) {
        Object[] objArr = this.elementData;
        return i >= objArr.length ? i - objArr.length : i;
    }

    public final void registerModification() {
        ((java.util.AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        removeAt(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int positiveMod;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.elementData.length != 0) {
            int positiveMod2 = positiveMod(this.size + this.head);
            int i = this.head;
            if (i < positiveMod2) {
                positiveMod = i;
                while (true) {
                    objArr = this.elementData;
                    if (i >= positiveMod2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.elementData[positiveMod] = obj;
                        positiveMod++;
                    }
                    i++;
                }
                Arrays.fill(objArr, positiveMod, positiveMod2, (Object) null);
            } else {
                int length = this.elementData.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.elementData;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.elementData[i2] = obj2;
                        i2++;
                    }
                    i++;
                }
                positiveMod = positiveMod(i2);
                for (int i3 = 0; i3 < positiveMod2; i3++) {
                    Object[] objArr3 = this.elementData;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.elementData[positiveMod] = obj3;
                        positiveMod = incremented(positiveMod);
                    }
                }
                z = z2;
            }
            if (z) {
                registerModification();
                this.size = negativeMod(positiveMod - this.head);
            }
        }
        return z;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object removeAt(int i) {
        int i2 = this.size;
        if (i < 0 || i >= i2) {
            Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return null;
        }
        if (i == getSize() - 1) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        registerModification();
        int positiveMod = positiveMod(this.head + i);
        Object[] objArr = this.elementData;
        Object obj = objArr[positiveMod];
        int i3 = this.size >> 1;
        int i4 = this.head;
        if (i < i3) {
            if (positiveMod >= i4) {
                ArraysKt___ArraysKt.copyInto(objArr, objArr, i4 + 1, i4, positiveMod);
            } else {
                ArraysKt___ArraysKt.copyInto(objArr, objArr, 1, 0, positiveMod);
                Object[] objArr2 = this.elementData;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i5 = this.head;
                ArraysKt___ArraysKt.copyInto(objArr2, objArr2, i5 + 1, i5, objArr2.length - 1);
            }
            Object[] objArr3 = this.elementData;
            int i6 = this.head;
            objArr3[i6] = null;
            this.head = incremented(i6);
        } else {
            int positiveMod2 = positiveMod((getSize() - 1) + i4);
            Object[] objArr4 = this.elementData;
            if (positiveMod <= positiveMod2) {
                ArraysKt___ArraysKt.copyInto(objArr4, objArr4, positiveMod, positiveMod + 1, positiveMod2 + 1);
            } else {
                ArraysKt___ArraysKt.copyInto(objArr4, objArr4, positiveMod, positiveMod + 1, objArr4.length);
                Object[] objArr5 = this.elementData;
                objArr5[objArr5.length - 1] = objArr5[0];
                ArraysKt___ArraysKt.copyInto(objArr5, objArr5, 0, 1, positiveMod2 + 1);
            }
            this.elementData[positiveMod2] = null;
        }
        this.size--;
        return obj;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            Gson$$ExternalSyntheticBUOutline0.m$3("ArrayDeque is empty.");
            return null;
        }
        registerModification();
        Object[] objArr = this.elementData;
        int i = this.head;
        Object obj = objArr[i];
        objArr[i] = null;
        this.head = incremented(i);
        this.size--;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            Gson$$ExternalSyntheticBUOutline0.m$3("ArrayDeque is empty.");
            return null;
        }
        registerModification();
        int positiveMod = positiveMod((getSize() - 1) + this.head);
        Object[] objArr = this.elementData;
        Object obj = objArr[positiveMod];
        objArr[positiveMod] = null;
        this.size--;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        UtilsKt.checkRangeIndexes$kotlin_stdlib(i, i2, this.size);
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == this.size) {
            clear();
            return;
        }
        if (i3 == 1) {
            removeAt(i);
            return;
        }
        registerModification();
        int i4 = this.size - i2;
        int i5 = this.head;
        int i6 = this.head;
        if (i < i4) {
            int positiveMod = positiveMod((i - 1) + i5);
            int positiveMod2 = positiveMod((i2 - 1) + i6);
            while (i > 0) {
                int i7 = positiveMod + 1;
                int min = Math.min(i, Math.min(i7, positiveMod2 + 1));
                Object[] objArr = this.elementData;
                int i8 = positiveMod2 - min;
                int i9 = positiveMod - min;
                ArraysKt___ArraysKt.copyInto(objArr, objArr, i8 + 1, i9 + 1, i7);
                positiveMod = negativeMod(i9);
                positiveMod2 = negativeMod(i8);
                i -= min;
            }
            int positiveMod3 = positiveMod(this.head + i3);
            nullifyNonEmpty(this.head, positiveMod3);
            this.head = positiveMod3;
        } else {
            int positiveMod4 = positiveMod(i5 + i2);
            int positiveMod5 = positiveMod(i6 + i);
            int i10 = this.size;
            while (true) {
                i10 -= i2;
                if (i10 <= 0) {
                    break;
                }
                Object[] objArr2 = this.elementData;
                i2 = Math.min(i10, Math.min(objArr2.length - positiveMod4, objArr2.length - positiveMod5));
                Object[] objArr3 = this.elementData;
                int i11 = positiveMod4 + i2;
                ArraysKt___ArraysKt.copyInto(objArr3, objArr3, positiveMod5, positiveMod4, i11);
                positiveMod4 = positiveMod(i11);
                positiveMod5 = positiveMod(positiveMod5 + i2);
            }
            int positiveMod6 = positiveMod(this.size + this.head);
            nullifyNonEmpty(negativeMod(positiveMod6 - i3), positiveMod6);
        }
        this.size -= i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int positiveMod;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.elementData.length != 0) {
            int positiveMod2 = positiveMod(this.size + this.head);
            int i = this.head;
            if (i < positiveMod2) {
                positiveMod = i;
                while (true) {
                    objArr = this.elementData;
                    if (i >= positiveMod2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        this.elementData[positiveMod] = obj;
                        positiveMod++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                Arrays.fill(objArr, positiveMod, positiveMod2, (Object) null);
            } else {
                int length = this.elementData.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.elementData;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        this.elementData[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                positiveMod = positiveMod(i2);
                for (int i3 = 0; i3 < positiveMod2; i3++) {
                    Object[] objArr3 = this.elementData;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        this.elementData[positiveMod] = obj3;
                        positiveMod = incremented(positiveMod);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                registerModification();
                this.size = negativeMod(positiveMod - this.head);
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int i2 = this.size;
        if (i < 0 || i >= i2) {
            Gson$$ExternalSyntheticBUOutline0.m$2(Modifier.CC.m(i, i2, "index: ", ", size: "));
            return null;
        }
        int positiveMod = positiveMod(this.head + i);
        Object[] objArr = this.elementData;
        Object obj2 = objArr[positiveMod];
        objArr[positiveMod] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i = this.size;
        if (length < i) {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), i);
            newInstance.getClass();
            objArr = (Object[]) newInstance;
        }
        int positiveMod = positiveMod(this.size + this.head);
        int i2 = this.head;
        if (i2 < positiveMod) {
            ArraysKt___ArraysKt.copyInto$default(this.elementData, objArr, i2, positiveMod, 2);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.elementData;
            ArraysKt___ArraysKt.copyInto(objArr2, objArr, 0, this.head, objArr2.length);
            Object[] objArr3 = this.elementData;
            ArraysKt___ArraysKt.copyInto(objArr3, objArr, objArr3.length - this.head, 0, positiveMod);
        }
        int i3 = this.size;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    public ArrayDeque() {
        this.elementData = emptyElementData;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[getSize()]);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (collection.isEmpty()) {
            return false;
        }
        registerModification();
        ensureCapacity$1(collection.size() + this.size);
        copyCollectionElements(positiveMod(this.size + this.head), collection);
        return true;
    }
}
