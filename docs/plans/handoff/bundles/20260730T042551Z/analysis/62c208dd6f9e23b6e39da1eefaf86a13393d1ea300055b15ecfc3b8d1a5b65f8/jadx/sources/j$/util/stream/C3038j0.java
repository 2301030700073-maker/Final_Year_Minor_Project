package j$.util.stream;

import j$.util.Objects;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;

/* renamed from: j$.util.stream.j0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3038j0 extends AbstractC3055m2 {
    boolean b;
    C3023g0 c;
    final /* synthetic */ C3111y d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C3038j0(C3111y c3111y, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.d = c3111y;
        InterfaceC3079r2 interfaceC3079r22 = this.a;
        Objects.requireNonNull(interfaceC3079r22);
        this.c = new C3023g0(interfaceC3079r22);
    }

    @Override // j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        InterfaceC3073q0 interfaceC3073q0 = (InterfaceC3073q0) ((LongFunction) this.d.t).apply(j);
        if (interfaceC3073q0 != null) {
            try {
                if (this.b) {
                    j$.util.b0 spliterator = interfaceC3073q0.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((LongConsumer) this.c)) {
                    }
                } else {
                    interfaceC3073q0.sequential().forEach(this.c);
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
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC3055m2, j$.util.stream.InterfaceC3079r2
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
