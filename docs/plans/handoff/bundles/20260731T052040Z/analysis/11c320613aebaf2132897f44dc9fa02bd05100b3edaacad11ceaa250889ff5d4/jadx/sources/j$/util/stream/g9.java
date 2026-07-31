package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class g9 extends i9 implements LongConsumer, j$.util.y0 {
    public long e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g9(Spliterator spliterator, int i) {
        super(spliterator);
        this.f = i;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.d = (this.d + 1) & 63;
        this.e = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.util.a0.a(this, longConsumer);
    }

    @Override // j$.util.stream.i9
    public final Spliterator b(Spliterator spliterator) {
        switch (this.f) {
            case 0:
                return new g9((j$.util.y0) spliterator, this, 0);
            default:
                return new g9((j$.util.y0) spliterator, this, 1);
        }
    }

    @Override // j$.util.b1
    public final void forEachRemaining(LongConsumer longConsumer) {
        while (tryAdvance(longConsumer)) {
        }
    }

    @Override // j$.util.y0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        int i = this.f;
        Spliterator spliterator = this.a;
        LongPredicate longPredicate = null;
        switch (i) {
            case 0:
                if (!this.c) {
                    return ((j$.util.y0) spliterator).tryAdvance(longConsumer);
                }
                this.c = false;
                boolean tryAdvance = ((j$.util.y0) spliterator).tryAdvance((LongConsumer) this);
                if (tryAdvance && a()) {
                    longPredicate.test(this.e);
                    throw null;
                }
                if (!tryAdvance) {
                    return tryAdvance;
                }
                longConsumer.accept(this.e);
                return tryAdvance;
            default:
                if (this.c && a() && ((j$.util.y0) spliterator).tryAdvance((LongConsumer) this)) {
                    longPredicate.test(this.e);
                    throw null;
                }
                this.c = false;
                return false;
        }
    }

    @Override // j$.util.stream.i9, j$.util.Spliterator
    public j$.util.y0 trySplit() {
        switch (this.f) {
            case 1:
                if (this.b.get()) {
                    return null;
                }
                return (j$.util.y0) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g9(Spliterator spliterator, i9 i9Var, int i) {
        super(spliterator, i9Var);
        this.f = i;
    }

    @Override // j$.util.stream.i9, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.a0.e(this, consumer);
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
        return j$.util.a0.h(this, consumer);
    }

    @Override // j$.util.b1
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f) {
            case 1:
                tryAdvance((LongConsumer) obj);
                return false;
            default:
                return tryAdvance((LongConsumer) obj);
        }
    }
}
