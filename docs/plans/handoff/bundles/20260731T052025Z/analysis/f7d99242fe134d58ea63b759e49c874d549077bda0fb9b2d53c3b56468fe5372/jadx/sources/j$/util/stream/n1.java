package j$.util.stream;

import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            case 1:
                return new p1(this.b);
            default:
                return new r1(this.b);
        }
    }
}
