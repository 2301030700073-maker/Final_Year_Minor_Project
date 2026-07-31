package com.airbnb.lottie;

import android.os.Handler;
import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor$$ExternalSyntheticLambda0;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieThreadFactory;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LottieTask {
    public static final Executor EXECUTOR;
    public final LinkedHashSet successListeners = new LinkedHashSet(1);
    public final LinkedHashSet failureListeners = new LinkedHashSet(1);
    public final Handler handler = new Handler(Looper.getMainLooper());
    public volatile LottieResult result = null;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LottieFutureTask extends FutureTask {
        public LottieTask lottieTask;

        @Override // java.util.concurrent.FutureTask
        public final void done() {
            try {
                if (isCancelled()) {
                    return;
                }
                try {
                    this.lottieTask.setResult((LottieResult) get());
                } catch (InterruptedException | ExecutionException e) {
                    this.lottieTask.setResult(new LottieResult(e));
                }
            } finally {
                this.lottieTask = null;
            }
        }
    }

    static {
        if ("true".equals(System.getProperty("lottie.testing.directExecutor"))) {
            EXECUTOR = new ArchTaskExecutor$$ExternalSyntheticLambda0(1);
        } else {
            EXECUTOR = Executors.newCachedThreadPool(new LottieThreadFactory());
        }
    }

    public LottieTask(Callable callable) {
        Executor executor = EXECUTOR;
        LottieFutureTask lottieFutureTask = new LottieFutureTask(callable);
        lottieFutureTask.lottieTask = this;
        executor.execute(lottieFutureTask);
    }

    public final synchronized void addFailureListener(LottieListener lottieListener) {
        Throwable th;
        try {
            LottieResult lottieResult = this.result;
            if (lottieResult != null && (th = lottieResult.exception) != null) {
                lottieListener.onResult(th);
            }
            this.failureListeners.add(lottieListener);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void addListener(LottieListener lottieListener) {
        LottieComposition lottieComposition;
        try {
            LottieResult lottieResult = this.result;
            if (lottieResult != null && (lottieComposition = lottieResult.value) != null) {
                lottieListener.onResult(lottieComposition);
            }
            this.successListeners.add(lottieListener);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void notifyFailureListeners(Throwable th) {
        ArrayList arrayList = new ArrayList(this.failureListeners);
        if (arrayList.isEmpty()) {
            Logger.warning("Lottie encountered an error but no failure listener was added:", th);
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((LottieListener) it.next()).onResult(th);
        }
    }

    public final void notifyListenersInternal() {
        LottieResult lottieResult = this.result;
        if (lottieResult == null) {
            return;
        }
        LottieComposition lottieComposition = lottieResult.value;
        if (lottieComposition == null) {
            notifyFailureListeners(lottieResult.exception);
            return;
        }
        synchronized (this) {
            Iterator it = new ArrayList(this.successListeners).iterator();
            while (it.hasNext()) {
                ((LottieListener) it.next()).onResult(lottieComposition);
            }
        }
    }

    public final void setResult(LottieResult lottieResult) {
        if (this.result != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("A task may only be set once.");
            return;
        }
        this.result = lottieResult;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            notifyListenersInternal();
        } else {
            this.handler.post(new Task$$ExternalSyntheticLambda0(20, this));
        }
    }

    public LottieTask(LottieComposition lottieComposition) {
        setResult(new LottieResult(lottieComposition));
    }
}
