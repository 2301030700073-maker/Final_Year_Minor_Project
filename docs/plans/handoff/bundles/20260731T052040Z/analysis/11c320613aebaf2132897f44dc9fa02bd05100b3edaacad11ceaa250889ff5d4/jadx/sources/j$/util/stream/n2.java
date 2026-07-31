package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class n2 extends q2 implements a2 {
    @Override // j$.util.stream.g2
    public final /* synthetic */ void forEach(Consumer consumer) {
        w3.q(this, consumer);
    }

    @Override // j$.util.stream.g2
    public final /* synthetic */ g2 k(long j, long j2, IntFunction intFunction) {
        return w3.t(this, j, j2);
    }

    @Override // j$.util.stream.g2
    public final /* synthetic */ void n(Object[] objArr, int i) {
        w3.n(this, (Double[]) objArr, i);
    }

    @Override // j$.util.stream.f2
    public final Object newArray(int i) {
        return new double[i];
    }

    @Override // j$.util.stream.g2
    public final j$.util.b1 spliterator() {
        return new e3(this);
    }

    @Override // j$.util.stream.g2
    public final Spliterator spliterator() {
        return new e3(this);
    }
}
