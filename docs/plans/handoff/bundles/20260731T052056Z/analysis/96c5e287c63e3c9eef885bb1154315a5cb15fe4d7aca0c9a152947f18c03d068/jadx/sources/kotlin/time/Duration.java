package kotlin.time;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Duration implements Comparable {
    public final long rawValue;
    public static final Path.Companion Companion = new Path.Companion(5);
    public static final long INFINITE = InstantKt.durationOfMillis(4611686018427387903L);
    public static final long NEG_INFINITE = InstantKt.durationOfMillis(-4611686018427387903L);
    public static final long INVALID = 9223372036854759646L;

    /* renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    public static final long m847addValuesMixedRangesUwyO8pc(long j, long j2) {
        long j3 = j2 / 1000000;
        long addMillisWithoutOverflow = InstantKt.addMillisWithoutOverflow(j, j3);
        if (-4611686018426L > addMillisWithoutOverflow || addMillisWithoutOverflow >= 4611686018427L) {
            return InstantKt.durationOfMillis(addMillisWithoutOverflow);
        }
        long j4 = ((addMillisWithoutOverflow * 1000000) + (j2 - (j3 * 1000000))) << 1;
        int i = DurationJvmKt.$r8$clinit;
        return j4;
    }

    /* renamed from: appendFractional-impl, reason: not valid java name */
    public static final void m848appendFractionalimpl(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String padStart = StringsKt.padStart(i3, String.valueOf(i2));
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
            if (z || i6 >= 3) {
                sb.append((CharSequence) padStart, 0, ((i4 + 3) / 3) * 3);
            } else {
                sb.append((CharSequence) padStart, 0, i6);
            }
        }
        sb.append(str);
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m849compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return j < 0 ? -i : i;
    }

    /* renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m850getInWholeMillisecondsimpl(long j) {
        return ((((int) j) & 1) != 1 || m852isInfiniteimpl(j)) ? m854toLongimpl(j, DurationUnit.MILLISECONDS) : j >> 1;
    }

    /* renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m851getNanosecondsComponentimpl(long j) {
        if (m852isInfiniteimpl(j)) {
            return 0;
        }
        return (int) ((((int) j) & 1) == 1 ? ((j >> 1) % 1000) * 1000000 : (j >> 1) % 1000000000);
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m852isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m853plusLRDsOJo(long j, long j2) {
        int i = ((int) j) & 1;
        if (i != (((int) j2) & 1)) {
            return i == 1 ? m847addValuesMixedRangesUwyO8pc(j >> 1, j2 >> 1) : m847addValuesMixedRangesUwyO8pc(j2 >> 1, j >> 1);
        }
        if (i == 0) {
            long j3 = (j >> 1) + (j2 >> 1);
            if (-4611686018426999999L > j3 || j3 >= 4611686018427000000L) {
                return InstantKt.durationOfMillis(j3 / 1000000);
            }
            long j4 = j3 << 1;
            int i2 = DurationJvmKt.$r8$clinit;
            return j4;
        }
        long addMillisWithoutOverflow = InstantKt.addMillisWithoutOverflow(j >> 1, j2 >> 1);
        if (addMillisWithoutOverflow == 9223372036854759646L) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Summing infinite durations of different signs yields an undefined result.");
            return 0L;
        }
        if (addMillisWithoutOverflow == 4611686018427387903L || addMillisWithoutOverflow == -4611686018427387903L) {
            return InstantKt.durationOfMillis(addMillisWithoutOverflow);
        }
        if (-4611686018426L > addMillisWithoutOverflow || addMillisWithoutOverflow >= 4611686018427L) {
            return InstantKt.durationOfMillis(RegexKt.coerceIn(addMillisWithoutOverflow, -4611686018427387903L, 4611686018427387903L));
        }
        long j5 = (addMillisWithoutOverflow * 1000000) << 1;
        int i3 = DurationJvmKt.$r8$clinit;
        return j5;
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    public static final long m854toLongimpl(long j, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        long j2 = j >> 1;
        DurationUnit durationUnit2 = (((int) j) & 1) == 0 ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
        durationUnit2.getClass();
        return durationUnit.getTimeUnit$kotlin_stdlib().convert(j2, durationUnit2.getTimeUnit$kotlin_stdlib());
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m855toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        int i = 0;
        boolean z = j < 0;
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append('-');
        }
        if (j < 0) {
            j = m856unaryMinusUwyO8pc(j);
        }
        long m854toLongimpl = m854toLongimpl(j, DurationUnit.DAYS);
        int m854toLongimpl2 = m852isInfiniteimpl(j) ? 0 : (int) (m854toLongimpl(j, DurationUnit.HOURS) % 24);
        int m854toLongimpl3 = m852isInfiniteimpl(j) ? 0 : (int) (m854toLongimpl(j, DurationUnit.MINUTES) % 60);
        int m854toLongimpl4 = m852isInfiniteimpl(j) ? 0 : (int) (m854toLongimpl(j, DurationUnit.SECONDS) % 60);
        int m851getNanosecondsComponentimpl = m851getNanosecondsComponentimpl(j);
        boolean z2 = m854toLongimpl != 0;
        boolean z3 = m854toLongimpl2 != 0;
        boolean z4 = m854toLongimpl3 != 0;
        boolean z5 = (m854toLongimpl4 == 0 && m851getNanosecondsComponentimpl == 0) ? false : true;
        if (z2) {
            sb.append(m854toLongimpl);
            sb.append('d');
            i = 1;
        }
        if (z3 || (z2 && (z4 || z5))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m854toLongimpl2);
            sb.append('h');
            i = i2;
        }
        if (z4 || (z5 && (z3 || z2))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m854toLongimpl3);
            sb.append('m');
            i = i3;
        }
        if (z5) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (m854toLongimpl4 != 0 || z2 || z3 || z4) {
                m848appendFractionalimpl(sb, m854toLongimpl4, m851getNanosecondsComponentimpl, 9, "s", false);
            } else if (m851getNanosecondsComponentimpl >= 1000000) {
                m848appendFractionalimpl(sb, m851getNanosecondsComponentimpl / 1000000, m851getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (m851getNanosecondsComponentimpl >= 1000) {
                m848appendFractionalimpl(sb, m851getNanosecondsComponentimpl / 1000, m851getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(m851getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (z && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    /* renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m856unaryMinusUwyO8pc(long j) {
        long j2 = ((-(j >> 1)) << 1) + (((int) j) & 1);
        int i = DurationJvmKt.$r8$clinit;
        return j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return m849compareToLRDsOJo(this.rawValue, ((Duration) obj).rawValue);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Duration) {
            return this.rawValue == ((Duration) obj).rawValue;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.rawValue;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return m855toStringimpl(this.rawValue);
    }
}
