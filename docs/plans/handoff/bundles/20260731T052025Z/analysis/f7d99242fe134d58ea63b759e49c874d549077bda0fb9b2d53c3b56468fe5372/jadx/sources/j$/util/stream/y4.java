package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class y4 extends h5 {
    public final /* synthetic */ int b = 0;
    public boolean c;
    public final Object d;
    public final /* synthetic */ a e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y4(r rVar, l5 l5Var) {
        super(l5Var);
        this.e = rVar;
        l5 l5Var2 = this.a;
        Objects.requireNonNull(l5Var2);
        this.d = new j$.util.c0(l5Var2, 1);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void r(Object obj) {
        int i = this.b;
        l5 l5Var = this.a;
        a aVar = this.e;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                j$.util.k0 k0Var = (j$.util.k0) obj2;
                m1 m1Var = (m1) ((j$.desugar.sun.nio.fs.g) ((f1) aVar).m).apply((j$.desugar.sun.nio.fs.g) obj);
                if (m1Var != null) {
                    try {
                        if (this.c) {
                            j$.util.y0 spliterator = m1Var.sequential().spliterator();
                            while (!l5Var.e() && spliterator.tryAdvance((LongConsumer) k0Var)) {
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
                    return;
                }
                return;
            case 1:
                j$.util.g0 g0Var = (j$.util.g0) obj2;
                IntStream intStream = (IntStream) ((j$.desugar.sun.nio.fs.g) ((u0) aVar).m).apply((j$.desugar.sun.nio.fs.g) obj);
                if (intStream != null) {
                    try {
                        if (this.c) {
                            j$.util.v0 spliterator2 = intStream.sequential().spliterator();
                            while (!l5Var.e() && spliterator2.tryAdvance((IntConsumer) g0Var)) {
                            }
                        } else {
                            intStream.sequential().forEach(g0Var);
                        }
                    } catch (Throwable th3) {
                        try {
                            intStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                j$.util.c0 c0Var = (j$.util.c0) obj2;
                d0 d0Var = (d0) ((j$.desugar.sun.nio.fs.g) ((r) aVar).m).apply((j$.desugar.sun.nio.fs.g) obj);
                if (d0Var != null) {
                    try {
                        if (this.c) {
                            j$.util.s0 spliterator3 = d0Var.sequential().spliterator();
                            while (!l5Var.e() && spliterator3.tryAdvance((DoubleConsumer) c0Var)) {
                            }
                        } else {
                            d0Var.sequential().forEach(c0Var);
                        }
                    } catch (Throwable th5) {
                        try {
                            d0Var.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (d0Var != null) {
                    d0Var.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.h5, j$.util.stream.l5
    public final void c(long j) {
        switch (this.b) {
            case 0:
                this.a.c(-1L);
                break;
            case 1:
                this.a.c(-1L);
                break;
            default:
                this.a.c(-1L);
                break;
        }
    }

    @Override // j$.util.stream.h5, j$.util.stream.l5
    public final boolean e() {
        switch (this.b) {
            case 0:
                this.c = true;
                break;
            case 1:
                this.c = true;
                break;
            default:
                this.c = true;
                break;
        }
        return this.a.e();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y4(u0 u0Var, l5 l5Var) {
        super(l5Var);
        this.e = u0Var;
        l5 l5Var2 = this.a;
        Objects.requireNonNull(l5Var2);
        this.d = new j$.util.g0(l5Var2, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y4(f1 f1Var, l5 l5Var) {
        super(l5Var);
        this.e = f1Var;
        l5 l5Var2 = this.a;
        Objects.requireNonNull(l5Var2);
        this.d = new j$.util.k0(l5Var2, 1);
    }
}
