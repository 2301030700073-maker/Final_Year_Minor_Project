package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class r7 extends s7 implements j$.util.x0 {
    @Override // j$.util.stream.u7
    public final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new r7((j$.util.x0) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.s7
    public final Object b() {
        return new d2(1);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.time.a.k(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.time.a.B(this, consumer);
    }
}
