package j$.util.stream;

import j$.util.Objects;
import java.util.function.IntConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class x0 extends f5 {
    public boolean b;
    public final j$.util.g0 c;
    public final /* synthetic */ u0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(u0 u0Var, l5 l5Var) {
        super(l5Var);
        this.d = u0Var;
        l5 l5Var2 = this.a;
        Objects.requireNonNull(l5Var2);
        this.c = new j$.util.g0(l5Var2, 1);
    }

    @Override // j$.util.stream.j5, j$.util.stream.l5
    public final void accept(int i) {
        IntStream intStream = (IntStream) ((l0) this.d.m).apply(i);
        if (intStream != null) {
            try {
                boolean z = this.b;
                j$.util.g0 g0Var = this.c;
                if (z) {
                    j$.util.v0 spliterator = intStream.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((IntConsumer) g0Var)) {
                    }
                } else {
                    intStream.sequential().forEach(g0Var);
                }
            } catch (Throwable th) {
                try {
                    intStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (intStream != null) {
            intStream.close();
        }
    }

    @Override // j$.util.stream.f5, j$.util.stream.l5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.f5, j$.util.stream.l5
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
