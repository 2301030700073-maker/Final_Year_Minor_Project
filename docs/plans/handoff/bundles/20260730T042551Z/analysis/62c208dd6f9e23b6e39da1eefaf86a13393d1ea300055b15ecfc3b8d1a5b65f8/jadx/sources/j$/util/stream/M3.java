package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class M3 implements InterfaceC3079r2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ M3(Consumer consumer, int i) {
        this.a = i;
        this.b = consumer;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void accept(double d) {
        switch (this.a) {
            case 0:
                AbstractC3117z0.z();
                throw null;
            default:
                AbstractC3117z0.z();
                throw null;
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
    public final void m(Object obj) {
        int i = this.a;
        Consumer consumer = this.b;
        switch (i) {
            case 0:
                ((C3001b3) consumer).m(obj);
                break;
            default:
                consumer.m(obj);
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
}
