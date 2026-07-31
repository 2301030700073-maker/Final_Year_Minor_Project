package leakcanary.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import kotlin.Unit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ObjectsKt$NO_OP_HANDLER$1 implements InvocationHandler {
    public static final ObjectsKt$NO_OP_HANDLER$1 INSTANCE = new ObjectsKt$NO_OP_HANDLER$1();

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        return Unit.INSTANCE;
    }
}
