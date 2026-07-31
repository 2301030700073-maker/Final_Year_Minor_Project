package kotlin.jvm.internal;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.internal.CallableReference;
import kotlin.reflect.KCallable;
import kotlin.reflect.KClass;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.jvm.internal.KMutableProperty1Impl;
import kotlin.reflect.jvm.internal.KProperty1Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutablePropertyReference1Impl extends MutablePropertyReference implements KMutableProperty1 {
    public MutablePropertyReference1Impl(KClass kClass, String str, String str2) {
        super(CallableReference.NoReceiver.INSTANCE, ((ClassBasedDeclarationContainer) kClass).getJClass(), str, str2, !Animation.CC.m23m((Object) kClass) ? 1 : 0);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable computeReflected() {
        return Reflection.factory.mutableProperty1(this);
    }

    @Override // kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return getGetter().call(obj);
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    public final KProperty1Impl.Getter getGetter() {
        return ((KMutableProperty1) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty, kotlin.reflect.KMutableProperty0
    public final KMutableProperty1Impl.Setter getSetter() {
        return ((KMutableProperty1) getReflected()).getSetter();
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return get(obj);
    }

    public MutablePropertyReference1Impl(Class cls, String str, String str2, int i) {
        super(CallableReference.NoReceiver.INSTANCE, cls, str, str2, i);
    }
}
