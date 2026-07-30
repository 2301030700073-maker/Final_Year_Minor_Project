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

/* renamed from: androidx.datastore.preferences.protobuf.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew extends Cfor<Boolean> implements RandomAccess, Dx {

    /* renamed from: do, reason: not valid java name */
    public boolean[] f6611do;

    /* renamed from: for, reason: not valid java name */
    public int f6612for;

    static {
        ((Cfor) new Cnew(new boolean[0], 0)).f6594do = false;
    }

    public Cnew() {
        this(new boolean[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m3881try();
        if (i < 0 || i > (i2 = this.f6612for)) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6612for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
        boolean[] zArr = this.f6611do;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[Cif.m6917if(i2, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f6611do, i, zArr2, i + 1, this.f6612for - i);
            this.f6611do = zArr2;
        }
        this.f6611do[i] = booleanValue;
        this.f6612for++;
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        m3881try();
        Charset charset = Cthrow.f6655do;
        collection.getClass();
        if (!(collection instanceof Cnew)) {
            return super.addAll(collection);
        }
        Cnew cnew = (Cnew) collection;
        int i = cnew.f6612for;
        if (i == 0) {
            return false;
        }
        int i2 = this.f6612for;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f6611do;
        if (i3 > zArr.length) {
            this.f6611do = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(cnew.f6611do, 0, this.f6611do, this.f6612for, cnew.f6612for);
        this.f6612for = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3947case(boolean z) {
        m3881try();
        int i = this.f6612for;
        boolean[] zArr = this.f6611do;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[Cif.m6917if(i, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f6611do = zArr2;
        }
        boolean[] zArr3 = this.f6611do;
        int i2 = this.f6612for;
        this.f6612for = i2 + 1;
        zArr3[i2] = z;
    }

    @Override // androidx.datastore.preferences.protobuf.Cthrow.Cfor
    /* renamed from: class */
    public final Cthrow.Cfor mo3833class(int i) {
        if (i >= this.f6612for) {
            return new Cnew(Arrays.copyOf(this.f6611do, i), this.f6612for);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3948else(int i) {
        if (i < 0 || i >= this.f6612for) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6612for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cnew)) {
            return super.equals(obj);
        }
        Cnew cnew = (Cnew) obj;
        if (this.f6612for != cnew.f6612for) {
            return false;
        }
        boolean[] zArr = cnew.f6611do;
        for (int i = 0; i < this.f6612for; i++) {
            if (this.f6611do[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m3948else(i);
        return Boolean.valueOf(this.f6611do[i]);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f6612for; i2++) {
            int i3 = i * 31;
            boolean z = this.f6611do[i2];
            Charset charset = Cthrow.f6655do;
            i = i3 + (z ? 1231 : 1237);
        }
        return i;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m3881try();
        for (int i = 0; i < this.f6612for; i++) {
            if (obj.equals(Boolean.valueOf(this.f6611do[i]))) {
                boolean[] zArr = this.f6611do;
                System.arraycopy(zArr, i + 1, zArr, i, (this.f6612for - i) - 1);
                this.f6612for--;
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
        boolean[] zArr = this.f6611do;
        System.arraycopy(zArr, i2, zArr, i, this.f6612for - i2);
        this.f6612for -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m3881try();
        m3948else(i);
        boolean[] zArr = this.f6611do;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6612for;
    }

    public Cnew(boolean[] zArr, int i) {
        this.f6611do = zArr;
        this.f6612for = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m3881try();
        m3948else(i);
        boolean[] zArr = this.f6611do;
        boolean z = zArr[i];
        if (i < this.f6612for - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (r2 - i) - 1);
        }
        this.f6612for--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m3947case(((Boolean) obj).booleanValue());
        return true;
    }
}
