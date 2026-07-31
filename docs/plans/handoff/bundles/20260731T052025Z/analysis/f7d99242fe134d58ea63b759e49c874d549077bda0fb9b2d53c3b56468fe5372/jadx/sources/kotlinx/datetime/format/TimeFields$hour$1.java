package kotlinx.datetime.format;

import kotlin.jvm.internal.MutablePropertyReference1Impl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TimeFields$hour$1 extends MutablePropertyReference1Impl {
    public static final TimeFields$hour$1 INSTANCE = new TimeFields$hour$1(TimeFieldContainer.class, "hour", "getHour()Ljava/lang/Integer;", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl
    public final Object get(Object obj) {
        return ((TimeFieldContainer) obj).getHour();
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl
    public final void set(Object obj, Object obj2) {
        ((TimeFieldContainer) obj).setHour((Integer) obj2);
    }
}
