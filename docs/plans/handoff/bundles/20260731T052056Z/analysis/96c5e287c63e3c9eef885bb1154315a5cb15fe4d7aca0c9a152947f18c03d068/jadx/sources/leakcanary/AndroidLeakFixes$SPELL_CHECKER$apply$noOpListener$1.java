package leakcanary;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import kotlin.Unit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidLeakFixes$SPELL_CHECKER$apply$noOpListener$1 implements InvocationHandler {
    public static final AndroidLeakFixes$SPELL_CHECKER$apply$noOpListener$1 INSTANCE = new AndroidLeakFixes$SPELL_CHECKER$apply$noOpListener$1();

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        obj.getClass();
        method.getClass();
        return Unit.INSTANCE;
    }
}
