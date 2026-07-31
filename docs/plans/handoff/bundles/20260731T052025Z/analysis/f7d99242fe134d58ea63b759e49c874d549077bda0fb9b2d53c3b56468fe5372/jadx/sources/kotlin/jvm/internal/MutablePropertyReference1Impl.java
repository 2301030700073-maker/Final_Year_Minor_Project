package kotlin.jvm.internal;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MutablePropertyReference1Impl extends MutablePropertyReference implements KProperty, Function1 {
    public MutablePropertyReference1Impl(Class cls, String str, String str2, int i) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable computeReflected() {
        Reflection.factory.getClass();
        return this;
    }

    public Object get(Object obj) {
        getGetter();
        throw null;
    }

    public final void getGetter() {
        ((MutablePropertyReference1Impl) getReflected()).getGetter();
    }

    public final void getSetter() {
        ((MutablePropertyReference1Impl) getReflected()).getSetter();
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return get(obj);
    }

    public void set(Object obj, Object obj2) {
        getSetter();
        throw null;
    }
}
