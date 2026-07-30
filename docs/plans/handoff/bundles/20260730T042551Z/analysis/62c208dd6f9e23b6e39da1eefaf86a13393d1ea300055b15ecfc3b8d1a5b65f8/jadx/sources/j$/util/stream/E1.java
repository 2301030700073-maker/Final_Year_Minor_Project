package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class E1 extends AbstractC3117z0 {
    public final /* synthetic */ int h;
    final /* synthetic */ Object i;
    final /* synthetic */ Object j;
    final /* synthetic */ Object k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ E1(EnumC3031h3 enumC3031h3, Object obj, Object obj2, Object obj3, int i) {
        super(enumC3031h3);
        this.h = i;
        this.i = obj;
        this.k = obj2;
        this.j = obj3;
    }

    @Override // j$.util.stream.AbstractC3117z0
    public final U1 F0() {
        int i = this.h;
        Object obj = this.i;
        Object obj2 = this.k;
        Object obj3 = this.j;
        switch (i) {
            case 0:
                return new B1((Supplier) obj3, (ObjLongConsumer) obj2, (BinaryOperator) obj);
            case 1:
                return new H1((Supplier) obj3, (ObjDoubleConsumer) obj2, (BinaryOperator) obj);
            case 2:
                return new J1(obj3, (BiFunction) obj2, (BinaryOperator) obj);
            case 3:
                return new N1((Supplier) obj3, (BiConsumer) obj2, (BiConsumer) obj);
            default:
                return new R1((Supplier) obj3, (ObjIntConsumer) obj2, (BinaryOperator) obj);
        }
    }
}
