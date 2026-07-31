package j$.util.stream;

import java.util.function.LongConsumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class f1 extends i1 {
    public final /* synthetic */ int l;
    public final /* synthetic */ Object m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f1(j1 j1Var, LongConsumer longConsumer) {
        super(j1Var, 0);
        this.l = 1;
        this.m = longConsumer;
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        switch (this.l) {
            case 0:
                return new e1(this, l5Var);
            case 1:
                return new c1(this, l5Var, 1);
            case 2:
                return new y4(this, l5Var);
            default:
                return new l(this, l5Var, 5);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f1(a aVar, int i, Object obj, int i2) {
        super(aVar, i);
        this.l = i2;
        this.m = obj;
    }
}
