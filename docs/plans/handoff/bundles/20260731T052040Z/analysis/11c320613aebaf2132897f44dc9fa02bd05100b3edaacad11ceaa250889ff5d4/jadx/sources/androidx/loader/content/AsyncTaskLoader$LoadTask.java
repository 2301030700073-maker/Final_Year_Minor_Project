package androidx.loader.content;

import android.os.Binder;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import androidx.recyclerview.widget.SortedList;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.nononsenseapps.filepicker.FilePickerFragment;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AsyncTaskLoader$LoadTask implements Runnable {
    public static final ThreadPoolExecutor THREAD_POOL_EXECUTOR;
    public static ModernAsyncTask$InternalHandler sHandler;
    public final CountDownLatch mDone;
    public final ModernAsyncTask$3 mFuture;
    public final ModernAsyncTask$2 mWorker;
    public final /* synthetic */ FilePickerFragment.AnonymousClass1 this$0;
    public volatile int mStatus = 1;
    public final AtomicBoolean mCancelled = new AtomicBoolean();
    public final AtomicBoolean mTaskInvoked = new AtomicBoolean();

    static {
        ModernAsyncTask$1 modernAsyncTask$1 = new ModernAsyncTask$1(0);
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(10), modernAsyncTask$1);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.loader.content.ModernAsyncTask$2] */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.loader.content.ModernAsyncTask$3] */
    public AsyncTaskLoader$LoadTask(FilePickerFragment.AnonymousClass1 anonymousClass1) {
        this.this$0 = anonymousClass1;
        final ?? r0 = new Callable() { // from class: androidx.loader.content.ModernAsyncTask$2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask = AsyncTaskLoader$LoadTask.this;
                asyncTaskLoader$LoadTask.mTaskInvoked.set(true);
                SortedList sortedList = null;
                try {
                    Process.setThreadPriority(10);
                    sortedList = asyncTaskLoader$LoadTask.this$0.onLoadInBackground();
                    Binder.flushPendingCommands();
                    return sortedList;
                } finally {
                }
            }
        };
        this.mWorker = r0;
        this.mFuture = new FutureTask(r0) { // from class: androidx.loader.content.ModernAsyncTask$3
            @Override // java.util.concurrent.FutureTask
            public final void done() {
                AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask = AsyncTaskLoader$LoadTask.this;
                AtomicBoolean atomicBoolean = asyncTaskLoader$LoadTask.mTaskInvoked;
                try {
                    Object obj = get();
                    if (atomicBoolean.get()) {
                        return;
                    }
                    asyncTaskLoader$LoadTask.postResult(obj);
                } catch (InterruptedException e) {
                    Log.w("AsyncTask", e);
                } catch (CancellationException unused) {
                    if (atomicBoolean.get()) {
                        return;
                    }
                    asyncTaskLoader$LoadTask.postResult(null);
                } catch (ExecutionException e2) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m("An error occurred while executing doInBackground()", e2.getCause());
                } catch (Throwable th) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m("An error occurred while executing doInBackground()", th);
                }
            }
        };
        this.mDone = new CountDownLatch(1);
    }

    public final void postResult(Object obj) {
        ModernAsyncTask$InternalHandler modernAsyncTask$InternalHandler;
        synchronized (AsyncTaskLoader$LoadTask.class) {
            try {
                if (sHandler == null) {
                    sHandler = new ModernAsyncTask$InternalHandler(Looper.getMainLooper());
                }
                modernAsyncTask$InternalHandler = sHandler;
            } catch (Throwable th) {
                throw th;
            }
        }
        modernAsyncTask$InternalHandler.obtainMessage(1, new ModernAsyncTask$AsyncTaskResult(this, obj)).sendToTarget();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.this$0.executePendingTask();
    }
}
