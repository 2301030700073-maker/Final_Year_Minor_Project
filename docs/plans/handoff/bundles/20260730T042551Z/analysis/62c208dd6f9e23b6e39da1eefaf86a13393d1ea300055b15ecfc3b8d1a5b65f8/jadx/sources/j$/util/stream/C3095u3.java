package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.u3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3095u3 implements InterfaceC3075q2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ LongConsumer b;

    public /* synthetic */ C3095u3(LongConsumer longConsumer, int i) {
        this.a = i;
        this.b = longConsumer;
    }

    public final /* synthetic */ LongConsumer a(LongConsumer longConsumer) {
        switch (this.a) {
        }
        return AbstractC2959a.c(this, longConsumer);
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

    @Override // j$.util.stream.InterfaceC3075q2, java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.a;
        LongConsumer longConsumer = this.b;
        switch (i) {
            case 0:
                ((Y2) longConsumer).accept(j);
                break;
            default:
                longConsumer.accept(j);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        switch (this.a) {
            case 0:
                l((Long) obj);
                break;
            default:
                l((Long) obj);
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

    @Override // j$.util.stream.InterfaceC3075q2
    public final /* synthetic */ void l(Long l) {
        switch (this.a) {
            case 0:
                AbstractC3117z0.E(this, l);
                break;
            default:
                AbstractC3117z0.E(this, l);
                break;
        }
    }
}
