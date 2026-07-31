package androidx.datastore.preferences.protobuf;

import androidx.compose.animation.core.Animation;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtobufArrayList extends AbstractProtobufList implements RandomAccess {
    public static final ProtobufArrayList EMPTY_LIST;
    public Object[] array;
    public int size;

    static {
        ProtobufArrayList protobufArrayList = new ProtobufArrayList(0, new Object[0]);
        EMPTY_LIST = protobufArrayList;
        protobufArrayList.isMutable = false;
    }

    public ProtobufArrayList(int i, Object[] objArr) {
        this.array = objArr;
        this.size = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        ensureIsMutable();
        if (i < 0 || i > (i2 = this.size)) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(this.size, Animation.CC.m20m(i, "Index:", ", Size:"));
            return;
        }
        Object[] objArr = this.array;
        if (i2 < objArr.length) {
            System.arraycopy(objArr, i, objArr, i + 1, i2 - i);
        } else {
            Object[] objArr2 = new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.array, i, objArr2, i + 1, this.size - i);
            this.array = objArr2;
        }
        this.array[i] = obj;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    public final void ensureIndexInRange(int i) {
        if (i < 0 || i >= this.size) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(this.size, Animation.CC.m20m(i, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        ensureIndexInRange(i);
        return this.array[i];
    }

    @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
    public final Internal.ProtobufList mutableCopyWithCapacity(int i) {
        if (i >= this.size) {
            return new ProtobufArrayList(this.size, Arrays.copyOf(this.array, i));
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        ensureIsMutable();
        ensureIndexInRange(i);
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
        ensureIndexInRange(i);
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

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        ensureIsMutable();
        int i = this.size;
        Object[] objArr = this.array;
        if (i == objArr.length) {
            objArr = Arrays.copyOf(objArr, ((i * 3) / 2) + 1);
            this.array = objArr;
        }
        int i2 = this.size;
        this.size = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
