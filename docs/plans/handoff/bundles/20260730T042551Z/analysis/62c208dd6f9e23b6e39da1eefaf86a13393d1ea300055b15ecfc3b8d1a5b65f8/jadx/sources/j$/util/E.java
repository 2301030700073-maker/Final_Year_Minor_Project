package j$.util;

import j$.util.Iterator;
import j$.util.List;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class E {
    public static void a(V v, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            v.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (u0.a) {
                u0.a(v.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            v.forEachRemaining((DoubleConsumer) new D(consumer));
        }
    }

    public static void b(Y y, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            y.forEachRemaining((IntConsumer) consumer);
        } else {
            if (u0.a) {
                u0.a(y.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            y.forEachRemaining((IntConsumer) new I(consumer));
        }
    }

    public static void c(b0 b0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            b0Var.forEachRemaining((LongConsumer) consumer);
        } else {
            if (u0.a) {
                u0.a(b0Var.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            b0Var.forEachRemaining((LongConsumer) new M(consumer));
        }
    }

    public static long d(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    public static boolean e(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    public static boolean f(V v, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return v.tryAdvance((DoubleConsumer) consumer);
        }
        if (u0.a) {
            u0.a(v.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return v.tryAdvance((DoubleConsumer) new D(consumer));
    }

    public static boolean g(Y y, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return y.tryAdvance((IntConsumer) consumer);
        }
        if (u0.a) {
            u0.a(y.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return y.tryAdvance((IntConsumer) new I(consumer));
    }

    public static boolean h(b0 b0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return b0Var.tryAdvance((LongConsumer) consumer);
        }
        if (u0.a) {
            u0.a(b0Var.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return b0Var.tryAdvance((LongConsumer) new M(consumer));
    }

    public static /* synthetic */ void i(java.util.Iterator it, Consumer consumer) {
        if (it instanceof Iterator) {
            ((Iterator) it).forEachRemaining(consumer);
        } else {
            Iterator.CC.$default$forEachRemaining(it, consumer);
        }
    }

    public static /* synthetic */ void j(java.util.List list, Comparator comparator) {
        if (list instanceof List) {
            ((List) list).sort(comparator);
        } else {
            List.CC.$default$sort(list, comparator);
        }
    }

    public static C2975c k(Comparator comparator, Comparator comparator2) {
        if (!(comparator instanceof InterfaceC2977d)) {
            Objects.requireNonNull(comparator2);
            return new C2975c(comparator, comparator2, 0);
        }
        EnumC2978e enumC2978e = (EnumC2978e) ((InterfaceC2977d) comparator);
        enumC2978e.getClass();
        Objects.requireNonNull(comparator2);
        return new C2975c(enumC2978e, comparator2, 0);
    }

    public int characteristics() {
        return 16448;
    }

    public long estimateSize() {
        return 0L;
    }

    public void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
    }

    public boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        return false;
    }

    public Spliterator trySplit() {
        return null;
    }
}
