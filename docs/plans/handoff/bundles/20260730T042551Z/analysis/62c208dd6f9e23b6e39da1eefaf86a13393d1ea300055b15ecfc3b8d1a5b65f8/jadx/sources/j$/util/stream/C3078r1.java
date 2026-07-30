package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.r1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3078r1 extends AbstractC3098v1 implements InterfaceC3065o2 {
    private final double[] h;

    C3078r1(Spliterator spliterator, AbstractC3117z0 abstractC3117z0, double[] dArr) {
        super(dArr.length, spliterator, abstractC3117z0);
        this.h = dArr;
    }

    C3078r1(C3078r1 c3078r1, Spliterator spliterator, long j, long j2) {
        super(c3078r1, spliterator, j, j2, c3078r1.h.length);
        this.h = c3078r1.h;
    }

    @Override // j$.util.stream.AbstractC3098v1
    final AbstractC3098v1 a(Spliterator spliterator, long j, long j2) {
        return new C3078r1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC3098v1, j$.util.stream.InterfaceC3079r2
    public final void accept(double d) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        double[] dArr = this.h;
        this.f = i + 1;
        dArr[i] = d;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void m(Object obj) {
        m((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC3065o2
    public final /* synthetic */ void m(Double d) {
        AbstractC3117z0.A(this, d);
    }
}
