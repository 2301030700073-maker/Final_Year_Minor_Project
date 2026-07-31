package j$.util.stream;

import j$.util.Comparator;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class k6 extends e5 {
    public final boolean l;
    public final Comparator m;

    public k6(g5 g5Var, Comparator comparator) {
        super(g5Var, d7.q | d7.p);
        this.l = false;
        this.m = (Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.a
    public final g2 G(a aVar, Spliterator spliterator, IntFunction intFunction) {
        if (d7.SORTED.u(aVar.f) && this.l) {
            return aVar.m(spliterator, false, intFunction);
        }
        Object[] q = aVar.m(spliterator, true, intFunction).q(intFunction);
        Arrays.sort(q, this.m);
        return new j2(q);
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        Objects.requireNonNull(o5Var);
        if (d7.SORTED.u(i) && this.l) {
            return o5Var;
        }
        boolean u = d7.SIZED.u(i);
        Comparator comparator = this.m;
        return u ? new p6(o5Var, comparator) : new l6(o5Var, comparator);
    }

    public k6(g5 g5Var) {
        super(g5Var, d7.q | d7.o);
        this.l = true;
        this.m = Comparator.CC.naturalOrder();
    }
}
