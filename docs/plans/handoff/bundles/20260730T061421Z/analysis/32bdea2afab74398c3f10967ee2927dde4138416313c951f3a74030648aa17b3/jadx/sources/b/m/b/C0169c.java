package b.m.b;

/* renamed from: b.m.b.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0169c {

    /* renamed from: a, reason: collision with root package name */
    public long f1136a = 0;

    /* renamed from: b, reason: collision with root package name */
    public C0169c f1137b;

    public void a(int i) {
        if (i < 64) {
            this.f1136a &= ~(1 << i);
            return;
        }
        C0169c c0169c = this.f1137b;
        if (c0169c != null) {
            c0169c.a(i - 64);
        }
    }

    public int b(int i) {
        C0169c c0169c = this.f1137b;
        if (c0169c == null) {
            if (i >= 64) {
                return Long.bitCount(this.f1136a);
            }
            return Long.bitCount(((1 << i) - 1) & this.f1136a);
        }
        if (i < 64) {
            return Long.bitCount(((1 << i) - 1) & this.f1136a);
        }
        return Long.bitCount(this.f1136a) + c0169c.b(i - 64);
    }

    public final void c() {
        if (this.f1137b == null) {
            this.f1137b = new C0169c();
        }
    }

    public boolean d(int i) {
        if (i < 64) {
            return ((1 << i) & this.f1136a) != 0;
        }
        c();
        return this.f1137b.d(i - 64);
    }

    public void e(int i, boolean z) {
        if (i >= 64) {
            c();
            this.f1137b.e(i - 64, z);
            return;
        }
        boolean z2 = (this.f1136a & Long.MIN_VALUE) != 0;
        long j = (1 << i) - 1;
        long j2 = this.f1136a;
        this.f1136a = ((j2 & (~j)) << 1) | (j2 & j);
        if (z) {
            h(i);
        } else {
            a(i);
        }
        if (z2 || this.f1137b != null) {
            c();
            this.f1137b.e(0, z2);
        }
    }

    public boolean f(int i) {
        if (i >= 64) {
            c();
            return this.f1137b.f(i - 64);
        }
        long j = 1 << i;
        boolean z = (this.f1136a & j) != 0;
        long j2 = this.f1136a & (~j);
        this.f1136a = j2;
        long j3 = j - 1;
        this.f1136a = (j2 & j3) | Long.rotateRight((~j3) & j2, 1);
        C0169c c0169c = this.f1137b;
        if (c0169c != null) {
            if (c0169c.d(0)) {
                h(63);
            }
            this.f1137b.f(0);
        }
        return z;
    }

    public void g() {
        this.f1136a = 0L;
        C0169c c0169c = this.f1137b;
        if (c0169c != null) {
            c0169c.g();
        }
    }

    public void h(int i) {
        if (i < 64) {
            this.f1136a |= 1 << i;
        } else {
            c();
            this.f1137b.h(i - 64);
        }
    }

    public String toString() {
        if (this.f1137b == null) {
            return Long.toBinaryString(this.f1136a);
        }
        return this.f1137b.toString() + "xx" + Long.toBinaryString(this.f1136a);
    }
}
