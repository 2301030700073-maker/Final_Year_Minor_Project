package j$.util;

import j$.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class c {
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.b] */
    public static j$.util.function.b a(final DoubleConsumer doubleConsumer, final DoubleConsumer doubleConsumer2) {
        Objects.requireNonNull(doubleConsumer2);
        return new DoubleConsumer() { // from class: j$.util.function.b
            @Override // java.util.function.DoubleConsumer
            public final void accept(double d) {
                DoubleConsumer.this.accept(d);
                doubleConsumer2.accept(d);
            }

            public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer3) {
                return j$.util.c.a(this, doubleConsumer3);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.e] */
    public static j$.util.function.e b(final IntConsumer intConsumer, final IntConsumer intConsumer2) {
        Objects.requireNonNull(intConsumer2);
        return new IntConsumer() { // from class: j$.util.function.e
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                IntConsumer.this.accept(i);
                intConsumer2.accept(i);
            }

            public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer3) {
                return j$.util.c.b(this, intConsumer3);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.g] */
    public static j$.util.function.g c(final LongConsumer longConsumer, final LongConsumer longConsumer2) {
        Objects.requireNonNull(longConsumer2);
        return new LongConsumer() { // from class: j$.util.function.g
            @Override // java.util.function.LongConsumer
            public final void accept(long j) {
                LongConsumer.this.accept(j);
                longConsumer2.accept(j);
            }

            public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer3) {
                return j$.util.c.c(this, longConsumer3);
            }
        };
    }

    public static void d(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static void e(s0 s0Var, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            s0Var.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (q1.a) {
                q1.a(s0Var.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            s0Var.forEachRemaining((DoubleConsumer) new c0(consumer, 0));
        }
    }

    public static void f(v0 v0Var, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            v0Var.forEachRemaining((IntConsumer) consumer);
        } else {
            if (q1.a) {
                q1.a(v0Var.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            v0Var.forEachRemaining((IntConsumer) new g0(consumer, 0));
        }
    }

    public static void g(y0 y0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            y0Var.forEachRemaining((LongConsumer) consumer);
        } else {
            if (q1.a) {
                q1.a(y0Var.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            y0Var.forEachRemaining((LongConsumer) new k0(consumer, 0));
        }
    }

    public static long h(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    public static boolean i(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    public static boolean j(s0 s0Var, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return s0Var.tryAdvance((DoubleConsumer) consumer);
        }
        if (q1.a) {
            q1.a(s0Var.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return s0Var.tryAdvance((DoubleConsumer) new c0(consumer, 0));
    }

    public static boolean k(v0 v0Var, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return v0Var.tryAdvance((IntConsumer) consumer);
        }
        if (q1.a) {
            q1.a(v0Var.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return v0Var.tryAdvance((IntConsumer) new g0(consumer, 0));
    }

    public static boolean l(y0 y0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return y0Var.tryAdvance((LongConsumer) consumer);
        }
        if (q1.a) {
            q1.a(y0Var.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return y0Var.tryAdvance((LongConsumer) new k0(consumer, 0));
    }

    public static Optional m(java.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? new Optional(optional.get()) : Optional.b;
    }

    public static z n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? new z(optionalDouble.getAsDouble()) : z.c;
    }

    public static a0 o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? new a0(optionalInt.getAsInt()) : a0.c;
    }

    public static b0 p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? new b0(optionalLong.getAsLong()) : b0.c;
    }

    public static java.util.Optional q(Optional optional) {
        if (optional == null) {
            return null;
        }
        Object obj = optional.a;
        if (obj == null) {
            return java.util.Optional.empty();
        }
        if (obj != null) {
            return java.util.Optional.of(obj);
        }
        throw new NoSuchElementException("No value present");
    }

    public static OptionalDouble r(z zVar) {
        if (zVar == null) {
            return null;
        }
        boolean z = zVar.a;
        if (!z) {
            return OptionalDouble.empty();
        }
        if (z) {
            return OptionalDouble.of(zVar.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static OptionalInt s(a0 a0Var) {
        if (a0Var == null) {
            return null;
        }
        boolean z = a0Var.a;
        if (!z) {
            return OptionalInt.empty();
        }
        if (z) {
            return OptionalInt.of(a0Var.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static OptionalLong t(b0 b0Var) {
        if (b0Var == null) {
            return null;
        }
        boolean z = b0Var.a;
        if (!z) {
            return OptionalLong.empty();
        }
        if (z) {
            return OptionalLong.of(b0Var.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static void u(Iterator it, Consumer consumer) {
        if (it instanceof x) {
            ((x) it).forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    public static String v(Object obj, Object obj2) {
        String str;
        String obj3;
        String str2 = "null";
        if (obj == null || (str = obj.toString()) == null) {
            str = "null";
        }
        int length = str.length();
        if (obj2 != null && (obj3 = obj2.toString()) != null) {
            str2 = obj3;
        }
        int length2 = str2.length();
        char[] cArr = new char[length + length2 + 1];
        str.getChars(0, length, cArr, 0);
        cArr[length] = '=';
        str2.getChars(0, length2, cArr, length + 1);
        return new String(cArr);
    }

    public static h1 w(Object[] objArr, int i, int i2) {
        Spliterators.a(((Object[]) Objects.requireNonNull(objArr)).length, i, i2);
        return new h1(objArr, i, i2, 1040);
    }

    public static /* synthetic */ java.util.Comparator x(java.util.Comparator comparator, java.util.Comparator comparator2) {
        return comparator instanceof Comparator ? ((Comparator) comparator).thenComparing(comparator2) : Comparator.CC.$default$thenComparing(comparator, comparator2);
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
