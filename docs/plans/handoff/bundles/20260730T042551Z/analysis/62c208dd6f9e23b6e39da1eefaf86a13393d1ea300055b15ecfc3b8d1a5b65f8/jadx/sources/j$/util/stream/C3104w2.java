package j$.util.stream;

/* renamed from: j$.util.stream.w2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3104w2 extends AbstractC3055m2 {
    long b;
    long c;
    final /* synthetic */ C3109x2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C3104w2(C3109x2 c3109x2, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.d = c3109x2;
        this.b = c3109x2.s;
        long j = c3109x2.t;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        long j2 = this.b;
        if (j2 != 0) {
            this.b = j2 - 1;
            return;
        }
        long j3 = this.c;
        if (j3 > 0) {
            this.c = j3 - 1;
            this.a.accept(j);
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.a.c(AbstractC3117z0.W(j, this.d.s, this.c));
    }

    @Override // j$.util.stream.AbstractC3055m2, j$.util.stream.InterfaceC3079r2
    public final boolean e() {
        return this.c == 0 || this.a.e();
    }
}
