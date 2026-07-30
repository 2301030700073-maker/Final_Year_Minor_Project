package defpackage;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* renamed from: Ig, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ExecutorC0275Ig implements Executor {

    /* renamed from: do, reason: not valid java name */
    public final Handler f1550do;

    public ExecutorC0275Ig(Handler handler) {
        this.f1550do = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        Handler handler = this.f1550do;
        if (handler.post(runnable)) {
            return;
        }
        throw new RejectedExecutionException(handler + " is shutting down");
    }
}
