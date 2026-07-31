package expo.modules.updates.launcher;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.util.UriUtil;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.UpdatesUtils;
import expo.modules.updates.db.UpdatesDatabase;
import expo.modules.updates.db.dao.AssetDao;
import expo.modules.updates.db.dao.UpdateDao;
import expo.modules.updates.db.entity.AssetEntity;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.db.enums.UpdateStatus;
import expo.modules.updates.launcher.Launcher;
import expo.modules.updates.loader.FileDownloader;
import expo.modules.updates.loader.LoaderFiles;
import expo.modules.updates.logging.UpdatesErrorCode;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.EmbeddedManifestUtils;
import expo.modules.updates.manifest.EmbeddedUpdate;
import expo.modules.updates.manifest.ManifestMetadata;
import expo.modules.updates.selectionpolicy.SelectionPolicy;
import expo.modules.updates.utils.AndroidResourceAssetUtils;
import io.sentry.SentryEvent;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* compiled from: DatabaseLauncher.kt */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 <2\u00020\u0001:\u0001<BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\b\u0010,\u001a\u0004\u0018\u00010-J\u0010\u00102\u001a\u0004\u0018\u00010\u00152\u0006\u00100\u001a\u000201J\u0014\u00103\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00190\u001fH\u0002J,\u00104\u001a\u0004\u0018\u00010\u00072\u0006\u00105\u001a\u00020 2\u0006\u00100\u001a\u0002012\b\u00106\u001a\u0004\u0018\u0001072\u0006\u00108\u001a\u000209H\u0007J\u001a\u0010:\u001a\u00020/2\u0006\u00105\u001a\u00020 2\b\u0010;\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u0014\u001a\u0004\u0018\u00010\u0019@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\"\u0010\u001d\u001a\u0004\u0018\u00010\u00192\b\u0010\u0014\u001a\u0004\u0018\u00010\u0019@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001cR:\u0010!\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001f2\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001f@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u000e\u0010&\u001a\u00020'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020'X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010)\u001a\n\u0018\u00010*j\u0004\u0018\u0001`+X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006="}, d2 = {"Lexpo/modules/updates/launcher/DatabaseLauncher;", "Lexpo/modules/updates/launcher/Launcher;", "context", "Landroid/content/Context;", "configuration", "Lexpo/modules/updates/UpdatesConfiguration;", "updatesDirectory", "Ljava/io/File;", "fileDownloader", "Lexpo/modules/updates/loader/FileDownloader;", "selectionPolicy", "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "shouldCopyEmbeddedAssets", "", "<init>", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Z)V", "loaderFiles", "Lexpo/modules/updates/loader/LoaderFiles;", "value", "Lexpo/modules/updates/db/entity/UpdateEntity;", "launchedUpdate", "getLaunchedUpdate", "()Lexpo/modules/updates/db/entity/UpdateEntity;", "", "launchAssetFile", "getLaunchAssetFile", "()Ljava/lang/String;", "bundleAssetName", "getBundleAssetName", "", "Lexpo/modules/updates/db/entity/AssetEntity;", "localAssetFiles", "getLocalAssetFiles", "()Ljava/util/Map;", "isUsingEmbeddedAssets", "()Z", "assetsToDownload", "", "assetsToDownloadFinished", "launchAssetException", "Ljava/lang/Exception;", "Lkotlin/Exception;", "callback", "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;", "launch", "", "database", "Lexpo/modules/updates/db/UpdatesDatabase;", "getLaunchableUpdate", "embeddedAssetFileMap", "ensureAssetExists", UriUtil.LOCAL_ASSET_SCHEME, "embeddedUpdate", "Lexpo/modules/updates/manifest/EmbeddedUpdate;", "extraHeaders", "Lorg/json/JSONObject;", "maybeFinish", "assetFile", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class DatabaseLauncher implements Launcher {
    private static final String TAG = "DatabaseLauncher";
    private int assetsToDownload;
    private int assetsToDownloadFinished;
    private String bundleAssetName;
    private Launcher.LauncherCallback callback;
    private final UpdatesConfiguration configuration;
    private final Context context;
    private final FileDownloader fileDownloader;
    private Exception launchAssetException;
    private String launchAssetFile;
    private UpdateEntity launchedUpdate;
    private final LoaderFiles loaderFiles;
    private Map<AssetEntity, String> localAssetFiles;
    private final UpdatesLogger logger;
    private final SelectionPolicy selectionPolicy;
    private final boolean shouldCopyEmbeddedAssets;
    private final File updatesDirectory;

    public DatabaseLauncher(Context context, UpdatesConfiguration configuration, File file, FileDownloader fileDownloader, SelectionPolicy selectionPolicy, UpdatesLogger logger, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(fileDownloader, "fileDownloader");
        Intrinsics.checkNotNullParameter(selectionPolicy, "selectionPolicy");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.context = context;
        this.configuration = configuration;
        this.updatesDirectory = file;
        this.fileDownloader = fileDownloader;
        this.selectionPolicy = selectionPolicy;
        this.logger = logger;
        this.shouldCopyEmbeddedAssets = z;
        this.loaderFiles = new LoaderFiles();
    }

    public /* synthetic */ DatabaseLauncher(Context context, UpdatesConfiguration updatesConfiguration, File file, FileDownloader fileDownloader, SelectionPolicy selectionPolicy, UpdatesLogger updatesLogger, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, updatesConfiguration, file, fileDownloader, selectionPolicy, updatesLogger, (i & 64) != 0 ? false : z);
    }

    @Override // expo.modules.updates.launcher.Launcher
    public UpdateEntity getLaunchedUpdate() {
        return this.launchedUpdate;
    }

    @Override // expo.modules.updates.launcher.Launcher
    public String getLaunchAssetFile() {
        return this.launchAssetFile;
    }

    @Override // expo.modules.updates.launcher.Launcher
    public String getBundleAssetName() {
        return this.bundleAssetName;
    }

    @Override // expo.modules.updates.launcher.Launcher
    /* renamed from: getLocalAssetFiles */
    public Map<AssetEntity, String> mo1948getLocalAssetFiles() {
        return this.localAssetFiles;
    }

    @Override // expo.modules.updates.launcher.Launcher
    /* renamed from: isUsingEmbeddedAssets */
    public boolean getIsUsingEmbeddedAssets() {
        return mo1948getLocalAssetFiles() == null;
    }

    public final synchronized void launch(UpdatesDatabase database, Launcher.LauncherCallback callback) {
        String relativePath;
        List<AssetEntity> assetEntityList;
        Object obj;
        String embeddedAssetFilename;
        Intrinsics.checkNotNullParameter(database, "database");
        if (this.callback != null) {
            throw new AssertionError("DatabaseLauncher has already started. Create a new instance in order to launch a new version.");
        }
        this.callback = callback;
        this.launchedUpdate = getLaunchableUpdate(database);
        if (getLaunchedUpdate() == null) {
            Launcher.LauncherCallback launcherCallback = this.callback;
            Intrinsics.checkNotNull(launcherCallback);
            launcherCallback.onFailure(new Exception("No launchable update was found. If this is a generic app, ensure expo-updates is configured correctly."));
            return;
        }
        UpdateDao updateDao = database.updateDao();
        UpdateEntity launchedUpdate = getLaunchedUpdate();
        Intrinsics.checkNotNull(launchedUpdate);
        updateDao.markUpdateAccessed(launchedUpdate);
        UpdateEntity launchedUpdate2 = getLaunchedUpdate();
        Intrinsics.checkNotNull(launchedUpdate2);
        if (launchedUpdate2.getStatus() == UpdateStatus.DEVELOPMENT) {
            Launcher.LauncherCallback launcherCallback2 = this.callback;
            Intrinsics.checkNotNull(launcherCallback2);
            launcherCallback2.onSuccess();
            return;
        }
        UpdateDao updateDao2 = database.updateDao();
        UpdateEntity launchedUpdate3 = getLaunchedUpdate();
        Intrinsics.checkNotNull(launchedUpdate3);
        AssetEntity loadLaunchAssetForUpdate = updateDao2.loadLaunchAssetForUpdate(launchedUpdate3.getId());
        if (loadLaunchAssetForUpdate == null) {
            Launcher.LauncherCallback launcherCallback3 = this.callback;
            Intrinsics.checkNotNull(launcherCallback3);
            UpdateEntity launchedUpdate4 = getLaunchedUpdate();
            Intrinsics.checkNotNull(launchedUpdate4);
            launcherCallback3.onFailure(new Exception("Launch asset not found for update; this should never happen. Debug info: " + launchedUpdate4.debugInfo()));
            return;
        }
        if (loadLaunchAssetForUpdate.getRelativePath() == null) {
            Launcher.LauncherCallback launcherCallback4 = this.callback;
            Intrinsics.checkNotNull(launcherCallback4);
            UpdateEntity launchedUpdate5 = getLaunchedUpdate();
            Intrinsics.checkNotNull(launchedUpdate5);
            launcherCallback4.onFailure(new Exception("Launch asset relative path should not be null. Debug info: " + launchedUpdate5.debugInfo()));
        }
        EmbeddedUpdate embeddedUpdate = EmbeddedManifestUtils.INSTANCE.getEmbeddedUpdate(this.context, this.configuration);
        Object obj2 = null;
        JSONObject extraHeadersForRemoteAssetRequest = FileDownloader.INSTANCE.getExtraHeadersForRemoteAssetRequest(getLaunchedUpdate(), embeddedUpdate != null ? embeddedUpdate.getUpdateEntity() : null, getLaunchedUpdate());
        if (!this.shouldCopyEmbeddedAssets && embeddedUpdate != null && (assetEntityList = embeddedUpdate.getAssetEntityList()) != null) {
            Iterator<T> it = assetEntityList.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((AssetEntity) obj).getKey(), loadLaunchAssetForUpdate.getKey())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            AssetEntity assetEntity = (AssetEntity) obj;
            if (assetEntity != null && (embeddedAssetFilename = assetEntity.getEmbeddedAssetFilename()) != null) {
                obj2 = "assets://" + embeddedAssetFilename;
            }
        }
        if (obj2 == null) {
            obj2 = ensureAssetExists(loadLaunchAssetForUpdate, database, embeddedUpdate, extraHeadersForRemoteAssetRequest);
        }
        if (obj2 != null) {
            this.launchAssetFile = obj2.toString();
        }
        AssetDao assetDao = database.assetDao();
        UpdateEntity launchedUpdate6 = getLaunchedUpdate();
        Intrinsics.checkNotNull(launchedUpdate6);
        List<AssetEntity> loadAssetsForUpdate = assetDao.loadAssetsForUpdate(launchedUpdate6.getId());
        Map<AssetEntity, String> embeddedAssetFileMap = embeddedAssetFileMap();
        for (AssetEntity assetEntity2 : loadAssetsForUpdate) {
            if (assetEntity2.getId() != loadLaunchAssetForUpdate.getId() && (relativePath = assetEntity2.getRelativePath()) != null) {
                if (!AndroidResourceAssetUtils.INSTANCE.isAndroidResourceAsset(relativePath)) {
                    File ensureAssetExists = ensureAssetExists(assetEntity2, database, embeddedUpdate, extraHeadersForRemoteAssetRequest);
                    if (ensureAssetExists != null) {
                        embeddedAssetFileMap.put(assetEntity2, Uri.fromFile(ensureAssetExists).toString());
                    }
                } else {
                    embeddedAssetFileMap.put(assetEntity2, relativePath);
                }
            }
        }
        this.localAssetFiles = embeddedAssetFileMap;
        if (this.assetsToDownload == 0) {
            if (getLaunchAssetFile() == null) {
                Launcher.LauncherCallback launcherCallback5 = this.callback;
                Intrinsics.checkNotNull(launcherCallback5);
                UpdateEntity launchedUpdate7 = getLaunchedUpdate();
                Intrinsics.checkNotNull(launchedUpdate7);
                launcherCallback5.onFailure(new Exception("Launch asset file was null with no assets to download reported; this should never happen. Debug info: " + launchedUpdate7.debugInfo()));
            } else {
                Launcher.LauncherCallback launcherCallback6 = this.callback;
                Intrinsics.checkNotNull(launcherCallback6);
                launcherCallback6.onSuccess();
            }
        }
    }

    public final UpdateEntity getLaunchableUpdate(UpdatesDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        List<UpdateEntity> loadLaunchableUpdatesForScope = database.updateDao().loadLaunchableUpdatesForScope(this.configuration.getScopeKey());
        EmbeddedUpdate embeddedUpdate = EmbeddedManifestUtils.INSTANCE.getEmbeddedUpdate(this.context, this.configuration);
        ArrayList arrayList = new ArrayList();
        for (UpdateEntity updateEntity : loadLaunchableUpdatesForScope) {
            if (updateEntity.getStatus() != UpdateStatus.EMBEDDED || embeddedUpdate == null || Intrinsics.areEqual(embeddedUpdate.getUpdateEntity().getId(), updateEntity.getId())) {
                arrayList.add(updateEntity);
            }
        }
        return this.selectionPolicy.selectUpdateToLaunch(arrayList, ManifestMetadata.INSTANCE.getManifestFilters(database, this.configuration));
    }

    private final Map<AssetEntity, String> embeddedAssetFileMap() {
        List<AssetEntity> emptyList;
        EmbeddedUpdate embeddedUpdate = EmbeddedManifestUtils.INSTANCE.getEmbeddedUpdate(this.context, this.configuration);
        if (embeddedUpdate == null || (emptyList = embeddedUpdate.getAssetEntityList()) == null) {
            emptyList = CollectionsKt.emptyList();
        }
        UpdatesLogger.info$default(this.logger, "embeddedAssetFileMap: embeddedAssets count = " + emptyList.size(), null, 2, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (AssetEntity assetEntity : emptyList) {
            if (!assetEntity.getIsLaunchAsset()) {
                if (!this.shouldCopyEmbeddedAssets) {
                    String createEmbeddedFilenameForAsset = AndroidResourceAssetUtils.INSTANCE.createEmbeddedFilenameForAsset(assetEntity);
                    if (createEmbeddedFilenameForAsset != null) {
                        assetEntity.setRelativePath(createEmbeddedFilenameForAsset);
                        linkedHashMap.put(assetEntity, createEmbeddedFilenameForAsset);
                        UpdatesLogger.info$default(this.logger, "embeddedAssetFileMap: " + assetEntity.getKey() + "," + assetEntity.getType() + " => " + linkedHashMap.get(assetEntity), null, 2, null);
                    } else {
                        this.logger.error("embeddedAssetFileMap: no file for " + assetEntity.getKey() + "," + assetEntity.getType(), new Exception("Missing embedded asset"), UpdatesErrorCode.AssetsFailedToLoad);
                    }
                } else {
                    String createFilenameForAsset = UpdatesUtils.INSTANCE.createFilenameForAsset(assetEntity);
                    assetEntity.setRelativePath(createFilenameForAsset);
                    File file = new File(this.updatesDirectory, createFilenameForAsset);
                    if (!file.exists()) {
                        this.loaderFiles.copyAssetAndGetHash(assetEntity, file, this.context);
                    }
                    if (file.exists()) {
                        linkedHashMap.put(assetEntity, Uri.fromFile(file).toString());
                        UpdatesLogger.info$default(this.logger, "embeddedAssetFileMap: " + assetEntity.getKey() + "," + assetEntity.getType() + " => " + linkedHashMap.get(assetEntity), null, 2, null);
                    } else {
                        this.logger.error("embeddedAssetFileMap: no file for " + assetEntity.getKey() + "," + assetEntity.getType(), new Exception("Missing embedded asset"), UpdatesErrorCode.AssetsFailedToLoad);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public final File ensureAssetExists(AssetEntity asset, final UpdatesDatabase database, EmbeddedUpdate embeddedUpdate, JSONObject extraHeaders) {
        AssetEntity assetEntity;
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(extraHeaders, "extraHeaders");
        File file = this.updatesDirectory;
        String relativePath = asset.getRelativePath();
        if (relativePath == null) {
            relativePath = "";
        }
        File file2 = new File(file, relativePath);
        boolean exists = file2.exists();
        if (!exists && embeddedUpdate != null) {
            Iterator<AssetEntity> it = embeddedUpdate.getAssetEntityList().iterator();
            while (true) {
                if (!it.hasNext()) {
                    assetEntity = null;
                    break;
                }
                assetEntity = it.next();
                if (assetEntity.getKey() != null && Intrinsics.areEqual(assetEntity.getKey(), asset.getKey())) {
                    break;
                }
            }
            if (assetEntity != null) {
                try {
                    if (Arrays.equals(this.loaderFiles.copyAssetAndGetHash(assetEntity, file2, this.context), asset.getHash())) {
                        exists = true;
                    }
                } catch (Exception e) {
                    this.logger.error("Failed to copy matching embedded asset", e, UpdatesErrorCode.AssetsFailedToLoad);
                }
            }
        }
        if (exists) {
            return file2;
        }
        this.assetsToDownload++;
        this.fileDownloader.downloadAsset(asset, this.updatesDirectory, extraHeaders, new FileDownloader.AssetDownloadCallback() { // from class: expo.modules.updates.launcher.DatabaseLauncher$ensureAssetExists$1
            @Override // expo.modules.updates.loader.FileDownloader.AssetDownloadCallback
            public void onFailure(Exception e2, AssetEntity assetEntity2) {
                UpdatesLogger updatesLogger;
                Intrinsics.checkNotNullParameter(e2, "e");
                Intrinsics.checkNotNullParameter(assetEntity2, "assetEntity");
                updatesLogger = DatabaseLauncher.this.logger;
                updatesLogger.error("Failed to load asset from disk or network", e2, UpdatesErrorCode.AssetsFailedToLoad);
                if (assetEntity2.getIsLaunchAsset()) {
                    DatabaseLauncher.this.launchAssetException = e2;
                }
                DatabaseLauncher.this.maybeFinish(assetEntity2, null);
            }

            @Override // expo.modules.updates.loader.FileDownloader.AssetDownloadCallback
            public void onSuccess(AssetEntity assetEntity2, boolean isNew) {
                File file3;
                Intrinsics.checkNotNullParameter(assetEntity2, "assetEntity");
                database.assetDao().updateAsset(assetEntity2);
                file3 = DatabaseLauncher.this.updatesDirectory;
                String relativePath2 = assetEntity2.getRelativePath();
                Intrinsics.checkNotNull(relativePath2);
                File file4 = new File(file3, relativePath2);
                DatabaseLauncher databaseLauncher = DatabaseLauncher.this;
                if (!file4.exists()) {
                    file4 = null;
                }
                databaseLauncher.maybeFinish(assetEntity2, file4);
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void maybeFinish(AssetEntity asset, File assetFile) {
        this.assetsToDownloadFinished++;
        if (asset.getIsLaunchAsset()) {
            this.launchAssetFile = assetFile != null ? assetFile.toString() : null;
        } else if (assetFile != null) {
            Map<AssetEntity, String> mo1948getLocalAssetFiles = mo1948getLocalAssetFiles();
            Intrinsics.checkNotNull(mo1948getLocalAssetFiles);
            mo1948getLocalAssetFiles.put(asset, assetFile.toString());
        }
        if (this.assetsToDownloadFinished == this.assetsToDownload) {
            if (getLaunchAssetFile() == null) {
                if (this.launchAssetException == null) {
                    this.launchAssetException = new Exception("Launcher launch asset file is unexpectedly null");
                }
                Launcher.LauncherCallback launcherCallback = this.callback;
                Intrinsics.checkNotNull(launcherCallback);
                Exception exc = this.launchAssetException;
                Intrinsics.checkNotNull(exc);
                launcherCallback.onFailure(exc);
            } else {
                Launcher.LauncherCallback launcherCallback2 = this.callback;
                Intrinsics.checkNotNull(launcherCallback2);
                launcherCallback2.onSuccess();
            }
        }
    }
}
