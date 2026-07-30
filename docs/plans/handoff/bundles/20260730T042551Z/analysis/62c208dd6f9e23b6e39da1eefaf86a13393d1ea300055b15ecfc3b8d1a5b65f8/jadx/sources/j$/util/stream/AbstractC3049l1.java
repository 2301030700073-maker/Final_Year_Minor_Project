package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.l1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3049l1 extends AbstractC3059n1 implements j$.util.e0 {
    AbstractC3049l1(H0 h0) {
        super(h0);
    }

    @Override // j$.util.e0
    public final void forEachRemaining(Object obj) {
        if (this.a == null) {
            return;
        }
        if (this.d != null) {
            while (tryAdvance(obj)) {
            }
            return;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            ((j$.util.e0) spliterator).forEachRemaining(obj);
            return;
        }
        ArrayDeque b = b();
        while (true) {
            H0 h0 = (H0) AbstractC3059n1.a(b);
            if (h0 == null) {
                this.a = null;
                return;
            }
            h0.g(obj);
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

    @Override // j$.util.e0
    public final boolean tryAdvance(Object obj) {
        H0 h0;
        if (!c()) {
            return false;
        }
        boolean tryAdvance = ((j$.util.e0) this.d).tryAdvance(obj);
        if (!tryAdvance) {
            if (this.c == null && (h0 = (H0) AbstractC3059n1.a(this.e)) != null) {
                j$.util.e0 spliterator = h0.spliterator();
                this.d = spliterator;
                return spliterator.tryAdvance(obj);
            }
            this.a = null;
        }
        return tryAdvance;
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
