package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;

/* renamed from: j$.util.stream.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3116z extends AbstractC3045k2 {
    boolean b;
    C3086t c;
    final /* synthetic */ C3101w d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C3116z(C3101w c3101w, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.d = c3101w;
        InterfaceC3079r2 interfaceC3079r22 = this.a;
        Objects.requireNonNull(interfaceC3079r22);
        this.c = new C3086t(interfaceC3079r22);
    }

    @Override // j$.util.stream.InterfaceC3065o2, j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        H h = (H) ((DoubleFunction) this.d.t).apply(d);
        if (h != null) {
            try {
                if (this.b) {
                    j$.util.V spliterator = h.sequential().spliterator();
                    while (!this.a.e() && spliterator.tryAdvance((DoubleConsumer) this.c)) {
                    }
                } else {
                    h.sequential().forEach(this.c);
                }
            } catch (Throwable th) {
                try {
                    h.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (h != null) {
            h.close();
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC3045k2, j$.util.stream.InterfaceC3079r2
    public final boolean e() {
        this.b = true;
        return this.a.e();
    }
}
