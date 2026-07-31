package j$.util.stream;

import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class n1 implements Supplier {
    public final /* synthetic */ int a;
    public final /* synthetic */ t1 b;

    public /* synthetic */ n1(t1 t1Var, int i) {
        this.a = i;
        this.b = t1Var;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 0:
                return new q1(this.b);
            default:
                return new r1(this.b);
        }
    }
}
