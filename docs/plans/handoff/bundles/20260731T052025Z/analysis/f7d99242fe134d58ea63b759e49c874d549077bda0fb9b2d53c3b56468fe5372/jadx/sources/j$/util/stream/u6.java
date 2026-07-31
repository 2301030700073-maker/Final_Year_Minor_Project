package j$.util.stream;

import j$.lang.Iterable;
import j$.util.Spliterator;
import java.util.Arrays;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class u6 extends c implements Iterable, Iterable {
    public Object e;
    public Object[] f;

    public u6(int i) {
        super(i);
        this.e = newArray(1 << this.a);
    }

    public final void A() {
        long w;
        if (this.b == w(this.e)) {
            if (this.f == null) {
                Object[] z = z();
                this.f = z;
                this.d = new long[8];
                z[0] = this.e;
            }
            int i = this.c;
            int i2 = i + 1;
            Object[] objArr = this.f;
            if (i2 >= objArr.length || objArr[i2] == null) {
                if (i == 0) {
                    w = w(this.e);
                } else {
                    w = w(objArr[i]) + this.d[i];
                }
                y(w + 1);
            }
            this.b = 0;
            int i3 = this.c + 1;
            this.c = i3;
            this.e = this.f[i3];
        }
    }

    public Object b() {
        long count = count();
        if (count >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        Object newArray = newArray((int) count);
        f(0, newArray);
        return newArray;
    }

    @Override // j$.util.stream.c
    public final void clear() {
        Object[] objArr = this.f;
        if (objArr != null) {
            this.e = objArr[0];
            this.f = null;
            this.d = null;
        }
        this.b = 0;
        this.c = 0;
    }

    public void f(int i, Object obj) {
        long j = i;
        long count = count() + j;
        if (count > w(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.c == 0) {
            System.arraycopy(this.e, 0, obj, i, this.b);
            return;
        }
        for (int i2 = 0; i2 < this.c; i2++) {
            Object obj2 = this.f[i2];
            System.arraycopy(obj2, 0, obj, i, w(obj2));
            i += w(this.f[i2]);
        }
        int i3 = this.b;
        if (i3 > 0) {
            System.arraycopy(this.e, 0, obj, i, i3);
        }
    }

    public void g(Object obj) {
        for (int i = 0; i < this.c; i++) {
            Object obj2 = this.f[i];
            u(obj2, 0, w(obj2), obj);
        }
        u(this.e, 0, this.b, obj);
    }

    public abstract Object newArray(int i);

    public abstract Spliterator spliterator();

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public abstract void u(Object obj, int i, int i2, Object obj2);

    public abstract int w(Object obj);

    public final int x(long j) {
        if (this.c == 0) {
            if (j < this.b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= count()) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        for (int i = 0; i <= this.c; i++) {
            if (j < this.d[i] + w(this.f[i])) {
                return i;
            }
        }
        throw new IndexOutOfBoundsException(Long.toString(j));
    }

    public final void y(long j) {
        long w;
        int i = this.c;
        if (i == 0) {
            w = w(this.e);
        } else {
            w = w(this.f[i]) + this.d[i];
        }
        if (j > w) {
            if (this.f == null) {
                Object[] z = z();
                this.f = z;
                this.d = new long[8];
                z[0] = this.e;
            }
            int i2 = this.c + 1;
            while (j > w) {
                Object[] objArr = this.f;
                if (i2 >= objArr.length) {
                    int length = objArr.length * 2;
                    this.f = Arrays.copyOf(objArr, length);
                    this.d = Arrays.copyOf(this.d, length);
                }
                int i3 = this.a;
                if (i2 != 0 && i2 != 1) {
                    i3 = Math.min((i3 + i2) - 1, 30);
                }
                int i4 = 1 << i3;
                this.f[i2] = newArray(i4);
                long[] jArr = this.d;
                jArr[i2] = jArr[i2 - 1] + w(this.f[r6]);
                w += i4;
                i2++;
            }
        }
    }

    public abstract Object[] z();

    public u6() {
        this.e = newArray(16);
    }
}
