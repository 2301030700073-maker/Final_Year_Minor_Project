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

/* renamed from: androidx.datastore.preferences.protobuf.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto extends Cfor<Double> implements RandomAccess, Dx {

    /* renamed from: do, reason: not valid java name */
    public double[] f6595do;

    /* renamed from: for, reason: not valid java name */
    public int f6596for;

    static {
        ((Cfor) new Cgoto(new double[0], 0)).f6594do = false;
    }

    public Cgoto() {
        this(new double[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        m3881try();
        if (i < 0 || i > (i2 = this.f6596for)) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6596for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
        double[] dArr = this.f6595do;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[Cif.m6917if(i2, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f6595do, i, dArr2, i + 1, this.f6596for - i);
            this.f6595do = dArr2;
        }
        this.f6595do[i] = doubleValue;
        this.f6596for++;
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        m3881try();
        Charset charset = Cthrow.f6655do;
        collection.getClass();
        if (!(collection instanceof Cgoto)) {
            return super.addAll(collection);
        }
        Cgoto cgoto = (Cgoto) collection;
        int i = cgoto.f6596for;
        if (i == 0) {
            return false;
        }
        int i2 = this.f6596for;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f6595do;
        if (i3 > dArr.length) {
            this.f6595do = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(cgoto.f6595do, 0, this.f6595do, this.f6596for, cgoto.f6596for);
        this.f6596for = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3882case(double d) {
        m3881try();
        int i = this.f6596for;
        double[] dArr = this.f6595do;
        if (i == dArr.length) {
            double[] dArr2 = new double[Cif.m6917if(i, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f6595do = dArr2;
        }
        double[] dArr3 = this.f6595do;
        int i2 = this.f6596for;
        this.f6596for = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // androidx.datastore.preferences.protobuf.Cthrow.Cfor
    /* renamed from: class */
    public final Cthrow.Cfor mo3833class(int i) {
        if (i >= this.f6596for) {
            return new Cgoto(Arrays.copyOf(this.f6595do, i), this.f6596for);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3883else(int i) {
        if (i < 0 || i >= this.f6596for) {
            StringBuilder m7821else = Cpublic.m7821else("Index:", i, ", Size:");
            m7821else.append(this.f6596for);
            throw new IndexOutOfBoundsException(m7821else.toString());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cgoto)) {
            return super.equals(obj);
        }
        Cgoto cgoto = (Cgoto) obj;
        if (this.f6596for != cgoto.f6596for) {
            return false;
        }
        double[] dArr = cgoto.f6595do;
        for (int i = 0; i < this.f6596for; i++) {
            if (Double.doubleToLongBits(this.f6595do[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m3883else(i);
        return Double.valueOf(this.f6595do[i]);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f6596for; i2++) {
            i = (i * 31) + Cthrow.m3995do(Double.doubleToLongBits(this.f6595do[i2]));
        }
        return i;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m3881try();
        for (int i = 0; i < this.f6596for; i++) {
            if (obj.equals(Double.valueOf(this.f6595do[i]))) {
                double[] dArr = this.f6595do;
                System.arraycopy(dArr, i + 1, dArr, i, (this.f6596for - i) - 1);
                this.f6596for--;
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
        double[] dArr = this.f6595do;
        System.arraycopy(dArr, i2, dArr, i, this.f6596for - i2);
        this.f6596for -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        m3881try();
        m3883else(i);
        double[] dArr = this.f6595do;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6596for;
    }

    public Cgoto(double[] dArr, int i) {
        this.f6595do = dArr;
        this.f6596for = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m3881try();
        m3883else(i);
        double[] dArr = this.f6595do;
        double d = dArr[i];
        if (i < this.f6596for - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (r3 - i) - 1);
        }
        this.f6596for--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfor, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m3882case(((Double) obj).doubleValue());
        return true;
    }
}
