package kotlin.reflect.jvm.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CacheByClass.kt */
/* loaded from: classes2.dex */
public abstract class CacheByClassKt {
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
        ((Boolean) m2647constructorimpl2).booleanValue();
    }

    public static final CacheByClass createCache(Function1 compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        return new ConcurrentHashMapCache(compute);
    }
}
