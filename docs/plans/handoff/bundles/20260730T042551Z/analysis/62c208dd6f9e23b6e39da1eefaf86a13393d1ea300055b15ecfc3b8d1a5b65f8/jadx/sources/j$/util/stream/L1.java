package j$.util.stream;

import j$.util.stream.Collector;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class L1 extends AbstractC3117z0 {
    final /* synthetic */ BinaryOperator h;
    final /* synthetic */ BiConsumer i;
    final /* synthetic */ Supplier j;
    final /* synthetic */ Collector k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    L1(EnumC3031h3 enumC3031h3, BinaryOperator binaryOperator, BiConsumer biConsumer, Supplier supplier, Collector collector) {
        super(enumC3031h3);
        this.h = binaryOperator;
        this.i = biConsumer;
        this.j = supplier;
        this.k = collector;
    }

    @Override // j$.util.stream.AbstractC3117z0
    public final U1 F0() {
        return new M1(this.j, this.i, this.h);
    }

    @Override // j$.util.stream.AbstractC3117z0, j$.util.stream.P3
    public final int o() {
        if (this.k.characteristics().contains(Collector.Characteristics.UNORDERED)) {
            return EnumC3026g3.r;
        }
        return 0;
    }
}
