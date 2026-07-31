package j$.time;

import j$.time.chrono.ChronoLocalDate;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.util.Comparator;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.a0;
import j$.util.b0;
import j$.util.f0;
import j$.util.j0;
import j$.util.r0;
import j$.util.r1;
import j$.util.u0;
import j$.util.x0;
import j$.util.y;
import j$.util.z;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static boolean A(u0 u0Var, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return u0Var.tryAdvance((IntConsumer) consumer);
        }
        if (r1.a) {
            r1.a(u0Var.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return u0Var.tryAdvance((IntConsumer) new f0(consumer, 0));
    }

    public static boolean B(x0 x0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return x0Var.tryAdvance((LongConsumer) consumer);
        }
        if (r1.a) {
            r1.a(x0Var.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return x0Var.tryAdvance((LongConsumer) new j0(consumer, 0));
    }

    public static String C(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(2016, 1, (int) j, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    public static String D(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(0, (int) j, 0, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    public static Optional E(java.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? new Optional(optional.get()) : Optional.b;
    }

    public static y F(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? new y(optionalDouble.getAsDouble()) : y.c;
    }

    public static z G(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? new z(optionalInt.getAsInt()) : z.c;
    }

    public static a0 H(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? new a0(optionalLong.getAsLong()) : a0.c;
    }

    public static java.util.Optional I(Optional optional) {
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

    public static OptionalDouble J(y yVar) {
        if (yVar == null) {
            return null;
        }
        boolean z = yVar.a;
        if (!z) {
            return OptionalDouble.empty();
        }
        if (z) {
            return OptionalDouble.of(yVar.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static OptionalInt K(z zVar) {
        if (zVar == null) {
            return null;
        }
        boolean z = zVar.a;
        if (!z) {
            return OptionalInt.empty();
        }
        if (z) {
            return OptionalInt.of(zVar.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static OptionalLong L(a0 a0Var) {
        if (a0Var == null) {
            return null;
        }
        boolean z = a0Var.a;
        if (!z) {
            return OptionalLong.empty();
        }
        if (z) {
            return OptionalLong.of(a0Var.b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static void M(Iterator it, Consumer consumer) {
        if (it instanceof j$.util.w) {
            ((j$.util.w) it).forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    public static j$.time.chrono.a N(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        return (j$.time.chrono.a) Objects.requireNonNullElse((j$.time.chrono.a) temporalAccessor.i(j$.time.temporal.o.b), j$.time.chrono.p.c);
    }

    public static /* synthetic */ int O(long j) {
        int i = (int) j;
        if (j == i) {
            return i;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long P(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ List Q(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(Objects.requireNonNull(obj));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static /* synthetic */ Map.Entry R(Object obj, Object obj2) {
        return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(obj), Objects.requireNonNull(obj2));
    }

    public static /* synthetic */ long S(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    public static /* synthetic */ long T(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }

    public static /* synthetic */ long U(long j, long j2) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        if (numberOfLeadingZeros >= 64) {
            if ((j2 != Long.MIN_VALUE) | (j >= 0)) {
                long j3 = j * j2;
                if (j == 0 || j3 / j == j2) {
                    return j3;
                }
            }
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long V(long j, long j2) {
        long j3 = j - j2;
        if (((j2 ^ j) >= 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static String W(Object obj, Object obj2) {
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

    public static b X() {
        return new b(ZoneId.systemDefault());
    }

    public static /* synthetic */ Comparator Y(Comparator comparator, Comparator comparator2) {
        return comparator instanceof j$.util.Comparator ? ((j$.util.Comparator) comparator).thenComparing(comparator2) : Comparator.CC.$default$thenComparing(comparator, comparator2);
    }

    public static Temporal a(ChronoLocalDate chronoLocalDate, Temporal temporal) {
        return temporal.a(chronoLocalDate.toEpochDay(), j$.time.temporal.a.EPOCH_DAY);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.b] */
    public static j$.util.function.b b(final DoubleConsumer doubleConsumer, final DoubleConsumer doubleConsumer2) {
        Objects.requireNonNull(doubleConsumer2);
        return new DoubleConsumer() { // from class: j$.util.function.b
            @Override // java.util.function.DoubleConsumer
            public final void accept(double d) {
                DoubleConsumer.this.accept(d);
                doubleConsumer2.accept(d);
            }

            public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer3) {
                return j$.time.a.b(this, doubleConsumer3);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.e] */
    public static j$.util.function.e c(final IntConsumer intConsumer, final IntConsumer intConsumer2) {
        Objects.requireNonNull(intConsumer2);
        return new IntConsumer() { // from class: j$.util.function.e
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                IntConsumer.this.accept(i);
                intConsumer2.accept(i);
            }

            public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer3) {
                return j$.time.a.c(this, intConsumer3);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.f] */
    public static j$.util.function.f d(final LongConsumer longConsumer, final LongConsumer longConsumer2) {
        Objects.requireNonNull(longConsumer2);
        return new LongConsumer() { // from class: j$.util.function.f
            @Override // java.util.function.LongConsumer
            public final void accept(long j) {
                LongConsumer.this.accept(j);
                longConsumer2.accept(j);
            }

            public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer3) {
                return j$.time.a.d(this, longConsumer3);
            }
        };
    }

    public static int e(ChronoLocalDate chronoLocalDate, ChronoLocalDate chronoLocalDate2) {
        int compare = Long.compare(chronoLocalDate.toEpochDay(), chronoLocalDate2.toEpochDay());
        if (compare != 0) {
            return compare;
        }
        return chronoLocalDate.getChronology().getId().compareTo(chronoLocalDate2.getChronology().getId());
    }

    public static int f(ChronoLocalDateTime chronoLocalDateTime, ChronoLocalDateTime chronoLocalDateTime2) {
        int compareTo = chronoLocalDateTime.toLocalDate().compareTo(chronoLocalDateTime2.toLocalDate());
        return (compareTo == 0 && (compareTo = chronoLocalDateTime.toLocalTime().u(chronoLocalDateTime2.toLocalTime())) == 0) ? chronoLocalDateTime.getChronology().getId().compareTo(chronoLocalDateTime2.getChronology().getId()) : compareTo;
    }

    public static int g(ChronoZonedDateTime chronoZonedDateTime, ChronoZonedDateTime chronoZonedDateTime2) {
        int compare = Long.compare(chronoZonedDateTime.toEpochSecond(), chronoZonedDateTime2.toEpochSecond());
        return (compare == 0 && (compare = chronoZonedDateTime.toLocalTime().d - chronoZonedDateTime2.toLocalTime().d) == 0 && (compare = chronoZonedDateTime.toLocalDateTime().s(chronoZonedDateTime2.toLocalDateTime())) == 0 && (compare = chronoZonedDateTime.getZone().getId().compareTo(chronoZonedDateTime2.getZone().getId())) == 0) ? chronoZonedDateTime.getChronology().getId().compareTo(chronoZonedDateTime2.getChronology().getId()) : compare;
    }

    public static void h(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static void i(r0 r0Var, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            r0Var.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (r1.a) {
                r1.a(r0Var.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            r0Var.forEachRemaining((DoubleConsumer) new b0(consumer, 0));
        }
    }

    public static void j(u0 u0Var, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            u0Var.forEachRemaining((IntConsumer) consumer);
        } else {
            if (r1.a) {
                r1.a(u0Var.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            u0Var.forEachRemaining((IntConsumer) new f0(consumer, 0));
        }
    }

    public static void k(x0 x0Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            x0Var.forEachRemaining((LongConsumer) consumer);
        } else {
            if (r1.a) {
                r1.a(x0Var.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            x0Var.forEachRemaining((LongConsumer) new j0(consumer, 0));
        }
    }

    public static int l(ChronoZonedDateTime chronoZonedDateTime, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.o.a(chronoZonedDateTime, nVar);
        }
        int i = j$.time.chrono.g.a[((j$.time.temporal.a) nVar).ordinal()];
        if (i != 1) {
            return i != 2 ? chronoZonedDateTime.toLocalDateTime().f(nVar) : chronoZonedDateTime.getOffset().b;
        }
        throw new j$.time.temporal.p("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    public static int m(j$.time.chrono.j jVar, j$.time.temporal.n nVar) {
        return nVar == j$.time.temporal.a.ERA ? jVar.getValue() : j$.time.temporal.o.a(jVar, nVar);
    }

    public static long n(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    public static long o(j$.time.chrono.j jVar, j$.time.temporal.n nVar) {
        if (nVar == j$.time.temporal.a.ERA) {
            return jVar.getValue();
        }
        if (nVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.p(d.a("Unsupported field: ", nVar));
        }
        return nVar.i(jVar);
    }

    public static boolean p(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    public static boolean q(ChronoLocalDate chronoLocalDate, j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) nVar).isDateBased() : nVar != null && nVar.f(chronoLocalDate);
    }

    public static boolean r(j$.time.chrono.j jVar, j$.time.temporal.n nVar) {
        return nVar instanceof j$.time.temporal.a ? nVar == j$.time.temporal.a.ERA : nVar != null && nVar.f(jVar);
    }

    public static Object s(ChronoLocalDate chronoLocalDate, f fVar) {
        if (fVar == j$.time.temporal.o.a || fVar == j$.time.temporal.o.e || fVar == j$.time.temporal.o.d || fVar == j$.time.temporal.o.g) {
            return null;
        }
        return fVar == j$.time.temporal.o.b ? chronoLocalDate.getChronology() : fVar == j$.time.temporal.o.c ? ChronoUnit.DAYS : fVar.e(chronoLocalDate);
    }

    public static Object t(ChronoLocalDateTime chronoLocalDateTime, f fVar) {
        if (fVar == j$.time.temporal.o.a || fVar == j$.time.temporal.o.e || fVar == j$.time.temporal.o.d) {
            return null;
        }
        return fVar == j$.time.temporal.o.g ? chronoLocalDateTime.toLocalTime() : fVar == j$.time.temporal.o.b ? chronoLocalDateTime.getChronology() : fVar == j$.time.temporal.o.c ? ChronoUnit.NANOS : fVar.e(chronoLocalDateTime);
    }

    public static Object u(ChronoZonedDateTime chronoZonedDateTime, f fVar) {
        return (fVar == j$.time.temporal.o.e || fVar == j$.time.temporal.o.a) ? chronoZonedDateTime.getZone() : fVar == j$.time.temporal.o.d ? chronoZonedDateTime.getOffset() : fVar == j$.time.temporal.o.g ? chronoZonedDateTime.toLocalTime() : fVar == j$.time.temporal.o.b ? chronoZonedDateTime.getChronology() : fVar == j$.time.temporal.o.c ? ChronoUnit.NANOS : fVar.e(chronoZonedDateTime);
    }

    public static Object v(j$.time.chrono.j jVar, f fVar) {
        return fVar == j$.time.temporal.o.c ? ChronoUnit.ERAS : j$.time.temporal.o.c(jVar, fVar);
    }

    public static long w(ChronoLocalDateTime chronoLocalDateTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((chronoLocalDateTime.toLocalDate().toEpochDay() * 86400) + chronoLocalDateTime.toLocalTime().toSecondOfDay()) - zoneOffset.b;
    }

    public static long x(ChronoZonedDateTime chronoZonedDateTime) {
        return ((chronoZonedDateTime.toLocalDate().toEpochDay() * 86400) + chronoZonedDateTime.toLocalTime().toSecondOfDay()) - chronoZonedDateTime.getOffset().b;
    }

    public static Instant y(ChronoLocalDateTime chronoLocalDateTime, ZoneOffset zoneOffset) {
        return Instant.w(chronoLocalDateTime.j(zoneOffset), chronoLocalDateTime.toLocalTime().d);
    }

    public static boolean z(r0 r0Var, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return r0Var.tryAdvance((DoubleConsumer) consumer);
        }
        if (r1.a) {
            r1.a(r0Var.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return r0Var.tryAdvance((DoubleConsumer) new b0(consumer, 0));
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
