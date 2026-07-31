package kotlinx.datetime.format;

import androidx.compose.ui.Modifier;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.InstantFormatException;
import kotlinx.datetime.LocalTime;
import kotlinx.datetime.internal.DecimalFraction;
import kotlinx.datetime.internal.format.parser.Copyable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IncompleteLocalTime implements TimeFieldContainer, Copyable {
    public AmPmMarker amPm;
    public Integer hour;
    public Integer hourOfAmPm;
    public Integer minute;
    public Integer nanosecond;
    public Integer second;

    public IncompleteLocalTime(Integer num, Integer num2, AmPmMarker amPmMarker, Integer num3, Integer num4, Integer num5) {
        this.hour = num;
        this.hourOfAmPm = num2;
        this.amPm = amPmMarker;
        this.minute = num3;
        this.second = num4;
        this.nanosecond = num5;
    }

    @Override // kotlinx.datetime.internal.format.parser.Copyable
    public final Object copy() {
        return new IncompleteLocalTime(this.hour, this.hourOfAmPm, this.amPm, this.minute, this.second, this.nanosecond);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IncompleteLocalTime)) {
            return false;
        }
        IncompleteLocalTime incompleteLocalTime = (IncompleteLocalTime) obj;
        return Intrinsics.areEqual(this.hour, incompleteLocalTime.hour) && Intrinsics.areEqual(this.hourOfAmPm, incompleteLocalTime.hourOfAmPm) && this.amPm == incompleteLocalTime.amPm && Intrinsics.areEqual(this.minute, incompleteLocalTime.minute) && Intrinsics.areEqual(this.second, incompleteLocalTime.second) && Intrinsics.areEqual(this.nanosecond, incompleteLocalTime.nanosecond);
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final AmPmMarker getAmPm() {
        return this.amPm;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final DecimalFraction getFractionOfSecond() {
        Integer num = this.nanosecond;
        if (num != null) {
            return new DecimalFraction(num.intValue(), 9);
        }
        return null;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final Integer getHour() {
        return this.hour;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final Integer getHourOfAmPm() {
        return this.hourOfAmPm;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final Integer getMinute() {
        return this.minute;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final Integer getSecond() {
        return this.second;
    }

    public final int hashCode() {
        Integer num = this.hour;
        int intValue = (num != null ? num.intValue() : 0) * 31;
        Integer num2 = this.hourOfAmPm;
        int intValue2 = ((num2 != null ? num2.intValue() : 0) * 31) + intValue;
        AmPmMarker amPmMarker = this.amPm;
        int hashCode = ((amPmMarker != null ? amPmMarker.hashCode() : 0) * 31) + intValue2;
        Integer num3 = this.minute;
        int intValue3 = ((num3 != null ? num3.intValue() : 0) * 31) + hashCode;
        Integer num4 = this.second;
        int intValue4 = ((num4 != null ? num4.intValue() : 0) * 31) + intValue3;
        Integer num5 = this.nanosecond;
        return intValue4 + (num5 != null ? num5.intValue() : 0);
    }

    public final void populateFrom(LocalTime localTime) {
        j$.time.LocalTime localTime2 = localTime.value;
        this.hour = Integer.valueOf(localTime2.getHour());
        this.hourOfAmPm = Integer.valueOf(((localTime2.getHour() + 11) % 12) + 1);
        this.amPm = localTime2.getHour() >= 12 ? AmPmMarker.PM : AmPmMarker.AM;
        this.minute = Integer.valueOf(localTime2.getMinute());
        this.second = Integer.valueOf(localTime2.getSecond());
        this.nanosecond = Integer.valueOf(localTime2.getNano());
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setAmPm(AmPmMarker amPmMarker) {
        this.amPm = amPmMarker;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setFractionOfSecond(DecimalFraction decimalFraction) {
        this.nanosecond = decimalFraction != null ? Integer.valueOf(decimalFraction.fractionalPartWithNDigits(9)) : null;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setHour(Integer num) {
        this.hour = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setHourOfAmPm(Integer num) {
        this.hourOfAmPm = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setMinute(Integer num) {
        this.minute = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setSecond(Integer num) {
        this.second = num;
    }

    public final LocalTime toLocalTime() {
        int intValue;
        int intValue2;
        Integer num = this.hour;
        Integer num2 = this.hourOfAmPm;
        AmPmMarker amPmMarker = AmPmMarker.PM;
        Integer num3 = null;
        if (num != null) {
            intValue = num.intValue();
            if (num2 != null && ((intValue + 11) % 12) + 1 != (intValue2 = num2.intValue())) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) Modifier.CC.m(intValue, intValue2, "Inconsistent hour and hour-of-am-pm: hour is ", ", but hour-of-am-pm is "));
                return null;
            }
            AmPmMarker amPmMarker2 = this.amPm;
            if (amPmMarker2 != null) {
                if ((amPmMarker2 == amPmMarker) != (intValue >= 12)) {
                    DBUtil$$ExternalSyntheticBUOutline0.m("Inconsistent hour and the AM/PM marker: hour is ", intValue, ", but the AM/PM marker is ", amPmMarker2);
                    return null;
                }
            }
        } else {
            if (num2 != null) {
                int intValue3 = num2.intValue();
                AmPmMarker amPmMarker3 = this.amPm;
                if (amPmMarker3 != null) {
                    if (intValue3 == 12) {
                        intValue3 = 0;
                    }
                    num3 = Integer.valueOf(intValue3 + (amPmMarker3 != amPmMarker ? 0 : 12));
                }
            }
            if (num3 == null) {
                throw new InstantFormatException("Incomplete time: missing hour");
            }
            intValue = num3.intValue();
        }
        Integer num4 = this.minute;
        YearMonthFormatKt.requireParsedField(num4, "minute");
        int intValue4 = num4.intValue();
        Integer num5 = this.second;
        int intValue5 = num5 != null ? num5.intValue() : 0;
        Integer num6 = this.nanosecond;
        return new LocalTime(intValue, intValue4, intValue5, num6 != null ? num6.intValue() : 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
    
        if (r4 == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Integer r1 = r4.hour
            java.lang.String r2 = "??"
            if (r1 != 0) goto Lc
            r1 = r2
        Lc:
            r0.append(r1)
            r1 = 58
            r0.append(r1)
            java.lang.Integer r3 = r4.minute
            if (r3 != 0) goto L19
            r3 = r2
        L19:
            r0.append(r3)
            r0.append(r1)
            java.lang.Integer r1 = r4.second
            if (r1 != 0) goto L24
            goto L25
        L24:
            r2 = r1
        L25:
            r0.append(r2)
            r1 = 46
            r0.append(r1)
            java.lang.Integer r4 = r4.nanosecond
            if (r4 == 0) goto L45
            int r4 = r4.intValue()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r1 = r4.length()
            int r1 = 9 - r1
            java.lang.String r4 = kotlin.text.StringsKt.padStart(r4, r1)
            if (r4 != 0) goto L47
        L45:
            java.lang.String r4 = "???"
        L47:
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.datetime.format.IncompleteLocalTime.toString():java.lang.String");
    }

    public /* synthetic */ IncompleteLocalTime() {
        this(null, null, null, null, null, null);
    }
}
