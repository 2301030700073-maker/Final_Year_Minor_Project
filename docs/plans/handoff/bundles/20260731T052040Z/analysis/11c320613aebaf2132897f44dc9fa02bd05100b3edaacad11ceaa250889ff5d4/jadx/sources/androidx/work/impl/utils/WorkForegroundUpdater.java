package androidx.work.impl.utils;

import androidx.work.ForegroundUpdater;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpecDao_Impl;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkForegroundUpdater implements ForegroundUpdater {
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
