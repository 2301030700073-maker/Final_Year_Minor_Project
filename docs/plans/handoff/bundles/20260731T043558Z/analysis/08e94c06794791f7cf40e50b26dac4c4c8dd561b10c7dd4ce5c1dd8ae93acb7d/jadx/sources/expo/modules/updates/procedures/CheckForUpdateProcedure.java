package expo.modules.updates.procedures;

import android.content.Context;
import expo.modules.updates.IUpdatesController;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.db.DatabaseHolder;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.loader.FileDownloader;
import expo.modules.updates.loader.LoaderTask;
import expo.modules.updates.loader.UpdateDirective;
import expo.modules.updates.loader.UpdateResponse;
import expo.modules.updates.loader.UpdateResponsePart;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.ResponseHeaderData;
import expo.modules.updates.manifest.Update;
import expo.modules.updates.procedures.StateMachineProcedure;
import expo.modules.updates.selectionpolicy.SelectionPolicy;
import expo.modules.updates.statemachine.UpdatesStateEvent;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.json.JSONObject;

/* compiled from: CheckForUpdateProcedure.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@¢\u0006\u0002\u0010\u001dJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0082@¢\u0006\u0002\u0010\"J\"\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010%\u001a\u0004\u0018\u00010\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006&"}, d2 = {"Lexpo/modules/updates/procedures/CheckForUpdateProcedure;", "Lexpo/modules/updates/procedures/StateMachineProcedure;", "context", "Landroid/content/Context;", "updatesConfiguration", "Lexpo/modules/updates/UpdatesConfiguration;", "databaseHolder", "Lexpo/modules/updates/db/DatabaseHolder;", "updatesLogger", "Lexpo/modules/updates/logging/UpdatesLogger;", "fileDownloader", "Lexpo/modules/updates/loader/FileDownloader;", "selectionPolicy", "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", "launchedUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "callback", "Lkotlin/Function1;", "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;", "", "<init>", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/jvm/functions/Function1;)V", "loggerTimerLabel", "", "getLoggerTimerLabel", "()Ljava/lang/String;", "run", "procedureContext", "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;", "(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "downloadRemoteUpdate", "Lexpo/modules/updates/loader/UpdateResponse;", "extraHeaders", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processUpdatesResponse", "updateResponse", "embeddedUpdate", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class CheckForUpdateProcedure extends StateMachineProcedure {
    private final Function1<IUpdatesController.CheckForUpdateResult, Unit> callback;
    private final Context context;
    private final DatabaseHolder databaseHolder;
    private final FileDownloader fileDownloader;
    private final UpdateEntity launchedUpdate;
    private final String loggerTimerLabel;
    private final SelectionPolicy selectionPolicy;
    private final UpdatesConfiguration updatesConfiguration;
    private final UpdatesLogger updatesLogger;

    /* JADX WARN: Multi-variable type inference failed */
    public CheckForUpdateProcedure(Context context, UpdatesConfiguration updatesConfiguration, DatabaseHolder databaseHolder, UpdatesLogger updatesLogger, FileDownloader fileDownloader, SelectionPolicy selectionPolicy, UpdateEntity updateEntity, Function1<? super IUpdatesController.CheckForUpdateResult, Unit> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(updatesConfiguration, "updatesConfiguration");
        Intrinsics.checkNotNullParameter(databaseHolder, "databaseHolder");
        Intrinsics.checkNotNullParameter(updatesLogger, "updatesLogger");
        Intrinsics.checkNotNullParameter(fileDownloader, "fileDownloader");
        Intrinsics.checkNotNullParameter(selectionPolicy, "selectionPolicy");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.context = context;
        this.updatesConfiguration = updatesConfiguration;
        this.databaseHolder = databaseHolder;
        this.updatesLogger = updatesLogger;
        this.fileDownloader = fileDownloader;
        this.selectionPolicy = selectionPolicy;
        this.launchedUpdate = updateEntity;
        this.callback = callback;
        this.loggerTimerLabel = "timer-check-for-update";
    }

    @Override // expo.modules.updates.procedures.StateMachineProcedure
    public String getLoggerTimerLabel() {
        return this.loggerTimerLabel;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|1|(2:3|(7:5|6|(1:(4:9|10|11|12)(2:25|26))(6:27|(1:29)(1:39)|30|31|32|(1:34)(1:35))|13|14|15|16))|40|6|(0)(0)|13|14|15|16|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008a, code lost:
    
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008b, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // expo.modules.updates.procedures.StateMachineProcedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object run(expo.modules.updates.procedures.StateMachineProcedure.ProcedureContext r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof expo.modules.updates.procedures.CheckForUpdateProcedure$run$1
            if (r0 == 0) goto L14
            r0 = r10
            expo.modules.updates.procedures.CheckForUpdateProcedure$run$1 r0 = (expo.modules.updates.procedures.CheckForUpdateProcedure$run$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            expo.modules.updates.procedures.CheckForUpdateProcedure$run$1 r0 = new expo.modules.updates.procedures.CheckForUpdateProcedure$run$1
            r0.<init>(r8, r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L45
            if (r2 != r3) goto L3d
            java.lang.Object r9 = r0.L$2
            expo.modules.updates.db.entity.UpdateEntity r9 = (expo.modules.updates.db.entity.UpdateEntity) r9
            java.lang.Object r1 = r0.L$1
            expo.modules.updates.procedures.StateMachineProcedure$ProcedureContext r1 = (expo.modules.updates.procedures.StateMachineProcedure.ProcedureContext) r1
            java.lang.Object r0 = r0.L$0
            expo.modules.updates.procedures.CheckForUpdateProcedure r0 = (expo.modules.updates.procedures.CheckForUpdateProcedure) r0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L3b
            r7 = r10
            r10 = r9
            r9 = r1
            r1 = r0
            r0 = r7
            goto L84
        L3b:
            r9 = move-exception
            goto L91
        L3d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L45:
            kotlin.ResultKt.throwOnFailure(r10)
            expo.modules.updates.statemachine.UpdatesStateEvent$Check r10 = new expo.modules.updates.statemachine.UpdatesStateEvent$Check
            r10.<init>()
            expo.modules.updates.statemachine.UpdatesStateEvent r10 = (expo.modules.updates.statemachine.UpdatesStateEvent) r10
            r9.processStateEvent(r10)
            expo.modules.updates.manifest.EmbeddedManifestUtils r10 = expo.modules.updates.manifest.EmbeddedManifestUtils.INSTANCE
            android.content.Context r2 = r8.context
            expo.modules.updates.UpdatesConfiguration r4 = r8.updatesConfiguration
            expo.modules.updates.manifest.EmbeddedUpdate r10 = r10.getEmbeddedUpdate(r2, r4)
            if (r10 == 0) goto L63
            expo.modules.updates.db.entity.UpdateEntity r10 = r10.getUpdateEntity()
            goto L64
        L63:
            r10 = 0
        L64:
            expo.modules.updates.loader.FileDownloader$Companion r2 = expo.modules.updates.loader.FileDownloader.INSTANCE
            expo.modules.updates.db.DatabaseHolder r4 = r8.databaseHolder
            expo.modules.updates.db.UpdatesDatabase r4 = r4.getDatabase()
            expo.modules.updates.UpdatesConfiguration r5 = r8.updatesConfiguration
            expo.modules.updates.db.entity.UpdateEntity r6 = r8.launchedUpdate
            org.json.JSONObject r2 = r2.getExtraHeadersForRemoteUpdateRequest(r4, r5, r6, r10)
            r0.L$0 = r8     // Catch: java.lang.Exception -> L8d
            r0.L$1 = r9     // Catch: java.lang.Exception -> L8d
            r0.L$2 = r10     // Catch: java.lang.Exception -> L8d
            r0.label = r3     // Catch: java.lang.Exception -> L8d
            java.lang.Object r0 = r8.downloadRemoteUpdate(r2, r0)     // Catch: java.lang.Exception -> L8d
            if (r0 != r1) goto L83
            return r1
        L83:
            r1 = r8
        L84:
            expo.modules.updates.loader.UpdateResponse r0 = (expo.modules.updates.loader.UpdateResponse) r0     // Catch: java.lang.Exception -> L8a
            r1.processUpdatesResponse(r0, r9, r10)     // Catch: java.lang.Exception -> L8a
            goto Laf
        L8a:
            r10 = move-exception
            r0 = r1
            goto L8f
        L8d:
            r10 = move-exception
            r0 = r8
        L8f:
            r1 = r9
            r9 = r10
        L91:
            expo.modules.updates.statemachine.UpdatesStateEvent$CheckError r10 = new expo.modules.updates.statemachine.UpdatesStateEvent$CheckError
            r2 = r9
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            java.lang.String r2 = expo.modules.core.logging.LoggerUtilsKt.localizedMessageWithCauseLocalizedMessage(r2)
            r10.<init>(r2)
            expo.modules.updates.statemachine.UpdatesStateEvent r10 = (expo.modules.updates.statemachine.UpdatesStateEvent) r10
            r1.processStateEvent(r10)
            kotlin.jvm.functions.Function1<expo.modules.updates.IUpdatesController$CheckForUpdateResult, kotlin.Unit> r10 = r0.callback
            expo.modules.updates.IUpdatesController$CheckForUpdateResult$ErrorResult r0 = new expo.modules.updates.IUpdatesController$CheckForUpdateResult$ErrorResult
            r0.<init>(r9)
            r10.invoke(r0)
            r1.onComplete()
        Laf:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: expo.modules.updates.procedures.CheckForUpdateProcedure.run(expo.modules.updates.procedures.StateMachineProcedure$ProcedureContext, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void processUpdatesResponse(UpdateResponse updateResponse, StateMachineProcedure.ProcedureContext procedureContext, UpdateEntity embeddedUpdate) {
        boolean z;
        LoaderTask.RemoteCheckResultNotAvailableReason remoteCheckResultNotAvailableReason;
        boolean z2;
        UpdateResponsePart.DirectiveUpdateResponsePart directiveUpdateResponsePart = updateResponse.getDirectiveUpdateResponsePart();
        UpdateDirective updateDirective = directiveUpdateResponsePart != null ? directiveUpdateResponsePart.getUpdateDirective() : null;
        UpdateResponsePart.ManifestUpdateResponsePart manifestUpdateResponsePart = updateResponse.getManifestUpdateResponsePart();
        Update update = manifestUpdateResponsePart != null ? manifestUpdateResponsePart.getUpdate() : null;
        if (updateDirective != null) {
            if (updateDirective instanceof UpdateDirective.NoUpdateAvailableUpdateDirective) {
                procedureContext.processStateEvent(new UpdatesStateEvent.CheckCompleteUnavailable());
                this.callback.invoke(new IUpdatesController.CheckForUpdateResult.NoUpdateAvailable(LoaderTask.RemoteCheckResultNotAvailableReason.NO_UPDATE_AVAILABLE_ON_SERVER));
                procedureContext.onComplete();
                return;
            }
            if (!(updateDirective instanceof UpdateDirective.RollBackToEmbeddedUpdateDirective)) {
                throw new NoWhenBranchMatchedException();
            }
            if (!this.updatesConfiguration.getHasEmbeddedUpdate()) {
                procedureContext.processStateEvent(new UpdatesStateEvent.CheckCompleteUnavailable());
                this.callback.invoke(new IUpdatesController.CheckForUpdateResult.NoUpdateAvailable(LoaderTask.RemoteCheckResultNotAvailableReason.ROLLBACK_NO_EMBEDDED));
                procedureContext.onComplete();
                return;
            }
            if (embeddedUpdate == null) {
                procedureContext.processStateEvent(new UpdatesStateEvent.CheckCompleteUnavailable());
                this.callback.invoke(new IUpdatesController.CheckForUpdateResult.NoUpdateAvailable(LoaderTask.RemoteCheckResultNotAvailableReason.ROLLBACK_NO_EMBEDDED));
                procedureContext.onComplete();
                return;
            }
            SelectionPolicy selectionPolicy = this.selectionPolicy;
            UpdateDirective.RollBackToEmbeddedUpdateDirective rollBackToEmbeddedUpdateDirective = (UpdateDirective.RollBackToEmbeddedUpdateDirective) updateDirective;
            UpdateEntity updateEntity = this.launchedUpdate;
            ResponseHeaderData responseHeaderData = updateResponse.getResponseHeaderData();
            if (!selectionPolicy.shouldLoadRollBackToEmbeddedDirective(rollBackToEmbeddedUpdateDirective, embeddedUpdate, updateEntity, responseHeaderData != null ? responseHeaderData.getManifestFilters() : null)) {
                procedureContext.processStateEvent(new UpdatesStateEvent.CheckCompleteUnavailable());
                this.callback.invoke(new IUpdatesController.CheckForUpdateResult.NoUpdateAvailable(LoaderTask.RemoteCheckResultNotAvailableReason.ROLLBACK_REJECTED_BY_SELECTION_POLICY));
                procedureContext.onComplete();
                return;
            } else {
                procedureContext.processStateEvent(new UpdatesStateEvent.CheckCompleteWithRollback(rollBackToEmbeddedUpdateDirective.getCommitTime()));
                this.callback.invoke(new IUpdatesController.CheckForUpdateResult.RollBackToEmbedded(rollBackToEmbeddedUpdateDirective.getCommitTime()));
                procedureContext.onComplete();
                return;
            }
        }
        if (update == null) {
            procedureContext.processStateEvent(new UpdatesStateEvent.CheckCompleteUnavailable());
            this.callback.invoke(new IUpdatesController.CheckForUpdateResult.NoUpdateAvailable(LoaderTask.RemoteCheckResultNotAvailableReason.NO_UPDATE_AVAILABLE_ON_SERVER));
            procedureContext.onComplete();
            return;
        }
        if (this.launchedUpdate == null) {
            procedureContext.processStateEvent(new UpdatesStateEvent.CheckCompleteWithUpdate(update.getManifest().getRawJson()));
            this.callback.invoke(new IUpdatesController.CheckForUpdateResult.UpdateAvailable(update));
            procedureContext.onComplete();
            return;
        }
        SelectionPolicy selectionPolicy2 = this.selectionPolicy;
        UpdateEntity updateEntity2 = update.getUpdateEntity();
        UpdateEntity updateEntity3 = this.launchedUpdate;
        ResponseHeaderData responseHeaderData2 = updateResponse.getResponseHeaderData();
        boolean shouldLoadNewUpdate = selectionPolicy2.shouldLoadNewUpdate(updateEntity2, updateEntity3, responseHeaderData2 != null ? responseHeaderData2.getManifestFilters() : null);
        if (shouldLoadNewUpdate) {
            UpdateEntity updateEntity4 = update.getUpdateEntity();
            if (updateEntity4 != null) {
                UpdateEntity loadUpdateWithId = this.databaseHolder.getDatabase().updateDao().loadUpdateWithId(updateEntity4.getId());
                if (loadUpdateWithId != null) {
                    r11 = loadUpdateWithId.getFailedLaunchCount() == 0;
                    UpdatesLogger.info$default(this.updatesLogger, "Stored update found: ID = " + updateEntity4.getId() + ", failureCount = " + loadUpdateWithId.getFailedLaunchCount(), null, 2, null);
                    boolean z3 = r11;
                    r11 = !r11;
                    z2 = z3;
                } else {
                    z2 = true;
                }
                boolean z4 = r11;
                r11 = z2;
                z = z4;
            } else {
                z = false;
                r11 = true;
            }
        } else {
            z = false;
        }
        if (r11) {
            procedureContext.processStateEvent(new UpdatesStateEvent.CheckCompleteWithUpdate(update.getManifest().getRawJson()));
            this.callback.invoke(new IUpdatesController.CheckForUpdateResult.UpdateAvailable(update));
            procedureContext.onComplete();
        } else {
            if (z) {
                remoteCheckResultNotAvailableReason = LoaderTask.RemoteCheckResultNotAvailableReason.UPDATE_PREVIOUSLY_FAILED;
            } else {
                remoteCheckResultNotAvailableReason = LoaderTask.RemoteCheckResultNotAvailableReason.UPDATE_REJECTED_BY_SELECTION_POLICY;
            }
            procedureContext.processStateEvent(new UpdatesStateEvent.CheckCompleteUnavailable());
            this.callback.invoke(new IUpdatesController.CheckForUpdateResult.NoUpdateAvailable(remoteCheckResultNotAvailableReason));
            procedureContext.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object downloadRemoteUpdate(JSONObject jSONObject, Continuation<? super UpdateResponse> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        this.fileDownloader.downloadRemoteUpdate(jSONObject, new FileDownloader.RemoteUpdateDownloadCallback() { // from class: expo.modules.updates.procedures.CheckForUpdateProcedure$downloadRemoteUpdate$2$1
            @Override // expo.modules.updates.loader.FileDownloader.RemoteUpdateDownloadCallback
            public void onFailure(Exception e) {
                Intrinsics.checkNotNullParameter(e, "e");
                if (cancellableContinuationImpl2.isActive()) {
                    CancellableContinuation<UpdateResponse> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m2098constructorimpl(ResultKt.createFailure(e)));
                }
            }

            @Override // expo.modules.updates.loader.FileDownloader.RemoteUpdateDownloadCallback
            public void onSuccess(UpdateResponse updateResponse) {
                Intrinsics.checkNotNullParameter(updateResponse, "updateResponse");
                if (cancellableContinuationImpl2.isActive()) {
                    CancellableContinuation<UpdateResponse> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m2098constructorimpl(updateResponse));
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
