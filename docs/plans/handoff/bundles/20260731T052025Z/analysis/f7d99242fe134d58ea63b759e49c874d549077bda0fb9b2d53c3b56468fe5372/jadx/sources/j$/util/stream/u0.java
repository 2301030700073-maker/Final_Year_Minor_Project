package j$.util.stream;

import java.util.function.IntConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class u0 extends a1 {
    public final /* synthetic */ int l;
    public final /* synthetic */ Object m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(b1 b1Var, IntConsumer intConsumer) {
        super(b1Var, 0);
        this.l = 0;
        this.m = intConsumer;
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        switch (this.l) {
            case 0:
                return new t0(this, l5Var, 1);
            case 1:
                return new t0(this, l5Var, 2);
            case 2:
                return new x0(this, l5Var);
            case 3:
                return new l(this, l5Var, 4);
            default:
                return new y4(this, l5Var);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u0(a aVar, int i, Object obj, int i2) {
        super(aVar, i);
        this.l = i2;
        this.m = obj;
    }
}
