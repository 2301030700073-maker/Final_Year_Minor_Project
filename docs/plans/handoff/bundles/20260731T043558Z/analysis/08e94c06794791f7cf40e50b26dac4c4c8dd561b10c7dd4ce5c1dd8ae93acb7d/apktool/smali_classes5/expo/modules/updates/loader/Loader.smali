.class public abstract Lexpo/modules/updates/loader/Loader;
.super Ljava/lang/Object;
.source "Loader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/loader/Loader$AssetLoadResult;,
        Lexpo/modules/updates/loader/Loader$Companion;,
        Lexpo/modules/updates/loader/Loader$LoaderCallback;,
        Lexpo/modules/updates/loader/Loader$LoaderResult;,
        Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;,
        Lexpo/modules/updates/loader/Loader$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 ;2\u00020\u0001:\u0005789:;B9\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ \u0010!\u001a\u00020\"2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020#H$J>\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u001e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010&\u001a\u0004\u0018\u00010\u00172\u0008\u0010\'\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020(H$J\u000e\u0010)\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u0019J\u0008\u0010*\u001a\u00020\"H\u0002J\u0008\u0010+\u001a\u00020\"H\u0002J\u0014\u0010,\u001a\u00020\"2\n\u0010-\u001a\u00060.j\u0002`/H\u0002J\u0010\u00100\u001a\u00020\"2\u0006\u00101\u001a\u000202H\u0002J\u0010\u00103\u001a\u00020\"2\u0006\u00101\u001a\u000202H\u0002J\u0018\u00104\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u001e2\u0006\u00105\u001a\u000206H\u0002R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lexpo/modules/updates/loader/Loader;",
        "",
        "context",
        "Landroid/content/Context;",
        "configuration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "database",
        "Lexpo/modules/updates/db/UpdatesDatabase;",
        "updatesDirectory",
        "Ljava/io/File;",
        "loaderFiles",
        "Lexpo/modules/updates/loader/LoaderFiles;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Ljava/io/File;Lexpo/modules/updates/loader/LoaderFiles;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getLogger",
        "()Lexpo/modules/updates/logging/UpdatesLogger;",
        "updateResponse",
        "Lexpo/modules/updates/loader/UpdateResponse;",
        "updateEntity",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "callback",
        "Lexpo/modules/updates/loader/Loader$LoaderCallback;",
        "assetTotal",
        "",
        "erroredAssetList",
        "",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "existingAssetList",
        "finishedAssetList",
        "loadRemoteUpdate",
        "",
        "Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;",
        "loadAsset",
        "assetEntity",
        "requestedUpdate",
        "embeddedUpdate",
        "Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;",
        "start",
        "reset",
        "finishWithSuccess",
        "finishWithException",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "processUpdate",
        "update",
        "Lexpo/modules/updates/manifest/Update;",
        "downloadAllAssets",
        "handleAssetDownloadCompleted",
        "result",
        "Lexpo/modules/updates/loader/Loader$AssetLoadResult;",
        "LoaderResult",
        "OnUpdateResponseLoadedResult",
        "LoaderCallback",
        "AssetLoadResult",
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
.field public static final Companion:Lexpo/modules/updates/loader/Loader$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private assetTotal:I

.field private callback:Lexpo/modules/updates/loader/Loader$LoaderCallback;

.field private final configuration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final context:Landroid/content/Context;

.field private final database:Lexpo/modules/updates/db/UpdatesDatabase;

.field private erroredAssetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end field

.field private existingAssetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end field

.field private finishedAssetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/updates/db/entity/AssetEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final loaderFiles:Lexpo/modules/updates/loader/LoaderFiles;

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

.field private updateResponse:Lexpo/modules/updates/loader/UpdateResponse;

.field private final updatesDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/loader/Loader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/loader/Loader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/loader/Loader;->Companion:Lexpo/modules/updates/loader/Loader$Companion;

    .line 327
    const-string v0, "Loader"

    sput-object v0, Lexpo/modules/updates/loader/Loader;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Ljava/io/File;Lexpo/modules/updates/loader/LoaderFiles;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "database"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesDirectory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loaderFiles"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lexpo/modules/updates/loader/Loader;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lexpo/modules/updates/loader/Loader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 30
    iput-object p3, p0, Lexpo/modules/updates/loader/Loader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 31
    iput-object p4, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    .line 32
    iput-object p5, p0, Lexpo/modules/updates/loader/Loader;->updatesDirectory:Ljava/io/File;

    .line 33
    iput-object p6, p0, Lexpo/modules/updates/loader/Loader;->loaderFiles:Lexpo/modules/updates/loader/LoaderFiles;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lexpo/modules/updates/loader/Loader;->erroredAssetList:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lexpo/modules/updates/loader/Loader;->existingAssetList:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lexpo/modules/updates/loader/Loader;->finishedAssetList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$finishWithException(Lexpo/modules/updates/loader/Loader;Ljava/lang/Exception;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/Loader;->finishWithException(Ljava/lang/Exception;)V

    return-void
.end method

.method public static final synthetic access$finishWithSuccess(Lexpo/modules/updates/loader/Loader;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lexpo/modules/updates/loader/Loader;->finishWithSuccess()V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lexpo/modules/updates/loader/Loader;)Lexpo/modules/updates/loader/Loader$LoaderCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lexpo/modules/updates/loader/Loader;->callback:Lexpo/modules/updates/loader/Loader$LoaderCallback;

    return-object p0
.end method

.method public static final synthetic access$handleAssetDownloadCompleted(Lexpo/modules/updates/loader/Loader;Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/loader/Loader$AssetLoadResult;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/loader/Loader;->handleAssetDownloadCompleted(Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/loader/Loader$AssetLoadResult;)V

    return-void
.end method

.method public static final synthetic access$processUpdate(Lexpo/modules/updates/loader/Loader;Lexpo/modules/updates/manifest/Update;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/Loader;->processUpdate(Lexpo/modules/updates/manifest/Update;)V

    return-void
.end method

.method public static final synthetic access$setUpdateEntity$p(Lexpo/modules/updates/loader/Loader;Lexpo/modules/updates/db/entity/UpdateEntity;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    return-void
.end method

.method public static final synthetic access$setUpdateResponse$p(Lexpo/modules/updates/loader/Loader;Lexpo/modules/updates/loader/UpdateResponse;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lexpo/modules/updates/loader/Loader;->updateResponse:Lexpo/modules/updates/loader/UpdateResponse;

    return-void
.end method

.method private final downloadAllAssets(Lexpo/modules/updates/manifest/Update;)V
    .locals 12

    .line 220
    invoke-interface {p1}, Lexpo/modules/updates/manifest/Update;->getAssetEntityList()Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lexpo/modules/updates/loader/Loader;->assetTotal:I

    .line 223
    iget-object v1, p0, Lexpo/modules/updates/loader/Loader;->loaderFiles:Lexpo/modules/updates/loader/LoaderFiles;

    iget-object v2, p0, Lexpo/modules/updates/loader/Loader;->context:Landroid/content/Context;

    iget-object v3, p0, Lexpo/modules/updates/loader/Loader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v1, v2, v3}, Lexpo/modules/updates/loader/LoaderFiles;->readEmbeddedUpdate(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/Update;

    move-result-object v1

    .line 224
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/updates/db/entity/AssetEntity;

    .line 227
    iget-object v3, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {v3}, Lexpo/modules/updates/db/UpdatesDatabase;->assetDao()Lexpo/modules/updates/db/dao/AssetDao;

    move-result-object v3

    invoke-virtual {v2}, Lexpo/modules/updates/db/entity/AssetEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lexpo/modules/updates/db/dao/AssetDao;->loadAssetWithKey(Ljava/lang/String;)Lexpo/modules/updates/db/entity/AssetEntity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v4, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {v4}, Lexpo/modules/updates/db/UpdatesDatabase;->assetDao()Lexpo/modules/updates/db/dao/AssetDao;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lexpo/modules/updates/db/dao/AssetDao;->mergeAndUpdateAsset(Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/db/entity/AssetEntity;)V

    move-object v6, v3

    goto :goto_1

    :cond_0
    move-object v6, v2

    .line 236
    :goto_1
    invoke-virtual {v6}, Lexpo/modules/updates/db/entity/AssetEntity;->getRelativePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lexpo/modules/updates/loader/Loader;->loaderFiles:Lexpo/modules/updates/loader/LoaderFiles;

    iget-object v3, p0, Lexpo/modules/updates/loader/Loader;->context:Landroid/content/Context;

    iget-object v4, p0, Lexpo/modules/updates/loader/Loader;->updatesDirectory:Ljava/io/File;

    invoke-virtual {v6}, Lexpo/modules/updates/db/entity/AssetEntity;->getRelativePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lexpo/modules/updates/loader/LoaderFiles;->fileExists(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    sget-object v2, Lexpo/modules/updates/loader/Loader$AssetLoadResult;->ALREADY_EXISTS:Lexpo/modules/updates/loader/Loader$AssetLoadResult;

    invoke-direct {p0, v6, v2}, Lexpo/modules/updates/loader/Loader;->handleAssetDownloadCompleted(Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/loader/Loader$AssetLoadResult;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v7, p0, Lexpo/modules/updates/loader/Loader;->updatesDirectory:Ljava/io/File;

    .line 246
    iget-object v8, p0, Lexpo/modules/updates/loader/Loader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 247
    invoke-interface {p1}, Lexpo/modules/updates/manifest/Update;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v9

    if-eqz v1, :cond_2

    .line 248
    invoke-interface {v1}, Lexpo/modules/updates/manifest/Update;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object v10, v2

    .line 249
    new-instance v2, Lexpo/modules/updates/loader/Loader$downloadAllAssets$1;

    invoke-direct {v2, p0}, Lexpo/modules/updates/loader/Loader$downloadAllAssets$1;-><init>(Lexpo/modules/updates/loader/Loader;)V

    move-object v11, v2

    check-cast v11, Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;

    move-object v5, p0

    .line 243
    invoke-virtual/range {v5 .. v11}, Lexpo/modules/updates/loader/Loader;->loadAsset(Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final finishWithException(Ljava/lang/Exception;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v1, "Load error"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 162
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->callback:Lexpo/modules/updates/loader/Loader$LoaderCallback;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tried to finish but it already finished or was never initialized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    return-void

    .line 166
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lexpo/modules/updates/loader/Loader$LoaderCallback;->onFailure(Ljava/lang/Exception;)V

    .line 167
    invoke-direct {p0}, Lexpo/modules/updates/loader/Loader;->reset()V

    return-void
.end method

.method private final finishWithSuccess()V
    .locals 4

    .line 138
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->callback:Lexpo/modules/updates/loader/Loader$LoaderCallback;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Null callback in finishWithSuccess"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lexpo/modules/updates/loader/Loader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tried to finish but it already finished or was never initialized."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v1, v2, v0, v3}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->updateResponse:Lexpo/modules/updates/loader/UpdateResponse;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponse;->getResponseHeaderData()Lexpo/modules/updates/manifest/ResponseHeaderData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    sget-object v1, Lexpo/modules/updates/manifest/ManifestMetadata;->INSTANCE:Lexpo/modules/updates/manifest/ManifestMetadata;

    iget-object v2, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    iget-object v3, p0, Lexpo/modules/updates/loader/Loader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v1, v0, v2, v3}, Lexpo/modules/updates/manifest/ManifestMetadata;->saveMetadata(Lexpo/modules/updates/manifest/ResponseHeaderData;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/UpdatesConfiguration;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->updateResponse:Lexpo/modules/updates/loader/UpdateResponse;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponse;->getDirectiveUpdateResponsePart()Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;->getUpdateDirective()Lexpo/modules/updates/loader/UpdateDirective;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-object v1, p0, Lexpo/modules/updates/loader/Loader;->callback:Lexpo/modules/updates/loader/Loader$LoaderCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    new-instance v2, Lexpo/modules/updates/loader/Loader$LoaderResult;

    .line 153
    iget-object v3, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 152
    invoke-direct {v2, v3, v0}, Lexpo/modules/updates/loader/Loader$LoaderResult;-><init>(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/UpdateDirective;)V

    .line 151
    invoke-interface {v1, v2}, Lexpo/modules/updates/loader/Loader$LoaderCallback;->onSuccess(Lexpo/modules/updates/loader/Loader$LoaderResult;)V

    .line 157
    invoke-direct {p0}, Lexpo/modules/updates/loader/Loader;->reset()V

    return-void
.end method

.method private final declared-synchronized handleAssetDownloadCompleted(Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/loader/Loader$AssetLoadResult;)V
    .locals 4

    monitor-enter p0

    .line 275
    :try_start_0
    sget-object v0, Lexpo/modules/updates/loader/Loader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lexpo/modules/updates/loader/Loader$AssetLoadResult;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 278
    iget-object p2, p0, Lexpo/modules/updates/loader/Loader;->erroredAssetList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 277
    :cond_1
    iget-object p2, p0, Lexpo/modules/updates/loader/Loader;->existingAssetList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_2
    iget-object p2, p0, Lexpo/modules/updates/loader/Loader;->finishedAssetList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_0
    iget-object p2, p0, Lexpo/modules/updates/loader/Loader;->callback:Lexpo/modules/updates/loader/Loader$LoaderCallback;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->finishedAssetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lexpo/modules/updates/loader/Loader;->existingAssetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    iget-object v1, p0, Lexpo/modules/updates/loader/Loader;->erroredAssetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 285
    iget v2, p0, Lexpo/modules/updates/loader/Loader;->assetTotal:I

    .line 281
    invoke-interface {p2, p1, v0, v1, v2}, Lexpo/modules/updates/loader/Loader$LoaderCallback;->onAssetLoaded(Lexpo/modules/updates/db/entity/AssetEntity;III)V

    .line 288
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader;->finishedAssetList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lexpo/modules/updates/loader/Loader;->erroredAssetList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lexpo/modules/updates/loader/Loader;->existingAssetList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lexpo/modules/updates/loader/Loader;->assetTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_7

    .line 290
    :try_start_1
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader;->existingAssetList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lexpo/modules/updates/db/entity/AssetEntity;

    .line 291
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase;->assetDao()Lexpo/modules/updates/db/dao/AssetDao;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->isLaunchAsset()Z

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lexpo/modules/updates/db/dao/AssetDao;->addExistingAssetToUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/AssetEntity;Z)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    .line 299
    :try_start_2
    sget-object v0, Lexpo/modules/updates/UpdatesUtils;->INSTANCE:Lexpo/modules/updates/UpdatesUtils;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lexpo/modules/updates/loader/Loader;->updatesDirectory:Ljava/io/File;

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->getRelativePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lexpo/modules/updates/UpdatesUtils;->sha256(Ljava/io/File;)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    const/4 v0, 0x0

    .line 302
    :goto_2
    :try_start_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v1}, Lexpo/modules/updates/db/entity/AssetEntity;->setDownloadTime(Ljava/util/Date;)V

    .line 303
    invoke-virtual {p2, v0}, Lexpo/modules/updates/db/entity/AssetEntity;->setHash([B)V

    .line 304
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->finishedAssetList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    :cond_4
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->assetDao()Lexpo/modules/updates/db/dao/AssetDao;

    move-result-object p1

    iget-object p2, p0, Lexpo/modules/updates/loader/Loader;->finishedAssetList:Ljava/util/List;

    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lexpo/modules/updates/db/dao/AssetDao;->insertAssets(Ljava/util/List;Lexpo/modules/updates/db/entity/UpdateEntity;)V

    .line 310
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader;->erroredAssetList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 311
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {p1}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object p1

    iget-object p2, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lexpo/modules/updates/db/dao/UpdateDao;->markUpdateFinished(Lexpo/modules/updates/db/entity/UpdateEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    :cond_5
    :try_start_4
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader;->erroredAssetList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 319
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to load all assets"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/Loader;->finishWithException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 321
    :cond_6
    invoke-direct {p0}, Lexpo/modules/updates/loader/Loader;->finishWithSuccess()V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 314
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Error while adding new update to database"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lexpo/modules/updates/loader/Loader;->finishWithException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 324
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private final processUpdate(Lexpo/modules/updates/manifest/Update;)V
    .locals 6

    .line 172
    invoke-interface {p1}, Lexpo/modules/updates/manifest/Update;->isDevelopmentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {p1}, Lexpo/modules/updates/manifest/Update;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lexpo/modules/updates/db/dao/UpdateDao;->insertUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;)V

    .line 177
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/updates/db/dao/UpdateDao;->markUpdateFinished(Lexpo/modules/updates/db/entity/UpdateEntity;)V

    .line 178
    invoke-direct {p0}, Lexpo/modules/updates/loader/Loader;->finishWithSuccess()V

    return-void

    .line 182
    :cond_0
    invoke-interface {p1}, Lexpo/modules/updates/manifest/Update;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {v1}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object v1

    .line 184
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Lexpo/modules/updates/db/dao/UpdateDao;->loadUpdateWithId(Ljava/util/UUID;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {v1}, Lexpo/modules/updates/db/entity/UpdateEntity;->getScopeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->getScopeKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    iget-object v2, p0, Lexpo/modules/updates/loader/Loader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v3, "Loaded an update with the same ID but a different scopeKey than one we already have on disk. This is a server error. Overwriting the scopeKey and loading the existing update."

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lexpo/modules/updates/logging/UpdatesLogger;->warn$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    .line 192
    iget-object v2, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {v2}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object v2

    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->getScopeKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lexpo/modules/updates/db/dao/UpdateDao;->setUpdateScopeKey(Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {v1}, Lexpo/modules/updates/db/entity/UpdateEntity;->getStatus()Lexpo/modules/updates/db/enums/UpdateStatus;

    move-result-object v2

    sget-object v3, Lexpo/modules/updates/db/enums/UpdateStatus;->READY:Lexpo/modules/updates/db/enums/UpdateStatus;

    if-ne v2, v3, :cond_2

    .line 197
    iput-object v1, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 198
    invoke-direct {p0}, Lexpo/modules/updates/loader/Loader;->finishWithSuccess()V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 202
    iput-object v0, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 203
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {v0}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lexpo/modules/updates/db/dao/UpdateDao;->insertUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;)V

    goto :goto_0

    .line 207
    :cond_3
    iput-object v1, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 209
    :goto_0
    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/Loader;->downloadAllAssets(Lexpo/modules/updates/manifest/Update;)V

    :goto_1
    return-void
.end method

.method private final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lexpo/modules/updates/loader/Loader;->updateResponse:Lexpo/modules/updates/loader/UpdateResponse;

    .line 129
    iput-object v0, p0, Lexpo/modules/updates/loader/Loader;->updateEntity:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 130
    iput-object v0, p0, Lexpo/modules/updates/loader/Loader;->callback:Lexpo/modules/updates/loader/Loader$LoaderCallback;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lexpo/modules/updates/loader/Loader;->assetTotal:I

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/updates/loader/Loader;->erroredAssetList:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/updates/loader/Loader;->existingAssetList:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/updates/loader/Loader;->finishedAssetList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getLogger()Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    return-object v0
.end method

.method protected abstract loadAsset(Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;)V
.end method

.method protected abstract loadRemoteUpdate(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V
.end method

.method public final start(Lexpo/modules/updates/loader/Loader$LoaderCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->callback:Lexpo/modules/updates/loader/Loader$LoaderCallback;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "RemoteLoader has already started. Create a new instance in order to load multiple URLs in parallel."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lexpo/modules/updates/loader/Loader$LoaderCallback;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 100
    :cond_0
    iput-object p1, p0, Lexpo/modules/updates/loader/Loader;->callback:Lexpo/modules/updates/loader/Loader$LoaderCallback;

    .line 103
    iget-object p1, p0, Lexpo/modules/updates/loader/Loader;->database:Lexpo/modules/updates/db/UpdatesDatabase;

    .line 104
    iget-object v0, p0, Lexpo/modules/updates/loader/Loader;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 105
    new-instance v1, Lexpo/modules/updates/loader/Loader$start$1;

    invoke-direct {v1, p0}, Lexpo/modules/updates/loader/Loader$start$1;-><init>(Lexpo/modules/updates/loader/Loader;)V

    check-cast v1, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    .line 102
    invoke-virtual {p0, p1, v0, v1}, Lexpo/modules/updates/loader/Loader;->loadRemoteUpdate(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V

    return-void
.end method
