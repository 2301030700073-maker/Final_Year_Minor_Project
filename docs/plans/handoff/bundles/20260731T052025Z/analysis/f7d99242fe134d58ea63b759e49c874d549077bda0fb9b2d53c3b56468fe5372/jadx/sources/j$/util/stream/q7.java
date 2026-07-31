package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class q7 extends s7 implements j$.util.v0 {
    @Override // j$.util.stream.u7
    public final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new q7((j$.util.v0) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.s7
    public final Object b() {
        return new b2(1);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.c.f(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.c.k(this, consumer);
    }
}
