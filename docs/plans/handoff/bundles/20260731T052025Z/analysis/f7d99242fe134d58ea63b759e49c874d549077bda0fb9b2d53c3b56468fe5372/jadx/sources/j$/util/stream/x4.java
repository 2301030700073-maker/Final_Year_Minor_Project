package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class x4 extends d {
    public final v3 h;

    public x4(x4 x4Var, Spliterator spliterator) {
        super(x4Var, spliterator);
        this.h = x4Var.h;
    }

    @Override // j$.util.stream.d
    public final Object a() {
        a aVar = this.a;
        q4 Y = this.h.Y();
        aVar.Q(this.b, Y);
        return Y;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new x4(this, spliterator);
    }

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        d dVar = this.d;
        if (dVar != null) {
            q4 q4Var = (q4) ((x4) dVar).f;
            q4Var.i((q4) ((x4) this.e).f);
            this.f = q4Var;
        }
        super.onCompletion(countedCompleter);
    }

    public x4(v3 v3Var, a aVar, Spliterator spliterator) {
        super(aVar, spliterator);
        this.h = v3Var;
    }
}
