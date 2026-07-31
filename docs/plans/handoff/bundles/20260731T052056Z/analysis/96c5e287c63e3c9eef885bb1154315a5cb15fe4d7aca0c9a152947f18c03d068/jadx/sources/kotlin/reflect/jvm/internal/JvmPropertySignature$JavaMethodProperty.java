package kotlin.reflect.jvm.internal;

import java.lang.reflect.Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmPropertySignature$JavaMethodProperty extends KPropertyImplKt {
    public final Method getterMethod;
    public final Method setterMethod;

    public JvmPropertySignature$JavaMethodProperty(Method method, Method method2) {
        this.getterMethod = method;
        this.setterMethod = method2;
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImplKt
    public final String asString() {
        return KPropertyImplKt.getSignature(this.getterMethod);
    }
}
