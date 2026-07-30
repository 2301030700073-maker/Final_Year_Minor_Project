package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
final class W extends CountedCompleter {
    private Spliterator a;
    private final InterfaceC3079r2 b;
    private final AbstractC3117z0 c;
    private long d;

    W(W w, Spliterator spliterator) {
        super(w);
        this.a = spliterator;
        this.b = w.b;
        this.d = w.d;
        this.c = w.c;
    }

    W(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2) {
        super(null);
        this.b = interfaceC3079r2;
        this.c = abstractC3117z0;
        this.a = spliterator;
        this.d = 0L;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.a;
        long estimateSize = spliterator.estimateSize();
        long j = this.d;
        if (j == 0) {
            j = AbstractC3017f.h(estimateSize);
            this.d = j;
        }
        boolean n = EnumC3026g3.SHORT_CIRCUIT.n(this.c.r0());
        InterfaceC3079r2 interfaceC3079r2 = this.b;
        boolean z = false;
        W w = this;
        while (true) {
            if (n && interfaceC3079r2.e()) {
                break;
            }
            if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            W w2 = new W(w, trySplit);
            w.addToPendingCount(1);
            if (z) {
                spliterator = trySplit;
            } else {
                W w3 = w;
                w = w2;
                w2 = w3;
            }
            z = !z;
            w.fork();
            w = w2;
            estimateSize = spliterator.estimateSize();
        }
        w.c.f0(spliterator, interfaceC3079r2);
        w.a = null;
        w.propagateCompletion();
    }
}
