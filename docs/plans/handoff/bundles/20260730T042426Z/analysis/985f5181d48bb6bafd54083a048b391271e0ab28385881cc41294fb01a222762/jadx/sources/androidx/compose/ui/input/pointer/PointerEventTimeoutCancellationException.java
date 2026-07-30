package androidx.compose.ui.input.pointer;

import java.util.concurrent.CancellationException;

/* compiled from: SuspendingPointerInputFilter.jvm.kt */
/* loaded from: classes.dex */
public final class PointerEventTimeoutCancellationException extends CancellationException {
    public PointerEventTimeoutCancellationException(long j) {
        super("Timed out waiting for " + j + " ms");
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        StackTraceElement[] stackTraceElementArr;
        stackTraceElementArr = SuspendingPointerInputFilter_jvmKt.EmptyStackTraceElements;
        setStackTrace(stackTraceElementArr);
        return this;
    }
}
