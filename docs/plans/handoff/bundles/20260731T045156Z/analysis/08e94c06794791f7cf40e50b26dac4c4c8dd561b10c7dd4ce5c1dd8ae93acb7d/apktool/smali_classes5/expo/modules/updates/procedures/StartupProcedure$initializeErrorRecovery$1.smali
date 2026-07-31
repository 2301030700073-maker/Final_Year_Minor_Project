.class public final Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;
.super Ljava/lang/Object;
.source "StartupProcedure.kt"

# interfaces
.implements Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/procedures/StartupProcedure;->initializeErrorRecovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0014\u0010\u0007\u001a\u00020\u00032\n\u0010\u0008\u001a\u00060\tj\u0002`\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "expo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1",
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;",
        "loadRemoteUpdate",
        "",
        "relaunch",
        "callback",
        "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
        "throwException",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "markFailedLaunchForLaunchedUpdate",
        "markSuccessfulLaunchForLaunchedUpdate",
        "getRemoteLoadStatus",
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;",
        "getCheckAutomaticallyConfiguration",
        "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
        "getLaunchedUpdateSuccessfulLaunchCount",
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
.field final synthetic this$0:Lexpo/modules/updates/procedures/StartupProcedure;


# direct methods
.method constructor <init>(Lexpo/modules/updates/procedures/StartupProcedure;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckAutomaticallyConfiguration()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
    .locals 1

    .line 306
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getUpdatesConfiguration$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/updates/UpdatesConfiguration;->getCheckOnLaunch()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchedUpdateSuccessfulLaunchCount()I
    .locals 1

    .line 307
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/updates/db/entity/UpdateEntity;->getSuccessfulLaunchCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRemoteLoadStatus()Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;
    .locals 1

    .line 305
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    move-result-object v0

    return-object v0
.end method

.method public loadRemoteUpdate()V
    .locals 10

    .line 238
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getLoaderTask$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/loader/LoaderTask;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/updates/loader/LoaderTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    sget-object v1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->NEW_UPDATE_LOADING:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    invoke-static {v0, v1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$setRemoteLoadStatus$p(Lexpo/modules/updates/procedures/StartupProcedure;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    .line 242
    new-instance v0, Lexpo/modules/updates/loader/RemoteLoader;

    iget-object v1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getContext$p(Lexpo/modules/updates/procedures/StartupProcedure;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getUpdatesConfiguration$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v4

    iget-object v1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v5

    iget-object v1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getDatabaseHolder$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/db/DatabaseHolder;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v6

    iget-object v1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getFileDownloader$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/loader/FileDownloader;

    move-result-object v7

    iget-object v1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v1}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getUpdatesDirectory$p(Lexpo/modules/updates/procedures/StartupProcedure;)Ljava/io/File;

    move-result-object v8

    iget-object v1, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v1}, Lexpo/modules/updates/procedures/StartupProcedure;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lexpo/modules/updates/loader/RemoteLoader;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/loader/FileDownloader;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;)V

    .line 243
    new-instance v1, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;

    iget-object v2, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-direct {v1, v2}, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$loadRemoteUpdate$1;-><init>(Lexpo/modules/updates/procedures/StartupProcedure;)V

    check-cast v1, Lexpo/modules/updates/loader/Loader$LoaderCallback;

    invoke-virtual {v0, v1}, Lexpo/modules/updates/loader/RemoteLoader;->start(Lexpo/modules/updates/loader/Loader$LoaderCallback;)V

    return-void
.end method

.method public markFailedLaunchForLaunchedUpdate()V
    .locals 7

    .line 286
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->getEmergencyLaunchException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureScope$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$markFailedLaunchForLaunchedUpdate$1;

    iget-object v2, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$markFailedLaunchForLaunchedUpdate$1;-><init>(Lexpo/modules/updates/procedures/StartupProcedure;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public markSuccessfulLaunchForLaunchedUpdate()V
    .locals 7

    .line 296
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-virtual {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->getEmergencyLaunchException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getProcedureScope$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$markSuccessfulLaunchForLaunchedUpdate$1;

    iget-object v2, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1$markSuccessfulLaunchForLaunchedUpdate$1;-><init>(Lexpo/modules/updates/procedures/StartupProcedure;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public relaunch(Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lexpo/modules/updates/procedures/StartupProcedure$initializeErrorRecovery$1;->this$0:Lexpo/modules/updates/procedures/StartupProcedure;

    invoke-static {v0}, Lexpo/modules/updates/procedures/StartupProcedure;->access$getCallback$p(Lexpo/modules/updates/procedures/StartupProcedure;)Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lexpo/modules/updates/procedures/StartupProcedure$StartupProcedureCallback;->onRequestRelaunch(ZLexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    return-void
.end method

.method public throwException(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    throw p1
.end method
