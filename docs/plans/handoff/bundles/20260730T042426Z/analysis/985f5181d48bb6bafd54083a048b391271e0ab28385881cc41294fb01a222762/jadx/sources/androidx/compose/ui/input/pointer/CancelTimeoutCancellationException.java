package androidx.compose.ui.input.pointer;

import java.util.concurrent.CancellationException;

/* compiled from: SuspendingPointerInputFilter.jvm.kt */
/* loaded from: classes.dex */
public final class CancelTimeoutCancellationException extends CancellationException {
    public static final CancelTimeoutCancellationException INSTANCE = new CancelTimeoutCancellationException();

    private CancelTimeoutCancellationException() {
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        StackTraceElement[] stackTraceElementArr;
        stackTraceElementArr = SuspendingPointerInputFilter_jvmKt.EmptyStackTraceElements;
        setStackTrace(stackTraceElementArr);
        return this;
    }
}
