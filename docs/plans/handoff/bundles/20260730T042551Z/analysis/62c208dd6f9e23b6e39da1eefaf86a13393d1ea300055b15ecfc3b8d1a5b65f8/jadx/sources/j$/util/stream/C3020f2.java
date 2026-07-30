package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.f2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3020f2 extends AbstractC3060n2 {
    public final /* synthetic */ int b = 1;
    boolean c;
    final /* synthetic */ AbstractC3040j2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3020f2(T3 t3, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.d = t3;
        this.c = true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3020f2(C3015e2 c3015e2, InterfaceC3079r2 interfaceC3079r2) {
        super(interfaceC3079r2);
        this.d = c3015e2;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        AbstractC3040j2 abstractC3040j2 = this.d;
        switch (i) {
            case 0:
                Stream stream = (Stream) ((C3015e2) abstractC3040j2).t.apply(obj);
                if (stream != null) {
                    try {
                        if (this.c) {
                            Spliterator spliterator = ((Stream) stream.sequential()).spliterator();
                            while (!interfaceC3079r2.e() && spliterator.tryAdvance(interfaceC3079r2)) {
                            }
                        } else {
                            ((Stream) stream.sequential()).forEach(interfaceC3079r2);
                        }
                    } catch (Throwable th) {
                        try {
                            stream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
            default:
                if (this.c) {
                    boolean test = ((T3) abstractC3040j2).s.test(obj);
                    this.c = test;
                    if (test) {
                        interfaceC3079r2.accept((InterfaceC3079r2) obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        switch (i) {
            case 0:
                interfaceC3079r2.c(-1L);
                break;
            default:
                interfaceC3079r2.c(-1L);
                break;
        }
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final boolean e() {
        int i = this.b;
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        switch (i) {
            case 0:
                this.c = true;
                return interfaceC3079r2.e();
            default:
                return !this.c || interfaceC3079r2.e();
        }
    }
}
