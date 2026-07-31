package androidx.work.impl;

import androidx.compose.runtime.Latch$await$2$2;
import androidx.work.DirectExecutor;
import androidx.work.ListenableWorker;
import androidx.work.Logger$LogcatLogger;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class WorkerWrapperKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("WorkerWrapper");

    public static final Object awaitWithin(ListenableFuture listenableFuture, ListenableWorker listenableWorker, SuspendLambda suspendLambda) {
        Object obj;
        try {
            boolean z = false;
            if (!listenableFuture.isDone()) {
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(suspendLambda));
                cancellableContinuationImpl.initCancellability();
                listenableFuture.addListener(new ToContinuation(listenableFuture, cancellableContinuationImpl, 0), DirectExecutor.INSTANCE);
                cancellableContinuationImpl.invokeOnCancellation(new Latch$await$2$2(listenableWorker, listenableFuture, 2));
                return cancellableContinuationImpl.getResult();
            }
            while (true) {
                try {
                    obj = listenableFuture.get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            return obj;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            cause.getClass();
            throw cause;
        }
    }
}
