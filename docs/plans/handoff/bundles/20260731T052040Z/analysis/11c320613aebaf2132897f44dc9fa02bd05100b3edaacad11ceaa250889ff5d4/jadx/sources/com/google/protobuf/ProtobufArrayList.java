package com.google.protobuf;

import androidx.compose.ui.Modifier;
import com.android.tools.r8.RecordTag;
import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ProtobufArrayList extends AbstractProtobufList implements RandomAccess {
    public static final Object[] EMPTY_ARRAY;
    public static final ProtobufArrayList EMPTY_LIST;
    public Object[] array;
    public int size;

    static {
        Object[] objArr = new Object[0];
        EMPTY_ARRAY = objArr;
        EMPTY_LIST = new ProtobufArrayList(0, false, objArr);
    }

    public ProtobufArrayList(int i, boolean z, Object[] objArr) {
        this.isMutable = z;
        this.array = objArr;
        this.size = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        ensureIsMutable();
        if (i < 0 || i > (i2 = this.size)) {
            StringBuilder m179m = Modifier.CC.m179m("Index:", i, ", Size:");
            m179m.append(this.size);
            throw new IndexOutOfBoundsException(m179m.toString());
        }
        Object[] objArr = this.array;
        if (i2 < objArr.length) {
            System.arraycopy(objArr, i, objArr, i + 1, i2 - i);
        } else {
            Object[] objArr2 = new Object[RecordTag.m(objArr.length, 3, 2, 1, 10)];
            System.arraycopy(this.array, 0, objArr2, 0, i);
            System.arraycopy(this.array, i, objArr2, i + 1, this.size - i);
            this.array = objArr2;
        }
        this.array[i] = obj;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    public final void ensureIndexInRange$5(int i) {
        if (i < 0 || i >= this.size) {
            StringBuilder m179m = Modifier.CC.m179m("Index:", i, ", Size:");
            m179m.append(this.size);
            throw new IndexOutOfBoundsException(m179m.toString());
        }
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int i = this.size;
        if (i != list.size()) {
            return false;
        }
        if (!(obj instanceof ProtobufArrayList)) {
            for (int i2 = 0; i2 < i; i2++) {
                if (!this.array[i2].equals(list.get(i2))) {
                    return false;
                }
            }
            return true;
        }
        ProtobufArrayList protobufArrayList = (ProtobufArrayList) obj;
        for (int i3 = 0; i3 < i; i3++) {
            if (!this.array[i3].equals(protobufArrayList.array[i3])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        ensureIndexInRange$5(i);
        return this.array[i];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = this.size;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + this.array[i3].hashCode();
        }
        return i2;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    public final Internal.ProtobufList mutableCopyWithCapacity(int i) {
        if (i >= this.size) {
            return new ProtobufArrayList(this.size, true, i == 0 ? EMPTY_ARRAY : Arrays.copyOf(this.array, i));
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        return null;
    }

    @Override // com.google.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        ensureIsMutable();
        ensureIndexInRange$5(i);
        Object[] objArr = this.array;
        Object obj = objArr[i];
        if (i < this.size - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        ensureIsMutable();
        ensureIndexInRange$5(i);
        Object[] objArr = this.array;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        ensureIsMutable();
        int i = this.size;
        Object[] objArr = this.array;
        if (i == objArr.length) {
            this.array = Arrays.copyOf(this.array, RecordTag.m(objArr.length, 3, 2, 1, 10));
        }
        Object[] objArr2 = this.array;
        int i2 = this.size;
        this.size = i2 + 1;
        objArr2[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
