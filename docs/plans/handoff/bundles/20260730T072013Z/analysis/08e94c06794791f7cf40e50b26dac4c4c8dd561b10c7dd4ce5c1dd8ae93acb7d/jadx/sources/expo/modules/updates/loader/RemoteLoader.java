package expo.modules.updates.loader;

import android.content.Context;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.db.UpdatesDatabase;
import expo.modules.updates.db.dao.UpdateDao;
import expo.modules.updates.db.entity.AssetEntity;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.loader.FileDownloader;
import expo.modules.updates.loader.Loader;
import expo.modules.updates.loader.RemoteLoader;
import expo.modules.updates.loader.UpdateDirective;
import expo.modules.updates.logging.UpdatesErrorCode;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.EmbeddedManifestUtils;
import expo.modules.updates.manifest.EmbeddedUpdate;
import expo.modules.updates.manifest.ManifestMetadata;
import expo.modules.updates.manifest.Update;
import expo.modules.updates.selectionpolicy.SelectionPolicy;
import io.sentry.SentryEvent;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RemoteLoader.kt */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000  2\u00020\u0001:\u0001 BK\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013BC\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u0014\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0015J \u0010\u0016\u001a\u00020\u00172\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J>\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u001fH\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lexpo/modules/updates/loader/RemoteLoader;", "Lexpo/modules/updates/loader/Loader;", "context", "Landroid/content/Context;", "configuration", "Lexpo/modules/updates/UpdatesConfiguration;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "database", "Lexpo/modules/updates/db/UpdatesDatabase;", "mFileDownloader", "Lexpo/modules/updates/loader/FileDownloader;", "updatesDirectory", "Ljava/io/File;", "launchedUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "loaderFiles", "Lexpo/modules/updates/loader/LoaderFiles;", "<init>", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/loader/FileDownloader;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/LoaderFiles;)V", "fileDownloader", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/loader/FileDownloader;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;)V", "loadRemoteUpdate", "", "callback", "Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;", "loadAsset", "assetEntity", "Lexpo/modules/updates/db/entity/AssetEntity;", "requestedUpdate", "embeddedUpdate", "Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class RemoteLoader extends Loader {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "RemoteLoader";
    private final UpdateEntity launchedUpdate;
    private final LoaderFiles loaderFiles;
    private final FileDownloader mFileDownloader;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteLoader(Context context, UpdatesConfiguration configuration, UpdatesLogger logger, UpdatesDatabase database, FileDownloader mFileDownloader, File updatesDirectory, UpdateEntity updateEntity, LoaderFiles loaderFiles) {
        super(context, configuration, logger, database, updatesDirectory, loaderFiles);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(mFileDownloader, "mFileDownloader");
        Intrinsics.checkNotNullParameter(updatesDirectory, "updatesDirectory");
        Intrinsics.checkNotNullParameter(loaderFiles, "loaderFiles");
        this.mFileDownloader = mFileDownloader;
        this.launchedUpdate = updateEntity;
        this.loaderFiles = loaderFiles;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RemoteLoader(Context context, UpdatesConfiguration configuration, UpdatesLogger logger, UpdatesDatabase database, FileDownloader fileDownloader, File updatesDirectory, UpdateEntity updateEntity) {
        this(context, configuration, logger, database, fileDownloader, updatesDirectory, updateEntity, new LoaderFiles());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(fileDownloader, "fileDownloader");
        Intrinsics.checkNotNullParameter(updatesDirectory, "updatesDirectory");
    }

    @Override // expo.modules.updates.loader.Loader
    protected void loadRemoteUpdate(UpdatesDatabase database, UpdatesConfiguration configuration, FileDownloader.RemoteUpdateDownloadCallback callback) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Update readEmbeddedUpdate = this.loaderFiles.readEmbeddedUpdate(getContext(), configuration);
        this.mFileDownloader.downloadRemoteUpdate(FileDownloader.INSTANCE.getExtraHeadersForRemoteUpdateRequest(database, configuration, this.launchedUpdate, readEmbeddedUpdate != null ? readEmbeddedUpdate.getUpdateEntity() : null), callback);
    }

    @Override // expo.modules.updates.loader.Loader
    protected void loadAsset(AssetEntity assetEntity, File updatesDirectory, UpdatesConfiguration configuration, UpdateEntity requestedUpdate, UpdateEntity embeddedUpdate, FileDownloader.AssetDownloadCallback callback) {
        Intrinsics.checkNotNullParameter(assetEntity, "assetEntity");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.mFileDownloader.downloadAsset(assetEntity, updatesDirectory, FileDownloader.INSTANCE.getExtraHeadersForRemoteAssetRequest(this.launchedUpdate, embeddedUpdate, requestedUpdate), callback);
    }

    /* compiled from: RemoteLoader.kt */
    @Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0082\u0001\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u001928\u0010\u001a\u001a4\u0012\u0015\u0012\u0013\u0018\u00010\u0017¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\t0\u001bJm\u0010!\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\"\u001a\u00020#2!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\t0$H\u0002R\u0018\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006%"}, d2 = {"Lexpo/modules/updates/loader/RemoteLoader$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "processSuccessLoaderResult", "", "context", "Landroid/content/Context;", "configuration", "Lexpo/modules/updates/UpdatesConfiguration;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "database", "Lexpo/modules/updates/db/UpdatesDatabase;", "selectionPolicy", "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", "directory", "Ljava/io/File;", "launchedUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "loaderResult", "Lexpo/modules/updates/loader/Loader$LoaderResult;", "onComplete", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "availableUpdate", "", "didRollBackToEmbedded", "processRollBackToEmbeddedDirective", "updateDirective", "Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;", "Lkotlin/Function1;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void processSuccessLoaderResult(Context context, UpdatesConfiguration configuration, UpdatesLogger logger, UpdatesDatabase database, SelectionPolicy selectionPolicy, File directory, UpdateEntity launchedUpdate, Loader.LoaderResult loaderResult, final Function2<? super UpdateEntity, ? super Boolean, Unit> onComplete) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            Intrinsics.checkNotNullParameter(logger, "logger");
            Intrinsics.checkNotNullParameter(database, "database");
            Intrinsics.checkNotNullParameter(selectionPolicy, "selectionPolicy");
            Intrinsics.checkNotNullParameter(directory, "directory");
            Intrinsics.checkNotNullParameter(loaderResult, "loaderResult");
            Intrinsics.checkNotNullParameter(onComplete, "onComplete");
            UpdateEntity updateEntity = loaderResult.getUpdateEntity();
            UpdateDirective updateDirective = loaderResult.getUpdateDirective();
            if (updateDirective != null && (updateDirective instanceof UpdateDirective.RollBackToEmbeddedUpdateDirective)) {
                processRollBackToEmbeddedDirective(context, configuration, logger, database, selectionPolicy, directory, launchedUpdate, (UpdateDirective.RollBackToEmbeddedUpdateDirective) updateDirective, new Function1() { // from class: expo.modules.updates.loader.RemoteLoader$Companion$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit processSuccessLoaderResult$lambda$0;
                        processSuccessLoaderResult$lambda$0 = RemoteLoader.Companion.processSuccessLoaderResult$lambda$0(Function2.this, ((Boolean) obj).booleanValue());
                        return processSuccessLoaderResult$lambda$0;
                    }
                });
            } else {
                onComplete.invoke(updateEntity, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit processSuccessLoaderResult$lambda$0(Function2 function2, boolean z) {
            function2.invoke(null, Boolean.valueOf(z));
            return Unit.INSTANCE;
        }

        private final void processRollBackToEmbeddedDirective(Context context, UpdatesConfiguration configuration, final UpdatesLogger logger, final UpdatesDatabase database, SelectionPolicy selectionPolicy, File directory, UpdateEntity launchedUpdate, final UpdateDirective.RollBackToEmbeddedUpdateDirective updateDirective, final Function1<? super Boolean, Unit> onComplete) {
            if (!configuration.getHasEmbeddedUpdate()) {
                onComplete.invoke(false);
                return;
            }
            EmbeddedUpdate embeddedUpdate = EmbeddedManifestUtils.INSTANCE.getEmbeddedUpdate(context, configuration);
            Intrinsics.checkNotNull(embeddedUpdate);
            UpdateEntity updateEntity = embeddedUpdate.getUpdateEntity();
            if (!selectionPolicy.shouldLoadRollBackToEmbeddedDirective(updateDirective, updateEntity, launchedUpdate, ManifestMetadata.INSTANCE.getManifestFilters(database, configuration))) {
                onComplete.invoke(false);
            } else {
                updateEntity.setCommitTime(updateDirective.getCommitTime());
                new EmbeddedLoader(context, configuration, logger, database, directory).start(new Loader.LoaderCallback() { // from class: expo.modules.updates.loader.RemoteLoader$Companion$processRollBackToEmbeddedDirective$1
                    @Override // expo.modules.updates.loader.Loader.LoaderCallback
                    public void onAssetLoaded(AssetEntity asset, int successfulAssetCount, int failedAssetCount, int totalAssetCount) {
                        Intrinsics.checkNotNullParameter(asset, "asset");
                    }

                    @Override // expo.modules.updates.loader.Loader.LoaderCallback
                    public void onFailure(Exception e) {
                        Intrinsics.checkNotNullParameter(e, "e");
                        UpdatesLogger.this.error("Embedded update erroneously null when applying roll back to embedded directive", e, UpdatesErrorCode.UpdateFailedToLoad);
                        onComplete.invoke(false);
                    }

                    @Override // expo.modules.updates.loader.Loader.LoaderCallback
                    public void onSuccess(Loader.LoaderResult loaderResult) {
                        Intrinsics.checkNotNullParameter(loaderResult, "loaderResult");
                        UpdateEntity updateEntity2 = loaderResult.getUpdateEntity();
                        UpdateDao updateDao = database.updateDao();
                        Intrinsics.checkNotNull(updateEntity2);
                        updateDao.setUpdateCommitTime(updateEntity2, updateDirective.getCommitTime());
                        onComplete.invoke(true);
                    }

                    @Override // expo.modules.updates.loader.Loader.LoaderCallback
                    public Loader.OnUpdateResponseLoadedResult onUpdateResponseLoaded(UpdateResponse updateResponse) {
                        Intrinsics.checkNotNullParameter(updateResponse, "updateResponse");
                        return new Loader.OnUpdateResponseLoadedResult(true);
                    }
                });
            }
        }
    }
}
