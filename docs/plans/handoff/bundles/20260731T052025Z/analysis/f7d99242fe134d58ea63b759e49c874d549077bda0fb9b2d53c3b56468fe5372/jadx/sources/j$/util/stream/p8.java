package j$.util.stream;

import java.util.function.DoublePredicate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class p8 extends e5 {
    public final boolean b;

    public p8(d6 d6Var, l5 l5Var) {
        super(l5Var);
        this.b = true;
    }

    @Override // j$.util.stream.i5, j$.util.stream.l5
    public final void accept(double d) {
        if (this.b) {
            DoublePredicate doublePredicate = null;
            doublePredicate.test(d);
            throw null;
        }
    }

    @Override // j$.util.stream.e5, j$.util.stream.l5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.e5, j$.util.stream.l5
    public final boolean e() {
        return !this.b || this.a.e();
    }
}
