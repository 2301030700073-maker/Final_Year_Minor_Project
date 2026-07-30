package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.i1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3034i1 extends AbstractC3049l1 implements j$.util.V {
    C3034i1(E0 e0) {
        super(e0);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.f(this, consumer);
    }
}
