.class public final Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;
.super Ljava/lang/Object;
.source "DatabaseLauncher.kt"

# interfaces
.implements Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/launcher/DatabaseLauncher;->ensureAssetExists(Lexpo/modules/updates/db/entity/AssetEntity;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/manifest/EmbeddedUpdate;Lorg/json/JSONObject;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "expo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1",
        "Lexpo/modules/updates/loader/FileDownloader$AssetDownloadCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "assetEntity",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "onSuccess",
        "isNew",
        "",
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


# instance fields
.field final synthetic $database:Lexpo/modules/updates/db/UpdatesDatabase;

.field final synthetic this$0:Lexpo/modules/updates/launcher/DatabaseLauncher;


# direct methods
.method constructor <init>(Lexpo/modules/updates/launcher/DatabaseLauncher;Lexpo/modules/updates/db/UpdatesDatabase;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;->this$0:Lexpo/modules/updates/launcher/DatabaseLauncher;

    iput-object p2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;->$database:Lexpo/modules/updates/db/UpdatesDatabase;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;Lexpo/modules/updates/db/entity/AssetEntity;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetEntity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;->this$0:Lexpo/modules/updates/launcher/DatabaseLauncher;

    invoke-static {v0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->access$getLogger$p(Lexpo/modules/updates/launcher/DatabaseLauncher;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v0

    const-string v1, "Failed to load asset from disk or network"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->AssetsFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 256
    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/AssetEntity;->isLaunchAsset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;->this$0:Lexpo/modules/updates/launcher/DatabaseLauncher;

    invoke-static {v0, p1}, Lexpo/modules/updates/launcher/DatabaseLauncher;->access$setLaunchAssetException$p(Lexpo/modules/updates/launcher/DatabaseLauncher;Ljava/lang/Exception;)V

    .line 259
    :cond_0
    iget-object p1, p0, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;->this$0:Lexpo/modules/updates/launcher/DatabaseLauncher;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->access$maybeFinish(Lexpo/modules/updates/launcher/DatabaseLauncher;Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;)V

    return-void
.end method

.method public onSuccess(Lexpo/modules/updates/db/entity/AssetEntity;Z)V
    .locals 2

    const-string p2, "assetEntity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object p2, p0, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;->$database:Lexpo/modules/updates/db/UpdatesDatabase;

    invoke-virtual {p2}, Lexpo/modules/updates/db/UpdatesDatabase;->assetDao()Lexpo/modules/updates/db/dao/AssetDao;

    move-result-object p2

    invoke-virtual {p2, p1}, Lexpo/modules/updates/db/dao/AssetDao;->updateAsset(Lexpo/modules/updates/db/entity/AssetEntity;)V

    .line 264
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;->this$0:Lexpo/modules/updates/launcher/DatabaseLauncher;

    invoke-static {v0}, Lexpo/modules/updates/launcher/DatabaseLauncher;->access$getUpdatesDirectory$p(Lexpo/modules/updates/launcher/DatabaseLauncher;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lexpo/modules/updates/launcher/DatabaseLauncher$ensureAssetExists$1;->this$0:Lexpo/modules/updates/launcher/DatabaseLauncher;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lexpo/modules/updates/launcher/DatabaseLauncher;->access$maybeFinish(Lexpo/modules/updates/launcher/DatabaseLauncher;Lexpo/modules/updates/db/entity/AssetEntity;Ljava/io/File;)V

    return-void
.end method
