package j$.util.stream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class p5 extends k5 {
    public long b;
    public long c;
    public final /* synthetic */ q5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p5(q5 q5Var, o5 o5Var) {
        super(o5Var);
        this.d = q5Var;
        this.b = q5Var.l;
        long j = q5Var.m;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        long j = this.b;
        if (j != 0) {
            this.b = j - 1;
            return;
        }
        long j2 = this.c;
        if (j2 > 0) {
            this.c = j2 - 1;
            this.a.s((o5) obj);
        }
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final void c(long j) {
        this.a.c(z5.a(j, this.d.l, this.c));
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final boolean e() {
        return this.c == 0 || this.a.e();
    }
}
