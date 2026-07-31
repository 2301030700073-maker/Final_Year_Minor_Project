package androidx.loader.content;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import androidx.loader.content.AsyncTaskLoader;
import java.util.concurrent.CountDownLatch;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModernAsyncTask$InternalHandler extends Handler {
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        CountDownLatch countDownLatch;
        ModernAsyncTask$AsyncTaskResult modernAsyncTask$AsyncTaskResult = (ModernAsyncTask$AsyncTaskResult) message.obj;
        int i = message.what;
        if (i != 1) {
            if (i != 2) {
                return;
            }
            AsyncTaskLoader.LoadTask loadTask = modernAsyncTask$AsyncTaskResult.mTask;
            return;
        }
        AsyncTaskLoader.LoadTask loadTask2 = modernAsyncTask$AsyncTaskResult.mTask;
        Object obj = modernAsyncTask$AsyncTaskResult.mData[0];
        if (loadTask2.mCancelled.get()) {
            countDownLatch = loadTask2.mDone;
            try {
                AsyncTaskLoader asyncTaskLoader = AsyncTaskLoader.this;
                if (asyncTaskLoader.mCancellingTask == loadTask2) {
                    if (asyncTaskLoader.mProcessingChange) {
                        if (asyncTaskLoader.mStarted) {
                            asyncTaskLoader.forceLoad();
                        } else {
                            asyncTaskLoader.mContentChanged = true;
                        }
                    }
                    SystemClock.uptimeMillis();
                    asyncTaskLoader.mCancellingTask = null;
                    asyncTaskLoader.executePendingTask();
                }
                countDownLatch.countDown();
            } finally {
                countDownLatch.countDown();
            }
        } else {
            try {
                AsyncTaskLoader asyncTaskLoader2 = AsyncTaskLoader.this;
                if (asyncTaskLoader2.mTask != loadTask2) {
                    if (asyncTaskLoader2.mCancellingTask == loadTask2) {
                        if (asyncTaskLoader2.mProcessingChange) {
                            if (asyncTaskLoader2.mStarted) {
                                asyncTaskLoader2.forceLoad();
                            } else {
                                asyncTaskLoader2.mContentChanged = true;
                            }
                        }
                        SystemClock.uptimeMillis();
                        asyncTaskLoader2.mCancellingTask = null;
                        asyncTaskLoader2.executePendingTask();
                    }
                } else if (!asyncTaskLoader2.mAbandoned) {
                    asyncTaskLoader2.mProcessingChange = false;
                    SystemClock.uptimeMillis();
                    asyncTaskLoader2.mTask = null;
                    asyncTaskLoader2.deliverResult(obj);
                }
            } finally {
                countDownLatch = loadTask2.mDone;
            }
        }
        loadTask2.mStatus = 3;
    }
}
