package c.b.b;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: c.b.b.c0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0446c0 extends AbstractC0445c implements O, RandomAccess, InterfaceC0485w0 {

    /* renamed from: d, reason: collision with root package name */
    public static final C0446c0 f3174d;

    /* renamed from: b, reason: collision with root package name */
    public long[] f3175b;

    /* renamed from: c, reason: collision with root package name */
    public int f3176c;

    static {
        C0446c0 c0446c0 = new C0446c0(new long[0], 0);
        f3174d = c0446c0;
        c0446c0.f3173a = false;
    }

    public C0446c0() {
        this.f3175b = new long[10];
        this.f3176c = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        h(i, ((Long) obj).longValue());
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        g();
        P.a(collection);
        if (!(collection instanceof C0446c0)) {
            return super.addAll(collection);
        }
        C0446c0 c0446c0 = (C0446c0) collection;
        int i = c0446c0.f3176c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f3176c;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f3175b;
        if (i3 > jArr.length) {
            this.f3175b = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(c0446c0.f3175b, 0, this.f3175b, this.f3176c, c0446c0.f3176c);
        this.f3176c = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // c.b.b.O
    public O d(int i) {
        if (i >= this.f3176c) {
            return new C0446c0(Arrays.copyOf(this.f3175b, i), this.f3176c);
        }
        throw new IllegalArgumentException();
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0446c0)) {
            return super.equals(obj);
        }
        C0446c0 c0446c0 = (C0446c0) obj;
        if (this.f3176c != c0446c0.f3176c) {
            return false;
        }
        long[] jArr = c0446c0.f3175b;
        for (int i = 0; i < this.f3176c; i++) {
            if (this.f3175b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        i(i);
        return Long.valueOf(this.f3175b[i]);
    }

    public final void h(int i, long j) {
        int i2;
        g();
        if (i < 0 || i > (i2 = this.f3176c)) {
            throw new IndexOutOfBoundsException(k(i));
        }
        long[] jArr = this.f3175b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f3175b, i, jArr2, i + 1, this.f3176c - i);
            this.f3175b = jArr2;
        }
        this.f3175b[i] = j;
        this.f3176c++;
        ((AbstractList) this).modCount++;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f3176c; i2++) {
            i = (i * 31) + P.e(this.f3175b[i2]);
        }
        return i;
    }

    public final void i(int i) {
        if (i < 0 || i >= this.f3176c) {
            throw new IndexOutOfBoundsException(k(i));
        }
    }

    public long j(int i) {
        i(i);
        return this.f3175b[i];
    }

    public final String k(int i) {
        return "Index:" + i + ", Size:" + this.f3176c;
    }

    @Override // c.b.b.AbstractC0445c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        g();
        for (int i = 0; i < this.f3176c; i++) {
            if (obj.equals(Long.valueOf(this.f3175b[i]))) {
                long[] jArr = this.f3175b;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f3176c - i) - 1);
                this.f3176c--;
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
        long[] jArr = this.f3175b;
        System.arraycopy(jArr, i2, jArr, i, this.f3176c - i2);
        this.f3176c -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        g();
        i(i);
        long[] jArr = this.f3175b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f3176c;
    }

    public C0446c0(long[] jArr, int i) {
        this.f3175b = jArr;
        this.f3176c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i) {
        g();
        i(i);
        long[] jArr = this.f3175b;
        long j = jArr[i];
        if (i < this.f3176c - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.f3176c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }
}
