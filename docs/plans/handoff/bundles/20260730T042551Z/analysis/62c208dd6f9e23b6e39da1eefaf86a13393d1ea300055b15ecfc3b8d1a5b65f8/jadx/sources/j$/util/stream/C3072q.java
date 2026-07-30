package j$.util.stream;

import java.util.HashSet;

/* renamed from: j$.util.stream.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3072q extends AbstractC3060n2 {
    HashSet b;

    C3072q(InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        if (this.b.contains(obj)) {
            return;
        }
        this.b.add(obj);
        this.a.accept((InterfaceC3079r2) obj);
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        this.b = new HashSet();
        this.a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void end() {
        this.b = null;
        this.a.end();
    }
}
