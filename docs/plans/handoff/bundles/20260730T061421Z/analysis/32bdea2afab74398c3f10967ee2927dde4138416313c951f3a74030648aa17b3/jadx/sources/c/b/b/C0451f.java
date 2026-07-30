package c.b.b;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: c.b.b.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0451f extends AbstractC0445c implements O, RandomAccess, InterfaceC0485w0 {

    /* renamed from: d, reason: collision with root package name */
    public static final C0451f f3184d;

    /* renamed from: b, reason: collision with root package name */
    public boolean[] f3185b;

    /* renamed from: c, reason: collision with root package name */
    public int f3186c;

    static {
        C0451f c0451f = new C0451f(new boolean[0], 0);
        f3184d = c0451f;
        c0451f.f3173a = false;
    }

    public C0451f() {
        this.f3185b = new boolean[10];
        this.f3186c = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        h(i, ((Boolean) obj).booleanValue());
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        g();
        P.a(collection);
        if (!(collection instanceof C0451f)) {
            return super.addAll(collection);
        }
        C0451f c0451f = (C0451f) collection;
        int i = c0451f.f3186c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f3186c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f3185b;
        if (i3 > zArr.length) {
            this.f3185b = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(c0451f.f3185b, 0, this.f3185b, this.f3186c, c0451f.f3186c);
        this.f3186c = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // c.b.b.O
    public O d(int i) {
        if (i >= this.f3186c) {
            return new C0451f(Arrays.copyOf(this.f3185b, i), this.f3186c);
        }
        throw new IllegalArgumentException();
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0451f)) {
            return super.equals(obj);
        }
        C0451f c0451f = (C0451f) obj;
        if (this.f3186c != c0451f.f3186c) {
            return false;
        }
        boolean[] zArr = c0451f.f3185b;
        for (int i = 0; i < this.f3186c; i++) {
            if (this.f3185b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        i(i);
        return Boolean.valueOf(this.f3185b[i]);
    }

    public final void h(int i, boolean z) {
        int i2;
        g();
        if (i < 0 || i > (i2 = this.f3186c)) {
            throw new IndexOutOfBoundsException(j(i));
        }
        boolean[] zArr = this.f3185b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f3185b, i, zArr2, i + 1, this.f3186c - i);
            this.f3185b = zArr2;
        }
        this.f3185b[i] = z;
        this.f3186c++;
        ((AbstractList) this).modCount++;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f3186c; i2++) {
            i = (i * 31) + P.c(this.f3185b[i2]);
        }
        return i;
    }

    public final void i(int i) {
        if (i < 0 || i >= this.f3186c) {
            throw new IndexOutOfBoundsException(j(i));
        }
    }

    public final String j(int i) {
        return "Index:" + i + ", Size:" + this.f3186c;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        g();
        for (int i = 0; i < this.f3186c; i++) {
            if (obj.equals(Boolean.valueOf(this.f3185b[i]))) {
                boolean[] zArr = this.f3185b;
                System.arraycopy(zArr, i + 1, zArr, i, (this.f3186c - i) - 1);
                this.f3186c--;
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
        boolean[] zArr = this.f3185b;
        System.arraycopy(zArr, i2, zArr, i, this.f3186c - i2);
        this.f3186c -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        g();
        i(i);
        boolean[] zArr = this.f3185b;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3186c;
    }

    public C0451f(boolean[] zArr, int i) {
        this.f3185b = zArr;
        this.f3186c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i) {
        g();
        i(i);
        boolean[] zArr = this.f3185b;
        boolean z = zArr[i];
        if (i < this.f3186c - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (r2 - i) - 1);
        }
        this.f3186c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }
}
