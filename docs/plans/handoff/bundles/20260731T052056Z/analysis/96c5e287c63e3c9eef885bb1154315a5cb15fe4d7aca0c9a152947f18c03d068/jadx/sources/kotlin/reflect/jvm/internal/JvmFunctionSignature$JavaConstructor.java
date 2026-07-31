package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmFunctionSignature$JavaConstructor extends KPropertyImplKt {
    public final Constructor constructor;

    public JvmFunctionSignature$JavaConstructor(Constructor constructor) {
        this.constructor = constructor;
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImplKt
    public final String asString() {
        Class<?>[] parameterTypes = this.constructor.getParameterTypes();
        parameterTypes.getClass();
        return ArraysKt___ArraysKt.joinToString$default(parameterTypes, "", "<init>(", ")V", CachesKt$K_CLASS_CACHE$1.INSTANCE$3, 24);
    }
}
