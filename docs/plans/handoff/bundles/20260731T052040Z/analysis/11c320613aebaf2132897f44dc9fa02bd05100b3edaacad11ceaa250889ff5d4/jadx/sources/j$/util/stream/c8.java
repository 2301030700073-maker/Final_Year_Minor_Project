package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class c8 extends f8 implements j$.util.b1 {
    @Override // j$.util.b1
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        j7 j7Var = null;
        while (true) {
            e8 f = f();
            if (f == e8.NO_MORE) {
                return;
            }
            e8 e8Var = e8.MAYBE_MORE;
            Spliterator spliterator = this.a;
            if (f != e8Var) {
                ((j$.util.b1) spliterator).forEachRemaining(obj);
                return;
            }
            int i = this.c;
            if (j7Var == null) {
                j7Var = j(i);
            } else {
                j7Var.b = 0;
            }
            long j = 0;
            while (((j$.util.b1) spliterator).tryAdvance(j7Var)) {
                j++;
                if (j >= i) {
                    break;
                }
            }
            if (j == 0) {
                return;
            } else {
                j7Var.a(obj, a(j));
            }
        }
    }

    public abstract void g(Object obj);

    @Override // j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return Spliterator.CC.$default$getComparator(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return Spliterator.CC.$default$getExactSizeIfKnown(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return Spliterator.CC.$default$hasCharacteristics(this, i);
    }

    public abstract j7 j(int i);

    @Override // j$.util.b1
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        while (f() != e8.NO_MORE && ((j$.util.b1) this.a).tryAdvance(this)) {
            if (a(1L) == 1) {
                g(obj);
                return true;
            }
        }
        return false;
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }
}
