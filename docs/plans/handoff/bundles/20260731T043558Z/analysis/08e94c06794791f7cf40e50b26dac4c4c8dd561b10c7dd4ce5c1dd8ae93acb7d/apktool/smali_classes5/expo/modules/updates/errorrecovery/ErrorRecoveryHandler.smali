.class public final Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;
.super Landroid/os/Handler;
.source "ErrorRecoveryHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Companion;,
        Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$MessageType;,
        Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;,
        Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u0000 %2\u00020\u0001:\u0003#$%B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0002J\u0010\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u0016H\u0002J\u0014\u0010\u001e\u001a\u00020\u00162\n\u0010\u001f\u001a\u00060\u0013j\u0002`\u0014H\u0002J\u0008\u0010 \u001a\u00020\u0016H\u0002J\u0008\u0010!\u001a\u00020\u0016H\u0002J\u0008\u0010\"\u001a\u00020\u0016H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0012\u001a\u001a\u0012\u0008\u0012\u00060\u0013j\u0002`\u00140\u000bj\u000c\u0012\u0008\u0012\u00060\u0013j\u0002`\u0014`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;",
        "Landroid/os/Handler;",
        "looper",
        "Landroid/os/Looper;",
        "delegate",
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "<init>",
        "(Landroid/os/Looper;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;Lexpo/modules/updates/logging/UpdatesLogger;)V",
        "pipeline",
        "Ljava/util/ArrayList;",
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;",
        "Lkotlin/collections/ArrayList;",
        "isPipelineRunning",
        "",
        "isWaitingForRemoteUpdate",
        "hasContentAppeared",
        "encounteredErrors",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "handleContentAppeared",
        "handleRemoteLoadStatusChanged",
        "newStatus",
        "Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;",
        "runNextTask",
        "maybeStartPipeline",
        "exception",
        "waitForRemoteUpdate",
        "tryRelaunchFromCache",
        "crash",
        "MessageType",
        "Task",
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
.field public static final Companion:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Companion;

.field public static final REMOTE_LOAD_TIMEOUT_MS:J = 0x1388L


# instance fields
.field private final delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

.field private final encounteredErrors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private hasContentAppeared:Z

.field private isPipelineRunning:Z

.field private isWaitingForRemoteUpdate:Z

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private final pipeline:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9QMUkAJXlACMm8g3jODwGuZT5uI(Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->waitForRemoteUpdate$lambda$0(Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->Companion:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;Lexpo/modules/updates/logging/UpdatesLogger;)V
    .locals 1

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    iput-object p2, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    .line 41
    iput-object p3, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const/4 p1, 0x4

    .line 44
    new-array p1, p1, [Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    const/4 p2, 0x0

    sget-object p3, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->WAIT_FOR_REMOTE_UPDATE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    aput-object p3, p1, p2

    const/4 p2, 0x1

    .line 45
    sget-object p3, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->LAUNCH_NEW_UPDATE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 46
    sget-object p3, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->LAUNCH_CACHED_UPDATE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 47
    sget-object p3, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->CRASH:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    aput-object p3, p1, p2

    .line 43
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->pipeline:Ljava/util/ArrayList;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->encounteredErrors:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getEncounteredErrors$p(Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->encounteredErrors:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getPipeline$p(Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->pipeline:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$runNextTask(Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->runNextTask()V

    return-void
.end method

.method public static final synthetic access$setPipelineRunning$p(Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->isPipelineRunning:Z

    return-void
.end method

.method private final crash()V
    .locals 3

    .line 180
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    iget-object v1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->encounteredErrors:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;->throwException(Ljava/lang/Exception;)V

    return-void
.end method

.method private final handleContentAppeared()V
    .locals 5

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->hasContentAppeared:Z

    .line 80
    iget-object v1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->pipeline:Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    const/4 v3, 0x0

    sget-object v4, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->WAIT_FOR_REMOTE_UPDATE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    aput-object v4, v2, v3

    sget-object v3, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->CRASH:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    aput-object v3, v2, v0

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    invoke-interface {v0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;->markSuccessfulLaunchForLaunchedUpdate()V

    return-void
.end method

.method private final handleRemoteLoadStatusChanged(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->isWaitingForRemoteUpdate:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->isWaitingForRemoteUpdate:Z

    .line 89
    sget-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->NEW_UPDATE_LOADED:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    if-eq p1, v0, :cond_1

    .line 90
    iget-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->pipeline:Ljava/util/ArrayList;

    sget-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->LAUNCH_NEW_UPDATE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->runNextTask()V

    return-void
.end method

.method private final maybeStartPipeline(Ljava/lang/Exception;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->encounteredErrors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    invoke-interface {p1}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;->getLaunchedUpdateSuccessfulLaunchCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 119
    iget-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->pipeline:Ljava/util/ArrayList;

    sget-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->LAUNCH_CACHED_UPDATE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    iget-boolean p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->hasContentAppeared:Z

    if-nez p1, :cond_1

    .line 121
    iget-object p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    invoke-interface {p1}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;->markFailedLaunchForLaunchedUpdate()V

    .line 124
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->isPipelineRunning:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->isPipelineRunning:Z

    .line 126
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->runNextTask()V

    :cond_2
    return-void
.end method

.method private final runNextTask()V
    .locals 5

    .line 96
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->pipeline:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    sget-object v2, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 110
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    iget-object v2, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->encounteredErrors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Exception;

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    const-string v3, "UpdatesErrorRecovery: could not recover from error, crashing"

    invoke-virtual {v0, v3, v1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 111
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->crash()V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 106
    :cond_1
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v1, "UpdatesErrorRecovery: falling back to older update"

    invoke-static {v0, v1, v4, v3, v4}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    .line 107
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->tryRelaunchFromCache()V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v1, "UpdatesErrorRecovery: launching new update"

    invoke-static {v0, v1, v4, v3, v4}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->tryRelaunchFromCache()V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v1, "UpdatesErrorRecovery: attempting to fetch a new update, waiting"

    invoke-static {v0, v1, v4, v3, v4}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    .line 99
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->waitForRemoteUpdate()V

    :goto_0
    return-void
.end method

.method private final tryRelaunchFromCache()V
    .locals 2

    .line 158
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    new-instance v1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$tryRelaunchFromCache$1;

    invoke-direct {v1, p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$tryRelaunchFromCache$1;-><init>(Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;)V

    check-cast v1, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    invoke-interface {v0, v1}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;->relaunch(Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    return-void
.end method

.method private final waitForRemoteUpdate()V
    .locals 3

    .line 133
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    invoke-interface {v0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;->getRemoteLoadStatus()Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    move-result-object v0

    .line 134
    sget-object v1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->NEW_UPDATE_LOADED:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    if-ne v0, v1, :cond_0

    .line 137
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->runNextTask()V

    goto :goto_1

    .line 138
    :cond_0
    sget-object v1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->NEW_UPDATE_LOADING:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    if-eq v0, v1, :cond_2

    .line 139
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    invoke-interface {v0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;->getCheckAutomaticallyConfiguration()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    move-result-object v0

    sget-object v1, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->NEVER:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->pipeline:Ljava/util/ArrayList;

    sget-object v1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;->LAUNCH_NEW_UPDATE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$Task;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->runNextTask()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->isWaitingForRemoteUpdate:Z

    .line 144
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    invoke-interface {v0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;->getRemoteLoadStatus()Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    move-result-object v0

    sget-object v1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->NEW_UPDATE_LOADING:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    if-eq v0, v1, :cond_3

    .line 147
    iget-object v0, p0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->delegate:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;

    invoke-interface {v0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate;->loadRemoteUpdate()V

    .line 149
    :cond_3
    new-instance v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method private static final waitForRemoteUpdate$lambda$0(Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;)V
    .locals 1

    .line 149
    sget-object v0, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;->IDLE:Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    invoke-direct {p0, v0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->handleRemoteLoadStatusChanged(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type expo.modules.updates.errorrecovery.ErrorRecoveryDelegate.RemoteLoadStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;

    invoke-direct {p0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->handleRemoteLoadStatusChanged(Lexpo/modules/updates/errorrecovery/ErrorRecoveryDelegate$RemoteLoadStatus;)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrorRecoveryHandler cannot handle message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    invoke-direct {p0}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->handleContentAppeared()V

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type java.lang.Exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lexpo/modules/updates/errorrecovery/ErrorRecoveryHandler;->maybeStartPipeline(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
