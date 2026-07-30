package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
class Q0 extends AbstractC3017f {
    protected final AbstractC3117z0 h;
    protected final LongFunction i;
    protected final BinaryOperator j;

    Q0(Q0 q0, Spliterator spliterator) {
        super(q0, spliterator);
        this.h = q0.h;
        this.i = q0.i;
        this.j = q0.j;
    }

    Q0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator) {
        super(abstractC3117z0, spliterator);
        this.h = abstractC3117z0;
        this.i = longFunction;
        this.j = binaryOperator;
    }

    @Override // j$.util.stream.AbstractC3017f
    protected AbstractC3017f f(Spliterator spliterator) {
        return new Q0(this, spliterator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC3017f
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final I0 a() {
        D0 d0 = (D0) this.i.apply(this.h.k0(this.b));
        this.h.H0(this.b, d0);
        return d0.build();
    }

    @Override // j$.util.stream.AbstractC3017f, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC3017f abstractC3017f = this.d;
        if (!(abstractC3017f == null)) {
            g((I0) this.j.apply((I0) ((Q0) abstractC3017f).c(), (I0) ((Q0) this.e).c()));
        }
        super.onCompletion(countedCompleter);
    }
}
