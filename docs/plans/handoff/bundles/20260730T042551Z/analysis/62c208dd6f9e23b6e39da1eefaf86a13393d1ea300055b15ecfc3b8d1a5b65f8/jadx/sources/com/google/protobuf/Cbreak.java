package com.google.protobuf;

import com.google.android.gms.common.api.Api;
import com.google.protobuf.Ccatch;
import defpackage.Cif;
import defpackage.Cpublic;
import defpackage.Cx;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak extends Cfor<Integer> implements Ccatch.Cif, RandomAccess, Cx {

    /* renamed from: do, reason: not valid java name */
    public static final Cbreak f12042do = new Cbreak(new int[0], 0, false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f12043do;

    /* renamed from: for, reason: not valid java name */
    public int f12044for;

    public Cbreak() {
        this(new int[10], 0, true);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m6243try();
        if (i < 0 || i > (i2 = this.f12044for)) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f12044for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
        int[] iArr = this.f12043do;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[Cif.m6917if(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f12043do, i, iArr2, i + 1, this.f12044for - i);
            this.f12043do = iArr2;
        }
        this.f12043do[i] = intValue;
        this.f12044for++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m6243try();
        Charset charset = Ccatch.f12045do;
        collection.getClass();
        if (!(collection instanceof Cbreak)) {
            return super.addAll(collection);
        }
        Cbreak cbreak = (Cbreak) collection;
        int i = cbreak.f12044for;
        if (i == 0) {
            return false;
        }
        int i2 = this.f12044for;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f12043do;
        if (i3 > iArr.length) {
            this.f12043do = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(cbreak.f12043do, 0, this.f12043do, this.f12044for, cbreak.f12044for);
        this.f12044for = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m6177case(int i) {
        m6243try();
        int i2 = this.f12044for;
        int[] iArr = this.f12043do;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[Cif.m6917if(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f12043do = iArr2;
        }
        int[] iArr3 = this.f12043do;
        int i3 = this.f12044for;
        this.f12044for = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m6178else(int i) {
        if (i < 0 || i >= this.f12044for) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f12044for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cbreak)) {
            return super.equals(obj);
        }
        Cbreak cbreak = (Cbreak) obj;
        if (this.f12044for != cbreak.f12044for) {
            return false;
        }
        int[] iArr = cbreak.f12043do;
        for (int i = 0; i < this.f12044for; i++) {
            if (this.f12043do[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return Integer.valueOf(m6179goto(i));
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m6179goto(int i) {
        m6178else(i);
        return this.f12043do[i];
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f12044for; i2++) {
            i = (i * 31) + this.f12043do[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f12044for;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f12043do[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.Ccatch.Cfor
    /* renamed from: instanceof, reason: not valid java name */
    public final Ccatch.Cfor<Integer> mo6180instanceof(int i) {
        if (i >= this.f12044for) {
            return new Cbreak(Arrays.copyOf(this.f12043do, i), this.f12044for, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m6243try();
        m6178else(i);
        int[] iArr = this.f12043do;
        int i2 = iArr[i];
        if (i < this.f12044for - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.f12044for--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m6243try();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f12043do;
        System.arraycopy(iArr, i2, iArr, i, this.f12044for - i2);
        this.f12044for -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m6243try();
        m6178else(i);
        int[] iArr = this.f12043do;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12044for;
    }

    public Cbreak(int[] iArr, int i, boolean z) {
        super(z);
        this.f12043do = iArr;
        this.f12044for = i;
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m6177case(((Integer) obj).intValue());
        return true;
    }
}
