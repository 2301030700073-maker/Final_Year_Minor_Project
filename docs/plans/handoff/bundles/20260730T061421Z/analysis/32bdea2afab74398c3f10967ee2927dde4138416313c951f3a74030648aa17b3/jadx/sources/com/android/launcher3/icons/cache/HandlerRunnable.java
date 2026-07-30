package com.android.launcher3.icons.cache;

import android.os.Handler;

/* loaded from: classes.dex */
public abstract class HandlerRunnable implements Runnable {
    public final Runnable mEndRunnable;
    public final Handler mHandler;
    public boolean mEnded = false;
    public boolean mCanceled = false;

    public HandlerRunnable(Handler handler, Runnable runnable) {
        this.mHandler = handler;
        this.mEndRunnable = runnable;
    }

    public void cancel() {
        this.mHandler.removeCallbacks(this);
        this.mCanceled = true;
        onEnd();
    }

    public boolean isCanceled() {
        return this.mCanceled;
    }

    public void onEnd() {
        if (this.mEnded) {
            return;
        }
        this.mEnded = true;
        Runnable runnable = this.mEndRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }
}
