.class public final Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;
.super Ljava/lang/Object;
.source "LoaderTask.kt"

# interfaces
.implements Lexpo/modules/updates/loader/Loader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/LoaderTask;->launchFallbackUpdateFromDisk(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J(\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "expo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1",
        "Lexpo/modules/updates/loader/Loader$LoaderCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "loaderResult",
        "Lexpo/modules/updates/loader/Loader$LoaderResult;",
        "onAssetLoaded",
        "asset",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "successfulAssetCount",
        "",
        "failedAssetCount",
        "totalAssetCount",
        "onUpdateResponseLoaded",
        "Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;",
        "updateResponse",
        "Lexpo/modules/updates/loader/UpdateResponse;",
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

.field final synthetic $launcher:Lexpo/modules/updates/launcher/DatabaseLauncher;

.field final synthetic $launcherCallback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

.field final synthetic this$0:Lexpo/modules/updates/loader/LoaderTask;


# direct methods
.method constructor <init>(Lexpo/modules/updates/loader/LoaderTask;Lexpo/modules/updates/launcher/DatabaseLauncher;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    iput-object p2, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->$launcher:Lexpo/modules/updates/launcher/DatabaseLauncher;

    iput-object p3, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->$database:Lexpo/modules/updates/db/UpdatesDatabase;

    iput-object p4, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->$launcherCallback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Lexpo/modules/updates/db/entity/AssetEntity;III)V
    .locals 0

    const-string p2, "asset"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getLogger$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v0

    const-string v1, "Unexpected error copying embedded update"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 311
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->$launcher:Lexpo/modules/updates/launcher/DatabaseLauncher;

    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->$database:Lexpo/modules/updates/db/UpdatesDatabase;

    iget-object v1, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->$launcherCallback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-virtual {p1, v0, v1}, Lexpo/modules/updates/launcher/DatabaseLauncher;->launch(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    return-void
.end method

.method public onSuccess(Lexpo/modules/updates/loader/Loader$LoaderResult;)V
    .locals 2

    const-string v0, "loaderResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->$launcher:Lexpo/modules/updates/launcher/DatabaseLauncher;

    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->$database:Lexpo/modules/updates/db/UpdatesDatabase;

    iget-object v1, p0, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;->$launcherCallback:Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-virtual {p1, v0, v1}, Lexpo/modules/updates/launcher/DatabaseLauncher;->launch(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    return-void
.end method

.method public onUpdateResponseLoaded(Lexpo/modules/updates/loader/UpdateResponse;)Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;
    .locals 1

    const-string v0, "updateResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    return-object p1
.end method
