package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.m1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3054m1 extends AbstractC3059n1 {
    C3054m1(I0 i0) {
        super(i0);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.a == null) {
            return;
        }
        if (this.d != null) {
            while (tryAdvance(consumer)) {
            }
            return;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            spliterator.forEachRemaining(consumer);
            return;
        }
        ArrayDeque b = b();
        while (true) {
            I0 a = AbstractC3059n1.a(b);
            if (a == null) {
                this.a = null;
                return;
            }
            a.forEach(consumer);
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        I0 a;
        if (!c()) {
            return false;
        }
        boolean tryAdvance = this.d.tryAdvance(consumer);
        if (!tryAdvance) {
            if (this.c == null && (a = AbstractC3059n1.a(this.e)) != null) {
                Spliterator spliterator = a.spliterator();
                this.d = spliterator;
                return spliterator.tryAdvance(consumer);
            }
            this.a = null;
        }
        return tryAdvance;
    }
}
