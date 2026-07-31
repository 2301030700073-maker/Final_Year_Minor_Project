package j$.util.stream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class w extends z {
    public final /* synthetic */ int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w(a aVar, int i, int i2) {
        super(aVar, i);
        this.l = i2;
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        switch (this.l) {
            case 0:
                return l5Var;
            case 1:
                return new s(this, l5Var, 2);
            case 2:
                return new v0(1, l5Var);
            case 3:
                return new v0(this, l5Var, 3);
            case 4:
                return new d1(l5Var);
            default:
                return new d1(this, l5Var, 3);
        }
    }
}
