package com.android.systemui.shared.system;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class BackgroundExecutor {
    public static final BackgroundExecutor sInstance = new BackgroundExecutor();
    public final ExecutorService mExecutorService = Executors.newFixedThreadPool(2);

    public static BackgroundExecutor get() {
        return sInstance;
    }

    public Future submit(Callable callable) {
        return this.mExecutorService.submit(callable);
    }

    public Future submit(Runnable runnable) {
        return this.mExecutorService.submit(runnable);
    }

    public Future submit(Runnable runnable, Object obj) {
        return this.mExecutorService.submit(runnable, obj);
    }
}
