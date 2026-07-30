package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3067p extends AbstractC3060n2 {
    public final /* synthetic */ int b = 0;
    boolean c;
    Object d;
    final /* synthetic */ AbstractC3002c e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3067p(r rVar, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.e = rVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3067p(C3101w c3101w, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.e = c3101w;
        InterfaceC3079r2 interfaceC3079r22 = this.a;
        Objects.requireNonNull(interfaceC3079r22);
        this.d = new C3086t(interfaceC3079r22);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3067p(C3106x c3106x, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.e = c3106x;
        InterfaceC3079r2 interfaceC3079r22 = this.a;
        Objects.requireNonNull(interfaceC3079r22);
        this.d = new X(interfaceC3079r22);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3067p(C3111y c3111y, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.e = c3111y;
        InterfaceC3079r2 interfaceC3079r22 = this.a;
        Objects.requireNonNull(interfaceC3079r22);
        this.d = new C3023g0(interfaceC3079r22);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void m(Object obj) {
        int i = this.b;
        AbstractC3002c abstractC3002c = this.e;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        switch (i) {
            case 0:
                if (obj != null) {
                    Object obj2 = this.d;
                    if (obj2 != null && obj.equals(obj2)) {
                        return;
                    }
                } else {
                    if (this.c) {
                        return;
                    }
                    this.c = true;
                    obj = null;
                }
                this.d = obj;
                interfaceC3079r2.m((InterfaceC3079r2) obj);
                return;
            case 1:
                InterfaceC3073q0 interfaceC3073q0 = (InterfaceC3073q0) ((Function) ((C3111y) abstractC3002c).t).apply(obj);
                if (interfaceC3073q0 != null) {
                    try {
                        if (this.c) {
                            j$.util.b0 spliterator = interfaceC3073q0.sequential().spliterator();
                            while (!interfaceC3079r2.e() && spliterator.tryAdvance((LongConsumer) this.d)) {
                            }
                        } else {
                            interfaceC3073q0.sequential().forEach((LongConsumer) this.d);
                        }
                    } catch (Throwable th) {
                        try {
                            interfaceC3073q0.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (interfaceC3073q0 != null) {
                    interfaceC3073q0.close();
                    return;
                }
                return;
            case 2:
                IntStream intStream = (IntStream) ((Function) ((C3106x) abstractC3002c).t).apply(obj);
                if (intStream != null) {
                    try {
                        if (this.c) {
                            j$.util.Y spliterator2 = intStream.sequential().spliterator();
                            while (!interfaceC3079r2.e() && spliterator2.tryAdvance((IntConsumer) this.d)) {
                            }
                        } else {
                            intStream.sequential().forEach((IntConsumer) this.d);
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
                H h = (H) ((Function) ((C3101w) abstractC3002c).t).apply(obj);
                if (h != null) {
                    try {
                        if (this.c) {
                            j$.util.V spliterator3 = h.sequential().spliterator();
                            while (!interfaceC3079r2.e() && spliterator3.tryAdvance((DoubleConsumer) this.d)) {
                            }
                        } else {
                            h.sequential().forEach((DoubleConsumer) this.d);
                        }
                    } catch (Throwable th5) {
                        try {
                            h.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (h != null) {
                    h.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        switch (i) {
            case 0:
                this.c = false;
                this.d = null;
                interfaceC3079r2.c(-1L);
                break;
            case 1:
                interfaceC3079r2.c(-1L);
                break;
            case 2:
                interfaceC3079r2.c(-1L);
                break;
            default:
                interfaceC3079r2.c(-1L);
                break;
        }
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final boolean e() {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        switch (i) {
            case 1:
                this.c = true;
                return interfaceC3079r2.e();
            case 2:
                this.c = true;
                return interfaceC3079r2.e();
            case 3:
                this.c = true;
                return interfaceC3079r2.e();
            default:
                return super.e();
        }
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void end() {
        switch (this.b) {
            case 0:
                this.c = false;
                this.d = null;
                this.a.end();
                break;
            default:
                super.end();
                break;
        }
    }
}
