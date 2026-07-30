package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.k1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3044k1 extends AbstractC3049l1 implements j$.util.b0 {
    C3044k1(G0 g0) {
        super(g0);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.h(this, consumer);
    }
}
