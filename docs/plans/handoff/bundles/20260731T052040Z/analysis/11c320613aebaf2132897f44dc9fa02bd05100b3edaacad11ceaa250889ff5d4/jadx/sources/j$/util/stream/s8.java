package j$.util.stream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class s8 extends i5 implements z8 {
    public long b;
    public boolean c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ t8 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s8(t8 t8Var, o5 o5Var, boolean z) {
        super(o5Var);
        this.e = t8Var;
        this.d = z;
    }

    @Override // j$.util.stream.m5, j$.util.stream.o5
    public final void accept(int i) {
        boolean z;
        boolean z2;
        if (!this.c) {
            boolean test = this.e.l.test(i);
            this.c = !test;
            if (test) {
                z = false;
                z2 = this.d;
                if (z2 && !z) {
                    this.b++;
                }
                if (!z2 || z) {
                    this.a.accept(i);
                }
                return;
            }
        }
        z = true;
        z2 = this.d;
        if (z2) {
            this.b++;
        }
        if (z2) {
        }
        this.a.accept(i);
    }

    @Override // j$.util.stream.z8
    public final long h() {
        return this.b;
    }
}
