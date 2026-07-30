package c.b.b;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class L extends AbstractC0445c implements O, RandomAccess, InterfaceC0485w0 {

    /* renamed from: d, reason: collision with root package name */
    public static final L f3134d;

    /* renamed from: b, reason: collision with root package name */
    public int[] f3135b;

    /* renamed from: c, reason: collision with root package name */
    public int f3136c;

    static {
        L l = new L(new int[0], 0);
        f3134d = l;
        l.f3173a = false;
    }

    public L() {
        this.f3135b = new int[10];
        this.f3136c = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        h(i, ((Integer) obj).intValue());
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        g();
        P.a(collection);
        if (!(collection instanceof L)) {
            return super.addAll(collection);
        }
        L l = (L) collection;
        int i = l.f3136c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f3136c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f3135b;
        if (i3 > iArr.length) {
            this.f3135b = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(l.f3135b, 0, this.f3135b, this.f3136c, l.f3136c);
        this.f3136c = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // c.b.b.O
    public O d(int i) {
        if (i >= this.f3136c) {
            return new L(Arrays.copyOf(this.f3135b, i), this.f3136c);
        }
        throw new IllegalArgumentException();
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof L)) {
            return super.equals(obj);
        }
        L l = (L) obj;
        if (this.f3136c != l.f3136c) {
            return false;
        }
        int[] iArr = l.f3135b;
        for (int i = 0; i < this.f3136c; i++) {
            if (this.f3135b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        i(i);
        return Integer.valueOf(this.f3135b[i]);
    }

    public final void h(int i, int i2) {
        int i3;
        g();
        if (i < 0 || i > (i3 = this.f3136c)) {
            throw new IndexOutOfBoundsException(k(i));
        }
        int[] iArr = this.f3135b;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f3135b, i, iArr2, i + 1, this.f3136c - i);
            this.f3135b = iArr2;
        }
        this.f3135b[i] = i2;
        this.f3136c++;
        ((AbstractList) this).modCount++;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f3136c; i2++) {
            i = (i * 31) + this.f3135b[i2];
        }
        return i;
    }

    public final void i(int i) {
        if (i < 0 || i >= this.f3136c) {
            throw new IndexOutOfBoundsException(k(i));
        }
    }

    public int j(int i) {
        i(i);
        return this.f3135b[i];
    }

    public final String k(int i) {
        return "Index:" + i + ", Size:" + this.f3136c;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        g();
        for (int i = 0; i < this.f3136c; i++) {
            if (obj.equals(Integer.valueOf(this.f3135b[i]))) {
                int[] iArr = this.f3135b;
                System.arraycopy(iArr, i + 1, iArr, i, (this.f3136c - i) - 1);
                this.f3136c--;
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
        int[] iArr = this.f3135b;
        System.arraycopy(iArr, i2, iArr, i, this.f3136c - i2);
        this.f3136c -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        g();
        i(i);
        int[] iArr = this.f3135b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3136c;
    }

    public L(int[] iArr, int i) {
        this.f3135b = iArr;
        this.f3136c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i) {
        g();
        i(i);
        int[] iArr = this.f3135b;
        int i2 = iArr[i];
        if (i < this.f3136c - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.f3136c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }
}
