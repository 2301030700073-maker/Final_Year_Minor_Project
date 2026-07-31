.class public final Lexpo/modules/updates/loader/LoaderTask;
.super Ljava/lang/Object;
.source "LoaderTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/loader/LoaderTask$Companion;,
        Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;,
        Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResult;,
        Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;,
        Lexpo/modules/updates/loader/LoaderTask$RemoteUpdateStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoaderTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoaderTask.kt\nexpo/modules/updates/loader/LoaderTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,487:1\n1#2:488\n314#3,11:489\n314#3,11:500\n*S KotlinDebug\n*F\n+ 1 LoaderTask.kt\nexpo/modules/updates/loader/LoaderTask\n*L\n279#1:489,11\n340#1:500,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 32\u00020\u0001:\u0005/0123BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u0010#J\u000e\u0010$\u001a\u00020\"H\u0082@\u00a2\u0006\u0002\u0010#J\u0018\u0010%\u001a\u00020\"2\u000e\u0010&\u001a\n\u0018\u00010\'j\u0004\u0018\u0001`(H\u0002J\u0008\u0010)\u001a\u00020\"H\u0002J\u0008\u0010*\u001a\u00020\"H\u0002J\u0008\u0010+\u001a\u00020\"H\u0002J\u000e\u0010,\u001a\u00020\"H\u0082@\u00a2\u0006\u0002\u0010#J\u000e\u0010-\u001a\u00020\"H\u0082@\u00a2\u0006\u0002\u0010#J\u0008\u0010.\u001a\u00020\"H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lexpo/modules/updates/loader/LoaderTask;",
        "",
        "context",
        "Landroid/content/Context;",
        "configuration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "databaseHolder",
        "Lexpo/modules/updates/db/DatabaseHolder;",
        "directory",
        "Ljava/io/File;",
        "fileDownloader",
        "Lexpo/modules/updates/loader/FileDownloader;",
        "selectionPolicy",
        "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "callback",
        "Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;)V",
        "value",
        "",
        "isRunning",
        "()Z",
        "isReadyToLaunch",
        "timeoutFinished",
        "hasLaunched",
        "isUpToDate",
        "handlerThread",
        "Landroid/os/HandlerThread;",
        "candidateLauncher",
        "Lexpo/modules/updates/launcher/Launcher;",
        "finalizedLauncher",
        "start",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "launchRemoteUpdate",
        "finish",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "maybeFinish",
        "stopTimer",
        "timeout",
        "launchFallbackUpdateFromDisk",
        "launchRemoteUpdateInBackground",
        "runReaper",
        "RemoteUpdateStatus",
        "RemoteCheckResultNotAvailableReason",
        "RemoteCheckResult",
        "LoaderTaskCallback",
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
.field public static final Companion:Lexpo/modules/updates/loader/LoaderTask$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

.field private candidateLauncher:Lexpo/modules/updates/launcher/Launcher;

.field private final configuration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final context:Landroid/content/Context;

.field private final databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

.field private final directory:Ljava/io/File;

.field private final fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

.field private finalizedLauncher:Lexpo/modules/updates/launcher/Launcher;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private hasLaunched:Z

.field private isReadyToLaunch:Z

.field private isRunning:Z

.field private isUpToDate:Z

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private final selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

.field private timeoutFinished:Z


# direct methods
.method public static synthetic $r8$lambda$fg9BlWlTpJ9P4fuIMXY8e0u8j-8(Lexpo/modules/updates/loader/LoaderTask;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->start$lambda$0(Lexpo/modules/updates/loader/LoaderTask;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/loader/LoaderTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/loader/LoaderTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/loader/LoaderTask;->Companion:Lexpo/modules/updates/loader/LoaderTask$Companion;

    .line 484
    const-string v0, "LoaderTask"

    sput-object v0, Lexpo/modules/updates/loader/LoaderTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileDownloader"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionPolicy"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lexpo/modules/updates/loader/LoaderTask;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lexpo/modules/updates/loader/LoaderTask;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 51
    iput-object p3, p0, Lexpo/modules/updates/loader/LoaderTask;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    .line 52
    iput-object p4, p0, Lexpo/modules/updates/loader/LoaderTask;->directory:Ljava/io/File;

    .line 53
    iput-object p5, p0, Lexpo/modules/updates/loader/LoaderTask;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 54
    iput-object p6, p0, Lexpo/modules/updates/loader/LoaderTask;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 55
    iput-object p7, p0, Lexpo/modules/updates/loader/LoaderTask;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 56
    iput-object p8, p0, Lexpo/modules/updates/loader/LoaderTask;->callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    .line 155
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "expo-updates-timer"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lexpo/modules/updates/loader/LoaderTask;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/updates/loader/LoaderTask;->callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    return-object p0
.end method

.method public static final synthetic access$getCandidateLauncher$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/launcher/Launcher;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/updates/loader/LoaderTask;->candidateLauncher:Lexpo/modules/updates/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/updates/loader/LoaderTask;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lexpo/modules/updates/loader/LoaderTask;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/updates/loader/LoaderTask;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDatabaseHolder$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/db/DatabaseHolder;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/updates/loader/LoaderTask;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    return-object p0
.end method

.method public static final synthetic access$getDirectory$p(Lexpo/modules/updates/loader/LoaderTask;)Ljava/io/File;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/updates/loader/LoaderTask;->directory:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getFileDownloader$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/FileDownloader;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/updates/loader/LoaderTask;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    return-object p0
.end method

.method public static final synthetic access$getHasLaunched$p(Lexpo/modules/updates/loader/LoaderTask;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lexpo/modules/updates/loader/LoaderTask;->hasLaunched:Z

    return p0
.end method

.method public static final synthetic access$getLogger$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/updates/loader/LoaderTask;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    return-object p0
.end method

.method public static final synthetic access$getSelectionPolicy$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;
    .locals 0

    .line 48
    iget-object p0, p0, Lexpo/modules/updates/loader/LoaderTask;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    return-object p0
.end method

.method public static final synthetic access$launchFallbackUpdateFromDisk(Lexpo/modules/updates/loader/LoaderTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/LoaderTask;->launchFallbackUpdateFromDisk(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$launchRemoteUpdate(Lexpo/modules/updates/loader/LoaderTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/LoaderTask;->launchRemoteUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$launchRemoteUpdateInBackground(Lexpo/modules/updates/loader/LoaderTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lexpo/modules/updates/loader/LoaderTask;->launchRemoteUpdateInBackground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCandidateLauncher$p(Lexpo/modules/updates/loader/LoaderTask;Lexpo/modules/updates/launcher/Launcher;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lexpo/modules/updates/loader/LoaderTask;->candidateLauncher:Lexpo/modules/updates/launcher/Launcher;

    return-void
.end method

.method public static final synthetic access$setUpToDate$p(Lexpo/modules/updates/loader/LoaderTask;Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lexpo/modules/updates/loader/LoaderTask;->isUpToDate:Z

    return-void
.end method

.method private final declared-synchronized finish(Ljava/lang/Exception;)V
    .locals 3

    monitor-enter p0

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lexpo/modules/updates/loader/LoaderTask;->hasLaunched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 230
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 232
    :try_start_1
    iput-boolean v0, p0, Lexpo/modules/updates/loader/LoaderTask;->hasLaunched:Z

    .line 233
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask;->candidateLauncher:Lexpo/modules/updates/launcher/Launcher;

    iput-object v0, p0, Lexpo/modules/updates/loader/LoaderTask;->finalizedLauncher:Lexpo/modules/updates/launcher/Launcher;

    .line 234
    iget-boolean v1, p0, Lexpo/modules/updates/loader/LoaderTask;->isReadyToLaunch:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask;->callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    iget-object v1, p0, Lexpo/modules/updates/loader/LoaderTask;->finalizedLauncher:Lexpo/modules/updates/launcher/Launcher;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v2, p0, Lexpo/modules/updates/loader/LoaderTask;->isUpToDate:Z

    invoke-interface {v0, v1, v2}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onSuccess(Lexpo/modules/updates/launcher/Launcher;Z)V

    goto :goto_2

    .line 235
    :cond_2
    :goto_0
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask;->callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    if-nez p1, :cond_3

    .line 237
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "LoaderTask encountered an unexpected error and could not launch an update."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    .line 235
    :goto_1
    invoke-interface {v0, v1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onFailure(Ljava/lang/Exception;)V

    .line 242
    :goto_2
    iget-boolean v0, p0, Lexpo/modules/updates/loader/LoaderTask;->timeoutFinished:Z

    if-nez v0, :cond_4

    .line 243
    invoke-direct {p0}, Lexpo/modules/updates/loader/LoaderTask;->stopTimer()V

    :cond_4
    if-eqz p1, :cond_5

    .line 246
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v1, "Unexpected error encountered while loading this app"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->Unknown:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final launchFallbackUpdateFromDisk(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 490
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 496
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 497
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 280
    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getDatabaseHolder$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/db/DatabaseHolder;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v2

    .line 282
    new-instance v13, Lexpo/modules/updates/launcher/DatabaseLauncher;

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getContext$p(Lexpo/modules/updates/loader/LoaderTask;)Landroid/content/Context;

    move-result-object v4

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getConfiguration$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v5

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getDirectory$p(Lexpo/modules/updates/loader/LoaderTask;)Ljava/io/File;

    move-result-object v6

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getFileDownloader$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/FileDownloader;

    move-result-object v7

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getSelectionPolicy$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v8

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getLogger$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v9

    const/16 v11, 0x40

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lexpo/modules/updates/launcher/DatabaseLauncher;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/logging/UpdatesLogger;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 283
    move-object v3, v13

    check-cast v3, Lexpo/modules/updates/launcher/Launcher;

    invoke-static {p0, v3}, Lexpo/modules/updates/loader/LoaderTask;->access$setCandidateLauncher$p(Lexpo/modules/updates/loader/LoaderTask;Lexpo/modules/updates/launcher/Launcher;)V

    .line 284
    new-instance v3, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$launcherCallback$1;

    invoke-direct {v3, v1}, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$launcherCallback$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    move-object v1, v3

    check-cast v1, Lexpo/modules/updates/launcher/Launcher$LauncherCallback;

    .line 293
    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getConfiguration$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/updates/UpdatesConfiguration;->getHasEmbeddedUpdate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    sget-object v3, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->INSTANCE:Lexpo/modules/updates/manifest/EmbeddedManifestUtils;

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getContext$p(Lexpo/modules/updates/loader/LoaderTask;)Landroid/content/Context;

    move-result-object v4

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getConfiguration$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->getEmbeddedUpdate(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/EmbeddedUpdate;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v3

    .line 299
    invoke-virtual {v13, v2}, Lexpo/modules/updates/launcher/DatabaseLauncher;->getLaunchableUpdate(Lexpo/modules/updates/db/UpdatesDatabase;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v4

    .line 300
    sget-object v5, Lexpo/modules/updates/manifest/ManifestMetadata;->INSTANCE:Lexpo/modules/updates/manifest/ManifestMetadata;

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getConfiguration$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lexpo/modules/updates/manifest/ManifestMetadata;->getManifestFilters(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/UpdatesConfiguration;)Lorg/json/JSONObject;

    move-result-object v5

    .line 301
    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getSelectionPolicy$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    move-result-object v6

    invoke-virtual {v6, v3, v4, v5}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->shouldLoadNewUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    new-instance v9, Lexpo/modules/updates/loader/EmbeddedLoader;

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getContext$p(Lexpo/modules/updates/loader/LoaderTask;)Landroid/content/Context;

    move-result-object v4

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getConfiguration$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v5

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getLogger$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v6

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getDirectory$p(Lexpo/modules/updates/loader/LoaderTask;)Ljava/io/File;

    move-result-object v8

    move-object v3, v9

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lexpo/modules/updates/loader/EmbeddedLoader;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Ljava/io/File;)V

    new-instance v3, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;

    invoke-direct {v3, p0, v13, v2, v1}, Lexpo/modules/updates/loader/LoaderTask$launchFallbackUpdateFromDisk$2$1;-><init>(Lexpo/modules/updates/loader/LoaderTask;Lexpo/modules/updates/launcher/DatabaseLauncher;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    check-cast v3, Lexpo/modules/updates/loader/Loader$LoaderCallback;

    invoke-virtual {v9, v3}, Lexpo/modules/updates/loader/EmbeddedLoader;->start(Lexpo/modules/updates/loader/Loader$LoaderCallback;)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {v13, v2, v1}, Lexpo/modules/updates/launcher/DatabaseLauncher;->launch(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v13, v2, v1}, Lexpo/modules/updates/launcher/DatabaseLauncher;->launch(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/launcher/Launcher$LauncherCallback;)V

    .line 498
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 489
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_3

    return-object v0

    .line 499
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final launchRemoteUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;

    iget v1, v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;-><init>(Lexpo/modules/updates/loader/LoaderTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 205
    iget v2, v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/updates/loader/LoaderTask;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 207
    :try_start_1
    iput-object p0, v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdate$1;->label:I

    invoke-direct {p0, v0}, Lexpo/modules/updates/loader/LoaderTask;->launchRemoteUpdateInBackground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 208
    :goto_1
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-boolean v4, v0, Lexpo/modules/updates/loader/LoaderTask;->isReadyToLaunch:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    const/4 p1, 0x0

    .line 209
    invoke-direct {v0, p1}, Lexpo/modules/updates/loader/LoaderTask;->finish(Ljava/lang/Exception;)V

    .line 210
    iput-boolean v3, v0, Lexpo/modules/updates/loader/LoaderTask;->isRunning:Z

    .line 211
    invoke-direct {v0}, Lexpo/modules/updates/loader/LoaderTask;->runReaper()V

    .line 212
    iget-object p1, v0, Lexpo/modules/updates/loader/LoaderTask;->callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    invoke-interface {p1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onFinishedAllLoading()V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 208
    monitor-exit v0

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_1
    move-exception p1

    move-object v0, p0

    .line 214
    :goto_2
    invoke-direct {v0, p1}, Lexpo/modules/updates/loader/LoaderTask;->finish(Ljava/lang/Exception;)V

    .line 215
    iput-boolean v3, v0, Lexpo/modules/updates/loader/LoaderTask;->isRunning:Z

    .line 216
    invoke-direct {v0}, Lexpo/modules/updates/loader/LoaderTask;->runReaper()V

    .line 217
    iget-object p1, v0, Lexpo/modules/updates/loader/LoaderTask;->callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    invoke-interface {p1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onFinishedAllLoading()V

    .line 219
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final launchRemoteUpdateInBackground(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 501
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 507
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 508
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 341
    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getDatabaseHolder$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/db/DatabaseHolder;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v2

    .line 342
    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getCallback$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    move-result-object v3

    invoke-interface {v3}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onRemoteCheckForUpdateStarted()V

    .line 343
    new-instance v11, Lexpo/modules/updates/loader/RemoteLoader;

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getContext$p(Lexpo/modules/updates/loader/LoaderTask;)Landroid/content/Context;

    move-result-object v4

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getConfiguration$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v5

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getLogger$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v6

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getFileDownloader$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/loader/FileDownloader;

    move-result-object v8

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getDirectory$p(Lexpo/modules/updates/loader/LoaderTask;)Ljava/io/File;

    move-result-object v9

    invoke-static {p0}, Lexpo/modules/updates/loader/LoaderTask;->access$getCandidateLauncher$p(Lexpo/modules/updates/loader/LoaderTask;)Lexpo/modules/updates/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v10, v3

    move-object v3, v11

    move-object v7, v2

    invoke-direct/range {v3 .. v10}, Lexpo/modules/updates/loader/RemoteLoader;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/loader/FileDownloader;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;)V

    .line 344
    new-instance v3, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;

    invoke-direct {v3, p0, v1, v2}, Lexpo/modules/updates/loader/LoaderTask$launchRemoteUpdateInBackground$2$1;-><init>(Lexpo/modules/updates/loader/LoaderTask;Lkotlinx/coroutines/CancellableContinuation;Lexpo/modules/updates/db/UpdatesDatabase;)V

    check-cast v3, Lexpo/modules/updates/loader/Loader$LoaderCallback;

    invoke-virtual {v11, v3}, Lexpo/modules/updates/loader/RemoteLoader;->start(Lexpo/modules/updates/loader/Loader$LoaderCallback;)V

    .line 509
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 500
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_2

    return-object v0

    .line 510
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final declared-synchronized maybeFinish()V
    .locals 1

    monitor-enter p0

    .line 257
    :try_start_0
    iget-boolean v0, p0, Lexpo/modules/updates/loader/LoaderTask;->isReadyToLaunch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lexpo/modules/updates/loader/LoaderTask;->timeoutFinished:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0}, Lexpo/modules/updates/loader/LoaderTask;->finish(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final runReaper()V
    .locals 5

    .line 468
    monitor-enter p0

    .line 469
    :try_start_0
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask;->finalizedLauncher:Lexpo/modules/updates/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 471
    iget-object v1, p0, Lexpo/modules/updates/loader/LoaderTask;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    invoke-virtual {v1}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v1

    .line 473
    iget-object v2, p0, Lexpo/modules/updates/loader/LoaderTask;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 475
    iget-object v3, p0, Lexpo/modules/updates/loader/LoaderTask;->directory:Ljava/io/File;

    .line 477
    iget-object v4, p0, Lexpo/modules/updates/loader/LoaderTask;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 472
    invoke-static {v2, v1, v3, v0, v4}, Lexpo/modules/updates/db/Reaper;->reapUnusedUpdates(Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/UpdatesDatabase;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;)V

    .line 480
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final start$lambda$0(Lexpo/modules/updates/loader/LoaderTask;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lexpo/modules/updates/loader/LoaderTask;->timeout()V

    return-void
.end method

.method private final declared-synchronized stopTimer()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 266
    :try_start_0
    iput-boolean v0, p0, Lexpo/modules/updates/loader/LoaderTask;->timeoutFinished:Z

    .line 267
    iget-object v0, p0, Lexpo/modules/updates/loader/LoaderTask;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized timeout()V
    .locals 1

    monitor-enter p0

    .line 272
    :try_start_0
    iget-boolean v0, p0, Lexpo/modules/updates/loader/LoaderTask;->timeoutFinished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lexpo/modules/updates/loader/LoaderTask;->timeoutFinished:Z

    .line 274
    invoke-direct {p0}, Lexpo/modules/updates/loader/LoaderTask;->maybeFinish()V

    .line 276
    :cond_0
    invoke-direct {p0}, Lexpo/modules/updates/loader/LoaderTask;->stopTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final isRunning()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lexpo/modules/updates/loader/LoaderTask;->isRunning:Z

    return v0
.end method

.method public final start(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/updates/loader/LoaderTask$start$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/updates/loader/LoaderTask$start$1;

    iget v1, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/updates/loader/LoaderTask$start$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/updates/loader/LoaderTask$start$1;-><init>(Lexpo/modules/updates/loader/LoaderTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 159
    iget v2, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    iget-object v0, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/updates/loader/LoaderTask;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean v2, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->Z$0:Z

    iget-object v5, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lexpo/modules/updates/loader/LoaderTask;

    goto :goto_1

    :cond_3
    iget-boolean v2, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->Z$0:Z

    iget-object v5, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lexpo/modules/updates/loader/LoaderTask;

    :goto_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    move-object v8, v5

    goto/16 :goto_4

    :cond_4
    iget-boolean v2, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->Z$0:Z

    iget-object v8, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lexpo/modules/updates/loader/LoaderTask;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    iput-boolean v7, p0, Lexpo/modules/updates/loader/LoaderTask;->isRunning:Z

    .line 162
    sget-object p1, Lexpo/modules/updates/UpdatesUtils;->INSTANCE:Lexpo/modules/updates/UpdatesUtils;

    iget-object v2, p0, Lexpo/modules/updates/loader/LoaderTask;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    iget-object v8, p0, Lexpo/modules/updates/loader/LoaderTask;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    iget-object v9, p0, Lexpo/modules/updates/loader/LoaderTask;->context:Landroid/content/Context;

    invoke-virtual {p1, v2, v8, v9}, Lexpo/modules/updates/UpdatesUtils;->shouldCheckForUpdateOnLaunch(Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Landroid/content/Context;)Z

    move-result v2

    .line 163
    iget-object p1, p0, Lexpo/modules/updates/loader/LoaderTask;->configuration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {p1}, Lexpo/modules/updates/UpdatesConfiguration;->getLaunchWaitMs()I

    move-result p1

    if-lez p1, :cond_6

    if-eqz v2, :cond_6

    .line 165
    iget-object v8, p0, Lexpo/modules/updates/loader/LoaderTask;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lexpo/modules/updates/loader/LoaderTask;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lexpo/modules/updates/loader/LoaderTask$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lexpo/modules/updates/loader/LoaderTask$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/loader/LoaderTask;)V

    int-to-long v10, p1

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto :goto_2

    .line 168
    :cond_6
    iput-boolean v7, p0, Lexpo/modules/updates/loader/LoaderTask;->timeoutFinished:Z

    .line 172
    :goto_2
    :try_start_2
    iput-object p0, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$0:Ljava/lang/Object;

    iput-boolean v2, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->Z$0:Z

    iput v7, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->label:I

    invoke-direct {p0, v0}, Lexpo/modules/updates/loader/LoaderTask;->launchFallbackUpdateFromDisk(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v8, p0

    .line 173
    :goto_3
    :try_start_3
    iget-object p1, v8, Lexpo/modules/updates/loader/LoaderTask;->candidateLauncher:Lexpo/modules/updates/launcher/Launcher;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 174
    iget-object p1, v8, Lexpo/modules/updates/loader/LoaderTask;->callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    iget-object v9, v8, Lexpo/modules/updates/loader/LoaderTask;->candidateLauncher:Lexpo/modules/updates/launcher/Launcher;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lexpo/modules/updates/launcher/Launcher;->getLaunchedUpdate()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v9}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onCachedUpdateLoaded(Lexpo/modules/updates/db/entity/UpdateEntity;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 177
    invoke-direct {v8}, Lexpo/modules/updates/loader/LoaderTask;->stopTimer()V

    const/4 p1, 0x0

    .line 178
    iput-object p1, v8, Lexpo/modules/updates/loader/LoaderTask;->candidateLauncher:Lexpo/modules/updates/launcher/Launcher;

    .line 179
    iput-object v8, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$0:Ljava/lang/Object;

    iput-boolean v2, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->Z$0:Z

    iput v6, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->label:I

    invoke-direct {v8, v0}, Lexpo/modules/updates/loader/LoaderTask;->launchRemoteUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    .line 181
    :cond_8
    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 182
    :try_start_4
    iput-boolean v7, v8, Lexpo/modules/updates/loader/LoaderTask;->isReadyToLaunch:Z

    .line 183
    invoke-direct {v8}, Lexpo/modules/updates/loader/LoaderTask;->maybeFinish()V

    .line 184
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    :try_start_5
    monitor-exit v8

    if-eqz v2, :cond_9

    .line 186
    iput-object v8, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$0:Ljava/lang/Object;

    iput-boolean v2, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->Z$0:Z

    iput v5, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->label:I

    invoke-direct {v8, v0}, Lexpo/modules/updates/loader/LoaderTask;->launchRemoteUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    .line 188
    :cond_9
    iput-boolean v3, v8, Lexpo/modules/updates/loader/LoaderTask;->isRunning:Z

    .line 189
    invoke-direct {v8}, Lexpo/modules/updates/loader/LoaderTask;->runReaper()V

    .line 190
    iget-object p1, v8, Lexpo/modules/updates/loader/LoaderTask;->callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    invoke-interface {p1}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onFinishedAllLoading()V

    goto :goto_7

    :catchall_0
    move-exception p1

    .line 181
    monitor-exit v8

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_2
    move-exception p1

    move-object v8, p0

    :goto_4
    if-nez v2, :cond_a

    .line 195
    invoke-direct {v8, p1}, Lexpo/modules/updates/loader/LoaderTask;->finish(Ljava/lang/Exception;)V

    .line 196
    iput-boolean v3, v8, Lexpo/modules/updates/loader/LoaderTask;->isRunning:Z

    .line 197
    iget-object v0, v8, Lexpo/modules/updates/loader/LoaderTask;->callback:Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;

    invoke-interface {v0}, Lexpo/modules/updates/loader/LoaderTask$LoaderTaskCallback;->onFinishedAllLoading()V

    goto :goto_6

    .line 199
    :cond_a
    iput-object v8, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/updates/loader/LoaderTask$start$1;->label:I

    invoke-direct {v8, v0}, Lexpo/modules/updates/loader/LoaderTask;->launchRemoteUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_b

    return-object v1

    :cond_b
    move-object v1, p1

    move-object v0, v8

    :goto_5
    move-object v8, v0

    move-object p1, v1

    .line 201
    :goto_6
    iget-object v0, v8, Lexpo/modules/updates/loader/LoaderTask;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v1, "Failed to launch embedded or launchable update"

    sget-object v2, Lexpo/modules/updates/logging/UpdatesErrorCode;->UpdateFailedToLoad:Lexpo/modules/updates/logging/UpdatesErrorCode;

    invoke-virtual {v0, v1, p1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->error(Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;)V

    .line 203
    :cond_c
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
