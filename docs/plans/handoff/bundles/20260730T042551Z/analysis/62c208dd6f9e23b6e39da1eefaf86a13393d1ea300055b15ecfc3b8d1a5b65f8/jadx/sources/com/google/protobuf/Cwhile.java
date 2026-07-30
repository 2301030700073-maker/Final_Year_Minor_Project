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

/* renamed from: com.google.protobuf.while, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cwhile extends Cfor<Long> implements RandomAccess, Cx {

    /* renamed from: do, reason: not valid java name */
    public long[] f12133do;

    /* renamed from: for, reason: not valid java name */
    public int f12134for;

    static {
        new Cwhile(new long[0], 0, false);
    }

    public Cwhile() {
        this(new long[10], 0, true);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m6243try();
        if (i < 0 || i > (i2 = this.f12134for)) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f12134for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
        long[] jArr = this.f12133do;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[Cif.m6917if(i2, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f12133do, i, jArr2, i + 1, this.f12134for - i);
            this.f12133do = jArr2;
        }
        this.f12133do[i] = longValue;
        this.f12134for++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m6243try();
        Charset charset = Ccatch.f12045do;
        collection.getClass();
        if (!(collection instanceof Cwhile)) {
            return super.addAll(collection);
        }
        Cwhile cwhile = (Cwhile) collection;
        int i = cwhile.f12134for;
        if (i == 0) {
            return false;
        }
        int i2 = this.f12134for;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f12133do;
        if (i3 > jArr.length) {
            this.f12133do = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(cwhile.f12133do, 0, this.f12133do, this.f12134for, cwhile.f12134for);
        this.f12134for = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m6347case(long j) {
        m6243try();
        int i = this.f12134for;
        long[] jArr = this.f12133do;
        if (i == jArr.length) {
            long[] jArr2 = new long[Cif.m6917if(i, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f12133do = jArr2;
        }
        long[] jArr3 = this.f12133do;
        int i2 = this.f12134for;
        this.f12134for = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m6348else(int i) {
        if (i < 0 || i >= this.f12134for) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f12134for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cwhile)) {
            return super.equals(obj);
        }
        Cwhile cwhile = (Cwhile) obj;
        if (this.f12134for != cwhile.f12134for) {
            return false;
        }
        long[] jArr = cwhile.f12133do;
        for (int i = 0; i < this.f12134for; i++) {
            if (this.f12133do[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m6348else(i);
        return Long.valueOf(this.f12133do[i]);
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f12134for; i2++) {
            i = (i * 31) + Ccatch.m6187do(this.f12133do[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f12134for;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f12133do[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.Ccatch.Cfor
    /* renamed from: instanceof */
    public final Ccatch.Cfor mo6180instanceof(int i) {
        if (i >= this.f12134for) {
            return new Cwhile(Arrays.copyOf(this.f12133do, i), this.f12134for, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m6243try();
        m6348else(i);
        long[] jArr = this.f12133do;
        long j = jArr[i];
        if (i < this.f12134for - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.f12134for--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m6243try();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f12133do;
        System.arraycopy(jArr, i2, jArr, i, this.f12134for - i2);
        this.f12134for -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m6243try();
        m6348else(i);
        long[] jArr = this.f12133do;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12134for;
    }

    public Cwhile(long[] jArr, int i, boolean z) {
        super(z);
        this.f12133do = jArr;
        this.f12134for = i;
    }

    @Override // com.google.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m6347case(((Long) obj).longValue());
        return true;
    }
}
