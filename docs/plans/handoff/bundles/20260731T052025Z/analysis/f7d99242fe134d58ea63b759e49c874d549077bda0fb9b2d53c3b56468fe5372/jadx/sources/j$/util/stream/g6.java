package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class g6 extends b5 {
    public final boolean l;
    public final Comparator m;

    public g6(d5 d5Var, Comparator comparator) {
        super(d5Var, z6.q | z6.p);
        this.l = false;
        this.m = (Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.a
    public final g2 J(a aVar, Spliterator spliterator, IntFunction intFunction) {
        if (z6.SORTED.u(aVar.f) && this.l) {
            return aVar.o(spliterator, false, intFunction);
        }
        Object[] p = aVar.o(spliterator, true, intFunction).p(intFunction);
        Arrays.sort(p, this.m);
        return new j2(p);
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        Objects.requireNonNull(l5Var);
        if (z6.SORTED.u(i) && this.l) {
            return l5Var;
        }
        boolean u = z6.SIZED.u(i);
        Comparator comparator = this.m;
        return u ? new l6(l5Var, comparator) : new h6(l5Var, comparator);
    }

    public g6(d5 d5Var) {
        super(d5Var, z6.q | z6.o);
        this.l = true;
        this.m = j$.util.f.INSTANCE;
    }
}
