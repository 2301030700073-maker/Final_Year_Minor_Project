package com.android.launcher3.util;

import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class Executors {
    public static final int CORE_POOL_SIZE;
    public static final int CPU_COUNT;
    public static final LooperExecutor MAIN_EXECUTOR;
    public static final int MAXIMUM_POOL_SIZE;
    public static final LooperExecutor MODEL_EXECUTOR;
    public static final ThreadPoolExecutor THREAD_POOL_EXECUTOR;
    public static final LooperExecutor UI_HELPER_EXECUTOR;

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = availableProcessors;
        CORE_POOL_SIZE = availableProcessors + 1;
        MAXIMUM_POOL_SIZE = (availableProcessors * 2) + 1;
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        MAIN_EXECUTOR = new LooperExecutor(Looper.getMainLooper());
        UI_HELPER_EXECUTOR = new LooperExecutor(createAndStartNewLooper("UiThreadHelper", -2));
        MODEL_EXECUTOR = new LooperExecutor(createAndStartNewLooper("launcher-loader"));
    }

    public static Looper createAndStartNewLooper(String str) {
        return createAndStartNewLooper(str, 0);
    }

    public static Looper createAndStartNewLooper(String str, int i) {
        HandlerThread handlerThread = new HandlerThread(str, i);
        handlerThread.start();
        return handlerThread.getLooper();
    }
}
