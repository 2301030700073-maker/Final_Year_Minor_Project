package j$.util.stream;

import j$.util.Spliterator;
import java.util.Arrays;

/* renamed from: j$.util.stream.a3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC2996a3 extends AbstractC3012e implements Iterable, j$.lang.a {
    Object e;
    Object[] f;

    AbstractC2996a3() {
        this.e = newArray(16);
    }

    AbstractC2996a3(int i) {
        super(i);
        this.e = newArray(1 << this.a);
    }

    public Object b() {
        long count = count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object newArray = newArray((int) count);
        f(0, newArray);
        return newArray;
    }

    @Override // j$.util.stream.AbstractC3012e
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
        if (count > p(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.c == 0) {
            System.arraycopy(this.e, 0, obj, i, this.b);
            return;
        }
        for (int i2 = 0; i2 < this.c; i2++) {
            Object obj2 = this.f[i2];
            System.arraycopy(obj2, 0, obj, i, p(obj2));
            i += p(this.f[i2]);
        }
        int i3 = this.b;
        if (i3 > 0) {
            System.arraycopy(this.e, 0, obj, i, i3);
        }
    }

    public void g(Object obj) {
        for (int i = 0; i < this.c; i++) {
            Object obj2 = this.f[i];
            o(obj2, 0, p(obj2), obj);
        }
        o(this.e, 0, this.b, obj);
    }

    public abstract Object newArray(int i);

    protected abstract void o(Object obj, int i, int i2, Object obj2);

    protected abstract int p(Object obj);

    protected final int q(long j) {
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
            if (j < this.d[i] + p(this.f[i])) {
                return i;
            }
        }
        throw new IndexOutOfBoundsException(Long.toString(j));
    }

    protected final void r(long j) {
        long p;
        int i = this.c;
        if (i == 0) {
            p = p(this.e);
        } else {
            p = p(this.f[i]) + this.d[i];
        }
        if (j <= p) {
            return;
        }
        if (this.f == null) {
            Object[] s = s();
            this.f = s;
            this.d = new long[8];
            s[0] = this.e;
        }
        int i2 = this.c;
        while (true) {
            i2++;
            if (j <= p) {
                return;
            }
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
            jArr[i2] = jArr[i2 - 1] + p(this.f[r5]);
            p += i4;
        }
    }

    protected abstract Object[] s();

    public abstract Spliterator spliterator();

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    protected final void t() {
        long p;
        if (this.b == p(this.e)) {
            if (this.f == null) {
                Object[] s = s();
                this.f = s;
                this.d = new long[8];
                s[0] = this.e;
            }
            int i = this.c;
            int i2 = i + 1;
            Object[] objArr = this.f;
            if (i2 >= objArr.length || objArr[i2] == null) {
                if (i == 0) {
                    p = p(this.e);
                } else {
                    p = p(objArr[i]) + this.d[i];
                }
                r(p + 1);
            }
            this.b = 0;
            int i3 = this.c + 1;
            this.c = i3;
            this.e = this.f[i3];
        }
    }
}
