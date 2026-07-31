package j$.util.stream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class x extends a0 {
    public final /* synthetic */ int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x(a aVar, int i, int i2) {
        super(aVar, i);
        this.l = i2;
    }

    @Override // j$.util.stream.a
    public final o5 J(int i, o5 o5Var) {
        switch (this.l) {
            case 0:
                return o5Var;
            case 1:
                return new t(this, o5Var, 2);
            case 2:
                return new w0(1, o5Var);
            case 3:
                return new w0(this, o5Var, 3);
            case 4:
                return new e1(o5Var);
            default:
                return new e1(this, o5Var, 3);
        }
    }
}
