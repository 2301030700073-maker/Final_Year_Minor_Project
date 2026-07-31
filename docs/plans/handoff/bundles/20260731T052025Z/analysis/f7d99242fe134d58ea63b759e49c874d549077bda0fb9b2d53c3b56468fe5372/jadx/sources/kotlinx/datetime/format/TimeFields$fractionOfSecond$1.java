package kotlinx.datetime.format;

import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlinx.datetime.internal.DecimalFraction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TimeFields$fractionOfSecond$1 extends MutablePropertyReference1Impl {
    public static final TimeFields$fractionOfSecond$1 INSTANCE = new TimeFields$fractionOfSecond$1(TimeFieldContainer.class, "fractionOfSecond", "getFractionOfSecond()Lkotlinx/datetime/internal/DecimalFraction;", 0);

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl
    public final Object get(Object obj) {
        return ((TimeFieldContainer) obj).getFractionOfSecond();
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference1Impl
    public final void set(Object obj, Object obj2) {
        ((TimeFieldContainer) obj).setFractionOfSecond((DecimalFraction) obj2);
    }
}
