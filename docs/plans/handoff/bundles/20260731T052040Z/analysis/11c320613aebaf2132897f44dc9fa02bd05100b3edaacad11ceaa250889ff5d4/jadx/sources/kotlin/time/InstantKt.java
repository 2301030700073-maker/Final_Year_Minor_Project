package kotlin.time;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import okio.ByteString;
import org.jsoup.parser.ParseError;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class InstantKt {
    public static final int[] POWERS_OF_TEN = {1, 10, 100, 1000, 10000, AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND, PlaybackException.CUSTOM_ERROR_CODE_BASE, 10000000, 100000000, 1000000000};
    public static final int[] asciiDigitPositionsInIsoStringAfterYear = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};
    public static final int[] colonsInIsoOffsetString = {3, 6};
    public static final int[] asciiDigitsInIsoOffsetString = {1, 2, 4, 5, 7, 8};

    public static final long addMillisWithoutOverflow(long j, long j2) {
        if (j != 4611686018427387903L && j != -4611686018427387903L) {
            return (j2 == 4611686018427387903L || j2 == -4611686018427387903L) ? j2 : RangesKt.coerceIn(j + j2, -4611686018427387903L, 4611686018427387903L);
        }
        if (-4611686018427387903L < j2 && j2 < 4611686018427387903L) {
            return j;
        }
        if ((j2 ^ j) >= 0) {
            return j;
        }
        return 9223372036854759646L;
    }

    public static final long convertDurationUnitToMilliseconds(long j, DurationUnit durationUnit) {
        long j2;
        int ordinal = durationUnit.ordinal();
        if (ordinal == 2) {
            j2 = 1;
        } else if (ordinal == 3) {
            j2 = 1000;
        } else if (ordinal == 4) {
            j2 = 60000;
        } else if (ordinal == 5) {
            j2 = 3600000;
        } else {
            if (ordinal != 6) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(durationUnit, "Wrong unit for millisMultiplier: ");
                return 0L;
            }
            j2 = 86400000;
        }
        if (j == 0) {
            return 0L;
        }
        if (j == 1) {
            if (j2 <= 4611686018427387903L) {
                return j2;
            }
        } else if (j2 != 1) {
            int numberOfLeadingZeros = (128 - Long.numberOfLeadingZeros(j)) - Long.numberOfLeadingZeros(j2);
            if (numberOfLeadingZeros < 63) {
                return j * j2;
            }
            if (numberOfLeadingZeros <= 63) {
                long j3 = j * j2;
                if (j3 <= 4611686018427387903L) {
                    return j3;
                }
            }
        } else if (j <= 4611686018427387903L) {
            return j;
        }
        return 4611686018427387903L;
    }

    public static final long durationOfMillis(long j) {
        long j2 = (j << 1) + 1;
        Duration.Companion.getClass();
        int i = DurationJvmKt.$r8$clinit;
        return j2;
    }

    public static final void formatIso$lambda$0$appendTwoDigits(StringBuilder sb, StringBuilder sb2, int i) {
        if (i < 10) {
            sb.append('0');
        }
        sb2.append(i);
    }

    public static final long infinityOfSign(long j) {
        if (j < 0) {
            ByteString.Companion companion = Duration.Companion;
            return Duration.NEG_INFINITE;
        }
        ByteString.Companion companion2 = Duration.Companion;
        return Duration.INFINITE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01be, code lost:
    
        if (r5 == r26.length()) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c6, code lost:
    
        if (r26.charAt(r5) != 'S') goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01c8, code lost:
    
        r2 = (r14 * com.google.android.exoplayer2.C.NANOS_PER_SECOND) + r15;
        r14 = r9;
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01d6, code lost:
    
        switch(r8.ordinal()) {
            case 0: goto L130;
            case 1: goto L129;
            case 2: goto L128;
            case 3: goto L127;
            case 4: goto L126;
            case 5: goto L125;
            case 6: goto L124;
            default: goto L123;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01d9, code lost:
    
        com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(r8, "Unknown unit: ");
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0210, code lost:
    
        r14 = r2 * r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01e1, code lost:
    
        r21 = 0.0864d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x020a, code lost:
    
        r2 = kotlin.math.MathKt.roundToLong(r2 * r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01e7, code lost:
    
        r21 = 0.0036d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01ed, code lost:
    
        r21 = 6.0E-5d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01f3, code lost:
    
        r21 = 1.0E-6d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01f9, code lost:
    
        r21 = 1.0E-9d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01ff, code lost:
    
        r21 = 1.0E-12d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0205, code lost:
    
        r21 = 1.0E-15d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0104, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0107, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x00f2, code lost:
    
        r2 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b1, code lost:
    
        r25 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d1, code lost:
    
        if (r5 >= r26.length()) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d3, code lost:
    
        r3 = r26.charAt(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d9, code lost:
    
        if ('0' > r3) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00dd, code lost:
    
        if (r3 >= ':') goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00df, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e6, code lost:
    
        if (r5 == r26.length()) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ea, code lost:
    
        if (r2 == '+') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ee, code lost:
    
        if (r2 == '-') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f0, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00f6, code lost:
    
        if (r5 == (r23 + r2)) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00f8, code lost:
    
        r20 = 4611686018427387903L;
     */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0190 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x029a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x015c A[LOOP:5: B:75:0x015a->B:76:0x015c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0199 A[LOOP:7: B:87:0x0197->B:88:0x0199, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseDuration$default(java.lang.String r26) {
        /*
            Method dump skipped, instructions count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.InstantKt.parseDuration$default(java.lang.String):long");
    }

    public static final ParseError parseIso$expect(String str, String str2, int i, Function1 function1) {
        char charAt = str.charAt(i);
        if (((Boolean) function1.invoke(Character.valueOf(charAt))).booleanValue()) {
            return null;
        }
        return parseIso$parseFailure(str, "Expected " + str2 + ", but got '" + charAt + "' at position " + i);
    }

    public static final ParseError parseIso$parseFailure(String str, String str2) {
        StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(str2, " when parsing an Instant from \"");
        m.append(truncateForErrorMessage(64, str));
        m.append('\"');
        return new ParseError(m.toString(), str);
    }

    public static final int parseIso$twoDigitNumber(int i, String str) {
        return (str.charAt(i + 1) - '0') + ((str.charAt(i) - '0') * 10);
    }

    public static final long saturatingFiniteDiff(long j, long j2) {
        long j3 = j - j2;
        long j4 = (j3 ^ j) & (~(j3 ^ j2));
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        if (j4 >= 0) {
            return toDuration(j3, durationUnit);
        }
        DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
        if (durationUnit.compareTo(durationUnit2) >= 0) {
            return Duration.m684unaryMinusUwyO8pc(infinityOfSign(j3));
        }
        long convert = durationUnit.getTimeUnit$kotlin_stdlib().convert(1L, durationUnit2.getTimeUnit$kotlin_stdlib());
        long j5 = (j / convert) - (j2 / convert);
        long j6 = (j % convert) - (j2 % convert);
        ByteString.Companion companion = Duration.Companion;
        return Duration.m682plusLRDsOJo(toDuration(j5, durationUnit2), toDuration(j6, durationUnit));
    }

    public static final long toDuration(long j, DurationUnit durationUnit) {
        TimeUnit timeUnit$kotlin_stdlib = durationUnit.getTimeUnit$kotlin_stdlib();
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        long convert = timeUnit$kotlin_stdlib.convert(4611686018426999999L, durationUnit2.getTimeUnit$kotlin_stdlib());
        if ((-convert) <= j && j <= convert) {
            long convert2 = durationUnit2.getTimeUnit$kotlin_stdlib().convert(j, durationUnit.getTimeUnit$kotlin_stdlib());
            ByteString.Companion companion = Duration.Companion;
            long j2 = convert2 << 1;
            int i = DurationJvmKt.$r8$clinit;
            return j2;
        }
        DurationUnit durationUnit3 = DurationUnit.MILLISECONDS;
        if (durationUnit.compareTo(durationUnit3) < 0) {
            return durationOfMillis(RangesKt.coerceIn(durationUnit3.getTimeUnit$kotlin_stdlib().convert(j, durationUnit.getTimeUnit$kotlin_stdlib()), -4611686018427387903L, 4611686018427387903L));
        }
        long signum = Long.signum(j);
        if (j < C.TIME_UNSET) {
            j = -9223372036854775807L;
        }
        return durationOfMillis(convertDurationUnitToMilliseconds(Math.abs(j), durationUnit) * signum);
    }

    public static final String truncateForErrorMessage(int i, String str) {
        if (str.length() <= i) {
            return str.toString();
        }
        return str.subSequence(0, i).toString() + "...";
    }

    public static final long toDuration(int i) {
        DurationUnit durationUnit = DurationUnit.SECONDS;
        if (durationUnit.compareTo(durationUnit) <= 0) {
            long convert = DurationUnit.NANOSECONDS.getTimeUnit$kotlin_stdlib().convert(i, durationUnit.getTimeUnit$kotlin_stdlib());
            ByteString.Companion companion = Duration.Companion;
            long j = convert << 1;
            int i2 = DurationJvmKt.$r8$clinit;
            return j;
        }
        return toDuration(i, durationUnit);
    }
}
