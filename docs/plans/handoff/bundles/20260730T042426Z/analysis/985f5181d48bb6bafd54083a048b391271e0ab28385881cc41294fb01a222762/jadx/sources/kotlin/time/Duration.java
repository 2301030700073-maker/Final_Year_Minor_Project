package kotlin.time;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import org.fdroid.fdroid.Preferences;

/* compiled from: Duration.kt */
/* loaded from: classes2.dex */
public final class Duration implements Comparable {
    private static final long INFINITE;
    private static final long NEG_INFINITE;
    private final long rawValue;
    public static final Companion Companion = new Companion(null);
    private static final long ZERO = m2799constructorimpl(0);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m2797boximpl(long j) {
        return new Duration(j);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2800equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).m2824unboximpl();
    }

    /* renamed from: getValue-impl, reason: not valid java name */
    private static final long m2811getValueimpl(long j) {
        return j >> 1;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2812hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    /* renamed from: isInMillis-impl, reason: not valid java name */
    private static final boolean m2814isInMillisimpl(long j) {
        return (((int) j) & 1) == 1;
    }

    /* renamed from: isInNanos-impl, reason: not valid java name */
    private static final boolean m2815isInNanosimpl(long j) {
        return (((int) j) & 1) == 0;
    }

    /* renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m2817isNegativeimpl(long j) {
        return j < 0;
    }

    public boolean equals(Object obj) {
        return m2800equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m2812hashCodeimpl(this.rawValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2824unboximpl() {
        return this.rawValue;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return m2823compareToLRDsOJo(((Duration) obj).m2824unboximpl());
    }

    private /* synthetic */ Duration(long j) {
        this.rawValue = j;
    }

    /* renamed from: getStorageUnit-impl, reason: not valid java name */
    private static final DurationUnit m2810getStorageUnitimpl(long j) {
        return m2815isInNanosimpl(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m2799constructorimpl(long j) {
        if (DurationJvmKt.getDurationAssertionsEnabled()) {
            if (m2815isInNanosimpl(j)) {
                long m2811getValueimpl = m2811getValueimpl(j);
                if (-4611686018426999999L > m2811getValueimpl || m2811getValueimpl >= 4611686018427000000L) {
                    throw new AssertionError(m2811getValueimpl(j) + " ns is out of nanoseconds range");
                }
            } else {
                long m2811getValueimpl2 = m2811getValueimpl(j);
                if (-4611686018427387903L > m2811getValueimpl2 || m2811getValueimpl2 >= 4611686018427387904L) {
                    throw new AssertionError(m2811getValueimpl(j) + " ms is out of milliseconds range");
                }
                long m2811getValueimpl3 = m2811getValueimpl(j);
                if (-4611686018426L <= m2811getValueimpl3 && m2811getValueimpl3 < 4611686018427L) {
                    throw new AssertionError(m2811getValueimpl(j) + " ms is denormalized");
                }
            }
        }
        return j;
    }

    /* compiled from: Duration.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getZERO-UwyO8pc, reason: not valid java name */
        public final long m2826getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        /* renamed from: getINFINITE-UwyO8pc, reason: not valid java name */
        public final long m2825getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* renamed from: parseIsoString-UwyO8pc, reason: not valid java name */
        public final long m2827parseIsoStringUwyO8pc(String value) {
            long parseDuration;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                parseDuration = DurationKt.parseDuration(value, true);
                return parseDuration;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e);
            }
        }
    }

    static {
        long durationOfMillis;
        long durationOfMillis2;
        durationOfMillis = DurationKt.durationOfMillis(4611686018427387903L);
        INFINITE = durationOfMillis;
        durationOfMillis2 = DurationKt.durationOfMillis(-4611686018427387903L);
        NEG_INFINITE = durationOfMillis2;
    }

    /* renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m2822unaryMinusUwyO8pc(long j) {
        long durationOf;
        durationOf = DurationKt.durationOf(-m2811getValueimpl(j), ((int) j) & 1);
        return durationOf;
    }

    /* renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m2818plusLRDsOJo(long j, long j2) {
        long durationOfMillisNormalized;
        long durationOfNanosNormalized;
        if (m2816isInfiniteimpl(j)) {
            if (m2813isFiniteimpl(j2) || (j2 ^ j) >= 0) {
                return j;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (m2816isInfiniteimpl(j2)) {
            return j2;
        }
        if ((((int) j) & 1) == (((int) j2) & 1)) {
            long m2811getValueimpl = m2811getValueimpl(j) + m2811getValueimpl(j2);
            if (m2815isInNanosimpl(j)) {
                durationOfNanosNormalized = DurationKt.durationOfNanosNormalized(m2811getValueimpl);
                return durationOfNanosNormalized;
            }
            durationOfMillisNormalized = DurationKt.durationOfMillisNormalized(m2811getValueimpl);
            return durationOfMillisNormalized;
        }
        if (m2814isInMillisimpl(j)) {
            return m2795addValuesMixedRangesUwyO8pc(j, m2811getValueimpl(j), m2811getValueimpl(j2));
        }
        return m2795addValuesMixedRangesUwyO8pc(j, m2811getValueimpl(j2), m2811getValueimpl(j));
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    private static final long m2795addValuesMixedRangesUwyO8pc(long j, long j2, long j3) {
        long nanosToMillis;
        long durationOfMillis;
        long millisToNanos;
        long millisToNanos2;
        long durationOfNanos;
        nanosToMillis = DurationKt.nanosToMillis(j3);
        long j4 = j2 + nanosToMillis;
        if (-4611686018426L > j4 || j4 >= 4611686018427L) {
            durationOfMillis = DurationKt.durationOfMillis(RangesKt.coerceIn(j4, -4611686018427387903L, 4611686018427387903L));
            return durationOfMillis;
        }
        millisToNanos = DurationKt.millisToNanos(nanosToMillis);
        long j5 = j3 - millisToNanos;
        millisToNanos2 = DurationKt.millisToNanos(j4);
        durationOfNanos = DurationKt.durationOfNanos(millisToNanos2 + j5);
        return durationOfNanos;
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m2816isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m2813isFiniteimpl(long j) {
        return !m2816isInfiniteimpl(j);
    }

    /* renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m2801getAbsoluteValueUwyO8pc(long j) {
        return m2817isNegativeimpl(j) ? m2822unaryMinusUwyO8pc(j) : j;
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m2823compareToLRDsOJo(long j) {
        return m2798compareToLRDsOJo(this.rawValue, j);
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m2798compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m2817isNegativeimpl(j) ? -i : i;
    }

    /* renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m2802getHoursComponentimpl(long j) {
        if (m2816isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2804getInWholeHoursimpl(j) % 24);
    }

    /* renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m2807getMinutesComponentimpl(long j) {
        if (m2816isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2805getInWholeMinutesimpl(j) % 60);
    }

    /* renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m2809getSecondsComponentimpl(long j) {
        if (m2816isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m2806getInWholeSecondsimpl(j) % 60);
    }

    /* renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m2808getNanosecondsComponentimpl(long j) {
        long m2811getValueimpl;
        if (m2816isInfiniteimpl(j)) {
            return 0;
        }
        if (m2814isInMillisimpl(j)) {
            m2811getValueimpl = DurationKt.millisToNanos(m2811getValueimpl(j) % 1000);
        } else {
            m2811getValueimpl = m2811getValueimpl(j) % 1000000000;
        }
        return (int) m2811getValueimpl;
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    public static final long m2820toLongimpl(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j == INFINITE) {
            return Preferences.UPDATE_INTERVAL_DISABLED;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m2811getValueimpl(j), m2810getStorageUnitimpl(j), unit);
    }

    /* renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m2803getInWholeDaysimpl(long j) {
        return m2820toLongimpl(j, DurationUnit.DAYS);
    }

    /* renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m2804getInWholeHoursimpl(long j) {
        return m2820toLongimpl(j, DurationUnit.HOURS);
    }

    /* renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m2805getInWholeMinutesimpl(long j) {
        return m2820toLongimpl(j, DurationUnit.MINUTES);
    }

    /* renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m2806getInWholeSecondsimpl(long j) {
        return m2820toLongimpl(j, DurationUnit.SECONDS);
    }

    public String toString() {
        return m2821toStringimpl(this.rawValue);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2821toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean m2817isNegativeimpl = m2817isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (m2817isNegativeimpl) {
            sb.append(CoreConstants.DASH_CHAR);
        }
        long m2801getAbsoluteValueUwyO8pc = m2801getAbsoluteValueUwyO8pc(j);
        long m2803getInWholeDaysimpl = m2803getInWholeDaysimpl(m2801getAbsoluteValueUwyO8pc);
        int m2802getHoursComponentimpl = m2802getHoursComponentimpl(m2801getAbsoluteValueUwyO8pc);
        int m2807getMinutesComponentimpl = m2807getMinutesComponentimpl(m2801getAbsoluteValueUwyO8pc);
        int m2809getSecondsComponentimpl = m2809getSecondsComponentimpl(m2801getAbsoluteValueUwyO8pc);
        int m2808getNanosecondsComponentimpl = m2808getNanosecondsComponentimpl(m2801getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = m2803getInWholeDaysimpl != 0;
        boolean z2 = m2802getHoursComponentimpl != 0;
        boolean z3 = m2807getMinutesComponentimpl != 0;
        boolean z4 = (m2809getSecondsComponentimpl == 0 && m2808getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(m2803getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m2802getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m2807getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (m2809getSecondsComponentimpl != 0 || z || z2 || z3) {
                m2796appendFractionalimpl(j, sb, m2809getSecondsComponentimpl, m2808getNanosecondsComponentimpl, 9, "s", false);
            } else if (m2808getNanosecondsComponentimpl >= 1000000) {
                m2796appendFractionalimpl(j, sb, m2808getNanosecondsComponentimpl / 1000000, m2808getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (m2808getNanosecondsComponentimpl >= 1000) {
                m2796appendFractionalimpl(j, sb, m2808getNanosecondsComponentimpl / 1000, m2808getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(m2808getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (m2817isNegativeimpl && i > 1) {
            sb.insert(1, CoreConstants.LEFT_PARENTHESIS_CHAR).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: appendFractional-impl, reason: not valid java name */
    private static final void m2796appendFractionalimpl(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append(CoreConstants.DOT);
            String padStart = StringsKt.padStart(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = padStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (padStart.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (!z && i6 < 3) {
                sb.append((CharSequence) padStart, 0, i6);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            } else {
                sb.append((CharSequence) padStart, 0, ((i4 + 3) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb, "append(...)");
            }
        }
        sb.append(str);
    }

    /* renamed from: toIsoString-impl, reason: not valid java name */
    public static final String m2819toIsoStringimpl(long j) {
        StringBuilder sb = new StringBuilder();
        if (m2817isNegativeimpl(j)) {
            sb.append(CoreConstants.DASH_CHAR);
        }
        sb.append("PT");
        long m2801getAbsoluteValueUwyO8pc = m2801getAbsoluteValueUwyO8pc(j);
        long m2804getInWholeHoursimpl = m2804getInWholeHoursimpl(m2801getAbsoluteValueUwyO8pc);
        int m2807getMinutesComponentimpl = m2807getMinutesComponentimpl(m2801getAbsoluteValueUwyO8pc);
        int m2809getSecondsComponentimpl = m2809getSecondsComponentimpl(m2801getAbsoluteValueUwyO8pc);
        int m2808getNanosecondsComponentimpl = m2808getNanosecondsComponentimpl(m2801getAbsoluteValueUwyO8pc);
        if (m2816isInfiniteimpl(j)) {
            m2804getInWholeHoursimpl = 9999999999999L;
        }
        boolean z = false;
        boolean z2 = m2804getInWholeHoursimpl != 0;
        boolean z3 = (m2809getSecondsComponentimpl == 0 && m2808getNanosecondsComponentimpl == 0) ? false : true;
        if (m2807getMinutesComponentimpl != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(m2804getInWholeHoursimpl);
            sb.append('H');
        }
        if (z) {
            sb.append(m2807getMinutesComponentimpl);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            m2796appendFractionalimpl(j, sb, m2809getSecondsComponentimpl, m2808getNanosecondsComponentimpl, 9, "S", true);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }
}
