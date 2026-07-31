package kotlinx.datetime.format;

import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OffsetFields$minutesOfHour$1 extends MutablePropertyReference1Impl {
    public static final OffsetFields$minutesOfHour$1 INSTANCE = new OffsetFields$minutesOfHour$1(IncompleteUtcOffset.class, "offsetMinutesOfHour", "getOffsetMinutesOfHour()Ljava/lang/Integer;", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl
    public final Object get(Object obj) {
        return ((IncompleteUtcOffset) obj).offsetMinutesOfHour;
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl
    public final void set(Object obj, Object obj2) {
        ((IncompleteUtcOffset) obj).offsetMinutesOfHour = (Integer) obj2;
    }
}
