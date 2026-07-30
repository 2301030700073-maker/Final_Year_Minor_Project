package j$.util.stream;

import j$.time.AbstractC2959a;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.k3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3046k3 extends AbstractC3056m3 implements IntConsumer {
    final int[] c;

    C3046k3(int i) {
        this.c = new int[i];
    }

    @Override // j$.util.stream.AbstractC3056m3
    public final void a(Object obj, long j) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < j; i++) {
            intConsumer.accept(this.c[i]);
        }
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int i2 = this.b;
        this.b = i2 + 1;
        this.c[i2] = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }
}
