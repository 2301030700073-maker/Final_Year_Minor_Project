package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class J3 extends L3 implements Spliterator, Consumer {
    Object f;

    J3(Spliterator spliterator, long j, long j2) {
        super(spliterator, j, j2);
    }

    J3(Spliterator spliterator, J3 j3) {
        super(spliterator, j3);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f = obj;
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.L3
    protected final Spliterator b(Spliterator spliterator) {
        return new J3(spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C3061n3 c3061n3 = null;
        while (true) {
            K3 f = f();
            if (f == K3.NO_MORE) {
                return;
            }
            K3 k3 = K3.MAYBE_MORE;
            Spliterator spliterator = this.a;
            if (f != k3) {
                spliterator.forEachRemaining(consumer);
                return;
            }
            int i = this.c;
            if (c3061n3 == null) {
                c3061n3 = new C3061n3(i);
            } else {
                c3061n3.a = 0;
            }
            long j = 0;
            while (spliterator.tryAdvance(c3061n3)) {
                j++;
                if (j >= i) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            long a = a(j);
            for (int i2 = 0; i2 < a; i2++) {
                consumer.accept(c3061n3.b[i2]);
            }
        }
    }

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

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (f() != K3.NO_MORE && this.a.tryAdvance(this)) {
            if (a(1L) == 1) {
                consumer.accept(this.f);
                this.f = null;
                return true;
            }
        }
        return false;
    }
}
