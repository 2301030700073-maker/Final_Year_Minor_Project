package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.s3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3085s3 implements InterfaceC3070p2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntConsumer b;

    public /* synthetic */ C3085s3(IntConsumer intConsumer, int i) {
        this.a = i;
        this.b = intConsumer;
    }

    public final /* synthetic */ IntConsumer a(IntConsumer intConsumer) {
        switch (this.a) {
        }
        return AbstractC2959a.b(this, intConsumer);
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

    @Override // j$.util.stream.InterfaceC3070p2, j$.util.stream.InterfaceC3079r2
    public final void accept(int i) {
        int i2 = this.a;
        IntConsumer intConsumer = this.b;
        switch (i2) {
            case 0:
                ((W2) intConsumer).accept(i);
                break;
            default:
                intConsumer.accept(i);
                break;
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
                d((Integer) obj);
                break;
            default:
                d((Integer) obj);
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

    @Override // j$.util.stream.InterfaceC3070p2
    public final /* synthetic */ void d(Integer num) {
        switch (this.a) {
            case 0:
                AbstractC3117z0.C(this, num);
                break;
            default:
                AbstractC3117z0.C(this, num);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC3079r2
    public final /* synthetic */ void end() {
    }
}
