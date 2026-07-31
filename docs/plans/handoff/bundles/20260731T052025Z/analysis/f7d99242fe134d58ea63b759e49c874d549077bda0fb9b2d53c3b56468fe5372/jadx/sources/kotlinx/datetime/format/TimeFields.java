package kotlinx.datetime.format;

import kotlinx.datetime.internal.DecimalFraction;
import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.UnsignedFieldSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TimeFields {
    public static final UnsignedFieldSpec hour = new UnsignedFieldSpec(new PropertyAccessor(TimeFields$hour$1.INSTANCE), 23, null, 56);
    public static final UnsignedFieldSpec minute = new UnsignedFieldSpec(new PropertyAccessor(TimeFields$minute$1.INSTANCE), 59, null, 56);
    public static final UnsignedFieldSpec second = new UnsignedFieldSpec(new PropertyAccessor(TimeFields$second$1.INSTANCE), 59, null, 40);
    public static final GenericFieldSpec fractionOfSecond = new GenericFieldSpec(new PropertyAccessor(TimeFields$fractionOfSecond$1.INSTANCE, "nanosecond"), new DecimalFraction(0, 9), 10);

    static {
        TimeFields$amPm$1.INSTANCE.getName().getClass();
        TimeFields$hourOfAmPm$1.INSTANCE.getName().getClass();
    }
}
