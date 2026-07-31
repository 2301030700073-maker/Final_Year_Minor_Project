package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.DoubleConsumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class c9 extends i9 implements DoubleConsumer, j$.util.t0 {
    public double e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c9(Spliterator spliterator, int i) {
        super(spliterator);
        this.f = i;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.d = (this.d + 1) & 63;
        this.e = d;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // j$.util.stream.i9
    public final Spliterator b(Spliterator spliterator) {
        switch (this.f) {
            case 0:
                return new c9((j$.util.t0) spliterator, this, 0);
            default:
                return new c9((j$.util.t0) spliterator, this, 1);
        }
    }

    @Override // j$.util.b1
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        while (tryAdvance(doubleConsumer)) {
        }
    }

    @Override // j$.util.t0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        int i = this.f;
        Spliterator spliterator = this.a;
        DoublePredicate doublePredicate = null;
        switch (i) {
            case 0:
                if (!this.c) {
                    return ((j$.util.t0) spliterator).tryAdvance(doubleConsumer);
                }
                this.c = false;
                boolean tryAdvance = ((j$.util.t0) spliterator).tryAdvance((DoubleConsumer) this);
                if (tryAdvance && a()) {
                    doublePredicate.test(this.e);
                    throw null;
                }
                if (!tryAdvance) {
                    return tryAdvance;
                }
                doubleConsumer.accept(this.e);
                return tryAdvance;
            default:
                if (this.c && a() && ((j$.util.t0) spliterator).tryAdvance((DoubleConsumer) this)) {
                    doublePredicate.test(this.e);
                    throw null;
                }
                this.c = false;
                return false;
        }
    }

    @Override // j$.util.stream.i9, j$.util.Spliterator
    public j$.util.t0 trySplit() {
        switch (this.f) {
            case 1:
                if (this.b.get()) {
                    return null;
                }
                return (j$.util.t0) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c9(Spliterator spliterator, i9 i9Var, int i) {
        super(spliterator, i9Var);
        this.f = i;
    }

    @Override // j$.util.stream.i9, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.a0.c(this, consumer);
    }

    @Override // j$.util.stream.i9, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.i9, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.b1 trySplit() {
        switch (this.f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.a0.f(this, consumer);
    }

    @Override // j$.util.b1
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f) {
            case 1:
                tryAdvance((DoubleConsumer) obj);
                return false;
            default:
                return tryAdvance((DoubleConsumer) obj);
        }
    }
}
