package j$.util.stream;

/* renamed from: j$.util.stream.s2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3084s2 extends AbstractC3060n2 {
    long b;
    long c;
    final /* synthetic */ C3089t2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C3084s2(C3089t2 c3089t2, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.d = c3089t2;
        this.b = c3089t2.s;
        long j = c3089t2.t;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void m(Object obj) {
        long j = this.b;
        if (j != 0) {
            this.b = j - 1;
            return;
        }
        long j2 = this.c;
        if (j2 > 0) {
            this.c = j2 - 1;
            this.a.m((InterfaceC3079r2) obj);
        }
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.a.c(AbstractC3117z0.W(j, this.d.s, this.c));
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final boolean e() {
        return this.c == 0 || this.a.e();
    }
}
