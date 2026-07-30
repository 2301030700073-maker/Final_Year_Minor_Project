package org.acra.interaction;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.acra.ACRA;
import org.acra.config.CoreConfiguration;

/* compiled from: ReportInteractionExecutor.kt */
/* loaded from: classes2.dex */
public final class ReportInteractionExecutor {
    private final CoreConfiguration config;
    private final Context context;
    private final List reportInteractions;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean performInteractions$lambda$2$lambda$1(ReportInteraction reportInteraction, ReportInteractionExecutor reportInteractionExecutor, File file) {
        if (ACRA.DEV_LOGGING) {
            ACRA.log.d(ACRA.LOG_TAG, "Calling ReportInteraction of class " + reportInteraction.getClass().getName());
        }
        return Boolean.valueOf(reportInteraction.performInteraction(reportInteractionExecutor.context, reportInteractionExecutor.config, file));
    }

    public ReportInteractionExecutor(Context context, CoreConfiguration config) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(config, "config");
        this.context = context;
        this.config = config;
        this.reportInteractions = config.getPluginLoader().loadEnabled(config, ReportInteraction.class);
    }

    public final boolean hasInteractions() {
        return !this.reportInteractions.isEmpty();
    }

    public final boolean performInteractions(final File reportFile) {
        Intrinsics.checkNotNullParameter(reportFile, "reportFile");
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        List<ReportInteraction> list = this.reportInteractions;
        ArrayList<Future> arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (final ReportInteraction reportInteraction : list) {
            arrayList.add(newCachedThreadPool.submit(new Callable() { // from class: org.acra.interaction.ReportInteractionExecutor$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Boolean performInteractions$lambda$2$lambda$1;
                    performInteractions$lambda$2$lambda$1 = ReportInteractionExecutor.performInteractions$lambda$2$lambda$1(ReportInteraction.this, this, reportFile);
                    return performInteractions$lambda$2$lambda$1;
                }
            }));
        }
        boolean z = true;
        for (Future future : arrayList) {
            do {
                try {
                    Object obj = future.get();
                    Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                    z &= ((Boolean) obj).booleanValue();
                } catch (InterruptedException unused) {
                } catch (ExecutionException e) {
                    ACRA.log.w(ACRA.LOG_TAG, "Report interaction threw exception, will be ignored.", e);
                }
            } while (!future.isDone());
        }
        return z;
    }
}
