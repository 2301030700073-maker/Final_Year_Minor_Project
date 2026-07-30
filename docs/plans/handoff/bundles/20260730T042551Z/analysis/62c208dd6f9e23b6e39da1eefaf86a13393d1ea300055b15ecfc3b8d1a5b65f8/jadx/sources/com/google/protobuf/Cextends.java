package com.google.protobuf;

import com.google.protobuf.Ccatch;
import defpackage.Cif;
import defpackage.Cpublic;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cextends<E> extends Cfor<E> implements RandomAccess {

    /* renamed from: do, reason: not valid java name */
    public static final Cextends<Object> f12060do = new Cextends<>(new Object[0], 0, false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public E[] f12061do;

    /* renamed from: for, reason: not valid java name */
    public int f12062for;

    public Cextends(E[] eArr, int i, boolean z) {
        super(z);
        this.f12061do = eArr;
        this.f12062for = i;
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m6243try();
        int i = this.f12062for;
        E[] eArr = this.f12061do;
        if (i == eArr.length) {
            this.f12061do = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f12061do;
        int i2 = this.f12062for;
        this.f12062for = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m6201case(int i) {
        if (i < 0 || i >= this.f12062for) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f12062for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m6201case(i);
        return this.f12061do[i];
    }

    @Override // com.google.protobuf.Ccatch.Cfor
    /* renamed from: instanceof */
    public final Ccatch.Cfor mo6180instanceof(int i) {
        if (i >= this.f12062for) {
            return new Cextends(Arrays.copyOf(this.f12061do, i), this.f12062for, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m6243try();
        m6201case(i);
        E[] eArr = this.f12061do;
        E e = eArr[i];
        if (i < this.f12062for - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (r2 - i) - 1);
        }
        this.f12062for--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m6243try();
        m6201case(i);
        E[] eArr = this.f12061do;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12062for;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m6243try();
        if (i >= 0 && i <= (i2 = this.f12062for)) {
            E[] eArr = this.f12061do;
            if (i2 < eArr.length) {
                System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
            } else {
                E[] eArr2 = (E[]) new Object[Cif.m6917if(i2, 3, 2, 1)];
                System.arraycopy(eArr, 0, eArr2, 0, i);
                System.arraycopy(this.f12061do, i, eArr2, i + 1, this.f12062for - i);
                this.f12061do = eArr2;
            }
            this.f12061do[i] = e;
            this.f12062for++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
        m7821else.append(this.f12062for);
        throw new IndexOutOfBoundsException(m7821else.toString());
    }
}
