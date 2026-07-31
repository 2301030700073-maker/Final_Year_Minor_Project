package expo.modules.updates.procedures;

import android.content.Context;
import expo.modules.updates.IUpdatesController;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.db.DatabaseHolder;
import expo.modules.updates.db.UpdatesDatabase;
import expo.modules.updates.db.entity.AssetEntity;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.loader.FileDownloader;
import expo.modules.updates.loader.Loader;
import expo.modules.updates.loader.RemoteLoader;
import expo.modules.updates.loader.UpdateDirective;
import expo.modules.updates.loader.UpdateResponse;
import expo.modules.updates.loader.UpdateResponsePart;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.ResponseHeaderData;
import expo.modules.updates.manifest.Update;
import expo.modules.updates.procedures.StateMachineProcedure;
import expo.modules.updates.selectionpolicy.SelectionPolicy;
import expo.modules.updates.statemachine.UpdatesStateEvent;
import io.sentry.SentryEvent;
import java.io.File;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: FetchUpdateProcedure.kt */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\u0016\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@¢\u0006\u0002\u0010\u001fJ\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0082@¢\u0006\u0002\u0010$J\u0018\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u0019X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006'"}, d2 = {"Lexpo/modules/updates/procedures/FetchUpdateProcedure;", "Lexpo/modules/updates/procedures/StateMachineProcedure;", "context", "Landroid/content/Context;", "updatesConfiguration", "Lexpo/modules/updates/UpdatesConfiguration;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "databaseHolder", "Lexpo/modules/updates/db/DatabaseHolder;", "updatesDirectory", "Ljava/io/File;", "fileDownloader", "Lexpo/modules/updates/loader/FileDownloader;", "selectionPolicy", "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", "launchedUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "callback", "Lkotlin/Function1;", "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;", "", "<init>", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/jvm/functions/Function1;)V", "loggerTimerLabel", "", "getLoggerTimerLabel", "()Ljava/lang/String;", "run", "procedureContext", "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;", "(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startRemoteLoader", "Lexpo/modules/updates/loader/Loader$LoaderResult;", "database", "Lexpo/modules/updates/db/UpdatesDatabase;", "(Lexpo/modules/updates/db/UpdatesDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processSuccessLoaderResult", "loaderResult", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FetchUpdateProcedure extends StateMachineProcedure {
    private final Function1<IUpdatesController.FetchUpdateResult, Unit> callback;
    private final Context context;
    private final DatabaseHolder databaseHolder;
    private final FileDownloader fileDownloader;
    private final UpdateEntity launchedUpdate;
    private final UpdatesLogger logger;
    private final String loggerTimerLabel;
    private final SelectionPolicy selectionPolicy;
    private final UpdatesConfiguration updatesConfiguration;
    private final File updatesDirectory;

    /* JADX WARN: Multi-variable type inference failed */
    public FetchUpdateProcedure(Context context, UpdatesConfiguration updatesConfiguration, UpdatesLogger logger, DatabaseHolder databaseHolder, File updatesDirectory, FileDownloader fileDownloader, SelectionPolicy selectionPolicy, UpdateEntity updateEntity, Function1<? super IUpdatesController.FetchUpdateResult, Unit> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(updatesConfiguration, "updatesConfiguration");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(databaseHolder, "databaseHolder");
        Intrinsics.checkNotNullParameter(updatesDirectory, "updatesDirectory");
        Intrinsics.checkNotNullParameter(fileDownloader, "fileDownloader");
        Intrinsics.checkNotNullParameter(selectionPolicy, "selectionPolicy");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.context = context;
        this.updatesConfiguration = updatesConfiguration;
        this.logger = logger;
        this.databaseHolder = databaseHolder;
        this.updatesDirectory = updatesDirectory;
        this.fileDownloader = fileDownloader;
        this.selectionPolicy = selectionPolicy;
        this.launchedUpdate = updateEntity;
        this.callback = callback;
        this.loggerTimerLabel = "timer-fetch-update";
    }

    @Override // expo.modules.updates.procedures.StateMachineProcedure
    public String getLoggerTimerLabel() {
        return this.loggerTimerLabel;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    @Override // expo.modules.updates.procedures.StateMachineProcedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object run(expo.modules.updates.procedures.StateMachineProcedure.ProcedureContext r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r8 = this;
            java.lang.String r0 = "Failed to download new update: "
            boolean r1 = r10 instanceof expo.modules.updates.procedures.FetchUpdateProcedure$run$1
            if (r1 == 0) goto L16
            r1 = r10
            expo.modules.updates.procedures.FetchUpdateProcedure$run$1 r1 = (expo.modules.updates.procedures.FetchUpdateProcedure$run$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 & r3
            if (r2 == 0) goto L16
            int r10 = r1.label
            int r10 = r10 - r3
            r1.label = r10
            goto L1b
        L16:
            expo.modules.updates.procedures.FetchUpdateProcedure$run$1 r1 = new expo.modules.updates.procedures.FetchUpdateProcedure$run$1
            r1.<init>(r8, r10)
        L1b:
            java.lang.Object r10 = r1.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.label
            r4 = 1
            if (r3 == 0) goto L3f
            if (r3 != r4) goto L37
            java.lang.Object r9 = r1.L$1
            expo.modules.updates.procedures.StateMachineProcedure$ProcedureContext r9 = (expo.modules.updates.procedures.StateMachineProcedure.ProcedureContext) r9
            java.lang.Object r1 = r1.L$0
            expo.modules.updates.procedures.FetchUpdateProcedure r1 = (expo.modules.updates.procedures.FetchUpdateProcedure) r1
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L34 java.lang.Throwable -> L69
            goto L60
        L34:
            r10 = move-exception
            r7 = r1
            goto L6d
        L37:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3f:
            kotlin.ResultKt.throwOnFailure(r10)
            expo.modules.updates.statemachine.UpdatesStateEvent$Download r10 = new expo.modules.updates.statemachine.UpdatesStateEvent$Download
            r10.<init>()
            expo.modules.updates.statemachine.UpdatesStateEvent r10 = (expo.modules.updates.statemachine.UpdatesStateEvent) r10
            r9.processStateEvent(r10)
            expo.modules.updates.db.DatabaseHolder r10 = r8.databaseHolder
            expo.modules.updates.db.UpdatesDatabase r10 = r10.getDatabase()
            r1.L$0 = r8     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r1.L$1 = r9     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r1.label = r4     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6b
            java.lang.Object r10 = r8.startRemoteLoader(r10, r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L6b
            if (r10 != r2) goto L5f
            return r2
        L5f:
            r1 = r8
        L60:
            expo.modules.updates.loader.Loader$LoaderResult r10 = (expo.modules.updates.loader.Loader.LoaderResult) r10     // Catch: java.lang.Exception -> L34 java.lang.Throwable -> L69
            r1.processSuccessLoaderResult(r10, r9)     // Catch: java.lang.Exception -> L34 java.lang.Throwable -> L69
        L65:
            r9.onComplete()
            goto L9e
        L69:
            r10 = move-exception
            goto La1
        L6b:
            r10 = move-exception
            r7 = r8
        L6d:
            expo.modules.updates.logging.UpdatesLogger r1 = r7.logger     // Catch: java.lang.Throwable -> L69
            java.lang.String r2 = "Failed to download new update"
            r5 = 4
            r6 = 0
            r4 = 0
            r3 = r10
            expo.modules.updates.logging.UpdatesLogger.error$default(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L69
            expo.modules.updates.statemachine.UpdatesStateEvent$DownloadError r1 = new expo.modules.updates.statemachine.UpdatesStateEvent$DownloadError     // Catch: java.lang.Throwable -> L69
            java.lang.String r2 = r10.getMessage()     // Catch: java.lang.Throwable -> L69
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L69
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L69
            java.lang.StringBuilder r0 = r3.append(r2)     // Catch: java.lang.Throwable -> L69
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L69
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L69
            expo.modules.updates.statemachine.UpdatesStateEvent r1 = (expo.modules.updates.statemachine.UpdatesStateEvent) r1     // Catch: java.lang.Throwable -> L69
            r9.processStateEvent(r1)     // Catch: java.lang.Throwable -> L69
            kotlin.jvm.functions.Function1<expo.modules.updates.IUpdatesController$FetchUpdateResult, kotlin.Unit> r0 = r7.callback     // Catch: java.lang.Throwable -> L69
            expo.modules.updates.IUpdatesController$FetchUpdateResult$ErrorResult r1 = new expo.modules.updates.IUpdatesController$FetchUpdateResult$ErrorResult     // Catch: java.lang.Throwable -> L69
            r1.<init>(r10)     // Catch: java.lang.Throwable -> L69
            r0.invoke(r1)     // Catch: java.lang.Throwable -> L69
            goto L65
        L9e:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        La1:
            r9.onComplete()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.procedures.FetchUpdateProcedure.run(expo.modules.updates.procedures.StateMachineProcedure$ProcedureContext, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void processSuccessLoaderResult(Loader.LoaderResult loaderResult, final StateMachineProcedure.ProcedureContext procedureContext) {
        RemoteLoader.INSTANCE.processSuccessLoaderResult(this.context, this.updatesConfiguration, this.logger, this.databaseHolder.getDatabase(), this.selectionPolicy, this.updatesDirectory, this.launchedUpdate, loaderResult, new Function2() { // from class: expo.modules.updates.procedures.FetchUpdateProcedure$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit processSuccessLoaderResult$lambda$1;
                processSuccessLoaderResult$lambda$1 = FetchUpdateProcedure.processSuccessLoaderResult$lambda$1(StateMachineProcedure.ProcedureContext.this, this, (UpdateEntity) obj, ((Boolean) obj2).booleanValue());
                return processSuccessLoaderResult$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit processSuccessLoaderResult$lambda$1(StateMachineProcedure.ProcedureContext procedureContext, FetchUpdateProcedure fetchUpdateProcedure, UpdateEntity updateEntity, boolean z) {
        if (z) {
            procedureContext.processStateEvent(new UpdatesStateEvent.DownloadCompleteWithRollback());
            fetchUpdateProcedure.callback.invoke(new IUpdatesController.FetchUpdateResult.RollBackToEmbedded());
        } else if (updateEntity == null) {
            procedureContext.processStateEvent(new UpdatesStateEvent.DownloadComplete());
            fetchUpdateProcedure.callback.invoke(new IUpdatesController.FetchUpdateResult.Failure());
        } else {
            procedureContext.processStateEvent(new UpdatesStateEvent.DownloadCompleteWithUpdate(updateEntity.getManifest()));
            fetchUpdateProcedure.callback.invoke(new IUpdatesController.FetchUpdateResult.Success(updateEntity));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object startRemoteLoader(UpdatesDatabase updatesDatabase, Continuation<? super Loader.LoaderResult> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        new RemoteLoader(this.context, this.updatesConfiguration, this.logger, updatesDatabase, this.fileDownloader, this.updatesDirectory, this.launchedUpdate).start(new Loader.LoaderCallback() { // from class: expo.modules.updates.procedures.FetchUpdateProcedure$startRemoteLoader$2$1
            @Override // expo.modules.updates.loader.Loader.LoaderCallback
            public void onAssetLoaded(AssetEntity asset, int successfulAssetCount, int failedAssetCount, int totalAssetCount) {
                Intrinsics.checkNotNullParameter(asset, "asset");
            }

            @Override // expo.modules.updates.loader.Loader.LoaderCallback
            public void onFailure(Exception e) {
                Intrinsics.checkNotNullParameter(e, "e");
                if (cancellableContinuationImpl2.isActive()) {
                    CancellableContinuation<Loader.LoaderResult> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m2098constructorimpl(ResultKt.createFailure(e)));
                }
            }

            @Override // expo.modules.updates.loader.Loader.LoaderCallback
            public Loader.OnUpdateResponseLoadedResult onUpdateResponseLoaded(UpdateResponse updateResponse) {
                Update update;
                SelectionPolicy selectionPolicy;
                Intrinsics.checkNotNullParameter(updateResponse, "updateResponse");
                UpdateResponsePart.DirectiveUpdateResponsePart directiveUpdateResponsePart = updateResponse.getDirectiveUpdateResponsePart();
                UpdateDirective updateDirective = directiveUpdateResponsePart != null ? directiveUpdateResponsePart.getUpdateDirective() : null;
                if (updateDirective != null) {
                    if ((updateDirective instanceof UpdateDirective.RollBackToEmbeddedUpdateDirective) || (updateDirective instanceof UpdateDirective.NoUpdateAvailableUpdateDirective)) {
                        return new Loader.OnUpdateResponseLoadedResult(false);
                    }
                    throw new NoWhenBranchMatchedException();
                }
                UpdateResponsePart.ManifestUpdateResponsePart manifestUpdateResponsePart = updateResponse.getManifestUpdateResponsePart();
                if (manifestUpdateResponsePart != null && (update = manifestUpdateResponsePart.getUpdate()) != null) {
                    selectionPolicy = this.selectionPolicy;
                    UpdateEntity updateEntity = update.getUpdateEntity();
                    UpdateEntity updateEntity2 = this.launchedUpdate;
                    ResponseHeaderData responseHeaderData = updateResponse.getResponseHeaderData();
                    return new Loader.OnUpdateResponseLoadedResult(selectionPolicy.shouldLoadNewUpdate(updateEntity, updateEntity2, responseHeaderData != null ? responseHeaderData.getManifestFilters() : null));
                }
                return new Loader.OnUpdateResponseLoadedResult(false);
            }

            @Override // expo.modules.updates.loader.Loader.LoaderCallback
            public void onSuccess(Loader.LoaderResult loaderResult) {
                Intrinsics.checkNotNullParameter(loaderResult, "loaderResult");
                if (cancellableContinuationImpl2.isActive()) {
                    CancellableContinuation<Loader.LoaderResult> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m2098constructorimpl(loaderResult));
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
