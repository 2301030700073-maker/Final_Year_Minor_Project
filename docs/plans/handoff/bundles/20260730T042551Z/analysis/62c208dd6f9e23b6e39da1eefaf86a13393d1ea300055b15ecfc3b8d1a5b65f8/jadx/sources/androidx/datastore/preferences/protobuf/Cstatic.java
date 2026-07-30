package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cthrow;
import com.google.android.gms.common.api.Api;
import defpackage.Cif;
import defpackage.Cpublic;
import defpackage.Dx;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: androidx.datastore.preferences.protobuf.static, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cstatic extends Cfor<Long> implements RandomAccess, Dx {

    /* renamed from: do, reason: not valid java name */
    public long[] f6636do;

    /* renamed from: for, reason: not valid java name */
    public int f6637for;

    static {
        ((Cfor) new Cstatic(new long[0], 0)).f6594do = false;
    }

    public Cstatic() {
        this(new long[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m3881try();
        if (i < 0 || i > (i2 = this.f6637for)) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6637for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
        long[] jArr = this.f6636do;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[Cif.m6917if(i2, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f6636do, i, jArr2, i + 1, this.f6637for - i);
            this.f6636do = jArr2;
        }
        this.f6636do[i] = longValue;
        this.f6637for++;
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m3881try();
        Charset charset = Cthrow.f6655do;
        collection.getClass();
        if (!(collection instanceof Cstatic)) {
            return super.addAll(collection);
        }
        Cstatic cstatic = (Cstatic) collection;
        int i = cstatic.f6637for;
        if (i == 0) {
            return false;
        }
        int i2 = this.f6637for;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f6636do;
        if (i3 > jArr.length) {
            this.f6636do = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(cstatic.f6636do, 0, this.f6636do, this.f6637for, cstatic.f6637for);
        this.f6637for = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3987case(long j) {
        m3881try();
        int i = this.f6637for;
        long[] jArr = this.f6636do;
        if (i == jArr.length) {
            long[] jArr2 = new long[Cif.m6917if(i, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f6636do = jArr2;
        }
        long[] jArr3 = this.f6636do;
        int i2 = this.f6637for;
        this.f6637for = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // androidx.datastore.preferences.protobuf.Cthrow.Cfor
    /* renamed from: class */
    public final Cthrow.Cfor mo3833class(int i) {
        if (i >= this.f6637for) {
            return new Cstatic(Arrays.copyOf(this.f6636do, i), this.f6637for);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3988else(int i) {
        if (i < 0 || i >= this.f6637for) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6637for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cstatic)) {
            return super.equals(obj);
        }
        Cstatic cstatic = (Cstatic) obj;
        if (this.f6637for != cstatic.f6637for) {
            return false;
        }
        long[] jArr = cstatic.f6636do;
        for (int i = 0; i < this.f6637for; i++) {
            if (this.f6636do[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m3988else(i);
        return Long.valueOf(this.f6636do[i]);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f6637for; i2++) {
            i = (i * 31) + Cthrow.m3995do(this.f6636do[i2]);
        }
        return i;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m3881try();
        for (int i = 0; i < this.f6637for; i++) {
            if (obj.equals(Long.valueOf(this.f6636do[i]))) {
                long[] jArr = this.f6636do;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f6637for - i) - 1);
                this.f6637for--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m3881try();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f6636do;
        System.arraycopy(jArr, i2, jArr, i, this.f6637for - i2);
        this.f6637for -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m3881try();
        m3988else(i);
        long[] jArr = this.f6636do;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6637for;
    }

    public Cstatic(long[] jArr, int i) {
        this.f6636do = jArr;
        this.f6637for = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m3881try();
        m3988else(i);
        long[] jArr = this.f6636do;
        long j = jArr[i];
        if (i < this.f6637for - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.f6637for--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m3987case(((Long) obj).longValue());
        return true;
    }
}
