package expo.modules.updates.loader;

import android.content.Context;
import com.facebook.common.util.UriUtil;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.db.UpdatesDatabase;
import expo.modules.updates.db.entity.AssetEntity;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.launcher.DatabaseLauncher;
import expo.modules.updates.launcher.Launcher;
import expo.modules.updates.loader.Loader;
import expo.modules.updates.loader.LoaderTask;
import expo.modules.updates.loader.RemoteLoader;
import expo.modules.updates.loader.UpdateDirective;
import expo.modules.updates.loader.UpdateResponsePart;
import expo.modules.updates.logging.UpdatesErrorCode;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.ResponseHeaderData;
import expo.modules.updates.manifest.Update;
import expo.modules.updates.selectionpolicy.SelectionPolicy;
import java.io.File;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;

/* compiled from: LoaderTask.kt */
@Metadata(d1 = {"\u0000G\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J(\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002¨\u0006\u0018"}, d2 = {"expo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1", "Lexpo/modules/updates/loader/Loader$LoaderCallback;", "onFailure", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onAssetLoaded", UriUtil.LOCAL_ASSET_SCHEME, "Lexpo/modules/updates/db/entity/AssetEntity;", "successfulAssetCount", "", "failedAssetCount", "totalAssetCount", "onUpdateResponseLoaded", "Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;", "updateResponse", "Lexpo/modules/updates/loader/UpdateResponse;", "onSuccess", "loaderResult", "Lexpo/modules/updates/loader/Loader$LoaderResult;", "launchUpdate", "availableUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class LoaderTask$launchRemoteUpdateInBackground$2$1 implements Loader.LoaderCallback {
    final /* synthetic */ CancellableContinuation<Unit> $continuation;
    final /* synthetic */ UpdatesDatabase $database;
    final /* synthetic */ LoaderTask this$0;

    /* JADX WARN: Multi-variable type inference failed */
    LoaderTask$launchRemoteUpdateInBackground$2$1(LoaderTask loaderTask, CancellableContinuation<? super Unit> cancellableContinuation, UpdatesDatabase updatesDatabase) {
        this.this$0 = loaderTask;
        this.$continuation = cancellableContinuation;
        this.$database = updatesDatabase;
    }

    @Override // expo.modules.updates.loader.Loader.LoaderCallback
    public void onFailure(Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.this$0.callback.onRemoteUpdateFinished(LoaderTask.RemoteUpdateStatus.ERROR, null, e);
        this.this$0.logger.error("Failed to download remote update", e, UpdatesErrorCode.UpdateFailedToLoad);
        CancellableContinuation<Unit> cancellableContinuation = this.$continuation;
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m2098constructorimpl(ResultKt.createFailure(e)));
    }

    @Override // expo.modules.updates.loader.Loader.LoaderCallback
    public void onAssetLoaded(AssetEntity asset, int successfulAssetCount, int failedAssetCount, int totalAssetCount) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        this.this$0.callback.onRemoteUpdateAssetLoaded(asset, successfulAssetCount, failedAssetCount, totalAssetCount);
    }

    @Override // expo.modules.updates.loader.Loader.LoaderCallback
    public Loader.OnUpdateResponseLoadedResult onUpdateResponseLoaded(UpdateResponse updateResponse) {
        Intrinsics.checkNotNullParameter(updateResponse, "updateResponse");
        UpdateResponsePart.DirectiveUpdateResponsePart directiveUpdateResponsePart = updateResponse.getDirectiveUpdateResponsePart();
        UpdateDirective updateDirective = directiveUpdateResponsePart != null ? directiveUpdateResponsePart.getUpdateDirective() : null;
        if (updateDirective != null) {
            if (updateDirective instanceof UpdateDirective.RollBackToEmbeddedUpdateDirective) {
                this.this$0.isUpToDate = true;
                this.this$0.callback.onRemoteCheckForUpdateFinished(new LoaderTask.RemoteCheckResult.RollBackToEmbedded(((UpdateDirective.RollBackToEmbeddedUpdateDirective) updateDirective).getCommitTime()));
                return new Loader.OnUpdateResponseLoadedResult(false);
            }
            if (updateDirective instanceof UpdateDirective.NoUpdateAvailableUpdateDirective) {
                this.this$0.isUpToDate = true;
                this.this$0.callback.onRemoteCheckForUpdateFinished(new LoaderTask.RemoteCheckResult.NoUpdateAvailable(LoaderTask.RemoteCheckResultNotAvailableReason.NO_UPDATE_AVAILABLE_ON_SERVER));
                return new Loader.OnUpdateResponseLoadedResult(false);
            }
            throw new NoWhenBranchMatchedException();
        }
        UpdateResponsePart.ManifestUpdateResponsePart manifestUpdateResponsePart = updateResponse.getManifestUpdateResponsePart();
        Update update = manifestUpdateResponsePart != null ? manifestUpdateResponsePart.getUpdate() : null;
        if (update == null) {
            this.this$0.isUpToDate = true;
            this.this$0.callback.onRemoteCheckForUpdateFinished(new LoaderTask.RemoteCheckResult.NoUpdateAvailable(LoaderTask.RemoteCheckResultNotAvailableReason.NO_UPDATE_AVAILABLE_ON_SERVER));
            return new Loader.OnUpdateResponseLoadedResult(false);
        }
        SelectionPolicy selectionPolicy = this.this$0.selectionPolicy;
        UpdateEntity updateEntity = update.getUpdateEntity();
        Launcher launcher = this.this$0.candidateLauncher;
        UpdateEntity launchedUpdate = launcher != null ? launcher.getLaunchedUpdate() : null;
        ResponseHeaderData responseHeaderData = updateResponse.getResponseHeaderData();
        if (selectionPolicy.shouldLoadNewUpdate(updateEntity, launchedUpdate, responseHeaderData != null ? responseHeaderData.getManifestFilters() : null)) {
            this.this$0.isUpToDate = false;
            this.this$0.callback.onRemoteUpdateManifestResponseUpdateLoaded(update);
            this.this$0.callback.onRemoteCheckForUpdateFinished(new LoaderTask.RemoteCheckResult.UpdateAvailable(update.getManifest().getRawJson()));
            this.this$0.callback.onRemoteUpdateLoadStarted();
            return new Loader.OnUpdateResponseLoadedResult(true);
        }
        this.this$0.isUpToDate = true;
        this.this$0.callback.onRemoteCheckForUpdateFinished(new LoaderTask.RemoteCheckResult.NoUpdateAvailable(LoaderTask.RemoteCheckResultNotAvailableReason.UPDATE_REJECTED_BY_SELECTION_POLICY));
        return new Loader.OnUpdateResponseLoadedResult(false);
    }

    @Override // expo.modules.updates.loader.Loader.LoaderCallback
    public void onSuccess(Loader.LoaderResult loaderResult) {
        Intrinsics.checkNotNullParameter(loaderResult, "loaderResult");
        RemoteLoader.Companion companion = RemoteLoader.INSTANCE;
        Context context = this.this$0.context;
        UpdatesConfiguration updatesConfiguration = this.this$0.configuration;
        UpdatesLogger updatesLogger = this.this$0.logger;
        UpdatesDatabase updatesDatabase = this.$database;
        SelectionPolicy selectionPolicy = this.this$0.selectionPolicy;
        File file = this.this$0.directory;
        Launcher launcher = this.this$0.candidateLauncher;
        companion.processSuccessLoaderResult(context, updatesConfiguration, updatesLogger, updatesDatabase, selectionPolicy, file, launcher != null ? launcher.getLaunchedUpdate() : null, loaderResult, new Function2<UpdateEntity, Boolean, Unit>() { // from class: expo.modules.updates.loader.LoaderTask$launchRemoteUpdateInBackground$2$1$onSuccess$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(UpdateEntity updateEntity, Boolean bool) {
                invoke(updateEntity, bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(UpdateEntity updateEntity, boolean z) {
                LoaderTask$launchRemoteUpdateInBackground$2$1.this.launchUpdate(updateEntity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void launchUpdate(final UpdateEntity availableUpdate) {
        final DatabaseLauncher databaseLauncher = new DatabaseLauncher(this.this$0.context, this.this$0.configuration, this.this$0.directory, this.this$0.fileDownloader, this.this$0.selectionPolicy, this.this$0.logger, false, 64, null);
        UpdatesDatabase updatesDatabase = this.$database;
        final LoaderTask loaderTask = this.this$0;
        final CancellableContinuation<Unit> cancellableContinuation = this.$continuation;
        databaseLauncher.launch(updatesDatabase, new Launcher.LauncherCallback() { // from class: expo.modules.updates.loader.LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1
            @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
            public void onFailure(Exception e) {
                Intrinsics.checkNotNullParameter(e, "e");
                LoaderTask.this.callback.onRemoteUpdateFinished(LoaderTask.RemoteUpdateStatus.ERROR, null, e);
                CancellableContinuation<Unit> cancellableContinuation2 = cancellableContinuation;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation2.resumeWith(Result.m2098constructorimpl(ResultKt.createFailure(e)));
                LoaderTask.this.logger.error("Loaded new update but it failed to launch", e, UpdatesErrorCode.UpdateFailedToLoad);
            }

            @Override // expo.modules.updates.launcher.Launcher.LauncherCallback
            public void onSuccess() {
                boolean z;
                LoaderTask loaderTask2 = LoaderTask.this;
                DatabaseLauncher databaseLauncher2 = databaseLauncher;
                synchronized (loaderTask2) {
                    z = loaderTask2.hasLaunched;
                    if (!z) {
                        loaderTask2.candidateLauncher = databaseLauncher2;
                        loaderTask2.isUpToDate = true;
                    }
                    Unit unit = Unit.INSTANCE;
                }
                if (availableUpdate == null) {
                    LoaderTask.this.callback.onRemoteUpdateFinished(LoaderTask.RemoteUpdateStatus.NO_UPDATE_AVAILABLE, null, null);
                } else {
                    LoaderTask.this.callback.onRemoteUpdateFinished(LoaderTask.RemoteUpdateStatus.UPDATE_AVAILABLE, availableUpdate, null);
                }
                CancellableContinuation<Unit> cancellableContinuation2 = cancellableContinuation;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation2.resumeWith(Result.m2098constructorimpl(Unit.INSTANCE));
            }
        });
    }
}
