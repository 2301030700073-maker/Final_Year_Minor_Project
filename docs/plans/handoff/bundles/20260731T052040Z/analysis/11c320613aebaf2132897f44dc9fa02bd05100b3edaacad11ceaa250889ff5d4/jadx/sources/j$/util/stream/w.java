package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class w extends h5 {
    public boolean b;
    public final j$.util.d0 c;
    public final /* synthetic */ s d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(s sVar, o5 o5Var) {
        super(o5Var);
        this.d = sVar;
        o5 o5Var2 = this.a;
        Objects.requireNonNull(o5Var2);
        this.c = new j$.util.d0(o5Var2, 1);
    }

    @Override // j$.util.stream.l5, j$.util.stream.o5
    public final void accept(double d) {
        e0 e0Var = (e0) ((j$.desugar.sun.nio.fs.g) this.d.m).apply(d);
        if (e0Var != null) {
            try {
                boolean z = this.b;
                j$.util.d0 d0Var = this.c;
                if (z) {
                    j$.util.t0 spliterator = e0Var.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((DoubleConsumer) d0Var)) {
                    }
                } else {
                    e0Var.sequential().forEach(d0Var);
                }
            } catch (Throwable th) {
                try {
                    e0Var.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (e0Var != null) {
            e0Var.close();
        }
    }

    @Override // j$.util.stream.h5, j$.util.stream.o5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.h5, j$.util.stream.o5
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
