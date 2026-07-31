package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class d8 extends b7 {
    @Override // j$.util.stream.b7
    public final void d() {
        v6 v6Var = new v6();
        this.h = v6Var;
        Objects.requireNonNull(v6Var);
        this.e = this.b.R(new c8(v6Var, 0));
        this.f = new j$.desugar.sun.nio.fs.g(16, this);
    }

    @Override // j$.util.stream.b7
    public final b7 e(Spliterator spliterator) {
        return new d8(this.b, spliterator, this.a);
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
        c8 c8Var = new c8(consumer, 1);
        this.b.Q(this.d, c8Var);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean a = a();
        if (!a) {
            return a;
        }
        v6 v6Var = (v6) this.h;
        long j = this.g;
        if (v6Var.c != 0) {
            if (j >= v6Var.count()) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            for (int i = 0; i <= v6Var.c; i++) {
                long j2 = v6Var.d[i];
                Object[] objArr = v6Var.f[i];
                if (j < objArr.length + j2) {
                    obj = objArr[(int) (j - j2)];
                }
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= v6Var.b) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        obj = v6Var.e[(int) j];
        consumer.r(obj);
        return a;
    }
}
