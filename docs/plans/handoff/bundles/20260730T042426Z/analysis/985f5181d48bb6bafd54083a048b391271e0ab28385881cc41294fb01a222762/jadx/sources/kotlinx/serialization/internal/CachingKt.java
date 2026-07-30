package kotlinx.serialization.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Caching.kt */
/* loaded from: classes2.dex */
public abstract class CachingKt {
    private static final boolean useClassValue;

    static {
        Object m2647constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m2647constructorimpl = Result.m2647constructorimpl(Class.forName("java.lang.ClassValue"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m2647constructorimpl = Result.m2647constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2653isSuccessimpl(m2647constructorimpl)) {
            m2647constructorimpl = Boolean.TRUE;
        }
        Object m2647constructorimpl2 = Result.m2647constructorimpl(m2647constructorimpl);
        Boolean bool = Boolean.FALSE;
        if (Result.m2652isFailureimpl(m2647constructorimpl2)) {
            m2647constructorimpl2 = bool;
        }
        useClassValue = ((Boolean) m2647constructorimpl2).booleanValue();
    }

    public static final SerializerCache createCache(Function1 factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        return useClassValue ? new ClassValueCache(factory) : new ConcurrentHashMapCache(factory);
    }

    public static final ParametrizedSerializerCache createParametrizedCache(Function2 factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        return useClassValue ? new ClassValueParametrizedCache(factory) : new ConcurrentHashMapParametrizedCache(factory);
    }
}
