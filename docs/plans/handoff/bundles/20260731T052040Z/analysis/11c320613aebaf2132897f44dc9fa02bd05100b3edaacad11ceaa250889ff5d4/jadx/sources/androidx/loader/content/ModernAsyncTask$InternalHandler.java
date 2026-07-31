package androidx.loader.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.loader.app.LoaderManagerImpl;
import com.nononsenseapps.filepicker.FilePickerFragment;
import java.util.concurrent.CountDownLatch;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask = modernAsyncTask$AsyncTaskResult.mTask;
            return;
        }
        AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask2 = modernAsyncTask$AsyncTaskResult.mTask;
        Object obj = modernAsyncTask$AsyncTaskResult.mData[0];
        if (asyncTaskLoader$LoadTask2.mCancelled.get()) {
            countDownLatch = asyncTaskLoader$LoadTask2.mDone;
            try {
                FilePickerFragment.AnonymousClass1 anonymousClass1 = asyncTaskLoader$LoadTask2.this$0;
                if (anonymousClass1.mCancellingTask == asyncTaskLoader$LoadTask2) {
                    SystemClock.uptimeMillis();
                    anonymousClass1.mCancellingTask = null;
                    anonymousClass1.executePendingTask();
                }
                countDownLatch.countDown();
            } finally {
                countDownLatch.countDown();
            }
        } else {
            try {
                FilePickerFragment.AnonymousClass1 anonymousClass12 = asyncTaskLoader$LoadTask2.this$0;
                if (anonymousClass12.mTask != asyncTaskLoader$LoadTask2) {
                    if (anonymousClass12.mCancellingTask == asyncTaskLoader$LoadTask2) {
                        SystemClock.uptimeMillis();
                        anonymousClass12.mCancellingTask = null;
                        anonymousClass12.executePendingTask();
                    }
                } else if (!anonymousClass12.mAbandoned) {
                    SystemClock.uptimeMillis();
                    anonymousClass12.mTask = null;
                    LoaderManagerImpl.LoaderInfo loaderInfo = anonymousClass12.mListener;
                    if (loaderInfo != null) {
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            loaderInfo.setValue(obj);
                        } else {
                            loaderInfo.postValue(obj);
                        }
                    }
                }
            } finally {
                countDownLatch = asyncTaskLoader$LoadTask2.mDone;
            }
        }
        asyncTaskLoader$LoadTask2.mStatus = 3;
    }
}
