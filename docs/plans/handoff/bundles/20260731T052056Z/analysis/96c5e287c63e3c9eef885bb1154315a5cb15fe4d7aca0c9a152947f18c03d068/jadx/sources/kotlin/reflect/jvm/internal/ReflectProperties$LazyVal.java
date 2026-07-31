package kotlin.reflect.jvm.internal;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectProperties$LazyVal extends KPropertyImplKt {
    public final Function0 initializer;
    public volatile Object value = null;

    public ReflectProperties$LazyVal(Function0 function0) {
        this.initializer = function0;
    }

    public final Object invoke() {
        Object obj = KPropertyImplKt.NULL_VALUE;
        Object obj2 = this.value;
        if (obj2 != null) {
            if (obj2 == obj) {
                return null;
            }
            return obj2;
        }
        Object invoke = this.initializer.invoke();
        if (invoke != null) {
            obj = invoke;
        }
        this.value = obj;
        return invoke;
    }
}
