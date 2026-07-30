package j$.util.stream;

/* renamed from: j$.util.stream.u2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3094u2 extends AbstractC3050l2 {
    long b;
    long c;
    final /* synthetic */ C3099v2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C3094u2(C3099v2 c3099v2, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.d = c3099v2;
        this.b = c3099v2.s;
        long j = c3099v2.t;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC3070p2, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        long j = this.b;
        if (j != 0) {
            this.b = j - 1;
            return;
        }
        long j2 = this.c;
        if (j2 > 0) {
            this.c = j2 - 1;
            this.a.accept(i);
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.a.c(AbstractC3117z0.W(j, this.d.s, this.c));
    }

    @Override // j$.util.stream.AbstractC3050l2, j$.util.stream.InterfaceC3079r2
    public final boolean e() {
        return this.c == 0 || this.a.e();
    }
}
