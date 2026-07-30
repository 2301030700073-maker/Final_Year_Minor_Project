package androidx.compose.ui;

import java.util.concurrent.CancellationException;

/* compiled from: Modifier.jvm.kt */
/* loaded from: classes.dex */
public final class ModifierNodeDetachedCancellationException extends CancellationException {
    public ModifierNodeDetachedCancellationException() {
        super("The Modifier.Node was detached");
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        StackTraceElement[] stackTraceElementArr;
        stackTraceElementArr = Modifier_jvmKt.EmptyStackTraceElements;
        setStackTrace(stackTraceElementArr);
        return this;
    }
}
