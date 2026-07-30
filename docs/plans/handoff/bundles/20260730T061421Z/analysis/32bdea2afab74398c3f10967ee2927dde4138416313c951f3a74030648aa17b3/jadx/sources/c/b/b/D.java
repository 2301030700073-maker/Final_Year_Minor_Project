package c.b.b;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class D extends AbstractC0445c implements O, RandomAccess, InterfaceC0485w0 {

    /* renamed from: d, reason: collision with root package name */
    public static final D f3114d;

    /* renamed from: b, reason: collision with root package name */
    public float[] f3115b;

    /* renamed from: c, reason: collision with root package name */
    public int f3116c;

    static {
        D d2 = new D(new float[0], 0);
        f3114d = d2;
        d2.f3173a = false;
    }

    public D() {
        this.f3115b = new float[10];
        this.f3116c = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        h(i, ((Float) obj).floatValue());
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        g();
        P.a(collection);
        if (!(collection instanceof D)) {
            return super.addAll(collection);
        }
        D d2 = (D) collection;
        int i = d2.f3116c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f3116c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f3115b;
        if (i3 > fArr.length) {
            this.f3115b = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(d2.f3115b, 0, this.f3115b, this.f3116c, d2.f3116c);
        this.f3116c = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // c.b.b.O
    public O d(int i) {
        if (i >= this.f3116c) {
            return new D(Arrays.copyOf(this.f3115b, i), this.f3116c);
        }
        throw new IllegalArgumentException();
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D)) {
            return super.equals(obj);
        }
        D d2 = (D) obj;
        if (this.f3116c != d2.f3116c) {
            return false;
        }
        float[] fArr = d2.f3115b;
        for (int i = 0; i < this.f3116c; i++) {
            if (Float.floatToIntBits(this.f3115b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        i(i);
        return Float.valueOf(this.f3115b[i]);
    }

    public final void h(int i, float f) {
        int i2;
        g();
        if (i < 0 || i > (i2 = this.f3116c)) {
            throw new IndexOutOfBoundsException(j(i));
        }
        float[] fArr = this.f3115b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f3115b, i, fArr2, i + 1, this.f3116c - i);
            this.f3115b = fArr2;
        }
        this.f3115b[i] = f;
        this.f3116c++;
        ((AbstractList) this).modCount++;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f3116c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f3115b[i2]);
        }
        return i;
    }

    public final void i(int i) {
        if (i < 0 || i >= this.f3116c) {
            throw new IndexOutOfBoundsException(j(i));
        }
    }

    public final String j(int i) {
        return "Index:" + i + ", Size:" + this.f3116c;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        g();
        for (int i = 0; i < this.f3116c; i++) {
            if (obj.equals(Float.valueOf(this.f3115b[i]))) {
                float[] fArr = this.f3115b;
                System.arraycopy(fArr, i + 1, fArr, i, (this.f3116c - i) - 1);
                this.f3116c--;
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
        float[] fArr = this.f3115b;
        System.arraycopy(fArr, i2, fArr, i, this.f3116c - i2);
        this.f3116c -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        g();
        i(i);
        float[] fArr = this.f3115b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3116c;
    }

    public D(float[] fArr, int i) {
        this.f3115b = fArr;
        this.f3116c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i) {
        g();
        i(i);
        float[] fArr = this.f3115b;
        float f = fArr[i];
        if (i < this.f3116c - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (r2 - i) - 1);
        }
        this.f3116c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }
}
