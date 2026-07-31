package kotlinx.datetime.format;

import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.UnsignedFieldSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class OffsetFields {
    public static final UnsignedFieldSpec minutesOfHour;
    public static final UnsignedFieldSpec secondsOfMinute;
    public static final UnsignedFieldSpec totalHoursAbs;

    static {
        OffsetFields$sign$1 offsetFields$sign$1 = new OffsetFields$sign$1();
        totalHoursAbs = new UnsignedFieldSpec(new PropertyAccessor(OffsetFields$totalHoursAbs$1.INSTANCE), 18, offsetFields$sign$1, 8);
        minutesOfHour = new UnsignedFieldSpec(new PropertyAccessor(OffsetFields$minutesOfHour$1.INSTANCE), 59, offsetFields$sign$1, 8);
        secondsOfMinute = new UnsignedFieldSpec(new PropertyAccessor(OffsetFields$secondsOfMinute$1.INSTANCE), 59, offsetFields$sign$1, 8);
    }
}
