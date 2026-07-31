package kotlinx.datetime.format;

import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.UnsignedFieldSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DateFields {
    public static final UnsignedFieldSpec day = new UnsignedFieldSpec(new PropertyAccessor(DateFields$day$1.INSTANCE), 31, null, 56);

    static {
        DateFields$isoDayOfWeek$1.INSTANCE.getName().getClass();
        DateFields$dayOfYear$1.INSTANCE.getName().getClass();
    }
}
