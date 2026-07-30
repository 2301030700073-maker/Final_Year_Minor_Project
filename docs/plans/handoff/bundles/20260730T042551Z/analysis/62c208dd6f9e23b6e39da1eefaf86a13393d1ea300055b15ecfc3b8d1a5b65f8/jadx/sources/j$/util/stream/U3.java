package j$.util.stream;

/* loaded from: classes2.dex */
final class U3 extends AbstractC3060n2 {
    long b;
    boolean c;
    final /* synthetic */ boolean d;
    final /* synthetic */ V3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    U3(V3 v3, InterfaceC3079r2 interfaceC3079r2, boolean z) {
        super(interfaceC3079r2);
        this.e = v3;
        this.d = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z = true;
        if (!this.c) {
            boolean z2 = !this.e.s.test(obj);
            this.c = z2;
            if (!z2) {
                z = false;
            }
        }
        boolean z3 = this.d;
        if (z3 && !z) {
            this.b++;
        }
        if (z3 || z) {
            this.a.accept((InterfaceC3079r2) obj);
        }
    }
}
