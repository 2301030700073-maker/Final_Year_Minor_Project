package kotlinx.datetime.format;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.format.parser.Copyable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IncompleteUtcOffset implements Copyable {
    public Integer offsetHours;
    public Boolean offsetIsNegative;
    public Integer offsetMinutesOfHour;
    public Integer offsetSecondsOfMinute;

    public IncompleteUtcOffset(Boolean bool, Integer num, Integer num2, Integer num3) {
        this.offsetIsNegative = bool;
        this.offsetHours = num;
        this.offsetMinutesOfHour = num2;
        this.offsetSecondsOfMinute = num3;
    }

    @Override // kotlinx.datetime.internal.format.parser.Copyable
    public final Object copy() {
        return new IncompleteUtcOffset(this.offsetIsNegative, this.offsetHours, this.offsetMinutesOfHour, this.offsetSecondsOfMinute);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IncompleteUtcOffset)) {
            return false;
        }
        IncompleteUtcOffset incompleteUtcOffset = (IncompleteUtcOffset) obj;
        return Intrinsics.areEqual(this.offsetIsNegative, incompleteUtcOffset.offsetIsNegative) && Intrinsics.areEqual(this.offsetHours, incompleteUtcOffset.offsetHours) && Intrinsics.areEqual(this.offsetMinutesOfHour, incompleteUtcOffset.offsetMinutesOfHour) && Intrinsics.areEqual(this.offsetSecondsOfMinute, incompleteUtcOffset.offsetSecondsOfMinute);
    }

    public final int hashCode() {
        Boolean bool = this.offsetIsNegative;
        int hashCode = bool != null ? bool.hashCode() : 0;
        Integer num = this.offsetHours;
        int hashCode2 = hashCode + (num != null ? num.hashCode() : 0);
        Integer num2 = this.offsetMinutesOfHour;
        int hashCode3 = hashCode2 + (num2 != null ? num2.hashCode() : 0);
        Integer num3 = this.offsetSecondsOfMinute;
        return hashCode3 + (num3 != null ? num3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Boolean bool = this.offsetIsNegative;
        sb.append(bool != null ? bool.booleanValue() ? "-" : "+" : " ");
        Object obj = this.offsetHours;
        if (obj == null) {
            obj = "??";
        }
        sb.append(obj);
        sb.append(':');
        Object obj2 = this.offsetMinutesOfHour;
        if (obj2 == null) {
            obj2 = "??";
        }
        sb.append(obj2);
        sb.append(':');
        Integer num = this.offsetSecondsOfMinute;
        sb.append(num != null ? num : "??");
        return sb.toString();
    }
}
