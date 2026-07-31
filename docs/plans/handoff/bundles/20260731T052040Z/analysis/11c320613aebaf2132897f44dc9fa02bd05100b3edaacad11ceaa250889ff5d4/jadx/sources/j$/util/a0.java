package j$.util;

import j$.util.Spliterator;
import j$.util.a0;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.OptionalDouble;
import java.util.OptionalLong;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class a0 {
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.h] */
    public static j$.util.function.h a(final LongConsumer longConsumer, final LongConsumer longConsumer2) {
        Objects.requireNonNull(longConsumer2);
        return new LongConsumer() { // from class: j$.util.function.h
            @Override // java.util.function.LongConsumer
            public final void accept(long j) {
                LongConsumer.this.accept(j);
                longConsumer2.accept(j);
            }

            public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer3) {
                return a0.a(this, longConsumer3);
            }
        };
    }

    public static void b(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static void c(t0 t0Var, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            t0Var.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (r1.a) {
                r1.a(t0Var.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            t0Var.forEachRemaining((DoubleConsumer) new d0(consumer, 0));
        }
    }

    public static void d(Spliterator.OfInt ofInt, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            ofInt.forEachRemaining((IntConsumer) consumer);
        } else {
            if (r1.a) {
                r1.a(ofInt.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            ofInt.forEachRemaining((IntConsumer) new h0(consumer, 0));
        }
    }

    public static void e(y0 y0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            y0Var.forEachRemaining((LongConsumer) consumer);
        } else {
            if (r1.a) {
                r1.a(y0Var.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            y0Var.forEachRemaining((LongConsumer) new l0(consumer, 0));
        }
    }

    public static boolean f(t0 t0Var, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return t0Var.tryAdvance((DoubleConsumer) consumer);
        }
        if (r1.a) {
            r1.a(t0Var.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return t0Var.tryAdvance((DoubleConsumer) new d0(consumer, 0));
    }

    public static boolean g(Spliterator.OfInt ofInt, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return ofInt.tryAdvance((IntConsumer) consumer);
        }
        if (r1.a) {
            r1.a(ofInt.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return ofInt.tryAdvance((IntConsumer) new h0(consumer, 0));
    }

    public static boolean h(y0 y0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return y0Var.tryAdvance((LongConsumer) consumer);
        }
        if (r1.a) {
            r1.a(y0Var.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return y0Var.tryAdvance((LongConsumer) new l0(consumer, 0));
    }

    public static Optional i(java.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    public static b0 j(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? new b0(optionalDouble.getAsDouble()) : b0.c;
    }

    public static OptionalInt k(java.util.OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? new OptionalInt(optionalInt.getAsInt()) : OptionalInt.c;
    }

    public static c0 l(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? new c0(optionalLong.getAsLong()) : c0.c;
    }

    public static java.util.Optional m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? java.util.Optional.of(optional.get()) : java.util.Optional.empty();
    }

    public static OptionalDouble n(b0 b0Var) {
        if (b0Var == null) {
            return null;
        }
        boolean z = b0Var.a;
        if (!z) {
            return OptionalDouble.empty();
        }
        if (z) {
            return OptionalDouble.of(b0Var.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static java.util.OptionalInt o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        boolean z = optionalInt.a;
        if (!z) {
            return java.util.OptionalInt.empty();
        }
        if (z) {
            return java.util.OptionalInt.of(optionalInt.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static OptionalLong p(c0 c0Var) {
        if (c0Var == null) {
            return null;
        }
        boolean z = c0Var.a;
        if (!z) {
            return OptionalLong.empty();
        }
        if (z) {
            return OptionalLong.of(c0Var.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static String q(Object obj, Object obj2) {
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
