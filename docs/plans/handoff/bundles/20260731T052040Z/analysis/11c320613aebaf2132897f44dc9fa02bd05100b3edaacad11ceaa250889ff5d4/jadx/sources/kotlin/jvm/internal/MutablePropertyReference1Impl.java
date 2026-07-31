package kotlin.jvm.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CallableReference;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutablePropertyReference1Impl extends PropertyReference implements KProperty, Function1 {
    public MutablePropertyReference1Impl(Class cls, String str, String str2, int i) {
        super(CallableReference.NoReceiver.INSTANCE, cls, str, str2, i);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable computeReflected() {
        Reflection.factory.getClass();
        return this;
    }

    public final void getGetter() {
        ((MutablePropertyReference1Impl) getReflected()).getGetter();
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        getGetter();
        throw null;
    }
}
