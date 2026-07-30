package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class K2 extends AbstractC3008d0 {
    K2(AbstractC3002c abstractC3002c) {
        super(abstractC3002c, EnumC3026g3.q | EnumC3026g3.o);
    }

    @Override // j$.util.stream.AbstractC3002c
    public final I0 S0(Spliterator spliterator, AbstractC3002c abstractC3002c, IntFunction intFunction) {
        if (EnumC3026g3.SORTED.n(abstractC3002c.r0())) {
            return abstractC3002c.J0(spliterator, false, intFunction);
        }
        int[] iArr = (int[]) ((F0) abstractC3002c.J0(spliterator, true, intFunction)).b();
        Arrays.sort(iArr);
        return new C3019f1(iArr);
    }

    @Override // j$.util.stream.AbstractC3002c
    public final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        Objects.requireNonNull(interfaceC3079r2);
        return EnumC3026g3.SORTED.n(i) ? interfaceC3079r2 : EnumC3026g3.SIZED.n(i) ? new P2(interfaceC3079r2) : new H2(interfaceC3079r2);
    }
}
