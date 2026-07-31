package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class z4 extends k5 {
    public final /* synthetic */ int b = 0;
    public boolean c;
    public final Object d;
    public final /* synthetic */ a e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z4(g1 g1Var, o5 o5Var) {
        super(o5Var);
        this.e = g1Var;
        o5 o5Var2 = this.a;
        Objects.requireNonNull(o5Var2);
        this.d = new j$.util.l0(o5Var2, 1);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.b;
        o5 o5Var = this.a;
        a aVar = this.e;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                j$.util.l0 l0Var = (j$.util.l0) obj2;
                LongStream longStream = (LongStream) ((j$.desugar.sun.nio.fs.g) ((g1) aVar).m).apply((j$.desugar.sun.nio.fs.g) obj);
                if (longStream != null) {
                    try {
                        if (this.c) {
                            j$.util.y0 spliterator = longStream.sequential().spliterator();
                            while (!o5Var.e() && spliterator.tryAdvance((LongConsumer) l0Var)) {
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
                    return;
                }
                return;
            default:
                j$.util.d0 d0Var = (j$.util.d0) obj2;
                e0 e0Var = (e0) ((j$.desugar.sun.nio.fs.g) ((s) aVar).m).apply((j$.desugar.sun.nio.fs.g) obj);
                if (e0Var != null) {
                    try {
                        if (this.c) {
                            j$.util.t0 spliterator2 = e0Var.sequential().spliterator();
                            while (!o5Var.e() && spliterator2.tryAdvance((DoubleConsumer) d0Var)) {
                            }
                        } else {
                            e0Var.sequential().forEach(d0Var);
                        }
                    } catch (Throwable th3) {
                        try {
                            e0Var.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (e0Var != null) {
                    e0Var.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final void c(long j) {
        switch (this.b) {
            case 0:
                this.a.c(-1L);
                break;
            default:
                this.a.c(-1L);
                break;
        }
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final boolean e() {
        switch (this.b) {
            case 0:
                this.c = true;
                break;
            default:
                this.c = true;
                break;
        }
        return this.a.e();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z4(s sVar, o5 o5Var) {
        super(o5Var);
        this.e = sVar;
        o5 o5Var2 = this.a;
        Objects.requireNonNull(o5Var2);
        this.d = new j$.util.d0(o5Var2, 1);
    }
}
