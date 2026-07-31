package j$.util.stream;

import java.util.function.DoubleConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class s extends a0 {
    public final /* synthetic */ int l;
    public final /* synthetic */ Object m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(b0 b0Var, DoubleConsumer doubleConsumer) {
        super(b0Var, 0);
        this.l = 2;
        this.m = doubleConsumer;
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        switch (this.l) {
            case 0:
                return new o(this, o5Var, 1);
            case 1:
                return new w(this, o5Var);
            case 2:
                return new o(this, o5Var, 2);
            case 3:
                return new m(this, o5Var, 6);
            default:
                return new z4(this, o5Var);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s(a aVar, int i, Object obj, int i2) {
        super(aVar, i);
        this.l = i2;
        this.m = obj;
    }
}
