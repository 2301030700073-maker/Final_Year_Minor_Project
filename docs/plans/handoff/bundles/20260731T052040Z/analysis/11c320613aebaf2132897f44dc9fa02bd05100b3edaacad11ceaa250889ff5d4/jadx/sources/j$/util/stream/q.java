package j$.util.stream;

import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class q extends f5 {
    public final /* synthetic */ int l;
    public final /* synthetic */ Object m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(g5 g5Var, Consumer consumer) {
        super(g5Var, 0);
        this.l = 3;
        this.m = consumer;
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        switch (this.l) {
            case 0:
                return new o(this, o5Var, 0);
            case 1:
                return new u0(this, o5Var, 0);
            case 2:
                return new c1(this, o5Var, 0);
            case 3:
                return new m(this, o5Var, 1);
            default:
                return new m(this, o5Var, 2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q(a aVar, int i, Object obj, int i2) {
        super(aVar, i);
        this.l = i2;
        this.m = obj;
    }
}
