package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.j3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3041j3 extends AbstractC3056m3 implements DoubleConsumer {
    final double[] c;

    C3041j3(int i) {
        this.c = new double[i];
    }

    @Override // j$.util.stream.AbstractC3056m3
    final void a(Object obj, long j) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < j; i++) {
            doubleConsumer.accept(this.c[i]);
        }
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.b;
        this.b = i + 1;
        this.c[i] = d;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }
}
