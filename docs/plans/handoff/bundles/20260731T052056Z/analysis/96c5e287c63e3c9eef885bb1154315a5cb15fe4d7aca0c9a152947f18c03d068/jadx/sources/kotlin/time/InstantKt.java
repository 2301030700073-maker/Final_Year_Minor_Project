package kotlin.time;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function1;
import kotlin.text.RegexKt;
import okio.Path;
import org.jsoup.parser.ParseError;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class InstantKt {
    public static final int[] POWERS_OF_TEN = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};
    public static final int[] asciiDigitPositionsInIsoStringAfterYear = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};
    public static final int[] colonsInIsoOffsetString = {3, 6};
    public static final int[] asciiDigitsInIsoOffsetString = {1, 2, 4, 5, 7, 8};

    public static final long addMillisWithoutOverflow(long j, long j2) {
        if (j != 4611686018427387903L && j != -4611686018427387903L) {
            return (j2 == 4611686018427387903L || j2 == -4611686018427387903L) ? j2 : RegexKt.coerceIn(j + j2, -4611686018427387903L, 4611686018427387903L);
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
        durationUnit.getClass();
        int i = DurationUnitKt__DurationUnitKt$WhenMappings.$EnumSwitchMapping$0[durationUnit.ordinal()];
        if (i == 1) {
            j2 = 86400000;
        } else if (i == 2) {
            j2 = 3600000;
        } else if (i == 3) {
            j2 = 60000;
        } else if (i == 4) {
            j2 = 1000;
        } else {
            if (i != 5) {
                Gson$$ExternalSyntheticBUOutline0.m$8("Wrong unit for millisMultiplier: ", durationUnit);
                return 0L;
            }
            j2 = 1;
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

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01b8, code lost:
    
        if (r5 == r26.length()) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01c0, code lost:
    
        if (r26.charAt(r5) != 'S') goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c2, code lost:
    
        r2 = (r14 * 1000000000) + r15;
        r14 = r9;
        r4 = kotlin.time.DurationUnit.SECONDS;
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01d6, code lost:
    
        switch(kotlin.time.DurationKt$WhenMappings.$EnumSwitchMapping$0[r4.ordinal()]) {
            case 1: goto L128;
            case 2: goto L127;
            case 3: goto L126;
            case 4: goto L125;
            case 5: goto L124;
            case 6: goto L123;
            case 7: goto L122;
            default: goto L121;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01d9, code lost:
    
        com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$8("Unknown unit: ", r4);
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0210, code lost:
    
        r14 = r2 * r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01e1, code lost:
    
        r21 = 0.0864d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x020a, code lost:
    
        r2 = kotlin.UnsignedKt.roundToLong(r2 * r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01e7, code lost:
    
        r21 = 0.0036d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01ed, code lost:
    
        r21 = 6.0E-5d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01f3, code lost:
    
        r21 = 1.0E-6d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01f9, code lost:
    
        r21 = 1.0E-9d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01ff, code lost:
    
        r21 = 1.0E-15d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0205, code lost:
    
        r21 = 1.0E-12d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0104, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m("");
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
    /* JADX WARN: Removed duplicated region for block: B:184:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x029e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x015c A[LOOP:5: B:75:0x015a->B:76:0x015c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0195 A[LOOP:7: B:87:0x0193->B:88:0x0195, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseDuration$default(java.lang.String r26) {
        /*
            Method dump skipped, instructions count: 752
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
        return new ParseError(str2 + " when parsing an Instant from \"" + truncateForErrorMessage(64, str) + '\"', str);
    }

    public static final int parseIso$twoDigitNumber(int i, String str) {
        return (str.charAt(i + 1) - '0') + ((str.charAt(i) - '0') * 10);
    }

    public static final long toDuration(long j, DurationUnit durationUnit) {
        durationUnit.getClass();
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        durationUnit2.getClass();
        long convert = durationUnit.getTimeUnit$kotlin_stdlib().convert(4611686018426999999L, durationUnit2.getTimeUnit$kotlin_stdlib());
        if ((-convert) <= j && j <= convert) {
            long convert2 = durationUnit2.getTimeUnit$kotlin_stdlib().convert(j, durationUnit.getTimeUnit$kotlin_stdlib());
            Path.Companion companion = Duration.Companion;
            long j2 = convert2 << 1;
            int i = DurationJvmKt.$r8$clinit;
            return j2;
        }
        DurationUnit durationUnit3 = DurationUnit.MILLISECONDS;
        if (durationUnit.compareTo(durationUnit3) < 0) {
            durationUnit3.getClass();
            return durationOfMillis(RegexKt.coerceIn(durationUnit3.getTimeUnit$kotlin_stdlib().convert(j, durationUnit.getTimeUnit$kotlin_stdlib()), -4611686018427387903L, 4611686018427387903L));
        }
        long signum = Long.signum(j);
        if (j < -9223372036854775807L) {
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

    public static final long toDuration(int i, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (durationUnit.compareTo(DurationUnit.SECONDS) <= 0) {
            long j = i;
            DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
            durationUnit2.getClass();
            long convert = durationUnit2.getTimeUnit$kotlin_stdlib().convert(j, durationUnit.getTimeUnit$kotlin_stdlib());
            Path.Companion companion = Duration.Companion;
            long j2 = convert << 1;
            int i2 = DurationJvmKt.$r8$clinit;
            return j2;
        }
        return toDuration(i, durationUnit);
    }
}
