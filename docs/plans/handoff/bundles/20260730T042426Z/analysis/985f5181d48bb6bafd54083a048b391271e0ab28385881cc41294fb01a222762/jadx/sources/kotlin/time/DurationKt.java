package kotlin.time;

import ch.qos.logback.core.CoreConstants;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import org.fdroid.fdroid.Preferences;

/* compiled from: Duration.kt */
/* loaded from: classes2.dex */
public abstract class DurationKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final long millisToNanos(long j) {
        return j * 1000000;
    }

    public static final long toDuration(long j, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        long convertDurationUnitOverflow = DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(4611686018426999999L, durationUnit, unit);
        if ((-convertDurationUnitOverflow) <= j && j <= convertDurationUnitOverflow) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(j, unit, durationUnit));
        }
        return durationOfMillis(RangesKt.coerceIn(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j, unit, DurationUnit.MILLISECONDS), -4611686018427387903L, 4611686018427387903L));
    }

    public static final long toDuration(double d, DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        double convertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, unit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(convertDurationUnit)) {
            throw new IllegalArgumentException("Duration value cannot be NaN.");
        }
        long roundToLong = MathKt.roundToLong(convertDurationUnit);
        if (-4611686018426999999L <= roundToLong && roundToLong < 4611686018427000000L) {
            return durationOfNanos(roundToLong);
        }
        return durationOfMillisNormalized(MathKt.roundToLong(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, unit, DurationUnit.MILLISECONDS)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long parseDuration(String str, boolean z) {
        long j;
        char charAt;
        char charAt2;
        int i;
        char charAt3;
        int length = str.length();
        if (length == 0) {
            throw new IllegalArgumentException("The string is empty");
        }
        Duration.Companion companion = Duration.Companion;
        long m2826getZEROUwyO8pc = companion.m2826getZEROUwyO8pc();
        char charAt4 = str.charAt(0);
        boolean z2 = true;
        int i2 = (charAt4 == '+' || charAt4 == '-') ? 1 : 0;
        boolean z3 = i2 > 0;
        boolean z4 = z3 && StringsKt.startsWith$default((CharSequence) str, CoreConstants.DASH_CHAR, false, 2, (Object) null);
        if (length <= i2) {
            throw new IllegalArgumentException("No components");
        }
        char charAt5 = str.charAt(i2);
        char c = CoreConstants.COLON_CHAR;
        char c2 = '0';
        if (charAt5 == 'P') {
            int i3 = i2 + 1;
            if (i3 == length) {
                throw new IllegalArgumentException();
            }
            DurationUnit durationUnit = null;
            boolean z5 = false;
            while (i3 < length) {
                if (str.charAt(i3) != 'T') {
                    int i4 = i3;
                    while (i4 < str.length() && ((c2 <= (charAt3 = str.charAt(i4)) && charAt3 < c) || StringsKt.contains$default((CharSequence) "+-.", charAt3, false, 2, (Object) null))) {
                        i4++;
                        c = CoreConstants.COLON_CHAR;
                        c2 = '0';
                    }
                    Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                    String substring = str.substring(i3, i4);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    if (substring.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length2 = i3 + substring.length();
                    if (length2 < 0 || length2 >= str.length()) {
                        throw new IllegalArgumentException("Missing unit for value " + substring);
                    }
                    char charAt6 = str.charAt(length2);
                    int i5 = length2 + 1;
                    DurationUnit durationUnitByIsoChar = DurationUnitKt__DurationUnitKt.durationUnitByIsoChar(charAt6, z5);
                    if (durationUnit != null && durationUnit.compareTo(durationUnitByIsoChar) <= 0) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    int indexOf$default = StringsKt.indexOf$default((CharSequence) substring, CoreConstants.DOT, 0, false, 6, (Object) null);
                    if (durationUnitByIsoChar != DurationUnit.SECONDS || indexOf$default <= 0) {
                        i = i5;
                        m2826getZEROUwyO8pc = Duration.m2818plusLRDsOJo(m2826getZEROUwyO8pc, toDuration(parseOverLongIsoComponent(substring), durationUnitByIsoChar));
                    } else {
                        Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
                        String substring2 = substring.substring(0, indexOf$default);
                        Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                        i = i5;
                        long m2818plusLRDsOJo = Duration.m2818plusLRDsOJo(m2826getZEROUwyO8pc, toDuration(parseOverLongIsoComponent(substring2), durationUnitByIsoChar));
                        Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
                        String substring3 = substring.substring(indexOf$default);
                        Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
                        m2826getZEROUwyO8pc = Duration.m2818plusLRDsOJo(m2818plusLRDsOJo, toDuration(Double.parseDouble(substring3), durationUnitByIsoChar));
                    }
                    i3 = i;
                    durationUnit = durationUnitByIsoChar;
                    c = CoreConstants.COLON_CHAR;
                    c2 = '0';
                    z2 = true;
                } else {
                    if (z5 || (i3 = i3 + 1) == length) {
                        throw new IllegalArgumentException();
                    }
                    z5 = z2;
                }
            }
        } else {
            if (z) {
                throw new IllegalArgumentException();
            }
            String str2 = "Unexpected order of duration components";
            if (StringsKt.regionMatches(str, i2, "Infinity", 0, Math.max(length - i2, 8), true)) {
                m2826getZEROUwyO8pc = companion.m2825getINFINITEUwyO8pc();
            } else {
                boolean z6 = !z3;
                if (z3 && str.charAt(i2) == '(' && StringsKt.last(str) == ')') {
                    i2++;
                    length--;
                    if (i2 == length) {
                        throw new IllegalArgumentException("No components");
                    }
                    j = m2826getZEROUwyO8pc;
                    z6 = true;
                } else {
                    j = m2826getZEROUwyO8pc;
                }
                DurationUnit durationUnit2 = null;
                boolean z7 = false;
                while (i2 < length) {
                    if (z7 && z6) {
                        while (i2 < str.length() && str.charAt(i2) == ' ') {
                            i2++;
                        }
                    }
                    int i6 = i2;
                    while (i6 < str.length() && (('0' <= (charAt2 = str.charAt(i6)) && charAt2 < ':') || charAt2 == '.')) {
                        i6++;
                    }
                    Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                    String substring4 = str.substring(i2, i6);
                    Intrinsics.checkNotNullExpressionValue(substring4, "substring(...)");
                    if (substring4.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length3 = i2 + substring4.length();
                    int i7 = length3;
                    while (i7 < str.length() && 'a' <= (charAt = str.charAt(i7)) && charAt < '{') {
                        i7++;
                    }
                    Intrinsics.checkNotNull(str, "null cannot be cast to non-null type java.lang.String");
                    String substring5 = str.substring(length3, i7);
                    Intrinsics.checkNotNullExpressionValue(substring5, "substring(...)");
                    i2 = length3 + substring5.length();
                    DurationUnit durationUnitByShortName = DurationUnitKt__DurationUnitKt.durationUnitByShortName(substring5);
                    if (durationUnit2 != null && durationUnit2.compareTo(durationUnitByShortName) <= 0) {
                        throw new IllegalArgumentException(str2);
                    }
                    String str3 = str2;
                    int indexOf$default2 = StringsKt.indexOf$default((CharSequence) substring4, CoreConstants.DOT, 0, false, 6, (Object) null);
                    if (indexOf$default2 > 0) {
                        Intrinsics.checkNotNull(substring4, "null cannot be cast to non-null type java.lang.String");
                        String substring6 = substring4.substring(0, indexOf$default2);
                        Intrinsics.checkNotNullExpressionValue(substring6, "substring(...)");
                        long m2818plusLRDsOJo2 = Duration.m2818plusLRDsOJo(j, toDuration(Long.parseLong(substring6), durationUnitByShortName));
                        Intrinsics.checkNotNull(substring4, "null cannot be cast to non-null type java.lang.String");
                        String substring7 = substring4.substring(indexOf$default2);
                        Intrinsics.checkNotNullExpressionValue(substring7, "substring(...)");
                        j = Duration.m2818plusLRDsOJo(m2818plusLRDsOJo2, toDuration(Double.parseDouble(substring7), durationUnitByShortName));
                        i2 = i2;
                        if (i2 < length) {
                            throw new IllegalArgumentException("Fractional component must be last");
                        }
                    } else {
                        j = Duration.m2818plusLRDsOJo(j, toDuration(Long.parseLong(substring4), durationUnitByShortName));
                    }
                    str2 = str3;
                    durationUnit2 = durationUnitByShortName;
                    z7 = true;
                }
                m2826getZEROUwyO8pc = j;
            }
        }
        return z4 ? Duration.m2822unaryMinusUwyO8pc(m2826getZEROUwyO8pc) : m2826getZEROUwyO8pc;
    }

    private static final long parseOverLongIsoComponent(String str) {
        int length = str.length();
        int i = (length <= 0 || !StringsKt.contains$default((CharSequence) "+-", str.charAt(0), false, 2, (Object) null)) ? 0 : 1;
        if (length - i > 16) {
            Iterable intRange = new IntRange(i, StringsKt.getLastIndex(str));
            if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                Iterator it = intRange.iterator();
                while (it.hasNext()) {
                    char charAt = str.charAt(((IntIterator) it).nextInt());
                    if ('0' <= charAt && charAt < ':') {
                    }
                }
            }
            if (str.charAt(0) == '-') {
                return Long.MIN_VALUE;
            }
            return Preferences.UPDATE_INTERVAL_DISABLED;
        }
        if (StringsKt.startsWith$default(str, "+", false, 2, (Object) null)) {
            str = StringsKt.drop(str, 1);
        }
        return Long.parseLong(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long nanosToMillis(long j) {
        return j / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanos(long j) {
        return Duration.m2799constructorimpl(j << 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillis(long j) {
        return Duration.m2799constructorimpl((j << 1) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOf(long j, int i) {
        return Duration.m2799constructorimpl((j << 1) + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfNanosNormalized(long j) {
        if (-4611686018426999999L <= j && j < 4611686018427000000L) {
            return durationOfNanos(j);
        }
        return durationOfMillis(nanosToMillis(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long durationOfMillisNormalized(long j) {
        if (-4611686018426L <= j && j < 4611686018427L) {
            return durationOfNanos(millisToNanos(j));
        }
        return durationOfMillis(RangesKt.coerceIn(j, -4611686018427387903L, 4611686018427387903L));
    }
}
