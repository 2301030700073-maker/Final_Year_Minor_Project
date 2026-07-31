package androidx.work.impl.utils;

import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpecDao_Impl;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WorkForegroundUpdater {
    public final Processor mForegroundProcessor;
    public final Dispatcher mTaskExecutor;
    public final WorkSpecDao_Impl mWorkSpecDao;

    static {
        Logger$LogcatLogger.tagWithPrefix("WMFgUpdater");
    }

    public WorkForegroundUpdater(WorkDatabase workDatabase, Processor processor, Dispatcher dispatcher) {
        this.mForegroundProcessor = processor;
        this.mTaskExecutor = dispatcher;
        this.mWorkSpecDao = workDatabase.workSpecDao();
    }
}
