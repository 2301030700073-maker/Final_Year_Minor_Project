package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class v extends e5 {
    public boolean b;
    public final j$.util.c0 c;
    public final /* synthetic */ r d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(r rVar, l5 l5Var) {
        super(l5Var);
        this.d = rVar;
        l5 l5Var2 = this.a;
        Objects.requireNonNull(l5Var2);
        this.c = new j$.util.c0(l5Var2, 1);
    }

    @Override // j$.util.stream.i5, j$.util.stream.l5
    public final void accept(double d) {
        d0 d0Var = (d0) ((j$.desugar.sun.nio.fs.g) this.d.m).apply(d);
        if (d0Var != null) {
            try {
                boolean z = this.b;
                j$.util.c0 c0Var = this.c;
                if (z) {
                    j$.util.s0 spliterator = d0Var.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((DoubleConsumer) c0Var)) {
                    }
                } else {
                    d0Var.sequential().forEach(c0Var);
                }
            } catch (Throwable th) {
                try {
                    d0Var.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (d0Var != null) {
            d0Var.close();
        }
    }

    @Override // j$.util.stream.e5, j$.util.stream.l5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.e5, j$.util.stream.l5
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
