package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        if (z6.SORTED.i(aVar.f) && this.l) {
            return aVar.B(spliterator, false, intFunction);
        }
        Object[] m = aVar.B(spliterator, true, intFunction).m(intFunction);
        Arrays.sort(m, this.m);
        return new j2(m);
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        Objects.requireNonNull(l5Var);
        if (z6.SORTED.i(i) && this.l) {
            return l5Var;
        }
        boolean i2 = z6.SIZED.i(i);
        Comparator comparator = this.m;
        return i2 ? new l6(l5Var, comparator) : new h6(l5Var, comparator);
    }

    public g6(d5 d5Var) {
        super(d5Var, z6.q | z6.o);
        this.l = true;
        this.m = j$.util.e.INSTANCE;
    }
}
