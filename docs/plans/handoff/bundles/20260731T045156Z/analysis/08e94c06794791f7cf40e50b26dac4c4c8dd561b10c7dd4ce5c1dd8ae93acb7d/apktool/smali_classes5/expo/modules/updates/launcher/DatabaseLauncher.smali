.class public final Lexpo/modules/updates/launcher/DatabaseLauncher;
.super Ljava/lang/Object;
.source "DatabaseLauncher.kt"

# interfaces
.implements Lexpo/modules/updates/launcher/Launcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/launcher/DatabaseLauncher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatabaseLauncher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatabaseLauncher.kt\nexpo/modules/updates/launcher/DatabaseLauncher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,301:1\n1#2:302\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 <2\u00020\u0001:\u0001<BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0008\u0010,\u001a\u0004\u0018\u00010-J\u0010\u00102\u001a\u0004\u0018\u00010\u00152\u0006\u00100\u001a\u000201J\u0014\u00103\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00190\u001fH\u0002J,\u00104\u001a\u0004\u0018\u00010\u00072\u0006\u00105\u001a\u00020 2\u0006\u00100\u001a\u0002012\u0008\u00106\u001a\u0004\u0018\u0001072\u0006\u00108\u001a\u000209H\u0007J\u001a\u0010:\u001a\u00020/2\u0006\u00105\u001a\u00020 2\u0008\u0010;\u001a\u0004\u0018\u00010\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0019@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010\u001d\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0019@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001cR:\u0010!\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001f2\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001f@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010)\u001a\n\u0018\u00010*j\u0004\u0018\u0001`+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lexpo/modules/updates/launcher/DatabaseLauncher;",
        "Lexpo/modules/updates/launcher/Launcher;",
        "context",
        "Landroid/content/Context;",
        "configuration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "updatesDirectory",
        "Ljava/io/File;",
        "fileDownloader",
        "Lexpo/modules/updates/loader/FileDownloader;",
        "selectionPolicy",
        "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "shouldCopyEmbeddedAssets",
        "",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Z)V",
        "loaderFiles",
        "Lexpo/modules/updates/loader/LoaderFiles;",
        "value",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "launchedUpdate",
        "getLaunchedUpdate",
        "()Lexpo/modules/updates/db/entity/UpdateEntity;",
        "",
        "launchAssetFile",
        "getLaunchAssetFile",
        "()Ljava/lang/String;",
        "bundleAssetName",
        "getBundleAssetName",
        "",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "localAssetFiles",
        "getLocalAssetFiles",
        "()Ljava/util/Map;",
        "isUsingEmbeddedAssets",
        "()Z",
        "assetsToDownload",
        "",
        "assetsToDownloadFinished",
        "launchAssetException",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "callback",
        "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
        "launch",
        "",
        "database",
        "Lexpo/modules/updates/db/UpdatesDatabase;",
        "getLaunchableUpdate",
        "embeddedAssetFileMap",
        "ensureAssetExists",
        "asset",
        "embeddedUpdate",
        "Lexpo/modules/updates/manifest/EmbeddedUpdate;",
        "extraHeaders",
        "Lorg/json/JSONObject;",
        "maybeFinish",
        "assetFile",
        "Companion",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/launcher/DatabaseLauncher$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private assetsToDownload:I

.field private assetsToDownloadFinished:I

.field private bundleAssetName:Ljava/lang/String;

.field private callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

.field private final configuration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final context:Landroid/content/Context;

.field private final fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

.field private launchAssetException:Ljava/lang/Exception;

.field private launchAssetFile:Ljava/lang/String;

.field private launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

.field private final loaderFiles:Lexpo/modules/updates/loader/LoaderFiles;

.field private localAssetFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private final selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

.field private final shouldCopyEmbeddedAssets:Z

.field private final updatesDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/launcher/DatabaseLauncher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/launcher/DatabaseLauncher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/launcher/DatabaseLauncher;->Companion:Lexpo/modules/updates/launcher/DatabaseLauncher$Companion;

    .line 298
    const-string v0, "DatabaseLauncher"

    sput-object v0, Lexpo/modules/updates/launcher/DatabaseLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileDownloader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionPolicy"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 47
    iput-object p3, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->updatesDirectory:Ljava/io/File;

    .line 48
    iput-object p4, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 49
    iput-object p5, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 50
    iput-object p6, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 51
    iput-boolean p7, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->shouldCopyEmbeddedAssets:Z

    .line 53
    new-instance p1, Lexpo/modules/updates/loader/LoaderFiles;

    invoke-direct {p1}, Lexpo/modules/updates/loader/LoaderFiles;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->loaderFiles:Lexpo/modules/updates/loader/LoaderFiles;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 44
    invoke-direct/range {v1 .. v8}, Lexpo/modules/updates/launcher/DatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Z)V

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lexpo/modules/updates/launcher/DatabaseLauncher;)Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 0

    .line 44
    iget-object p0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesDirectory$p(Lexpo/modules/updates/launcher/DatabaseLauncher;)Ljava/io/File;
    .locals 0

    .line 44
    iget-object p0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->updatesDirectory:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$maybeFinish(Lexpo/modules/updates/launcher/DatabaseLauncher;Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/launcher/DatabaseLauncher;->maybeFinish(Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$setLaunchAssetException$p(Lexpo/modules/updates/launcher/DatabaseLauncher;Ljava/lang/Exception;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->launchAssetException:Ljava/lang/Exception;

    return-void
.end method

.method private final embeddedAssetFileMap()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    sget-object v0, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->INSTANCE:Lexpo/modules/updates/manifest/EmbeddedManifestUtils;

    iget-object v1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->context:Landroid/content/Context;

    iget-object v2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v0, v1, v2}, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->getEmbeddedUpdate(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/EmbeddedUpdate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getAssetEntityList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 172
    :cond_1
    iget-object v1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "embeddedAssetFileMap: embeddedAssets count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    .line 173
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/updates/db/entity/AssetEntity;

    .line 175
    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->isLaunchAsset()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    iget-boolean v5, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->shouldCopyEmbeddedAssets:Z

    const-string v6, " => "

    const-string v7, "embeddedAssetFileMap: "

    const-string v8, "embeddedAssetFileMap: no file for "

    const-string v9, "Missing embedded asset"

    const-string v10, ","

    if-nez v5, :cond_4

    .line 180
    sget-object v5, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->INSTANCE:Lexpo/modules/updates/utils/AndroidResourceAssetUtils;

    invoke-virtual {v5, v2}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->createEmbeddedFilenameForAsset(Lexpo/modules/updates/db/entity/AssetEntity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 182
    invoke-virtual {v2, v5}, Lexpo/modules/updates/db/entity/AssetEntity;->setRelativePath(Ljava/lang/String;)V

    .line 183
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v5, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3, v4, v3}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_3
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v6, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->getType()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v6, v2, v5, v7}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    goto/16 :goto_0

    .line 192
    :cond_4
    sget-object v5, Lexpo/modules/updates/UpdatesUtils;->INSTANCE:Lexpo/modules/updates/UpdatesUtils;

    invoke-virtual {v5, v2}, Lexpo/modules/updates/UpdatesUtils;->createFilenameForAsset(Lexpo/modules/updates/db/entity/AssetEntity;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v2, v5}, Lexpo/modules/updates/db/entity/AssetEntity;->setRelativePath(Ljava/lang/String;)V

    .line 194
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->updatesDirectory:Ljava/io/File;

    invoke-direct {v11, v12, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 196
    iget-object v5, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->loaderFiles:Lexpo/modules/updates/loader/LoaderFiles;

    iget-object v12, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->context:Landroid/content/Context;

    invoke-virtual {v5, v2, v11, v12}, Lexpo/modules/updates/loader/LoaderFiles;->copyAssetAndGetHash(Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;Landroid/content/Context;)[B

    .line 198
    :cond_5
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v5, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3, v4, v3}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 202
    :cond_6
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->getType()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v6, v2, v5, v7}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    goto/16 :goto_0

    :cond_7
    return-object v1
.end method

.method private final declared-synchronized maybeFinish(Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;)V
    .locals 1

    monitor-enter p0

    .line 277
    :try_start_0
    iget v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->assetsToDownloadFinished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->assetsToDownloadFinished:I

    .line 278
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->isLaunchAsset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 279
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->launchAssetFile:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 282
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLocalAssetFiles()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_2
    :goto_1
    iget p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->assetsToDownloadFinished:I

    iget p2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->assetsToDownload:I

    if-ne p1, p2, :cond_5

    .line 286
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchAssetFile()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 287
    iget-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->launchAssetException:Ljava/lang/Exception;

    if-nez p1, :cond_3

    .line 288
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Launcher launch asset file is unexpectedly null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->launchAssetException:Ljava/lang/Exception;

    .line 290
    :cond_3
    iget-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->launchAssetException:Ljava/lang/Exception;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_2

    .line 292
    :cond_4
    iget-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final ensureAssetExists(Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/manifest/EmbeddedUpdate;Lorg/json/JSONObject;)Ljava/io/File;
    .locals 7

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "database"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraHeaders"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->updatesDirectory:Ljava/io/File;

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getRelativePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    if-eqz p3, :cond_3

    .line 222
    invoke-virtual {p3}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getAssetEntityList()Ljava/util/List;

    move-result-object p3

    .line 224
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/updates/db/entity/AssetEntity;

    .line 225
    invoke-virtual {v4}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_3

    .line 233
    :try_start_0
    iget-object p3, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->loaderFiles:Lexpo/modules/updates/loader/LoaderFiles;

    iget-object v5, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->context:Landroid/content/Context;

    invoke-virtual {p3, v4, v0, v5}, Lexpo/modules/updates/loader/LoaderFiles;->copyAssetAndGetHash(Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;Landroid/content/Context;)[B

    move-result-object p3

    .line 234
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getHash()[B

    move-result-object v4

    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_3

    move v1, v3

    goto :goto_1

    :catch_0
    move-exception p3

    .line 239
    iget-object v4, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v5, "Failed to copy matching embedded asset"

    sget-object v6, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v4, v5, p3, v6}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 247
    iget p3, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->assetsToDownload:I

    add-int/2addr p3, v3

    iput p3, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->assetsToDownload:I

    .line 249
    iget-object p3, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 251
    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->updatesDirectory:Ljava/io/File;

    .line 253
    new-instance v1, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;

    invoke-direct {v1, p0, p2}, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;-><init>(Lexpo/modules/updates/launcher/DatabaseLauncher;Lexpo/modules/updates/db/UpdatesDatabase;)V

    check-cast v1, Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;

    .line 249
    invoke-virtual {p3, p1, v0, p4, v1}, Lexpo/modules/updates/loader/FileDownloader;->downloadAsset(Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;Lorg/json/JSONObject;Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;)V

    move-object v0, v2

    :cond_4
    return-object v0
.end method

.method public getBundleAssetName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->bundleAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchAssetFile()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->launchAssetFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getLaunchableUpdate(Lexpo/modules/updates/db/UpdatesDatabase;)Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 6

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v1}, Lexpo/modules/updates/UpdatesConfiguration;->getScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexpo/modules/updates/db/dao/UpdateDao;->loadLaunchableUpdatesForScope(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 155
    sget-object v1, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->INSTANCE:Lexpo/modules/updates/manifest/EmbeddedManifestUtils;

    iget-object v2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->context:Landroid/content/Context;

    iget-object v3, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v1, v2, v3}, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->getEmbeddedUpdate(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/EmbeddedUpdate;

    move-result-object v1

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 158
    invoke-virtual {v3}, Lexpo/modules/updates/db/entity/UpdateEntity;->getStatus()Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object v4

    sget-object v5, Lexpo/modules/updates/db/enums/UpdateStatus;->EMBEDDED:Lexpo/modules/updates/db/enums/UpdateStatus;

    if-ne v4, v5, :cond_0

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    sget-object v0, Lexpo/modules/updates/manifest/ManifestMetadata;->INSTANCE:Lexpo/modules/updates/manifest/ManifestMetadata;

    iget-object v1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v0, p1, v1}, Lexpo/modules/updates/manifest/ManifestMetadata;->getManifestFilters(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/UpdatesConfiguration;)Lorg/json/JSONObject;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    invoke-virtual {v0, v2, p1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->selectUpdateToLaunch(Ljava/util/List;Lorg/json/JSONObject;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p1

    return-object p1
.end method

.method public getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 1

    .line 54
    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    return-object v0
.end method

.method public getLocalAssetFiles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->localAssetFiles:Ljava/util/Map;

    return-object v0
.end method

.method public isUsingEmbeddedAssets()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLocalAssetFiles()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized launch(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V
    .locals 9

    const-string v0, "Launch asset relative path should not be null. Debug info: "

    const-string v1, "Launch asset not found for update; this should never happen. Debug info: "

    monitor-enter p0

    :try_start_0
    const-string v2, "database"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    if-nez v2, :cond_11

    .line 75
    iput-object p2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    .line 77
    invoke-virtual {p0, p1}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchableUpdate(Lexpo/modules/updates/db/UpdatesDatabase;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p2

    iput-object p2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 78
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p2

    if-nez p2, :cond_0

    .line 79
    iget-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "No launchable update was found. If this is a generic app, ensure expo-updates is configured correctly."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onFailure(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object p2

    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lexpo/modules/updates/db/dao/UpdateDao;->markUpdateAccessed(Lexpo/modules/updates/db/entity/UpdateEntity;)V

    .line 84
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getStatus()Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object p2

    sget-object v2, Lexpo/modules/updates/db/enums/UpdateStatus;->DEVELOPMENT:Lexpo/modules/updates/db/enums/UpdateStatus;

    if-ne p2, v2, :cond_1

    .line 85
    iget-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object p2

    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Lexpo/modules/updates/db/dao/UpdateDao;->loadLaunchAssetForUpdate(Ljava/util/UUID;)Lexpo/modules/updates/db/entity/AssetEntity;

    move-result-object p2

    if-nez p2, :cond_2

    .line 93
    iget-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/Exception;

    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->debugInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onFailure(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 97
    :cond_2
    :try_start_3
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 98
    iget-object v1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lexpo/modules/updates/db/entity/UpdateEntity;->debugInfo()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onFailure(Ljava/lang/Exception;)V

    .line 101
    :cond_3
    sget-object v0, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->INSTANCE:Lexpo/modules/updates/manifest/EmbeddedManifestUtils;

    iget-object v1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->context:Landroid/content/Context;

    iget-object v2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v0, v1, v2}, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->getEmbeddedUpdate(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/EmbeddedUpdate;

    move-result-object v0

    .line 102
    sget-object v1, Lexpo/modules/updates/loader/FileDownloader;->Companion:Lexpo/modules/updates/loader/FileDownloader$Companion;

    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v3

    :goto_0
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lexpo/modules/updates/loader/FileDownloader$Companion;->getExtraHeadersForRemoteAssetRequest(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;)Lorg/json/JSONObject;

    move-result-object v1

    .line 104
    iget-boolean v2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->shouldCopyEmbeddedAssets:Z

    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {v0}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getAssetEntityList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Ljava/lang/Iterable;

    .line 106
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lexpo/modules/updates/db/entity/AssetEntity;

    invoke-virtual {v5}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_6
    move-object v4, v3

    :goto_1
    check-cast v4, Lexpo/modules/updates/db/entity/AssetEntity;

    if-eqz v4, :cond_7

    .line 107
    invoke-virtual {v4}, Lexpo/modules/updates/db/entity/AssetEntity;->getEmbeddedAssetFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    if-nez v3, :cond_8

    .line 115
    invoke-virtual {p0, p2, p1, v0, v1}, Lexpo/modules/updates/launcher/DatabaseLauncher;->ensureAssetExists(Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/manifest/EmbeddedUpdate;Lorg/json/JSONObject;)Ljava/io/File;

    move-result-object v3

    :cond_8
    if-eqz v3, :cond_9

    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->launchAssetFile:Ljava/lang/String;

    .line 120
    :cond_9
    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->assetDao()Lexpo/modules/updates/db/dao/AssetDao;

    move-result-object v2

    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lexpo/modules/updates/db/dao/AssetDao;->loadAssetsForUpdate(Ljava/util/UUID;)Ljava/util/List;

    move-result-object v2

    .line 122
    invoke-direct {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->embeddedAssetFileMap()Ljava/util/Map;

    move-result-object v3

    .line 123
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/updates/db/entity/AssetEntity;

    .line 124
    invoke-virtual {v4}, Lexpo/modules/updates/db/entity/AssetEntity;->getId()J

    move-result-wide v5

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_b

    goto :goto_2

    .line 128
    :cond_b
    invoke-virtual {v4}, Lexpo/modules/updates/db/entity/AssetEntity;->getRelativePath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_2

    .line 129
    :cond_c
    sget-object v6, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->INSTANCE:Lexpo/modules/updates/utils/AndroidResourceAssetUtils;

    invoke-virtual {v6, v5}, Lexpo/modules/updates/utils/AndroidResourceAssetUtils;->isAndroidResourceAsset(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 130
    invoke-virtual {p0, v4, p1, v0, v1}, Lexpo/modules/updates/launcher/DatabaseLauncher;->ensureAssetExists(Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/manifest/EmbeddedUpdate;Lorg/json/JSONObject;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 132
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 135
    :cond_d
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 122
    :cond_e
    iput-object v3, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->localAssetFiles:Ljava/util/Map;

    .line 140
    iget p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->assetsToDownload:I

    if-nez p1, :cond_10

    .line 141
    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchAssetFile()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    .line 142
    iget-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/Exception;

    invoke-virtual {p0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->debugInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch asset file was null with no assets to download reported; this should never happen. Debug info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_3

    .line 144
    :cond_f
    iget-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher;->callback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;->onSuccess()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :cond_10
    :goto_3
    monitor-exit p0

    return-void

    .line 73
    :cond_11
    :try_start_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "DatabaseLauncher has already started. Create a new instance in order to launch a new version."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
