.class public final Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;
.super Ljava/lang/Object;
.source "LoaderTask.kt"

# interfaces
.implements Lexpo/modules/updates/launcher/Launcher$LauncherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;->launchUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "expo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1",
        "Lexpo/modules/updates/launcher/Launcher$LauncherCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
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
.field final synthetic $availableUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $newLauncher:Lexpo/modules/updates/launcher/DatabaseLauncher;

.field final synthetic this$0:Lexpo/modules/updates/loader/LoaderTask;


# direct methods
.method constructor <init>(Lexpo/modules/updates/loader/LoaderTask;Lkotlinx/coroutines/CancellableContinuation;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/launcher/DatabaseLauncher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/loader/LoaderTask;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            "Lexpo/modules/updates/launcher/DatabaseLauncher;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    iput-object p2, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p3, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->$availableUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    iput-object p4, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->$newLauncher:Lexpo/modules/updates/launcher/DatabaseLauncher;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object v0

    .line 431
    sget-object v1, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->ERROR:Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;

    const/4 v2, 0x0

    .line 430
    invoke-interface {v0, v1, v2, p1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/Exception;)V

    .line 435
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getLogger$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v0

    const-string v1, "Loaded new update but it failed to launch"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 440
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    iget-object v1, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->$newLauncher:Lexpo/modules/updates/launcher/DatabaseLauncher;

    monitor-enter v0

    .line 441
    :try_start_0
    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getHasLaunched$p(Lexpo/modules/updates/loader/LoaderTask;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    check-cast v1, Lexpo/modules/updates/launcher/Launcher;

    invoke-static {v0, v1}, Lexpo/modules/updates/loader/LoaderTask;->access$setCandidateLauncher$p(Lexpo/modules/updates/loader/LoaderTask;Lexpo/modules/updates/launcher/Launcher;)V

    const/4 v1, 0x1

    .line 443
    invoke-static {v0, v1}, Lexpo/modules/updates/loader/LoaderTask;->access$setUpToDate$p(Lexpo/modules/updates/loader/LoaderTask;Z)V

    .line 445
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit v0

    .line 446
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->$availableUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object v0

    .line 448
    sget-object v2, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->NO_UPDATE_AVAILABLE:Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;

    .line 447
    invoke-interface {v0, v2, v1, v1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/Exception;)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->this$0:Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {v0}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object v0

    .line 454
    sget-object v2, Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;->UPDATE_AVAILABLE:Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;

    .line 455
    iget-object v3, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->$availableUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 453
    invoke-interface {v0, v2, v3, v1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteUpdateFinished(Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;Lexpo/modules/updates/db/entity/UpdateEntity;Ljava/lang/Exception;)V

    .line 459
    :goto_0
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1$launchUpdate$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 440
    monitor-exit v0

    throw v1
.end method
