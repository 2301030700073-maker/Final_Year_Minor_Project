package com.fsck.k9.job;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.composite.CompositeLogSink;
import net.thunderbird.core.logging.file.FileLogSink;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SyncDebugWorker extends CoroutineWorker {
    public final Logger baseLogger;
    public final FileLogSink fileLogSink;
    public final GeneralSettingsManager generalSettingsManager;
    public final CompositeLogSink syncDebugCompositeSink;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyncDebugWorker(Context context, Logger logger, FileLogSink fileLogSink, CompositeLogSink compositeLogSink, WorkerParameters workerParameters, GeneralSettingsManager generalSettingsManager) {
        super(context, workerParameters);
        context.getClass();
        logger.getClass();
        fileLogSink.getClass();
        compositeLogSink.getClass();
        workerParameters.getClass();
        generalSettingsManager.getClass();
        this.baseLogger = logger;
        this.fileLogSink = fileLogSink;
        this.syncDebugCompositeSink = compositeLogSink;
        this.generalSettingsManager = generalSettingsManager;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|1|(2:3|(9:5|6|7|(1:(1:10)(2:18|19))(3:20|21|(5:23|12|(1:14)|15|16)(3:24|25|(1:27)))|11|12|(0)|15|16))|31|6|7|(0)(0)|11|12|(0)|15|16) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x002b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0069, code lost:
    
        kotlinx.io.Sink$CC.error$default(r12.baseLogger, null, r0, new com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0(r3), 1);
        r13 = new androidx.work.ListenableWorker.Result.Failure();
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(kotlin.coroutines.Continuation r13) {
        /*
            r12 = this;
            boolean r0 = r13 instanceof com.fsck.k9.job.SyncDebugWorker$doWork$1
            if (r0 == 0) goto L13
            r0 = r13
            com.fsck.k9.job.SyncDebugWorker$doWork$1 r0 = (com.fsck.k9.job.SyncDebugWorker$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            com.fsck.k9.job.SyncDebugWorker$doWork$1 r0 = new com.fsck.k9.job.SyncDebugWorker$doWork$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r13 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r13
            r0.<init>(r12, r13)
        L1a:
            java.lang.Object r13 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 0
            net.thunderbird.core.logging.file.FileLogSink r4 = r12.fileLogSink
            r5 = 1
            if (r1 == 0) goto L34
            if (r1 != r5) goto L2e
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.io.IOException -> L2b
            goto L64
        L2b:
            r0 = move-exception
            r13 = r0
            goto L69
        L2e:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r12)
            return r2
        L34:
            kotlin.ResultKt.throwOnFailure(r13)
            androidx.work.WorkerParameters r13 = r12.mWorkerParams     // Catch: java.io.IOException -> L2b
            androidx.work.Data r13 = r13.mInputData     // Catch: java.io.IOException -> L2b
            java.lang.String r1 = "exportUriString"
            java.lang.String r13 = r13.getString(r1)     // Catch: java.io.IOException -> L2b
            if (r13 != 0) goto L49
            androidx.work.ListenableWorker$Result$Failure r13 = new androidx.work.ListenableWorker$Result$Failure     // Catch: java.io.IOException -> L2b
            r13.<init>()     // Catch: java.io.IOException -> L2b
            goto L78
        L49:
            com.eygraber.uri.Uri$Companion r1 = com.eygraber.uri.Uri.Companion     // Catch: java.io.IOException -> L2b
            r1.getClass()     // Catch: java.io.IOException -> L2b
            com.eygraber.uri.uris.StringUri r1 = new com.eygraber.uri.uris.StringUri     // Catch: java.io.IOException -> L2b
            r1.<init>(r13)     // Catch: java.io.IOException -> L2b
            r0.label = r5     // Catch: java.io.IOException -> L2b
            r13 = r4
            net.thunderbird.core.logging.file.AndroidFileLogSink r13 = (net.thunderbird.core.logging.file.AndroidFileLogSink) r13     // Catch: java.io.IOException -> L2b
            r13.getClass()     // Catch: java.io.IOException -> L2b
            java.lang.Object r13 = net.thunderbird.core.logging.file.AndroidFileLogSink.export$suspendImpl(r13, r1, r0)     // Catch: java.io.IOException -> L2b
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r13 != r0) goto L64
            return r0
        L64:
            androidx.work.ListenableWorker$Result$Success r13 = androidx.work.ListenableWorker.Result.success()     // Catch: java.io.IOException -> L2b
            goto L78
        L69:
            com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0 r0 = new com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0
            r0.<init>(r3)
            net.thunderbird.core.logging.Logger r1 = r12.baseLogger
            kotlinx.io.Sink$CC.error$default(r1, r2, r13, r0, r5)
            androidx.work.ListenableWorker$Result$Failure r13 = new androidx.work.ListenableWorker$Result$Failure
            r13.<init>()
        L78:
            net.thunderbird.core.logging.composite.CompositeLogSink r0 = r12.syncDebugCompositeSink
            net.thunderbird.core.logging.composite.DefaultCompositeLogSink r0 = (net.thunderbird.core.logging.composite.DefaultCompositeLogSink) r0
            okhttp3.Headers$Builder r0 = r0.manager
            r4.getClass()
            java.util.ArrayList r0 = r0.namesAndValues
            boolean r1 = r0.contains(r4)
            if (r1 == 0) goto L8c
            r0.remove(r4)
        L8c:
            net.thunderbird.core.preference.GeneralSettingsManager r12 = r12.generalSettingsManager
            r0 = r12
            com.fsck.k9.preferences.DefaultGeneralSettingsManager r0 = (com.fsck.k9.preferences.DefaultGeneralSettingsManager) r0
            net.thunderbird.core.preference.GeneralSettings r4 = r0.getConfig()
            net.thunderbird.core.preference.debugging.DebuggingSettings r0 = r4.debugging
            r1 = 5
            net.thunderbird.core.preference.debugging.DebuggingSettings r9 = net.thunderbird.core.preference.debugging.DebuggingSettings.copy$default(r0, r3, r3, r3, r1)
            r10 = 0
            r11 = 95
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            net.thunderbird.core.preference.GeneralSettings r0 = net.thunderbird.core.preference.GeneralSettings.copy$default(r4, r5, r6, r7, r8, r9, r10, r11)
            com.fsck.k9.preferences.DefaultGeneralSettingsManager r12 = (com.fsck.k9.preferences.DefaultGeneralSettingsManager) r12
            r12.save(r0)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.job.SyncDebugWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
