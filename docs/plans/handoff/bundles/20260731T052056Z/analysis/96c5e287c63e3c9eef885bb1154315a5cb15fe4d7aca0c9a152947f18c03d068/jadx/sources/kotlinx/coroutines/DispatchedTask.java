package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.scheduling.Task;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DispatchedTask extends Task {
    public int resumeMode;

    public DispatchedTask(int i) {
        super(0L, false);
        this.resumeMode = i;
    }

    public abstract Continuation getDelegate$kotlinx_coroutines_core();

    public Throwable getExceptionalResult$kotlinx_coroutines_core(Object obj) {
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        if (completedExceptionally != null) {
            return completedExceptionally.cause;
        }
        return null;
    }

    public final void handleFatalException$kotlinx_coroutines_core(Throwable th) {
        AwaitKt.handleCoroutineException(new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th), getDelegate$kotlinx_coroutines_core().getContext());
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
    
        r4 = (kotlinx.coroutines.Job) r5.get(kotlinx.coroutines.Job.Key.$$INSTANCE);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r11 = this;
            kotlin.coroutines.Continuation r0 = r11.getDelegate$kotlinx_coroutines_core()     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            r0.getClass()     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            kotlinx.coroutines.internal.DispatchedContinuation r0 = (kotlinx.coroutines.internal.DispatchedContinuation) r0     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            kotlin.coroutines.jvm.internal.ContinuationImpl r1 = r0.continuation     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            java.lang.Object r0 = r0.countOrElement     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            kotlin.coroutines.CoroutineContext r2 = r1.getContext()     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            java.lang.Object r0 = kotlinx.coroutines.internal.InlineList.updateThreadContext(r2, r0)     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.internal.InlineList.NO_THREAD_ELEMENTS     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            r4 = 0
            if (r0 == r3) goto L25
            kotlinx.coroutines.UndispatchedCoroutine r3 = kotlinx.coroutines.AwaitKt.updateUndispatchedCompletion(r1, r2, r0)     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            goto L26
        L1f:
            r0 = move-exception
            goto L8c
        L22:
            r0 = move-exception
            goto L90
        L25:
            r3 = r4
        L26:
            kotlin.coroutines.CoroutineContext r5 = r1.getContext()     // Catch: java.lang.Throwable -> L49
            java.lang.Object r6 = r11.takeState$kotlinx_coroutines_core()     // Catch: java.lang.Throwable -> L49
            java.lang.Throwable r7 = r11.getExceptionalResult$kotlinx_coroutines_core(r6)     // Catch: java.lang.Throwable -> L49
            if (r7 != 0) goto L4b
            int r8 = r11.resumeMode     // Catch: java.lang.Throwable -> L49
            r9 = 1
            if (r8 == r9) goto L3e
            r10 = 2
            if (r8 != r10) goto L3d
            goto L3e
        L3d:
            r9 = 0
        L3e:
            if (r9 == 0) goto L4b
            kotlinx.coroutines.Job$Key r4 = kotlinx.coroutines.Job.Key.$$INSTANCE     // Catch: java.lang.Throwable -> L49
            kotlin.coroutines.CoroutineContext$Element r4 = r5.get(r4)     // Catch: java.lang.Throwable -> L49
            kotlinx.coroutines.Job r4 = (kotlinx.coroutines.Job) r4     // Catch: java.lang.Throwable -> L49
            goto L4b
        L49:
            r1 = move-exception
            goto L80
        L4b:
            if (r4 == 0) goto L62
            boolean r5 = r4.isActive()     // Catch: java.lang.Throwable -> L49
            if (r5 != 0) goto L62
            java.util.concurrent.CancellationException r4 = r4.getCancellationException()     // Catch: java.lang.Throwable -> L49
            r11.cancelCompletedResult$kotlinx_coroutines_core(r4)     // Catch: java.lang.Throwable -> L49
            kotlin.Result$Failure r4 = kotlin.ResultKt.createFailure(r4)     // Catch: java.lang.Throwable -> L49
            r1.resumeWith(r4)     // Catch: java.lang.Throwable -> L49
            goto L74
        L62:
            if (r7 == 0) goto L6d
            kotlin.Result$Failure r4 = new kotlin.Result$Failure     // Catch: java.lang.Throwable -> L49
            r4.<init>(r7)     // Catch: java.lang.Throwable -> L49
            r1.resumeWith(r4)     // Catch: java.lang.Throwable -> L49
            goto L74
        L6d:
            java.lang.Object r4 = r11.getSuccessfulResult$kotlinx_coroutines_core(r6)     // Catch: java.lang.Throwable -> L49
            r1.resumeWith(r4)     // Catch: java.lang.Throwable -> L49
        L74:
            if (r3 == 0) goto L7c
            boolean r1 = r3.clearThreadContext()     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            if (r1 == 0) goto L9d
        L7c:
            kotlinx.coroutines.internal.InlineList.restoreThreadContext(r2, r0)     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            return
        L80:
            if (r3 == 0) goto L88
            boolean r3 = r3.clearThreadContext()     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
            if (r3 == 0) goto L8b
        L88:
            kotlinx.coroutines.internal.InlineList.restoreThreadContext(r2, r0)     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
        L8b:
            throw r1     // Catch: java.lang.Throwable -> L1f kotlinx.coroutines.DispatchException -> L22
        L8c:
            r11.handleFatalException$kotlinx_coroutines_core(r0)
            goto L9d
        L90:
            kotlin.coroutines.Continuation r11 = r11.getDelegate$kotlinx_coroutines_core()
            kotlin.coroutines.CoroutineContext r11 = r11.getContext()
            java.lang.Throwable r0 = r0.cause
            kotlinx.coroutines.AwaitKt.handleCoroutineException(r0, r11)
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DispatchedTask.run():void");
    }

    public abstract Object takeState$kotlinx_coroutines_core();

    public void cancelCompletedResult$kotlinx_coroutines_core(CancellationException cancellationException) {
    }

    public Object getSuccessfulResult$kotlinx_coroutines_core(Object obj) {
        return obj;
    }
}
