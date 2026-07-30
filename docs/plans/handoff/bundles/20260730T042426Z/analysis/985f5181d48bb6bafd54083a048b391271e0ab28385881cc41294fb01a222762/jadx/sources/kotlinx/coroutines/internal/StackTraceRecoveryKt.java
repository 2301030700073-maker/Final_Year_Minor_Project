package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFrames;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

/* compiled from: StackTraceRecovery.kt */
/* loaded from: classes2.dex */
public abstract class StackTraceRecoveryKt {
    private static final StackTraceElement ARTIFICIAL_FRAME = new ArtificialStackFrames().coroutineBoundary();
    private static final String baseContinuationImplClassName;
    private static final String stackTraceRecoveryClassName;

    public static final Throwable recoverStackTrace(Throwable th) {
        return th;
    }

    static {
        Object m2647constructorimpl;
        Object m2647constructorimpl2;
        try {
            Result.Companion companion = Result.Companion;
            m2647constructorimpl = Result.m2647constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m2647constructorimpl = Result.m2647constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2650exceptionOrNullimpl(m2647constructorimpl) != null) {
            m2647constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        baseContinuationImplClassName = (String) m2647constructorimpl;
        try {
            m2647constructorimpl2 = Result.m2647constructorimpl(StackTraceRecoveryKt.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.Companion;
            m2647constructorimpl2 = Result.m2647constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m2650exceptionOrNullimpl(m2647constructorimpl2) != null) {
            m2647constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        stackTraceRecoveryClassName = (String) m2647constructorimpl2;
    }
}
