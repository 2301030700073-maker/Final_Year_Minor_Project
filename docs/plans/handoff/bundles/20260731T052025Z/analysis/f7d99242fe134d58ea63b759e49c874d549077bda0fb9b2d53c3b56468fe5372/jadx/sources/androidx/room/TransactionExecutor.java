package androidx.room;

import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.core.app.ActivityRecreator;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.bumptech.glide.util.Executors$1;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TransactionExecutor implements Executor {
    public final /* synthetic */ int $r8$classId;
    public Runnable active;
    public final Executor executor;
    public final Object syncLock;
    public final ArrayDeque tasks;

    public TransactionExecutor(Executor executor, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.executor = executor;
                this.tasks = new ArrayDeque();
                this.syncLock = new Object();
                break;
            default:
                executor.getClass();
                this.executor = executor;
                this.tasks = new ArrayDeque();
                this.syncLock = new Object();
                break;
        }
    }

    private final void execute$androidx$room$TransactionExecutor(Runnable runnable) {
        runnable.getClass();
        synchronized (this.syncLock) {
            this.tasks.offer(new Processor$$ExternalSyntheticLambda2(3, runnable, this));
            if (this.active == null) {
                scheduleNext();
            }
        }
    }

    private final void execute$androidx$work$impl$utils$SerialExecutorImpl(Runnable runnable) {
        synchronized (this.syncLock) {
            try {
                this.tasks.add(new ActivityRecreator.AnonymousClass1(11, this, runnable));
                if (this.active == null) {
                    scheduleNext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void scheduleNext$androidx$room$TransactionExecutor() {
        synchronized (this.syncLock) {
            Object poll = this.tasks.poll();
            Runnable runnable = (Runnable) poll;
            this.active = runnable;
            if (poll != null) {
                this.executor.execute(runnable);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.$r8$classId) {
            case 0:
                execute$androidx$room$TransactionExecutor(runnable);
                return;
            case 1:
                execute$androidx$work$impl$utils$SerialExecutorImpl(runnable);
                return;
            default:
                synchronized (this.syncLock) {
                    try {
                        this.tasks.add(new CameraX$$ExternalSyntheticLambda2(2, this, runnable));
                        if (this.active == null) {
                            scheduleNext();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }

    public final void scheduleNext() {
        switch (this.$r8$classId) {
            case 0:
                scheduleNext$androidx$room$TransactionExecutor();
                return;
            case 1:
                Runnable runnable = (Runnable) this.tasks.poll();
                this.active = runnable;
                if (runnable != null) {
                    this.executor.execute(runnable);
                    return;
                }
                return;
            default:
                synchronized (this.syncLock) {
                    try {
                        Runnable runnable2 = (Runnable) this.tasks.poll();
                        this.active = runnable2;
                        if (runnable2 != null) {
                            ((Executors$1) this.executor).execute(runnable2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }

    public TransactionExecutor(Executors$1 executors$1) {
        this.$r8$classId = 2;
        this.syncLock = new Object();
        this.tasks = new ArrayDeque();
        this.executor = executors$1;
    }
}
