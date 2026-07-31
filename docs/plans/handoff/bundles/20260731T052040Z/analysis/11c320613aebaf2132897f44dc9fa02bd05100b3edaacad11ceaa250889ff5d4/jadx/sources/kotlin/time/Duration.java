package kotlin.time;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.upstream.CmcdHeadersFactory;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Duration implements Comparable {
    public final long rawValue;
    public static final ByteString.Companion Companion = new ByteString.Companion(3);
    public static final long INFINITE = InstantKt.durationOfMillis(4611686018427387903L);
    public static final long NEG_INFINITE = InstantKt.durationOfMillis(-4611686018427387903L);
    public static final long INVALID = 9223372036854759646L;

    /* renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    public static final long m678addValuesMixedRangesUwyO8pc(long j, long j2) {
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
    public static final void m679appendFractionalimpl(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
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

    /* renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m680getNanosecondsComponentimpl(long j) {
        if (m681isInfiniteimpl(j)) {
            return 0;
        }
        return (int) ((((int) j) & 1) == 1 ? ((j >> 1) % 1000) * 1000000 : (j >> 1) % C.NANOS_PER_SECOND);
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m681isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m682plusLRDsOJo(long j, long j2) {
        int i = ((int) j) & 1;
        if (i != (((int) j2) & 1)) {
            return i == 1 ? m678addValuesMixedRangesUwyO8pc(j >> 1, j2 >> 1) : m678addValuesMixedRangesUwyO8pc(j2 >> 1, j >> 1);
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Summing infinite durations of different signs yields an undefined result.");
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
    public static final long m683toLongimpl(long j, DurationUnit durationUnit) {
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return durationUnit.getTimeUnit$kotlin_stdlib().convert(j >> 1, ((((int) j) & 1) == 0 ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS).getTimeUnit$kotlin_stdlib());
    }

    /* renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m684unaryMinusUwyO8pc(long j) {
        long j2 = ((-(j >> 1)) << 1) + (((int) j) & 1);
        int i = DurationJvmKt.$r8$clinit;
        return j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = ((Duration) obj).rawValue;
        long j2 = this.rawValue;
        long j3 = j2 ^ j;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j2, j);
        }
        int i = (((int) j2) & 1) - (((int) j) & 1);
        return j2 < 0 ? -i : i;
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
        long j = this.rawValue;
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
            j = m684unaryMinusUwyO8pc(j);
        }
        long m683toLongimpl = m683toLongimpl(j, DurationUnit.DAYS);
        int m683toLongimpl2 = m681isInfiniteimpl(j) ? 0 : (int) (m683toLongimpl(j, DurationUnit.HOURS) % 24);
        int m683toLongimpl3 = m681isInfiniteimpl(j) ? 0 : (int) (m683toLongimpl(j, DurationUnit.MINUTES) % 60);
        int m683toLongimpl4 = m681isInfiniteimpl(j) ? 0 : (int) (m683toLongimpl(j, DurationUnit.SECONDS) % 60);
        int m680getNanosecondsComponentimpl = m680getNanosecondsComponentimpl(j);
        boolean z2 = m683toLongimpl != 0;
        boolean z3 = m683toLongimpl2 != 0;
        boolean z4 = m683toLongimpl3 != 0;
        boolean z5 = (m683toLongimpl4 == 0 && m680getNanosecondsComponentimpl == 0) ? false : true;
        if (z2) {
            sb.append(m683toLongimpl);
            sb.append('d');
            i = 1;
        }
        if (z3 || (z2 && (z4 || z5))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m683toLongimpl2);
            sb.append('h');
            i = i2;
        }
        if (z4 || (z5 && (z3 || z2))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(m683toLongimpl3);
            sb.append('m');
            i = i3;
        }
        if (z5) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (m683toLongimpl4 != 0 || z2 || z3 || z4) {
                m679appendFractionalimpl(sb, m683toLongimpl4, m680getNanosecondsComponentimpl, 9, CmcdHeadersFactory.STREAMING_FORMAT_SS, false);
            } else if (m680getNanosecondsComponentimpl >= 1000000) {
                m679appendFractionalimpl(sb, m680getNanosecondsComponentimpl / PlaybackException.CUSTOM_ERROR_CODE_BASE, m680getNanosecondsComponentimpl % PlaybackException.CUSTOM_ERROR_CODE_BASE, 6, "ms", false);
            } else if (m680getNanosecondsComponentimpl >= 1000) {
                m679appendFractionalimpl(sb, m680getNanosecondsComponentimpl / 1000, m680getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(m680getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (z && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }
}
