package androidx.collection;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.collection.ArrayMap;
import androidx.collection.internal.ContainerHelpersKt;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ArraySet implements Collection, Set, KMutableCollection, KMutableSet {
    public int _size;
    public Object[] array;
    public int[] hashes;

    public ArraySet(int i) {
        this.hashes = ContainerHelpersKt.EMPTY_INTS;
        this.array = ContainerHelpersKt.EMPTY_OBJECTS;
        if (i > 0) {
            this.hashes = new int[i];
            this.array = new Object[i];
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i;
        int indexOf;
        int i2 = this._size;
        if (obj == null) {
            indexOf = ArraySetKt.indexOf(this, null, 0);
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            indexOf = ArraySetKt.indexOf(this, obj, hashCode);
        }
        if (indexOf >= 0) {
            return false;
        }
        int i3 = ~indexOf;
        int[] iArr = this.hashes;
        if (i2 >= iArr.length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.array;
            int[] iArr2 = new int[i4];
            this.hashes = iArr2;
            this.array = new Object[i4];
            if (i2 != this._size) {
                StreamSharing$$ExternalSyntheticLambda0.m();
                return false;
            }
            if (iArr2.length != 0) {
                ArraysKt___ArraysKt.copyInto$default(0, iArr.length, 6, iArr, iArr2);
                ArraysKt___ArraysKt.copyInto$default(objArr, this.array, 0, objArr.length, 6);
            }
        }
        if (i3 < i2) {
            int[] iArr3 = this.hashes;
            int i5 = i3 + 1;
            ArraysKt___ArraysKt.copyInto(i5, i3, i2, iArr3, iArr3);
            Object[] objArr2 = this.array;
            ArraysKt___ArraysKt.copyInto(objArr2, objArr2, i5, i3, i2);
        }
        int i6 = this._size;
        if (i2 == i6) {
            int[] iArr4 = this.hashes;
            if (i3 < iArr4.length) {
                iArr4[i3] = i;
                this.array[i3] = obj;
                this._size = i6 + 1;
                return true;
            }
        }
        StreamSharing$$ExternalSyntheticLambda0.m();
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        collection.getClass();
        int size = collection.size() + this._size;
        int i = this._size;
        int[] iArr = this.hashes;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.array;
            int[] iArr2 = new int[size];
            this.hashes = iArr2;
            this.array = new Object[size];
            if (i > 0) {
                ArraysKt___ArraysKt.copyInto$default(0, i, 6, iArr, iArr2);
                ArraysKt___ArraysKt.copyInto$default(objArr, this.array, 0, this._size, 6);
            }
        }
        if (this._size != i) {
            StreamSharing$$ExternalSyntheticLambda0.m();
            return false;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this._size != 0) {
            this.hashes = ContainerHelpersKt.EMPTY_INTS;
            this.array = ContainerHelpersKt.EMPTY_OBJECTS;
            this._size = 0;
        }
        if (this._size == 0) {
            return;
        }
        StreamSharing$$ExternalSyntheticLambda0.m();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? ArraySetKt.indexOf(this, null, 0) : ArraySetKt.indexOf(this, obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        collection.getClass();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || this._size != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = this._size;
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(this.array[i2])) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.hashes;
        int i = this._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this._size <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new ArrayMap.KeyIterator(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int indexOf = obj == null ? ArraySetKt.indexOf(this, null, 0) : ArraySetKt.indexOf(this, obj, obj.hashCode());
        if (indexOf < 0) {
            return false;
        }
        removeAt(indexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    public final Object removeAt(int i) {
        int i2 = this._size;
        Object[] objArr = this.array;
        Object obj = objArr[i];
        if (i2 <= 1) {
            clear();
            return obj;
        }
        int i3 = i2 - 1;
        int[] iArr = this.hashes;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            if (i < i3) {
                int i4 = i + 1;
                ArraysKt___ArraysKt.copyInto(i, i4, i2, iArr, iArr);
                Object[] objArr2 = this.array;
                ArraysKt___ArraysKt.copyInto(objArr2, objArr2, i, i4, i2);
            }
            this.array[i3] = null;
        } else {
            int i5 = i2 > 8 ? i2 + (i2 >> 1) : 8;
            int[] iArr2 = new int[i5];
            this.hashes = iArr2;
            this.array = new Object[i5];
            if (i > 0) {
                ArraysKt___ArraysKt.copyInto$default(0, i, 6, iArr, iArr2);
                ArraysKt___ArraysKt.copyInto$default(objArr, this.array, 0, i, 6);
            }
            if (i < i3) {
                int i6 = i + 1;
                ArraysKt___ArraysKt.copyInto(i, i6, i2, iArr, this.hashes);
                ArraysKt___ArraysKt.copyInto(objArr, this.array, i, i6, i2);
            }
        }
        if (i2 == this._size) {
            this._size = i3;
            return obj;
        }
        StreamSharing$$ExternalSyntheticLambda0.m();
        return null;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        boolean z = false;
        for (int i = this._size - 1; -1 < i; i--) {
            if (!CollectionsKt.contains(collection, this.array[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this._size;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int i = this._size;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        } else if (objArr.length > i) {
            objArr[i] = null;
        }
        ArraysKt___ArraysKt.copyInto(this.array, objArr, 0, 0, this._size);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this._size * 14);
        sb.append('{');
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.array[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return ArraysKt___ArraysKt.copyOfRange(this.array, 0, this._size);
    }
}
