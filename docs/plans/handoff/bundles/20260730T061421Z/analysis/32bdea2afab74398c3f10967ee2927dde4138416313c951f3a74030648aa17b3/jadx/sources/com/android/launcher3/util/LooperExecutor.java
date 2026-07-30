package com.android.launcher3.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class LooperExecutor extends AbstractExecutorService {
    public final Handler mHandler;

    public LooperExecutor(Looper looper) {
        this.mHandler = new Handler(looper);
    }

    @Override // java.util.concurrent.ExecutorService
    @Deprecated
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (this.mHandler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.mHandler.post(runnable);
        }
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    public Looper getLooper() {
        return this.mHandler.getLooper();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    public void setThreadPriority(int i) {
        Process.setThreadPriority(((HandlerThread) this.mHandler.getLooper().getThread()).getThreadId(), i);
    }

    @Override // java.util.concurrent.ExecutorService
    @Deprecated
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    @Deprecated
    public List shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
