package j$.util.stream;

import j$.util.Objects;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.a0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2993a0 extends AbstractC3050l2 {
    boolean b;
    X c;
    final /* synthetic */ C3106x d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C2993a0(C3106x c3106x, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.d = c3106x;
        InterfaceC3079r2 interfaceC3079r22 = this.a;
        Objects.requireNonNull(interfaceC3079r22);
        this.c = new X(interfaceC3079r22);
    }

    @Override // j$.util.stream.InterfaceC3070p2, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        IntStream intStream = (IntStream) ((IntFunction) this.d.t).apply(i);
        if (intStream != null) {
            try {
                if (this.b) {
                    j$.util.Y spliterator = intStream.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((IntConsumer) this.c)) {
                    }
                } else {
                    intStream.sequential().forEach(this.c);
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

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC3050l2, j$.util.stream.InterfaceC3079r2
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
