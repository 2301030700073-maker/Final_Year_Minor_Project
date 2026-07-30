package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
abstract class I3 extends L3 implements j$.util.e0 {
    I3(j$.util.e0 e0Var, long j, long j2) {
        super(e0Var, j, j2);
    }

    I3(j$.util.e0 e0Var, I3 i3) {
        super(e0Var, i3);
    }

    @Override // j$.util.e0
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC3056m3 abstractC3056m3 = null;
        while (true) {
            K3 f = f();
            if (f == K3.NO_MORE) {
                return;
            }
            K3 k3 = K3.MAYBE_MORE;
            Spliterator spliterator = this.a;
            if (f != k3) {
                ((j$.util.e0) spliterator).forEachRemaining(obj);
                return;
            }
            int i = this.c;
            if (abstractC3056m3 == null) {
                abstractC3056m3 = i(i);
            } else {
                abstractC3056m3.b = 0;
            }
            long j = 0;
            while (((j$.util.e0) spliterator).tryAdvance(abstractC3056m3)) {
                j++;
                if (j >= i) {
                    break;
                }
            }
            if (j == 0) {
                return;
            } else {
                abstractC3056m3.a(obj, a(j));
            }
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    protected abstract void g(Object obj);

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.util.E.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.util.E.e(this, i);
    }

    protected abstract AbstractC3056m3 i(int i);

    @Override // j$.util.e0
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        while (f() != K3.NO_MORE && ((j$.util.e0) this.a).tryAdvance(this)) {
            if (a(1L) == 1) {
                g(obj);
                return true;
            }
        }
        return false;
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }
}
