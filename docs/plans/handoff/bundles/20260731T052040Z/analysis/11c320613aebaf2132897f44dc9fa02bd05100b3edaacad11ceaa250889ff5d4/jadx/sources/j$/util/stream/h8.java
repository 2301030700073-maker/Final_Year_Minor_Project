package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class h8 extends f7 {
    @Override // j$.util.stream.f7
    public final void d() {
        z6 z6Var = new z6();
        this.h = z6Var;
        Objects.requireNonNull(z6Var);
        this.e = this.b.O(new g8(z6Var, 0));
        this.f = new j$.desugar.sun.nio.fs.g(21, this);
    }

    @Override // j$.util.stream.f7
    public final f7 e(Spliterator spliterator) {
        return new h8(this.b, spliterator, this.a);
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
        g8 g8Var = new g8(consumer, 1);
        this.b.N(this.d, g8Var);
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
        z6 z6Var = (z6) this.h;
        long j = this.g;
        if (z6Var.c != 0) {
            if (j >= z6Var.count()) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            for (int i = 0; i <= z6Var.c; i++) {
                long j2 = z6Var.d[i];
                Object[] objArr = z6Var.f[i];
                if (j < objArr.length + j2) {
                    obj = objArr[(int) (j - j2)];
                }
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= z6Var.b) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        obj = z6Var.e[(int) j];
        consumer.s(obj);
        return a;
    }
}
