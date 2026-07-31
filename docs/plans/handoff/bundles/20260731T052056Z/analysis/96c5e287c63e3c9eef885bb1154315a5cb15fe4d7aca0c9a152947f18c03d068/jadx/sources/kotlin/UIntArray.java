package kotlin;

import android.view.View;
import android.view.ViewGroup;
import androidx.collection.SparseArrayCompat;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import java.util.Collection;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.internal.EnumDescriptor;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UIntArray implements Collection, KMappedMarker {
    public final int[] storage;

    @Override // java.util.Collection
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof UInt)) {
            return false;
        }
        return ArraysKt___ArraysKt.contains(this.storage, ((UInt) obj).data);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        collection.getClass();
        Collection collection2 = collection;
        if (collection2.isEmpty()) {
            return true;
        }
        for (Object obj : collection2) {
            if (!(obj instanceof UInt)) {
                return false;
            }
            if (!ArraysKt___ArraysKt.contains(this.storage, ((UInt) obj).data)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj instanceof UIntArray) {
            return this.storage.equals(((UIntArray) obj).storage);
        }
        return false;
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return Arrays.hashCode(this.storage);
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.storage.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final java.util.Iterator iterator() {
        return new Iterator(0, this.storage);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.storage.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        return Intrinsics.Kotlin.toArray(this, objArr);
    }

    public final String toString() {
        return "UIntArray(storage=" + Arrays.toString(this.storage) + ')';
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return Intrinsics.Kotlin.toArray(this);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class Iterator implements java.util.Iterator, KMappedMarker {
        public final /* synthetic */ int $r8$classId;
        public final Object array;
        public int index;

        public Iterator(EnumDescriptor enumDescriptor) {
            this.$r8$classId = 9;
            this.array = enumDescriptor;
            this.index = enumDescriptor.elementsCount;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int i = this.$r8$classId;
            Object obj = this.array;
            switch (i) {
                case 0:
                    if (this.index < ((int[]) obj).length) {
                        break;
                    }
                    break;
                case 1:
                    if (this.index < ((SparseArrayCompat) obj).size()) {
                        break;
                    }
                    break;
                case 2:
                    if (this.index < ((ViewGroup) obj).getChildCount()) {
                        break;
                    }
                    break;
                case 3:
                    if (this.index < ((byte[]) obj).length) {
                        break;
                    }
                    break;
                case 4:
                    if (this.index < ((long[]) obj).length) {
                        break;
                    }
                    break;
                case 5:
                    if (this.index < ((short[]) obj).length) {
                        break;
                    }
                    break;
                case 6:
                    if (this.index < ((AbstractList) obj).getSize()) {
                        break;
                    }
                    break;
                case 7:
                    if (this.index < ((boolean[]) obj).length) {
                        break;
                    }
                    break;
                case 8:
                    if (this.index < ((Object[]) obj).length) {
                        break;
                    }
                    break;
                default:
                    if (this.index > 0) {
                        break;
                    }
                    break;
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            int i = this.$r8$classId;
            Object obj = this.array;
            switch (i) {
                case 0:
                    int i2 = this.index;
                    int[] iArr = (int[]) obj;
                    if (i2 < iArr.length) {
                        this.index = i2 + 1;
                        return new UInt(iArr[i2]);
                    }
                    Gson$$ExternalSyntheticBUOutline0.m$3(String.valueOf(i2));
                    return null;
                case 1:
                    int i3 = this.index;
                    this.index = i3 + 1;
                    return ((SparseArrayCompat) obj).valueAt(i3);
                case 2:
                    int i4 = this.index;
                    this.index = i4 + 1;
                    View childAt = ((ViewGroup) obj).getChildAt(i4);
                    if (childAt != null) {
                        return childAt;
                    }
                    throw new IndexOutOfBoundsException();
                case 3:
                    int i5 = this.index;
                    byte[] bArr = (byte[]) obj;
                    if (i5 < bArr.length) {
                        this.index = i5 + 1;
                        return new UByte(bArr[i5]);
                    }
                    Gson$$ExternalSyntheticBUOutline0.m$3(String.valueOf(i5));
                    return null;
                case 4:
                    int i6 = this.index;
                    long[] jArr = (long[]) obj;
                    if (i6 < jArr.length) {
                        this.index = i6 + 1;
                        return new ULong(jArr[i6]);
                    }
                    Gson$$ExternalSyntheticBUOutline0.m$3(String.valueOf(i6));
                    return null;
                case 5:
                    int i7 = this.index;
                    short[] sArr = (short[]) obj;
                    if (i7 < sArr.length) {
                        this.index = i7 + 1;
                        return new UShort(sArr[i7]);
                    }
                    Gson$$ExternalSyntheticBUOutline0.m$3(String.valueOf(i7));
                    return null;
                case 6:
                    if (!hasNext()) {
                        Utils$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    int i8 = this.index;
                    this.index = i8 + 1;
                    return ((AbstractList) obj).get(i8);
                case 7:
                    try {
                        int i9 = this.index;
                        this.index = i9 + 1;
                        return Boolean.valueOf(((boolean[]) obj)[i9]);
                    } catch (ArrayIndexOutOfBoundsException e) {
                        this.index--;
                        Gson$$ExternalSyntheticBUOutline0.m$3(e.getMessage());
                        return null;
                    }
                case 8:
                    try {
                        int i10 = this.index;
                        this.index = i10 + 1;
                        return ((Object[]) obj)[i10];
                    } catch (ArrayIndexOutOfBoundsException e2) {
                        this.index--;
                        Gson$$ExternalSyntheticBUOutline0.m$3(e2.getMessage());
                        return null;
                    }
                default:
                    EnumDescriptor enumDescriptor = (EnumDescriptor) obj;
                    int i11 = enumDescriptor.elementsCount;
                    int i12 = this.index;
                    this.index = i12 - 1;
                    return enumDescriptor.names[i11 - i12];
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            switch (this.$r8$classId) {
                case 0:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 1:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 2:
                    ViewGroup viewGroup = (ViewGroup) this.array;
                    int i = this.index - 1;
                    this.index = i;
                    viewGroup.removeViewAt(i);
                    return;
                case 3:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 4:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 5:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 6:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 7:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 8:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                default:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }
        }

        public Iterator(Object[] objArr) {
            this.$r8$classId = 8;
            objArr.getClass();
            this.array = objArr;
        }

        public /* synthetic */ Iterator(int i, Object obj) {
            this.$r8$classId = i;
            this.array = obj;
        }
    }
}
