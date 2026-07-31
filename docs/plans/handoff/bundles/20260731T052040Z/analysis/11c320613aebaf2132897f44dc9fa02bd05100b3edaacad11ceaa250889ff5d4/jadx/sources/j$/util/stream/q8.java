package j$.util.stream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class q8 extends i5 {
    public boolean b;
    public final /* synthetic */ r8 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q8(r8 r8Var, o5 o5Var) {
        super(o5Var);
        this.c = r8Var;
        this.b = true;
    }

    @Override // j$.util.stream.m5, j$.util.stream.o5
    public final void accept(int i) {
        if (this.b) {
            boolean test = this.c.l.test(i);
            this.b = test;
            if (test) {
                this.a.accept(i);
            }
        }
    }

    @Override // j$.util.stream.i5, j$.util.stream.o5
    public final void c(long j) {
        this.a.c(-1L);
    }

    @Override // j$.util.stream.i5, j$.util.stream.o5
    public final boolean e() {
        return !this.b || this.a.e();
    }
}
