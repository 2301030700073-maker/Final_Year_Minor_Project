package androidx.camera.core.impl.utils.executor;

import androidx.fragment.app.Fragment;
import com.bumptech.glide.load.engine.ActiveResources$1;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SequentialExecutor implements Executor {
    public final Executor mExecutor;
    public final ArrayDeque mQueue = new ArrayDeque();
    public final Fragment.AnonymousClass1 mWorker = new Fragment.AnonymousClass1(8, this);
    public int mWorkerRunningState = 1;
    public long mWorkerRunCount = 0;

    public SequentialExecutor(Executor executor) {
        executor.getClass();
        this.mExecutor = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.mQueue) {
            int i = this.mWorkerRunningState;
            if (i != 4 && i != 3) {
                long j = this.mWorkerRunCount;
                boolean z = true;
                ActiveResources$1.AnonymousClass1 anonymousClass1 = new ActiveResources$1.AnonymousClass1(1, runnable);
                this.mQueue.add(anonymousClass1);
                this.mWorkerRunningState = 2;
                try {
                    this.mExecutor.execute(this.mWorker);
                    if (this.mWorkerRunningState != 2) {
                        return;
                    }
                    synchronized (this.mQueue) {
                        try {
                            if (this.mWorkerRunCount == j && this.mWorkerRunningState == 2) {
                                this.mWorkerRunningState = 3;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.mQueue) {
                        try {
                            int i2 = this.mWorkerRunningState;
                            if ((i2 != 1 && i2 != 2) || !this.mQueue.removeLastOccurrence(anonymousClass1)) {
                                z = false;
                            }
                            if (!(e instanceof RejectedExecutionException) || z) {
                                throw e;
                            }
                        } finally {
                        }
                    }
                    return;
                }
            }
            this.mQueue.add(runnable);
        }
    }
}
