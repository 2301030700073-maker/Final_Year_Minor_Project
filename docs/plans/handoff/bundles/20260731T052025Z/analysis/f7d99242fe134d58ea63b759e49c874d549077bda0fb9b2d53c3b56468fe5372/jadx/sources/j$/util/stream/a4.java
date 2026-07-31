package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class a4 extends v3 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;
    public final /* synthetic */ Object j;
    public final /* synthetic */ Object k;

    public /* synthetic */ a4(a7 a7Var, Object obj, Object obj2, Object obj3, int i) {
        this.h = i;
        this.j = obj;
        this.k = obj2;
        this.i = obj3;
    }

    @Override // j$.util.stream.v3
    public final q4 Y() {
        int i = this.h;
        Object obj = this.j;
        Object obj2 = this.k;
        Object obj3 = this.i;
        switch (i) {
            case 0:
                return new x3((Supplier) obj3, (ObjLongConsumer) obj2, (p) obj);
            case 1:
                return new d4((Supplier) obj3, (ObjDoubleConsumer) obj2, (p) obj);
            case 2:
                return new f4(obj3, (BiFunction) obj2, (BinaryOperator) obj);
            case 3:
                return new j4((Supplier) obj3, (BiConsumer) obj2, (BiConsumer) obj);
            default:
                return new n4((Supplier) obj3, (ObjIntConsumer) obj2, (p) obj);
        }
    }
}
