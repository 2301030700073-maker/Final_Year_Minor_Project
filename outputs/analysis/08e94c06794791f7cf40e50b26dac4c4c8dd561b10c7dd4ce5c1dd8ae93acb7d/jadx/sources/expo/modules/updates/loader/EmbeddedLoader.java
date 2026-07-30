package expo.modules.updates.loader;

import android.content.Context;
import expo.modules.updates.UpdatesConfiguration;
import expo.modules.updates.UpdatesUtils;
import expo.modules.updates.db.UpdatesDatabase;
import expo.modules.updates.db.entity.AssetEntity;
import expo.modules.updates.db.entity.UpdateEntity;
import expo.modules.updates.loader.FileDownloader;
import expo.modules.updates.loader.UpdateResponsePart;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.manifest.Update;
import expo.modules.updates.utils.AndroidResourceAssetUtils;
import io.sentry.SentryEvent;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EmbeddedLoader.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eBC\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011B1\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0012J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016H\u0014J>\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0015\u001a\u00020\u001dH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lexpo/modules/updates/loader/EmbeddedLoader;", "Lexpo/modules/updates/loader/Loader;", "context", "Landroid/content/Context;", "configuration", "Lexpo/modules/updates/UpdatesConfiguration;", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "database", "Lexpo/modules/updates/db/UpdatesDatabase;", "updatesDirectory", "Ljava/io/File;", "loaderFiles", "Lexpo/modules/updates/loader/LoaderFiles;", "shouldCopyEmbeddedAssets", "", "<init>", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Ljava/io/File;Lexpo/modules/updates/loader/LoaderFiles;Z)V", "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Ljava/io/File;)V", "loadRemoteUpdate", "", "callback", "Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;", "loadAsset", "assetEntity", "Lexpo/modules/updates/db/entity/AssetEntity;", "requestedUpdate", "Lexpo/modules/updates/db/entity/UpdateEntity;", "embeddedUpdate", "Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class EmbeddedLoader extends Loader {
    public static final String BARE_BUNDLE_FILENAME = "index.android.bundle";
    public static final String BUNDLE_FILENAME = "app.bundle";
    private final UpdatesConfiguration configuration;
    private final LoaderFiles loaderFiles;
    private final boolean shouldCopyEmbeddedAssets;

    public /* synthetic */ EmbeddedLoader(Context context, UpdatesConfiguration updatesConfiguration, UpdatesLogger updatesLogger, UpdatesDatabase updatesDatabase, File file, LoaderFiles loaderFiles, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, updatesConfiguration, updatesLogger, updatesDatabase, file, loaderFiles, (i & 64) != 0 ? false : z);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmbeddedLoader(Context context, UpdatesConfiguration configuration, UpdatesLogger logger, UpdatesDatabase database, File updatesDirectory, LoaderFiles loaderFiles, boolean z) {
        super(context, configuration, logger, database, updatesDirectory, loaderFiles);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(updatesDirectory, "updatesDirectory");
        Intrinsics.checkNotNullParameter(loaderFiles, "loaderFiles");
        this.configuration = configuration;
        this.loaderFiles = loaderFiles;
        this.shouldCopyEmbeddedAssets = z;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EmbeddedLoader(Context context, UpdatesConfiguration configuration, UpdatesLogger logger, UpdatesDatabase database, File updatesDirectory) {
        this(context, configuration, logger, database, updatesDirectory, new LoaderFiles(), false, 64, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(updatesDirectory, "updatesDirectory");
    }

    @Override // expo.modules.updates.loader.Loader
    protected void loadRemoteUpdate(UpdatesDatabase database, UpdatesConfiguration configuration, FileDownloader.RemoteUpdateDownloadCallback callback) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Update readEmbeddedUpdate = this.loaderFiles.readEmbeddedUpdate(getContext(), this.configuration);
        if (readEmbeddedUpdate != null) {
            callback.onSuccess(new UpdateResponse(null, new UpdateResponsePart.ManifestUpdateResponsePart(readEmbeddedUpdate), null));
        } else {
            callback.onFailure(new Exception("Embedded manifest is null"));
        }
    }

    @Override // expo.modules.updates.loader.Loader
    protected void loadAsset(AssetEntity assetEntity, File updatesDirectory, UpdatesConfiguration configuration, UpdateEntity requestedUpdate, UpdateEntity embeddedUpdate, FileDownloader.AssetDownloadCallback callback) {
        Intrinsics.checkNotNullParameter(assetEntity, "assetEntity");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!this.shouldCopyEmbeddedAssets) {
            assetEntity.setDownloadTime(new Date());
            assetEntity.setRelativePath(AndroidResourceAssetUtils.INSTANCE.createEmbeddedFilenameForAsset(assetEntity));
            callback.onSuccess(assetEntity, true);
            return;
        }
        String createFilenameForAsset = UpdatesUtils.INSTANCE.createFilenameForAsset(assetEntity);
        File file = new File(updatesDirectory, createFilenameForAsset);
        if (this.loaderFiles.fileExists(getContext(), updatesDirectory, createFilenameForAsset)) {
            assetEntity.setRelativePath(createFilenameForAsset);
            callback.onSuccess(assetEntity, false);
            return;
        }
        try {
            assetEntity.setHash(this.loaderFiles.copyAssetAndGetHash(assetEntity, file, getContext()));
            assetEntity.setDownloadTime(new Date());
            assetEntity.setRelativePath(createFilenameForAsset);
            callback.onSuccess(assetEntity, true);
        } catch (FileNotFoundException unused) {
            throw new AssertionError("APK bundle must contain the expected embedded asset " + (assetEntity.getEmbeddedAssetFilename() != null ? assetEntity.getEmbeddedAssetFilename() : assetEntity.getResourcesFilename()));
        } catch (Exception e) {
            callback.onFailure(e, assetEntity);
        }
    }
}
