package kotlin.reflect.jvm.internal;

import java.lang.reflect.Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmFunctionSignature$JavaMethod extends KPropertyImplKt {
    public final Method method;

    public JvmFunctionSignature$JavaMethod(Method method) {
        this.method = method;
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImplKt
    public final String asString() {
        return KPropertyImplKt.getSignature(this.method);
    }
}
