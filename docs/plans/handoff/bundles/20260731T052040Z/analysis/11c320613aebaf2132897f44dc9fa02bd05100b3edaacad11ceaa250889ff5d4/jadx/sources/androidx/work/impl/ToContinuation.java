package androidx.work.impl;

import androidx.concurrent.futures.AbstractResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.KotlinNullPointerException;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ToContinuation implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final CancellableContinuationImpl continuation;
    public final ListenableFuture futureToObserve;

    public /* synthetic */ ToContinuation(ListenableFuture listenableFuture, CancellableContinuationImpl cancellableContinuationImpl, int i) {
        this.$r8$classId = i;
        this.futureToObserve = listenableFuture;
        this.continuation = cancellableContinuationImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
        ListenableFuture listenableFuture = this.futureToObserve;
        switch (i) {
            case 0:
                if (listenableFuture.isCancelled()) {
                    cancellableContinuationImpl.cancel(null);
                    return;
                }
                boolean z = false;
                while (true) {
                    try {
                        try {
                            Object obj = listenableFuture.get();
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            cancellableContinuationImpl.resumeWith(obj);
                            return;
                        } catch (ExecutionException e) {
                            Throwable cause = e.getCause();
                            cause.getClass();
                            cancellableContinuationImpl.resumeWith(new Result.Failure(cause));
                            return;
                        }
                    } catch (InterruptedException unused) {
                        z = true;
                    } catch (Throwable th) {
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                }
            default:
                if (listenableFuture.isCancelled()) {
                    cancellableContinuationImpl.cancel(null);
                    return;
                }
                try {
                    cancellableContinuationImpl.resumeWith(AbstractResolvableFuture.getUninterruptibly(listenableFuture));
                    return;
                } catch (ExecutionException e2) {
                    Throwable cause2 = e2.getCause();
                    if (cause2 != null) {
                        cancellableContinuationImpl.resumeWith(new Result.Failure(cause2));
                        return;
                    } else {
                        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException();
                        Intrinsics.sanitizeStackTrace(kotlinNullPointerException, Intrinsics.class.getName());
                        throw kotlinNullPointerException;
                    }
                }
        }
    }
}
