package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class t0 extends CountedCompleter {
    public Spliterator a;
    public final o5 b;
    public final a c;
    public long d;

    public t0(t0 t0Var, Spliterator spliterator) {
        super(t0Var);
        this.a = spliterator;
        this.b = t0Var.b;
        this.d = t0Var.d;
        this.c = t0Var.c;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.a;
        long estimateSize = spliterator.estimateSize();
        long j = this.d;
        if (j == 0) {
            j = d.e(estimateSize);
            this.d = j;
        }
        boolean u = d7.SHORT_CIRCUIT.u(this.c.f);
        o5 o5Var = this.b;
        boolean z = false;
        while (true) {
            if (u && o5Var.e()) {
                break;
            }
            if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            t0 t0Var = new t0(this, trySplit);
            this.addToPendingCount(1);
            if (z) {
                spliterator = trySplit;
            } else {
                t0Var = this;
                this = t0Var;
            }
            z = !z;
            this.fork();
            this = t0Var;
            estimateSize = spliterator.estimateSize();
        }
        this.c.j(spliterator, o5Var);
        this.a = null;
        this.propagateCompletion();
    }

    public t0(a aVar, Spliterator spliterator, o5 o5Var) {
        super(null);
        this.b = o5Var;
        this.c = aVar;
        this.a = spliterator;
        this.d = 0L;
    }
}
