package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class w8 extends z8 implements IntConsumer, j$.util.v0 {
    public int e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w8(Spliterator spliterator, int i) {
        super(spliterator);
        this.f = i;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.d = (this.d + 1) & 63;
        this.e = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.c.b(this, intConsumer);
    }

    @Override // j$.util.stream.z8
    public final Spliterator b(Spliterator spliterator) {
        switch (this.f) {
            case 0:
                return new w8((j$.util.v0) spliterator, this, 0);
            default:
                return new w8((j$.util.v0) spliterator, this, 1);
        }
    }

    @Override // j$.util.b1
    public final void forEachRemaining(IntConsumer intConsumer) {
        while (tryAdvance(intConsumer)) {
        }
    }

    @Override // j$.util.v0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        int i = this.f;
        Spliterator spliterator = this.a;
        IntPredicate intPredicate = null;
        switch (i) {
            case 0:
                if (!this.c) {
                    return ((j$.util.v0) spliterator).tryAdvance(intConsumer);
                }
                this.c = false;
                boolean tryAdvance = ((j$.util.v0) spliterator).tryAdvance((IntConsumer) this);
                if (tryAdvance && a()) {
                    intPredicate.test(this.e);
                    throw null;
                }
                if (!tryAdvance) {
                    return tryAdvance;
                }
                intConsumer.accept(this.e);
                return tryAdvance;
            default:
                if (this.c && a() && ((j$.util.v0) spliterator).tryAdvance((IntConsumer) this)) {
                    intPredicate.test(this.e);
                    throw null;
                }
                this.c = false;
                return false;
        }
    }

    @Override // j$.util.stream.z8, j$.util.Spliterator
    public j$.util.v0 trySplit() {
        switch (this.f) {
            case 1:
                if (this.b.get()) {
                    return null;
                }
                return (j$.util.v0) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w8(Spliterator spliterator, z8 z8Var, int i) {
        super(spliterator, z8Var);
        this.f = i;
    }

    @Override // j$.util.stream.z8, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.c.f(this, consumer);
    }

    @Override // j$.util.stream.z8, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.z8, j$.util.Spliterator
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
        return j$.util.c.k(this, consumer);
    }

    @Override // j$.util.b1
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f) {
            case 1:
                tryAdvance((IntConsumer) obj);
                return false;
            default:
                return tryAdvance((IntConsumer) obj);
        }
    }
}
