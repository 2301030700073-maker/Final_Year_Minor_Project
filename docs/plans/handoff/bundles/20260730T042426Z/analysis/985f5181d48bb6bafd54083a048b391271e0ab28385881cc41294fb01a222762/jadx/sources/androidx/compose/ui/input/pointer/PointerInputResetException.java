package androidx.compose.ui.input.pointer;

import java.util.concurrent.CancellationException;

/* compiled from: SuspendingPointerInputFilter.jvm.kt */
/* loaded from: classes.dex */
public final class PointerInputResetException extends CancellationException {
    public PointerInputResetException() {
        super("Pointer input was reset");
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        StackTraceElement[] stackTraceElementArr;
        stackTraceElementArr = SuspendingPointerInputFilter_jvmKt.EmptyStackTraceElements;
        setStackTrace(stackTraceElementArr);
        return this;
    }
}
