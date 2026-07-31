package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class c5 extends k5 {
    public boolean b;
    public final j$.util.h0 c;
    public final /* synthetic */ v0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c5(v0 v0Var, o5 o5Var) {
        super(o5Var);
        this.d = v0Var;
        o5 o5Var2 = this.a;
        Objects.requireNonNull(o5Var2);
        this.c = new j$.util.h0(o5Var2, 1);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        IntStream intStream = (IntStream) ((j$.desugar.sun.nio.fs.g) this.d.m).apply((j$.desugar.sun.nio.fs.g) obj);
        if (intStream != null) {
            try {
                boolean z = this.b;
                j$.util.h0 h0Var = this.c;
                if (z) {
                    Spliterator.OfInt spliterator = intStream.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((IntConsumer) h0Var)) {
                    }
                } else {
                    intStream.sequential().forEach(h0Var);
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

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
