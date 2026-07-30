package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class N3 extends AbstractC3036i3 {
    N3(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z) {
        super(abstractC3117z0, spliterator, z);
    }

    N3(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z) {
        super(abstractC3117z0, c2992a, z);
    }

    @Override // j$.util.stream.AbstractC3036i3
    final void d() {
        C3001b3 c3001b3 = new C3001b3();
        this.h = c3001b3;
        Objects.requireNonNull(c3001b3);
        this.e = this.b.I0(new M3(c3001b3, 0));
        this.f = new C2992a(6, this);
    }

    @Override // j$.util.stream.AbstractC3036i3
    final AbstractC3036i3 e(Spliterator spliterator) {
        return new N3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(consumer)) {
            }
            return;
        }
        Objects.requireNonNull(consumer);
        c();
        Objects.requireNonNull(consumer);
        M3 m3 = new M3(consumer, 1);
        this.b.H0(this.d, m3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean a = a();
        if (a) {
            C3001b3 c3001b3 = (C3001b3) this.h;
            long j = this.g;
            if (c3001b3.c != 0) {
                if (j >= c3001b3.count()) {
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                for (int i = 0; i <= c3001b3.c; i++) {
                    long j2 = c3001b3.d[i];
                    Object[] objArr = c3001b3.f[i];
                    if (j < objArr.length + j2) {
                        obj = objArr[(int) (j - j2)];
                    }
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            if (j >= c3001b3.b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            obj = c3001b3.e[(int) j];
            consumer.m(obj);
        }
        return a;
    }
}
