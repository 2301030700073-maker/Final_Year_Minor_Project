package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
abstract class b4 implements Spliterator {
    final Spliterator a;
    final boolean b;
    final AtomicBoolean c;
    boolean d;
    int e;

    b4(Spliterator spliterator) {
        this.d = true;
        this.a = spliterator;
        this.b = false;
        this.c = new AtomicBoolean();
    }

    b4(Spliterator spliterator, b4 b4Var) {
        this.d = true;
        this.a = spliterator;
        this.b = b4Var.b;
        this.c = b4Var.c;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.a.characteristics() & (-16449);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        while (((Z3) this).tryAdvance(consumer)) {
        }
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.util.E.e(this, i);
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        Z3 z3;
        Spliterator trySplit = this.b ? null : this.a.trySplit();
        if (trySplit == null) {
            return null;
        }
        Z3 z32 = (Z3) this;
        switch (z32.h) {
            case 0:
                z3 = new Z3(trySplit, z32, 0);
                break;
            default:
                z3 = new Z3(trySplit, z32, 1);
                break;
        }
        return z3;
    }
}
