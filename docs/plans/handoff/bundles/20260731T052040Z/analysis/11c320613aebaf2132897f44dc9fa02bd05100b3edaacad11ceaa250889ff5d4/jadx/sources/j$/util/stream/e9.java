package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class e9 extends f9 {
    @Override // j$.util.stream.i9
    public final Spliterator b(Spliterator spliterator) {
        return new e9((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.Spliterator.OfInt
    public final boolean tryAdvance(IntConsumer intConsumer) {
        boolean z;
        if (this.c && a() && ((Spliterator.OfInt) this.a).tryAdvance((IntConsumer) this)) {
            z = this.e.test(this.f);
            if (z) {
                intConsumer.accept(this.f);
                return true;
            }
        } else {
            z = true;
        }
        this.c = false;
        if (!z) {
            this.b.set(true);
        }
        return false;
    }

    @Override // j$.util.stream.i9, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        if (this.b.get()) {
            return null;
        }
        return (Spliterator.OfInt) super.trySplit();
    }
}
