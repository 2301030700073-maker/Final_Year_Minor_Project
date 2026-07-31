.class public final Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;
.super Ljava/lang/Object;
.source "StartupProcedure.kt"

# interfaces
.implements Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/procedures/StartupProcedure;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;Lkotlinx/coroutines/CoroutineScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000W\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0003H\u0016J(\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J*\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u000e\u0010!\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H\u0016\u00a8\u0006\""
    }
    d2 = {
        "expo/modules/updates/procedures/StartupProcedure$loaderTask$1",
        "Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "launcher",
        "Lexpo/modules/updates/launcher/Launcher;",
        "isUpToDate",
        "",
        "onFinishedAllLoading",
        "onCachedUpdateLoaded",
        "update",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "onRemoteCheckForUpdateStarted",
        "onRemoteCheckForUpdateFinished",
        "result",
        "Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;",
        "onRemoteUpdateManifestResponseUpdateLoaded",
        "Lexpo/modules/updates/manifest/Update;",
        "onRemoteUpdateLoadStarted",
        "onRemoteUpdateAssetLoaded",
        "asset",
        "Lexpo/modules/updates/db/entity/AssetEntity;",
        "successfulAssetCount",
        "",
        "failedAssetCount",
        "totalAssetCount",
        "onRemoteUpdateFinished",
        "status",
        "Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;",
        "exception",
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
.field final synthetic this$0:Lexpo/modules/updates/procedures/StartupProcedure;


# direct methods
.method constructor <init>(Lexpo/modules/updates/procedures/StartupProcedure;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCachedUpdateLoaded(Lexpo/modules/updates/db/entity/UpdateEntity;)Z
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 9

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v0

    const-string v1, "UpdatesController loaderTask onFailure"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 84
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    new-instance v8, Lexpo/modules/updates/launcher/NoDatabaseLauncher;

    iget-object v1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lexpo/modules/updates/launcher/NoDatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/Exception;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Lexpo/modules/updates/launcher/Launcher;

    invoke-static {v0, v8}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setLauncher$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/launcher/Launcher;)V

    .line 85
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0, p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setEmergencyLaunchException$p(Lexpo/modules/updates/procedures/StartupProcedure;Ljava/lang/Exception;)V

    .line 86
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$notifyController(Lexpo/modules/updates/procedures/StartupProcedure;)V

    return-void
.end method

.method public onFinishedAllLoading()V
    .locals 4

    .line 98
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "procedureContext"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Lexpo/modules/updates/statemachine/UpdatesStateEvent$EndStartup;

    invoke-direct {v3}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$EndStartup;-><init>()V

    check-cast v3, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {v0, v3}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 99
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    return-void
.end method

.method public onRemoteCheckForUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    instance-of v0, p1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$NoUpdateAvailable;

    if-eqz v0, :cond_0

    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;

    invoke-direct {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;-><init>()V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    goto :goto_0

    .line 113
    :cond_0
    instance-of v0, p1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$UpdateAvailable;

    if-eqz v0, :cond_1

    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;

    check-cast p1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$UpdateAvailable;

    invoke-virtual {p1}, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$UpdateAvailable;->getManifest()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;-><init>(Lorg/json/JSONObject;)V

    move-object p1, v0

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    goto :goto_0

    .line 114
    :cond_1
    instance-of v0, p1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$RollBackToEmbedded;

    if-eqz v0, :cond_3

    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithRollback;

    check-cast p1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$RollBackToEmbedded;

    invoke-virtual {p1}, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult$RollBackToEmbedded;->getCommitTime()Ljava/util/Date;

    move-result-object p1

    invoke-direct {v0, p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithRollback;-><init>(Ljava/util/Date;)V

    move-object p1, v0

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    .line 116
    :goto_0
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "procedureContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-interface {v0, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    return-void

    .line 111
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public onRemoteCheckForUpdateStarted()V
    .locals 2

    .line 107
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "procedureContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Check;

    invoke-direct {v1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Check;-><init>()V

    check-cast v1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {v0, v1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    return-void
.end method

.method public onRemoteUpdateAssetLoaded(Lexpo/modules/updates/db/entity/AssetEntity;III)V
    .locals 3

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 135
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "name"

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getEmbeddedAssetFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 136
    const-string v1, "successfulAssetCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 137
    const-string p2, "failedAssetCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    .line 138
    const-string p2, "totalAssetCount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v0, p3

    .line 134
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "assetInfo"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 133
    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 141
    iget-object p3, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p3}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "AppController appLoaderTask didLoadAsset: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/AssetEntity;->getExpectedHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p4, v0, p1}, Lexpo/modules/updates/logging/UpdatesLogger;->info(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/Exception;)V
    .locals 5

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "procedureContext"

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 190
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    sget-object p2, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->IDLE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    invoke-static {p1, p2}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    .line 191
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object p1

    const-string p2, "UpdatesController onBackgroundUpdateFinished: No update available"

    sget-object p3, Lexpo/modules/updates/logging/UpdatesErrorCode;->NoUpdatesAvailable:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {p1, p2, p3}, Lexpo/modules/updates/logging/UpdatesLogger;->info(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 193
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_0
    invoke-interface {p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->getCurrentState()Lexpo/modules/updates/statemachine/UpdatesStateValue;

    move-result-object p1

    sget-object p2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Downloading:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    if-ne p1, p2, :cond_11

    .line 194
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadComplete;

    invoke-direct {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadComplete;-><init>()V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {v2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    goto/16 :goto_8

    .line 149
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    if-eqz p2, :cond_5

    .line 183
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    sget-object p3, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->NEW_UPDATE_LOADED:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    invoke-static {p1, p3}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    .line 184
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object p1

    const-string p3, "UpdatesController onBackgroundUpdateFinished: Update available"

    sget-object v0, Lexpo/modules/updates/logging/UpdatesErrorCode;->None:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {p1, p3, v0}, Lexpo/modules/updates/logging/UpdatesLogger;->info(Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 185
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p1

    .line 186
    :goto_1
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getManifest()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p2}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    .line 185
    invoke-interface {v2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    goto/16 :goto_8

    .line 181
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Background update with error status must have a nonnull update object"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_6
    if-eqz p3, :cond_12

    .line 154
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object p1

    const-string p2, "UpdatesController onBackgroundUpdateFinished"

    sget-object v4, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {p1, p2, p3, v4}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 155
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    sget-object p2, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->IDLE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    invoke-static {p1, p2}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    .line 159
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_7
    invoke-interface {p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->getCurrentState()Lexpo/modules/updates/statemachine/UpdatesStateValue;

    move-result-object p1

    sget-object p2, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lexpo/modules/updates/statemachine/UpdatesStateValue;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const-string p2, ""

    if-eq p1, v1, :cond_d

    if-eq p1, v0, :cond_a

    .line 173
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v2, p1

    .line 174
    :goto_2
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_9

    goto :goto_3

    :cond_9
    move-object p2, p3

    :goto_3
    invoke-direct {p1, p2}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;-><init>(Ljava/lang/String;)V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    .line 173
    invoke-interface {v2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    goto :goto_8

    .line 167
    :cond_a
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object v2, p1

    .line 168
    :goto_4
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckError;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_c

    goto :goto_5

    :cond_c
    move-object p2, p3

    :goto_5
    invoke-direct {p1, p2}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckError;-><init>(Ljava/lang/String;)V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    .line 167
    invoke-interface {v2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    goto :goto_8

    .line 161
    :cond_d
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_e
    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Download;

    invoke-direct {v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Download;-><init>()V

    check-cast v0, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p1, v0}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 162
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object p1

    if-nez p1, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move-object v2, p1

    .line 163
    :goto_6
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_10

    goto :goto_7

    :cond_10
    move-object p2, p3

    :goto_7
    invoke-direct {p1, p2}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;-><init>(Ljava/lang/String;)V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    .line 162
    invoke-interface {v2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 198
    :cond_11
    :goto_8
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getErrorRecovery$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/errorrecovery/ErrorRecovery;

    move-result-object p1

    iget-object p2, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p2}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lexpo/modules/updates/errorrecovery/ErrorRecovery;->notifyNewRemoteLoadStatus(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    return-void

    .line 152
    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Background update with error status must have a nonnull exception object"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public onRemoteUpdateLoadStarted()V
    .locals 2

    .line 124
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "procedureContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Download;

    invoke-direct {v1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Download;-><init>()V

    check-cast v1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {v0, v1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    return-void
.end method

.method public onRemoteUpdateManifestResponseUpdateLoaded(Lexpo/modules/updates/manifest/Update;)V
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    sget-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->NEW_UPDATE_LOADING:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    invoke-static {p1, v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    return-void
.end method

.method public onSuccess(Lexpo/modules/updates/launcher/Launcher;Z)V
    .locals 2

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    move-result-object v0

    sget-object v1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->NEW_UPDATE_LOADING:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 91
    iget-object p2, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    sget-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->IDLE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    invoke-static {p2, v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    .line 93
    :cond_0
    iget-object p2, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p2, p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setLauncher$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/launcher/Launcher;)V

    .line 94
    iget-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$loaderTask$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {p1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$notifyController(Lexpo/modules/updates/procedures/StartupProcedure;)V

    return-void
.end method
