package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* renamed from: j$.util.stream.b2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3000b2 extends AbstractC3017f {
    private final AbstractC3117z0 h;

    C3000b2(C3000b2 c3000b2, Spliterator spliterator) {
        super(c3000b2, spliterator);
        this.h = c3000b2.h;
    }

    C3000b2(AbstractC3117z0 abstractC3117z0, AbstractC3117z0 abstractC3117z02, Spliterator spliterator) {
        super(abstractC3117z02, spliterator);
        this.h = abstractC3117z0;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final Object a() {
        AbstractC3117z0 abstractC3117z0 = this.a;
        U1 F0 = this.h.F0();
        abstractC3117z0.H0(this.b, F0);
        return F0;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected final AbstractC3017f f(Spliterator spliterator) {
        return new C3000b2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC3017f, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC3017f abstractC3017f = this.d;
        if (!(abstractC3017f == null)) {
            U1 u1 = (U1) ((C3000b2) abstractC3017f).c();
            u1.h((U1) ((C3000b2) this.e).c());
            g(u1);
        }
        super.onCompletion(countedCompleter);
    }
}
