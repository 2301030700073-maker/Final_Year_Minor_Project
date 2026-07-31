package androidx.loader.content;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.CameraExecutor;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.core.util.DebugUtils;
import androidx.loader.app.LoaderManagerImpl;
import androidx.loader.content.AsyncTaskLoader;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AsyncTaskLoader {
    public boolean mAbandoned;
    public volatile LoadTask mCancellingTask;
    public boolean mContentChanged;
    public final Context mContext;
    public final Executor mExecutor;
    public int mId;
    public LoaderManagerImpl.LoaderInfo mListener;
    public boolean mProcessingChange;
    public boolean mReset;
    public boolean mStarted;
    public volatile LoadTask mTask;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadTask implements Runnable {
        public static final ThreadPoolExecutor THREAD_POOL_EXECUTOR;
        public static ModernAsyncTask$InternalHandler sHandler;
        public final CountDownLatch mDone;
        public final ModernAsyncTask$3 mFuture;
        public final ModernAsyncTask$2 mWorker;
        public volatile int mStatus = 1;
        public final AtomicBoolean mCancelled = new AtomicBoolean();
        public final AtomicBoolean mTaskInvoked = new AtomicBoolean();

        static {
            CameraExecutor.AnonymousClass1 anonymousClass1 = new CameraExecutor.AnonymousClass1(3);
            THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(10), anonymousClass1);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.loader.content.ModernAsyncTask$3] */
        public LoadTask() {
            final ModernAsyncTask$2 modernAsyncTask$2 = new ModernAsyncTask$2(0, this);
            this.mWorker = modernAsyncTask$2;
            this.mFuture = new FutureTask(modernAsyncTask$2) { // from class: androidx.loader.content.ModernAsyncTask$3
                @Override // java.util.concurrent.FutureTask
                public final void done() {
                    AsyncTaskLoader.LoadTask loadTask = AsyncTaskLoader.LoadTask.this;
                    AtomicBoolean atomicBoolean = loadTask.mTaskInvoked;
                    try {
                        Object obj = get();
                        if (atomicBoolean.get()) {
                            return;
                        }
                        loadTask.postResult(obj);
                    } catch (InterruptedException e) {
                        Log.w("AsyncTask", e);
                    } catch (CancellationException unused) {
                        if (atomicBoolean.get()) {
                            return;
                        }
                        loadTask.postResult(null);
                    } catch (ExecutionException e2) {
                        DBUtil$$ExternalSyntheticBUOutline0.m("An error occurred while executing doInBackground()", e2.getCause());
                    } catch (Throwable th) {
                        DBUtil$$ExternalSyntheticBUOutline0.m("An error occurred while executing doInBackground()", th);
                    }
                }
            };
            this.mDone = new CountDownLatch(1);
        }

        public final void postResult(Object obj) {
            ModernAsyncTask$InternalHandler modernAsyncTask$InternalHandler;
            synchronized (LoadTask.class) {
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
            AsyncTaskLoader.this.executePendingTask();
        }
    }

    public AsyncTaskLoader(Context context) {
        ThreadPoolExecutor threadPoolExecutor = LoadTask.THREAD_POOL_EXECUTOR;
        this.mStarted = false;
        this.mAbandoned = false;
        this.mReset = true;
        this.mContentChanged = false;
        this.mProcessingChange = false;
        this.mContext = context.getApplicationContext();
        this.mExecutor = threadPoolExecutor;
    }

    public final void cancelLoad() {
        if (this.mTask != null) {
            if (!this.mStarted) {
                this.mContentChanged = true;
            }
            LoadTask loadTask = this.mCancellingTask;
            LoadTask loadTask2 = this.mTask;
            if (loadTask != null) {
                loadTask2.getClass();
                this.mTask = null;
                return;
            }
            loadTask2.getClass();
            LoadTask loadTask3 = this.mTask;
            loadTask3.mCancelled.set(true);
            if (loadTask3.mFuture.cancel(false)) {
                this.mCancellingTask = this.mTask;
            }
            this.mTask = null;
        }
    }

    public void deliverResult(Object obj) {
        LoaderManagerImpl.LoaderInfo loaderInfo = this.mListener;
        if (loaderInfo != null) {
            loaderInfo.getClass();
            if (Looper.myLooper() == Looper.getMainLooper()) {
                loaderInfo.setValue(obj);
            } else {
                loaderInfo.postValue(obj);
            }
        }
    }

    public final void executePendingTask() {
        if (this.mCancellingTask != null || this.mTask == null) {
            return;
        }
        this.mTask.getClass();
        LoadTask loadTask = this.mTask;
        Executor executor = this.mExecutor;
        if (loadTask.mStatus == 1) {
            loadTask.mStatus = 2;
            loadTask.mWorker.getClass();
            executor.execute(loadTask.mFuture);
            return;
        }
        int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(loadTask.mStatus);
        if (ordinal == 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot execute task: the task is already running.");
        } else if (ordinal != 2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("We should never reach this state");
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
    }

    public final void forceLoad() {
        cancelLoad();
        this.mTask = new LoadTask();
        executePendingTask();
    }

    public abstract Object loadInBackground();

    public abstract void onStartLoading();

    public final void startLoading() {
        this.mStarted = true;
        this.mReset = false;
        this.mAbandoned = false;
        onStartLoading();
    }

    public final boolean takeContentChanged() {
        boolean z = this.mContentChanged;
        this.mContentChanged = false;
        this.mProcessingChange |= z;
        return z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(this, sb);
        sb.append(" id=");
        return CameraDevices$CC.m(sb, this.mId, "}");
    }

    public void onAbandon() {
    }
}
