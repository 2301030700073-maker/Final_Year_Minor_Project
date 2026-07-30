package c.b.b;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: c.b.b.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0480u extends AbstractC0445c implements O, RandomAccess, InterfaceC0485w0 {

    /* renamed from: d, reason: collision with root package name */
    public static final C0480u f3213d;

    /* renamed from: b, reason: collision with root package name */
    public double[] f3214b;

    /* renamed from: c, reason: collision with root package name */
    public int f3215c;

    static {
        C0480u c0480u = new C0480u(new double[0], 0);
        f3213d = c0480u;
        c0480u.f3173a = false;
    }

    public C0480u() {
        this.f3214b = new double[10];
        this.f3215c = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        h(i, ((Double) obj).doubleValue());
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        g();
        P.a(collection);
        if (!(collection instanceof C0480u)) {
            return super.addAll(collection);
        }
        C0480u c0480u = (C0480u) collection;
        int i = c0480u.f3215c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f3215c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f3214b;
        if (i3 > dArr.length) {
            this.f3214b = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(c0480u.f3214b, 0, this.f3214b, this.f3215c, c0480u.f3215c);
        this.f3215c = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // c.b.b.O
    public O d(int i) {
        if (i >= this.f3215c) {
            return new C0480u(Arrays.copyOf(this.f3214b, i), this.f3215c);
        }
        throw new IllegalArgumentException();
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0480u)) {
            return super.equals(obj);
        }
        C0480u c0480u = (C0480u) obj;
        if (this.f3215c != c0480u.f3215c) {
            return false;
        }
        double[] dArr = c0480u.f3214b;
        for (int i = 0; i < this.f3215c; i++) {
            if (Double.doubleToLongBits(this.f3214b[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        i(i);
        return Double.valueOf(this.f3214b[i]);
    }

    public final void h(int i, double d2) {
        int i2;
        g();
        if (i < 0 || i > (i2 = this.f3215c)) {
            throw new IndexOutOfBoundsException(j(i));
        }
        double[] dArr = this.f3214b;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.f3214b, i, dArr2, i + 1, this.f3215c - i);
            this.f3214b = dArr2;
        }
        this.f3214b[i] = d2;
        this.f3215c++;
        ((AbstractList) this).modCount++;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f3215c; i2++) {
            i = (i * 31) + P.e(Double.doubleToLongBits(this.f3214b[i2]));
        }
        return i;
    }

    public final void i(int i) {
        if (i < 0 || i >= this.f3215c) {
            throw new IndexOutOfBoundsException(j(i));
        }
    }

    public final String j(int i) {
        return "Index:" + i + ", Size:" + this.f3215c;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        g();
        for (int i = 0; i < this.f3215c; i++) {
            if (obj.equals(Double.valueOf(this.f3214b[i]))) {
                double[] dArr = this.f3214b;
                System.arraycopy(dArr, i + 1, dArr, i, (this.f3215c - i) - 1);
                this.f3215c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        g();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f3214b;
        System.arraycopy(dArr, i2, dArr, i, this.f3215c - i2);
        this.f3215c -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        g();
        i(i);
        double[] dArr = this.f3214b;
        double d2 = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3215c;
    }

    public C0480u(double[] dArr, int i) {
        this.f3214b = dArr;
        this.f3215c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i) {
        g();
        i(i);
        double[] dArr = this.f3214b;
        double d2 = dArr[i];
        if (i < this.f3215c - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (r3 - i) - 1);
        }
        this.f3215c--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d2);
    }
}
