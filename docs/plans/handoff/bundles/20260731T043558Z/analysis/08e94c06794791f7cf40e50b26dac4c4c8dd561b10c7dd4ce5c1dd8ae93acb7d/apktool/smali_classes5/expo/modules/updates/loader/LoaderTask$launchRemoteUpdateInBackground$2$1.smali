.class public final Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;
.super Ljava/lang/Object;
.source "LoaderTask.kt"

# interfaces
.implements Lexpo/modules/updates/loader/Loader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/LoaderTask;->launchRemoteUpdateInBackground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000G\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J(\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "expo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1",
        "Lexpo/modules/updates/loader/Loader$LoaderCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
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
        "onSuccess",
        "loaderResult",
        "Lexpo/modules/updates/loader/Loader$LoaderResult;",
        "launchUpdate",
        "availableUpdate",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
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
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $database:Lexpo/modules/updates/db/UpdatesDatabase;

.field final synthetic this$0:Lexpo/modules/updates/loader/LoaderTask;


# direct methods
.method constructor <init>(Lexpo/modules/updates/loader/LoaderTask;Lkotlinx/coroutines/CancellableContinuation;Lexpo/modules/updates/db/UpdatesDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/loader/LoaderTask;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lexpo/modules/updates/db/UpdatesDatabase;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    iput-object p2, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p3, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->$database:Lexpo/modules/updates/db/UpdatesDatabase;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$launchUpdate(Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;Lexpo/modules/updates/db/entity/UpdateEntity;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->launchUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;)V

    return-void
.end method

.method private final launchUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;)V
    .locals 11

    .line 425
    new-instance v10, Lexpo/modules/updates/launcher/DatabaseLauncher;

    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getContext$p(Lexpo/modules/updates/loader/LoaderTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getConfiguration$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v2

    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getDirectory$p(Lexpo/modules/updates/loader/LoaderTask;)Ljava/io/File;

    move-result-object v3

    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getFileDownloader$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/FileDownloader;

    move-result-object v4

    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getSelectionPolicy$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v5

    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getLogger$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v6

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lexpo/modules/updates/launcher/DatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 427
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->$database:Lexpo/modules/updates/db/UpdatesDatabase;

    .line 428
    new-instance v1, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;

    iget-object v2, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    iget-object v3, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {v1, v2, v3, p1, v10}, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;-><init>(Lexpo/modules/updates/loader/LoaderTask;Lkotlinx/coroutines/CancellableContinuation;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/launcher/DatabaseLauncher;)V

    check-cast v1, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    .line 426
    invoke-virtual {v10, v0, v1}, Lexpo/modules/updates/launcher/DatabaseLauncher;->launch(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Lexpo/modules/updates/db/entity/AssetEntity;III)V
    .locals 1

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteUpdateAssetLoaded(Lexpo/modules/updates/db/entity/AssetEntity;III)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object v0

    sget-object v1, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->ERROR:Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/Exception;)V

    .line 347
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getLogger$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v0

    const-string v1, "Failed to download remote update"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 348
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lexpo/modules/updates/loader/Loader$LoaderResult;)V
    .locals 11

    const-string v0, "loaderResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    sget-object v1, Lexpo/modules/updates/loader/RemoteLoader;->Companion:Lexpo/modules/updates/loader/RemoteLoader$Companion;

    .line 409
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getContext$p(Lexpo/modules/updates/loader/LoaderTask;)Landroid/content/Context;

    move-result-object v2

    .line 410
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getConfiguration$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v3

    .line 411
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getLogger$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v4

    .line 412
    iget-object v5, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->$database:Lexpo/modules/updates/db/UpdatesDatabase;

    .line 413
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getSelectionPolicy$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v6

    .line 414
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getDirectory$p(Lexpo/modules/updates/loader/LoaderTask;)Ljava/io/File;

    move-result-object v7

    .line 415
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getCandidateLauncher$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    .line 408
    new-instance v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$onSuccess$1;

    invoke-direct {v0, p0}, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$onSuccess$1;-><init>(Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;)V

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object v9, p1

    invoke-virtual/range {v1 .. v10}, Lexpo/modules/updates/loader/RemoteLoader$Companion;->processSuccessLoaderResult(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/Loader$LoaderResult;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public onUpdateResponseLoaded(Lexpo/modules/updates/loader/UpdateResponse;)Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;
    .locals 7

    const-string v0, "updateResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getDirectiveUpdateResponsePart()Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;->getUpdateDirective()Lexpo/modules/updates/loader/UpdateDirective;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 364
    instance-of p1, v0, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;

    if-eqz p1, :cond_1

    .line 365
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1, v3}, Lexpo/modules/updates/loader/LoaderTask;->access$setUpToDate$p(Lexpo/modules/updates/loader/LoaderTask;Z)V

    .line 366
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object p1

    new-instance v1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$RollBackToEmbedded;

    check-cast v0, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;->getCommitTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v1, v0}, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$RollBackToEmbedded;-><init>(Ljava/util/Date;)V

    check-cast v1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;

    invoke-interface {p1, v1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteCheckForUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;)V

    .line 367
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    invoke-direct {p1, v2}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    goto :goto_1

    .line 370
    :cond_1
    instance-of p1, v0, Lexpo/modules/updates/loader/UpdateDirective$NoUpdateAvailableUpdateDirective;

    if-eqz p1, :cond_2

    .line 371
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1, v3}, Lexpo/modules/updates/loader/LoaderTask;->access$setUpToDate$p(Lexpo/modules/updates/loader/LoaderTask;Z)V

    .line 372
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object p1

    new-instance v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;

    sget-object v1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->NO_UPDATE_AVAILABLE_ON_SERVER:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    invoke-direct {v0, v1}, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V

    check-cast v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;

    invoke-interface {p1, v0}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteCheckForUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;)V

    .line 373
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    invoke-direct {p1, v2}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    :goto_1
    return-object p1

    .line 363
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 378
    :cond_3
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getManifestUpdateResponsePart()Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;->getUpdate()Lexpo/modules/updates/manifest/Update;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_5

    .line 380
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1, v3}, Lexpo/modules/updates/loader/LoaderTask;->access$setUpToDate$p(Lexpo/modules/updates/loader/LoaderTask;Z)V

    .line 381
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object p1

    new-instance v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;

    sget-object v1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->NO_UPDATE_AVAILABLE_ON_SERVER:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    invoke-direct {v0, v1}, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V

    check-cast v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;

    invoke-interface {p1, v0}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteCheckForUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;)V

    .line 382
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    invoke-direct {p1, v2}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    return-object p1

    .line 385
    :cond_5
    iget-object v4, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v4}, Lexpo/modules/updates/loader/LoaderTask;->access$getSelectionPolicy$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v4

    .line 386
    invoke-interface {v0}, Lexpo/modules/updates/manifest/Update;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v5

    .line 387
    iget-object v6, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v6}, Lexpo/modules/updates/loader/LoaderTask;->access$getCandidateLauncher$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/launcher/Launcher;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v1

    .line 388
    :goto_3
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getResponseHeaderData()Lexpo/modules/updates/manifest/ResponseHeaderData;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponseHeaderData;->getManifestFilters()Lorg/json/JSONObject;

    move-result-object v1

    .line 385
    :cond_7
    invoke-virtual {v4, v5, v6, v1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->shouldLoadNewUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 391
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1, v2}, Lexpo/modules/updates/loader/LoaderTask;->access$setUpToDate$p(Lexpo/modules/updates/loader/LoaderTask;Z)V

    .line 392
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteUpdateManifestResponseUpdateLoaded(Lexpo/modules/updates/manifest/Update;)V

    .line 393
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object p1

    new-instance v1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$UpdateAvailable;

    invoke-interface {v0}, Lexpo/modules/updates/manifest/Update;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getRawJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$UpdateAvailable;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;

    invoke-interface {p1, v1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteCheckForUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;)V

    .line 394
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object p1

    invoke-interface {p1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteUpdateLoadStarted()V

    .line 395
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    invoke-direct {p1, v3}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    goto :goto_4

    .line 397
    :cond_8
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1, v3}, Lexpo/modules/updates/loader/LoaderTask;->access$setUpToDate$p(Lexpo/modules/updates/loader/LoaderTask;Z)V

    .line 398
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object p1

    .line 399
    new-instance v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;

    .line 400
    sget-object v1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->UPDATE_REJECTED_BY_SELECTION_POLICY:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    .line 399
    invoke-direct {v0, v1}, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V

    check-cast v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;

    .line 398
    invoke-interface {p1, v0}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteCheckForUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;)V

    .line 403
    new-instance p1, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;

    invoke-direct {p1, v2}, Lexpo/modules/updates/loader/Loader$OnUpdateResponseLoadedResult;-><init>(Z)V

    :goto_4
    return-object p1
.end method
