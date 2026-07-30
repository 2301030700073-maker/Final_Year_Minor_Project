package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cthrow;
import defpackage.Cif;
import defpackage.Cpublic;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* renamed from: androidx.datastore.preferences.protobuf.strictfp, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cstrictfp<E> extends Cfor<E> implements RandomAccess {

    /* renamed from: do, reason: not valid java name */
    public static final Cstrictfp<Object> f6638do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public E[] f6639do;

    /* renamed from: for, reason: not valid java name */
    public int f6640for;

    static {
        Cstrictfp<Object> cstrictfp = new Cstrictfp<>(new Object[0], 0);
        f6638do = cstrictfp;
        ((Cfor) cstrictfp).f6594do = false;
    }

    public Cstrictfp(E[] eArr, int i) {
        this.f6639do = eArr;
        this.f6640for = i;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m3881try();
        int i = this.f6640for;
        E[] eArr = this.f6639do;
        if (i == eArr.length) {
            this.f6639do = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f6639do;
        int i2 = this.f6640for;
        this.f6640for = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3989case(int i) {
        if (i < 0 || i >= this.f6640for) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6640for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cthrow.Cfor
    /* renamed from: class */
    public final Cthrow.Cfor mo3833class(int i) {
        if (i >= this.f6640for) {
            return new Cstrictfp(Arrays.copyOf(this.f6639do, i), this.f6640for);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m3989case(i);
        return this.f6639do[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m3881try();
        m3989case(i);
        E[] eArr = this.f6639do;
        E e = eArr[i];
        if (i < this.f6640for - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (r2 - i) - 1);
        }
        this.f6640for--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m3881try();
        m3989case(i);
        E[] eArr = this.f6639do;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6640for;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m3881try();
        if (i >= 0 && i <= (i2 = this.f6640for)) {
            E[] eArr = this.f6639do;
            if (i2 < eArr.length) {
                System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
            } else {
                E[] eArr2 = (E[]) new Object[Cif.m6917if(i2, 3, 2, 1)];
                System.arraycopy(eArr, 0, eArr2, 0, i);
                System.arraycopy(this.f6639do, i, eArr2, i + 1, this.f6640for - i);
                this.f6639do = eArr2;
            }
            this.f6639do[i] = e;
            this.f6640for++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
        m7821else.append(this.f6640for);
        throw new IndexOutOfBoundsException(m7821else.toString());
    }
}
