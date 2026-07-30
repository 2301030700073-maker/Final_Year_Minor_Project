package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.q3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3076q3 implements InterfaceC3065o2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ DoubleConsumer b;

    public /* synthetic */ C3076q3(DoubleConsumer doubleConsumer, int i) {
        this.a = i;
        this.b = doubleConsumer;
    }

    public final /* synthetic */ DoubleConsumer a(DoubleConsumer doubleConsumer) {
        switch (this.a) {
        }
        return AbstractC2959a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC3065o2, j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        int i = this.a;
        DoubleConsumer doubleConsumer = this.b;
        switch (i) {
            case 0:
                ((U2) doubleConsumer).accept(d);
                break;
            default:
                doubleConsumer.accept(d);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(int i) {
        switch (this.a) {
            case 0:
                AbstractC3117z0.G();
                throw null;
            default:
                AbstractC3117z0.G();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2, j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        switch (this.a) {
            case 0:
                AbstractC3117z0.H();
                throw null;
            default:
                AbstractC3117z0.H();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        switch (this.a) {
            case 0:
                m((Double) obj);
                break;
            default:
                m((Double) obj);
                break;
        }
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.InterfaceC3065o2
    public final /* synthetic */ void m(Double d) {
        switch (this.a) {
            case 0:
                AbstractC3117z0.A(this, d);
                break;
            default:
                AbstractC3117z0.A(this, d);
                break;
        }
    }
}
