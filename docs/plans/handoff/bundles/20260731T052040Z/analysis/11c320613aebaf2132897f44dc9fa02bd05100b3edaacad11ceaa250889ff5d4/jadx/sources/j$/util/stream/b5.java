package j$.util.stream;

import java.util.function.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class b5 extends f5 {
    public final /* synthetic */ int l;
    public final /* synthetic */ Function m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b5(g5 g5Var, int i, Function function, int i2) {
        super(g5Var, i);
        this.l = i2;
        this.m = function;
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        switch (this.l) {
            case 0:
                return new m(this, o5Var, 3);
            default:
                return new l(this, o5Var);
        }
    }
}
