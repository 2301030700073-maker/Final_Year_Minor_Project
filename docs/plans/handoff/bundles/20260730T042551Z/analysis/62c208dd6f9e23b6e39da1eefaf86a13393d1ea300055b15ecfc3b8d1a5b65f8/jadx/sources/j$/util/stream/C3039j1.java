package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.j1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3039j1 extends AbstractC3049l1 implements j$.util.Y {
    C3039j1(F0 f0) {
        super(f0);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.g(this, consumer);
    }
}
