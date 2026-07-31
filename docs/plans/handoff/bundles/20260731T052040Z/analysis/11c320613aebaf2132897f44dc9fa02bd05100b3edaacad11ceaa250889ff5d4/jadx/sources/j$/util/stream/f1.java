package j$.util.stream;

import j$.util.Objects;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class f1 extends j5 {
    public boolean b;
    public final j$.util.l0 c;
    public final /* synthetic */ g1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f1(g1 g1Var, o5 o5Var) {
        super(o5Var);
        this.d = g1Var;
        o5 o5Var2 = this.a;
        Objects.requireNonNull(o5Var2);
        this.c = new j$.util.l0(o5Var2, 1);
    }

    @Override // j$.util.stream.n5, j$.util.stream.o5
    public final void accept(long j) {
        LongStream longStream = (LongStream) ((j$.desugar.sun.nio.fs.g) this.d.m).apply(j);
        if (longStream != null) {
            try {
                boolean z = this.b;
                j$.util.l0 l0Var = this.c;
                if (z) {
                    j$.util.y0 spliterator = longStream.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((LongConsumer) l0Var)) {
                    }
                } else {
                    longStream.sequential().forEach(l0Var);
                }
            } catch (Throwable th) {
                try {
                    longStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (longStream != null) {
            longStream.close();
        }
    }

    @Override // j$.util.stream.j5, j$.util.stream.o5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.j5, j$.util.stream.o5
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
