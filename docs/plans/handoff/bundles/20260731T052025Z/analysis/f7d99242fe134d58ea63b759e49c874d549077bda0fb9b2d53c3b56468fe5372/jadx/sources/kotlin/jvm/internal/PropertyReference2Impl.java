package kotlin.jvm.internal;

import kotlin.jvm.functions.Function2;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PropertyReference2Impl extends PropertyReference implements KProperty, Function2 {
    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable computeReflected() {
        Reflection.factory.getClass();
        return this;
    }

    public final void getGetter$1() {
        ((PropertyReference2Impl) getReflected()).getGetter$1();
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        getGetter$1();
        throw null;
    }
}
