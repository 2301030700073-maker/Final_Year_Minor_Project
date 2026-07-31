package androidx.room;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.app.ActivityRecreator;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TransactionExecutor implements Executor {
    public final /* synthetic */ int $r8$classId;
    public Runnable active;
    public final Executor executor;
    public final Object syncLock;
    public final ArrayDeque tasks;

    public TransactionExecutor(Executor executor) {
        this.$r8$classId = 0;
        executor.getClass();
        this.executor = executor;
        this.tasks = new ArrayDeque();
        this.syncLock = new Object();
    }

    private final void execute$androidx$appcompat$app$AppCompatDelegate$SerialExecutor(Runnable runnable) {
        synchronized (this.syncLock) {
            try {
                this.tasks.add(new Processor$$ExternalSyntheticLambda2(2, this, runnable));
                if (this.active == null) {
                    scheduleNext();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void execute$androidx$room$TransactionExecutor(Runnable runnable) {
        runnable.getClass();
        synchronized (this.syncLock) {
            this.tasks.offer(new Processor$$ExternalSyntheticLambda2(6, runnable, this));
            if (this.active == null) {
                scheduleNext();
            }
        }
    }

    private final void scheduleNext$androidx$appcompat$app$AppCompatDelegate$SerialExecutor() {
        synchronized (this.syncLock) {
            try {
                Runnable runnable = (Runnable) this.tasks.poll();
                this.active = runnable;
                if (runnable != null) {
                    ((AppCompatDelegate.ThreadPerTaskExecutor) this.executor).execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
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
                execute$androidx$appcompat$app$AppCompatDelegate$SerialExecutor(runnable);
                return;
            default:
                synchronized (this.syncLock) {
                    try {
                        this.tasks.add(new ActivityRecreator.AnonymousClass1(9, this, runnable));
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
                synchronized (this.syncLock) {
                    Object poll = this.tasks.poll();
                    Runnable runnable = (Runnable) poll;
                    this.active = runnable;
                    if (poll != null) {
                        this.executor.execute(runnable);
                    }
                }
                return;
            case 1:
                scheduleNext$androidx$appcompat$app$AppCompatDelegate$SerialExecutor();
                return;
            default:
                Runnable runnable2 = (Runnable) this.tasks.poll();
                this.active = runnable2;
                if (runnable2 != null) {
                    ((ExecutorService) this.executor).execute(runnable2);
                    return;
                }
                return;
        }
    }

    public TransactionExecutor(ExecutorService executorService) {
        this.$r8$classId = 2;
        this.executor = executorService;
        this.tasks = new ArrayDeque();
        this.syncLock = new Object();
    }

    public TransactionExecutor(AppCompatDelegate.ThreadPerTaskExecutor threadPerTaskExecutor) {
        this.$r8$classId = 1;
        this.syncLock = new Object();
        this.tasks = new ArrayDeque();
        this.executor = threadPerTaskExecutor;
    }
}
