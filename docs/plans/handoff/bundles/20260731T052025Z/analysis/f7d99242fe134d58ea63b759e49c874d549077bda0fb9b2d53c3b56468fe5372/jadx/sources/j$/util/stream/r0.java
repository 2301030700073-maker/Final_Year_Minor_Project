package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class r0 extends CountedCompleter {
    public final a a;
    public Spliterator b;
    public final long c;
    public final ConcurrentHashMap d;
    public final q0 e;
    public final r0 f;
    public g2 g;

    public r0(a aVar, Spliterator spliterator, q0 q0Var) {
        super(null);
        this.a = aVar;
        this.b = spliterator;
        this.c = d.e(spliterator.estimateSize());
        this.d = new ConcurrentHashMap(Math.max(16, d.g << 1));
        this.e = q0Var;
        this.f = null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long j = this.c;
        boolean z = false;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            r0 r0Var = new r0(this, trySplit, this.f);
            r0 r0Var2 = new r0(this, spliterator, r0Var);
            this.addToPendingCount(1);
            r0Var2.addToPendingCount(1);
            this.d.put(r0Var, r0Var2);
            if (this.f != null) {
                r0Var.addToPendingCount(1);
                if (this.d.replace(this.f, this, r0Var)) {
                    this.addToPendingCount(-1);
                } else {
                    r0Var.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                this = r0Var;
                r0Var = r0Var2;
            } else {
                this = r0Var2;
            }
            z = !z;
            r0Var.fork();
        }
        if (this.getPendingCount() > 0) {
            o oVar = new o(20);
            a aVar = this.a;
            y1 I = aVar.I(aVar.B(spliterator), oVar);
            this.a.Q(spliterator, I);
            this.g = I.build();
            this.b = null;
        }
        this.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        g2 g2Var = this.g;
        if (g2Var != null) {
            g2Var.forEach(this.e);
            this.g = null;
        } else {
            Spliterator spliterator = this.b;
            if (spliterator != null) {
                this.a.Q(spliterator, this.e);
                this.b = null;
            }
        }
        r0 r0Var = (r0) this.d.remove(this);
        if (r0Var != null) {
            r0Var.tryComplete();
        }
    }

    public r0(r0 r0Var, Spliterator spliterator, r0 r0Var2) {
        super(r0Var);
        this.a = r0Var.a;
        this.b = spliterator;
        this.c = r0Var.c;
        this.d = r0Var.d;
        this.e = r0Var.e;
        this.f = r0Var2;
    }
}
