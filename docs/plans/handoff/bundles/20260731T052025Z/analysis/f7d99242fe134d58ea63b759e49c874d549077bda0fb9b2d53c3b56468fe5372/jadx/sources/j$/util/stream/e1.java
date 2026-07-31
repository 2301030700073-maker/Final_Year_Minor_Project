package j$.util.stream;

import j$.util.Objects;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class e1 extends g5 {
    public boolean b;
    public final j$.util.k0 c;
    public final /* synthetic */ f1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e1(f1 f1Var, l5 l5Var) {
        super(l5Var);
        this.d = f1Var;
        l5 l5Var2 = this.a;
        Objects.requireNonNull(l5Var2);
        this.c = new j$.util.k0(l5Var2, 1);
    }

    @Override // j$.util.stream.k5, j$.util.stream.l5
    public final void accept(long j) {
        m1 m1Var = (m1) ((j$.desugar.sun.nio.fs.g) this.d.m).apply(j);
        if (m1Var != null) {
            try {
                boolean z = this.b;
                j$.util.k0 k0Var = this.c;
                if (z) {
                    j$.util.y0 spliterator = m1Var.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((LongConsumer) k0Var)) {
                    }
                } else {
                    m1Var.sequential().forEach(k0Var);
                }
            } catch (Throwable th) {
                try {
                    m1Var.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (m1Var != null) {
            m1Var.close();
        }
    }

    @Override // j$.util.stream.g5, j$.util.stream.l5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.g5, j$.util.stream.l5
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
