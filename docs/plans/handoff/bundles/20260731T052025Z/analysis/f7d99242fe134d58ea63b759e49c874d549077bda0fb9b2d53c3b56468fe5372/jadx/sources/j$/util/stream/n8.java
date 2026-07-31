package j$.util.stream;

import java.util.function.LongPredicate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class n8 extends g5 {
    public final boolean b;

    public n8(f6 f6Var, l5 l5Var) {
        super(l5Var);
        this.b = true;
    }

    @Override // j$.util.stream.k5, j$.util.stream.l5
    public final void accept(long j) {
        if (this.b) {
            LongPredicate longPredicate = null;
            longPredicate.test(j);
            throw null;
        }
    }

    @Override // j$.util.stream.g5, j$.util.stream.l5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.g5, j$.util.stream.l5
    public final boolean e() {
        return !this.b || this.a.e();
    }
}
