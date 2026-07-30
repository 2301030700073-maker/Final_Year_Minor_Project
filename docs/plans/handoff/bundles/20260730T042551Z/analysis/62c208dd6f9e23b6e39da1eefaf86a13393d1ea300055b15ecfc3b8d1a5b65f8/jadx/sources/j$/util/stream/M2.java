package j$.util.stream;

import j$.util.Comparator$CC;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class M2 extends AbstractC3030h2 {
    private final boolean s;
    private final Comparator t;

    M2(AbstractC3002c abstractC3002c) {
        super(abstractC3002c, EnumC3026g3.q | EnumC3026g3.o);
        this.s = true;
        this.t = Comparator$CC.a();
    }

    M2(AbstractC3002c abstractC3002c, Comparator comparator) {
        super(abstractC3002c, EnumC3026g3.q | EnumC3026g3.p);
        this.s = false;
        this.t = (Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.AbstractC3002c
    public final I0 S0(Spliterator spliterator, AbstractC3002c abstractC3002c, IntFunction intFunction) {
        if (EnumC3026g3.SORTED.n(abstractC3002c.r0()) && this.s) {
            return abstractC3002c.J0(spliterator, false, intFunction);
        }
        Object[] k = abstractC3002c.J0(spliterator, true, intFunction).k(intFunction);
        Arrays.sort(k, this.t);
        return new L0(k);
    }

    @Override // j$.util.stream.AbstractC3002c
    public final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        Objects.requireNonNull(interfaceC3079r2);
        if (EnumC3026g3.SORTED.n(i) && this.s) {
            return interfaceC3079r2;
        }
        boolean n = EnumC3026g3.SIZED.n(i);
        Comparator comparator = this.t;
        return n ? new R2(interfaceC3079r2, comparator) : new N2(interfaceC3079r2, comparator);
    }
}
