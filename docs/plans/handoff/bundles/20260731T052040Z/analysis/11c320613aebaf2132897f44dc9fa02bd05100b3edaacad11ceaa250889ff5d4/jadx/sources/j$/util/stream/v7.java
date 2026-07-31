package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class v7 extends w7 implements j$.util.y0 {
    @Override // j$.util.stream.y7
    public final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new v7((j$.util.y0) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.w7
    public final Object b() {
        return new d2(1);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.a0.e(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.a0.h(this, consumer);
    }
}
