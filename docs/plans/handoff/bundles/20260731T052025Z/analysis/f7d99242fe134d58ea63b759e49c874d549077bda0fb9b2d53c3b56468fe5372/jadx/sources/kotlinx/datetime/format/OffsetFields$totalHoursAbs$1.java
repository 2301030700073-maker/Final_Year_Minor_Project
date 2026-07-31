package kotlinx.datetime.format;

import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OffsetFields$totalHoursAbs$1 extends MutablePropertyReference1Impl {
    public static final OffsetFields$totalHoursAbs$1 INSTANCE = new OffsetFields$totalHoursAbs$1(IncompleteUtcOffset.class, "offsetHours", "getOffsetHours()Ljava/lang/Integer;", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl
    public final Object get(Object obj) {
        return ((IncompleteUtcOffset) obj).offsetHours;
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl
    public final void set(Object obj, Object obj2) {
        ((IncompleteUtcOffset) obj).offsetHours = (Integer) obj2;
    }
}
