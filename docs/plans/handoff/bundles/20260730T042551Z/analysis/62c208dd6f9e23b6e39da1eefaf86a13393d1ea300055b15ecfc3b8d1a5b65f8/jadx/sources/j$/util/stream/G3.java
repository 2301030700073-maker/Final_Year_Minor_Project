package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class G3 extends I3 implements j$.util.Y, IntConsumer {
    int f;

    G3(j$.util.Y y, long j, long j2) {
        super(y, j, j2);
    }

    G3(j$.util.Y y, G3 g3) {
        super(y, g3);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2959a.b(this, intConsumer);
    }

    @Override // j$.util.stream.L3
    protected final Spliterator b(Spliterator spliterator) {
        return new G3((j$.util.Y) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.b(this, consumer);
    }

    @Override // j$.util.stream.I3
    protected final void g(Object obj) {
        ((IntConsumer) obj).accept(this.f);
    }

    @Override // j$.util.stream.I3
    protected final AbstractC3056m3 i(int i) {
        return new C3046k3(i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.g(this, consumer);
    }
}
