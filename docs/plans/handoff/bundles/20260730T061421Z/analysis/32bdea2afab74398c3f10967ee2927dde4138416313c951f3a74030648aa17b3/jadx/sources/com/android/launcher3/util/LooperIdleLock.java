package com.android.launcher3.util;

import android.os.Looper;
import android.os.MessageQueue;

/* loaded from: classes.dex */
public class LooperIdleLock implements MessageQueue.IdleHandler {
    public boolean mIsLocked = true;
    public final Object mLock;
    public Looper mLooper;

    public LooperIdleLock(Object obj, Looper looper) {
        this.mLock = obj;
        this.mLooper = looper;
        looper.getQueue().addIdleHandler(this);
    }

    @Override // android.os.MessageQueue.IdleHandler
    public boolean queueIdle() {
        synchronized (this.mLock) {
            this.mIsLocked = false;
            this.mLock.notify();
        }
        this.mLooper.getQueue().removeIdleHandler(this);
        return false;
    }
}
