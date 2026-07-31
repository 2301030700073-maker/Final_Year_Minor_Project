package kotlin.time;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Duration implements Comparable {
    public final long rawValue;
    public static final Companion Companion = new Companion();
    public static final long INFINITE = InstantKt.durationOfMillis(4611686018427387903L);
    public static final long NEG_INFINITE = InstantKt.durationOfMillis(-4611686018427387903L);
    public static final long INVALID = 9223372036854759646L;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    public static final long m992addValuesMixedRangesUwyO8pc(long j, long j2) {
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
    public static final void m993appendFractionalimpl(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String padStart = StringsKt.padStart(String.valueOf(i2), i3);
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
    public static int m994compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return j < 0 ? -i : i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m995equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m996getInWholeMillisecondsimpl(long j) {
        return ((((int) j) & 1) != 1 || m999isInfiniteimpl(j)) ? m1001toLongimpl(j, DurationUnit.MILLISECONDS) : j >> 1;
    }

    /* renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m997getNanosecondsComponentimpl(long j) {
        if (m999isInfiniteimpl(j)) {
            return 0;
        }
        return (int) ((((int) j) & 1) == 1 ? ((j >> 1) % 1000) * 1000000 : (j >> 1) % 1000000000);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m998hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m999isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m1000plusLRDsOJo(long j, long j2) {
        int i = ((int) j) & 1;
        if (i != (((int) j2) & 1)) {
            return i == 1 ? m992addValuesMixedRangesUwyO8pc(j >> 1, j2 >> 1) : m992addValuesMixedRangesUwyO8pc(j2 >> 1, j >> 1);
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
            UriKt$$ExternalSyntheticBUOutline0.m("Summing infinite durations of different signs yields an undefined result.");
            return 0L;
        }
        if (addMillisWithoutOverflow == 4611686018427387903L || addMillisWithoutOverflow == -4611686018427387903L) {
            return InstantKt.durationOfMillis(addMillisWithoutOverflow);
        }
        if (-4611686018426L > addMillisWithoutOverflow || addMillisWithoutOverflow >= 4611686018427L) {
            return InstantKt.durationOfMillis(RangesKt.coerceIn(addMillisWithoutOverflow, -4611686018427387903L, 4611686018427387903L));
        }
        long j5 = (addMillisWithoutOverflow * 1000000) << 1;
        int i3 = DurationJvmKt.$r8$clinit;
        return j5;
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    public static final long m1001toLongimpl(long j, DurationUnit durationUnit) {
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return durationUnit.timeUnit.convert(j >> 1, ((((int) j) & 1) == 0 ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS).timeUnit);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1002toStringimpl(long j) {
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
            j = m1003unaryMinusUwyO8pc(j);
        }
        long m1001toLongimpl = m1001toLongimpl(j, DurationUnit.DAYS);
        int m1001toLongimpl2 = m999isInfiniteimpl(j) ? 0 : (int) (m1001toLongimpl(j, DurationUnit.HOURS) % 24);
        int m1001toLongimpl3 = m999isInfiniteimpl(j) ? 0 : (int) (m1001toLongimpl(j, DurationUnit.MINUTES) % 60);
        int m1001toLongimpl4 = m999isInfiniteimpl(j) ? 0 : (int) (m1001toLongimpl(j, DurationUnit.SECONDS) % 60);
        int m997getNanosecondsComponentimpl = m997getNanosecondsComponentimpl(j);
        boolean z2 = m1001toLongimpl != 0;
        boolean z3 = m1001toLongimpl2 != 0;
        boolean z4 = m1001toLongimpl3 != 0;
        boolean z5 = (m1001toLongimpl4 == 0 && m997getNanosecondsComponentimpl == 0) ? false : true;
        if (z2) {
            sb.append(m1001toLongimpl);
            sb.append('d');
            i = 1;
        }
        if (z3 || (z2 && (z4 || z5))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m1001toLongimpl2);
            sb.append('h');
            i = i2;
        }
        if (z4 || (z5 && (z3 || z2))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m1001toLongimpl3);
            sb.append('m');
            i = i3;
        }
        if (z5) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (m1001toLongimpl4 != 0 || z2 || z3 || z4) {
                m993appendFractionalimpl(sb, m1001toLongimpl4, m997getNanosecondsComponentimpl, 9, "s", false);
            } else if (m997getNanosecondsComponentimpl >= 1000000) {
                m993appendFractionalimpl(sb, m997getNanosecondsComponentimpl / 1000000, m997getNanosecondsComponentimpl % 1000000, 6, "ms", false);
            } else if (m997getNanosecondsComponentimpl >= 1000) {
                m993appendFractionalimpl(sb, m997getNanosecondsComponentimpl / 1000, m997getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(m997getNanosecondsComponentimpl);
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
    public static final long m1003unaryMinusUwyO8pc(long j) {
        long j2 = ((-(j >> 1)) << 1) + (((int) j) & 1);
        int i = DurationJvmKt.$r8$clinit;
        return j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return m994compareToLRDsOJo(this.rawValue, ((Duration) obj).rawValue);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Duration) {
            return this.rawValue == ((Duration) obj).rawValue;
        }
        return false;
    }

    public final int hashCode() {
        return m998hashCodeimpl(this.rawValue);
    }

    public final String toString() {
        return m1002toStringimpl(this.rawValue);
    }
}
