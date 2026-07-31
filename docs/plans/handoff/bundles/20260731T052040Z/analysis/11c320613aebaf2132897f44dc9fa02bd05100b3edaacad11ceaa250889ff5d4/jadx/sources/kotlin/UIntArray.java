package kotlin;

import android.view.View;
import android.view.ViewGroup;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.Arrays;
import java.util.Collection;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        return ArraysKt.contains(this.storage, ((UInt) obj).data);
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
            if (!ArraysKt.contains(this.storage, ((UInt) obj).data)) {
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
        return new Iterator(this.storage, 0);
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class Iterator implements java.util.Iterator, KMappedMarker {
        public final /* synthetic */ int $r8$classId;
        public final Object array;
        public int index;

        public Iterator(Object[] objArr) {
            this.$r8$classId = 6;
            objArr.getClass();
            this.array = objArr;
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
                    if (this.index < ((ViewGroup) obj).getChildCount()) {
                        break;
                    }
                    break;
                case 2:
                    if (this.index < ((byte[]) obj).length) {
                        break;
                    }
                    break;
                case 3:
                    if (this.index < ((long[]) obj).length) {
                        break;
                    }
                    break;
                case 4:
                    if (this.index < ((short[]) obj).length) {
                        break;
                    }
                    break;
                case 5:
                    if (this.index < ((AbstractList) obj).getSize()) {
                        break;
                    }
                    break;
                default:
                    if (this.index < ((Object[]) obj).length) {
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
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(String.valueOf(i2));
                    return null;
                case 1:
                    int i3 = this.index;
                    this.index = i3 + 1;
                    View childAt = ((ViewGroup) obj).getChildAt(i3);
                    if (childAt != null) {
                        return childAt;
                    }
                    throw new IndexOutOfBoundsException();
                case 2:
                    int i4 = this.index;
                    byte[] bArr = (byte[]) obj;
                    if (i4 < bArr.length) {
                        this.index = i4 + 1;
                        return new UByte(bArr[i4]);
                    }
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(String.valueOf(i4));
                    return null;
                case 3:
                    int i5 = this.index;
                    long[] jArr = (long[]) obj;
                    if (i5 < jArr.length) {
                        this.index = i5 + 1;
                        return new ULong(jArr[i5]);
                    }
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(String.valueOf(i5));
                    return null;
                case 4:
                    int i6 = this.index;
                    short[] sArr = (short[]) obj;
                    if (i6 < sArr.length) {
                        this.index = i6 + 1;
                        return new UShort(sArr[i6]);
                    }
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(String.valueOf(i6));
                    return null;
                case 5:
                    if (!hasNext()) {
                        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                        return null;
                    }
                    int i7 = this.index;
                    this.index = i7 + 1;
                    return ((AbstractList) obj).get(i7);
                default:
                    try {
                        int i8 = this.index;
                        this.index = i8 + 1;
                        return ((Object[]) obj)[i8];
                    } catch (ArrayIndexOutOfBoundsException e) {
                        this.index--;
                        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(e.getMessage());
                        return null;
                    }
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            switch (this.$r8$classId) {
                case 0:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 1:
                    ViewGroup viewGroup = (ViewGroup) this.array;
                    int i = this.index - 1;
                    this.index = i;
                    viewGroup.removeViewAt(i);
                    return;
                case 2:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 3:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 4:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                case 5:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
                default:
                    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }
        }

        public /* synthetic */ Iterator(Object obj, int i) {
            this.$r8$classId = i;
            this.array = obj;
        }
    }
}
