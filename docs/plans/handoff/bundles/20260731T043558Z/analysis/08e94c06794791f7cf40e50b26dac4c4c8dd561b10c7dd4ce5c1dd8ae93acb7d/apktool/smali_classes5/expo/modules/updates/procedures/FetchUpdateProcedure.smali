.class public final Lexpo/modules/updates/procedures/FetchUpdateProcedure;
.super Lexpo/modules/updates/procedures/StateMachineProcedure;
.source "FetchUpdateProcedure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchUpdateProcedure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchUpdateProcedure.kt\nexpo/modules/updates/procedures/FetchUpdateProcedure\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,138:1\n314#2,11:139\n*S KotlinDebug\n*F\n+ 1 FetchUpdateProcedure.kt\nexpo/modules/updates/procedures/FetchUpdateProcedure\n*L\n55#1:139,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0016\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0082@\u00a2\u0006\u0002\u0010$J\u0018\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u0019X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\'"
    }
    d2 = {
        "Lexpo/modules/updates/procedures/FetchUpdateProcedure;",
        "Lexpo/modules/updates/procedures/StateMachineProcedure;",
        "context",
        "Landroid/content/Context;",
        "updatesConfiguration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "databaseHolder",
        "Lexpo/modules/updates/db/DatabaseHolder;",
        "updatesDirectory",
        "Ljava/io/File;",
        "fileDownloader",
        "Lexpo/modules/updates/loader/FileDownloader;",
        "selectionPolicy",
        "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
        "launchedUpdate",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "callback",
        "Lkotlin/Function1;",
        "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;",
        "",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/jvm/functions/Function1;)V",
        "loggerTimerLabel",
        "",
        "getLoggerTimerLabel",
        "()Ljava/lang/String;",
        "run",
        "procedureContext",
        "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
        "(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startRemoteLoader",
        "Lexpo/modules/updates/loader/Loader$LoaderResult;",
        "database",
        "Lexpo/modules/updates/db/UpdatesDatabase;",
        "(Lexpo/modules/updates/db/UpdatesDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processSuccessLoaderResult",
        "loaderResult",
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
.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

.field private final fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

.field private final launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private final loggerTimerLabel:Ljava/lang/String;

.field private final selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

.field private final updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final updatesDirectory:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$yMWzjRCPQyl38MudQi6xtVamOVE(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lexpo/modules/updates/procedures/FetchUpdateProcedure;Lexpo/modules/updates/db/entity/UpdateEntity;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->processSuccessLoaderResult$lambda$1(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lexpo/modules/updates/procedures/FetchUpdateProcedure;Lexpo/modules/updates/db/entity/UpdateEntity;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/DatabaseHolder;Ljava/io/File;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/updates/UpdatesConfiguration;",
            "Lexpo/modules/updates/logging/UpdatesLogger;",
            "Lexpo/modules/updates/db/DatabaseHolder;",
            "Ljava/io/File;",
            "Lexpo/modules/updates/loader/FileDownloader;",
            "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/updates/IUpdatesController$FetchUpdateResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseHolder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesDirectory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileDownloader"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionPolicy"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lexpo/modules/updates/procedures/StateMachineProcedure;-><init>()V

    .line 24
    iput-object p1, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 26
    iput-object p3, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 27
    iput-object p4, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    .line 28
    iput-object p5, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->updatesDirectory:Ljava/io/File;

    .line 29
    iput-object p6, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 30
    iput-object p7, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 31
    iput-object p8, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 32
    iput-object p9, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    .line 34
    const-string p1, "timer-fetch-update"

    iput-object p1, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->loggerTimerLabel:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getFileDownloader$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/loader/FileDownloader;
    .locals 0

    .line 23
    iget-object p0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    return-object p0
.end method

.method public static final synthetic access$getLaunchedUpdate$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/db/entity/UpdateEntity;
    .locals 0

    .line 23
    iget-object p0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;
    .locals 0

    .line 23
    iget-object p0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    return-object p0
.end method

.method public static final synthetic access$getSelectionPolicy$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/selectionpolicy/SelectionPolicy;
    .locals 0

    .line 23
    iget-object p0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesConfiguration$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 0

    .line 23
    iget-object p0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesDirectory$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Ljava/io/File;
    .locals 0

    .line 23
    iget-object p0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->updatesDirectory:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$startRemoteLoader(Lexpo/modules/updates/procedures/FetchUpdateProcedure;Lexpo/modules/updates/db/UpdatesDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->startRemoteLoader(Lexpo/modules/updates/db/UpdatesDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final processSuccessLoaderResult(Lexpo/modules/updates/loader/Loader$LoaderResult;Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;)V
    .locals 10

    .line 113
    sget-object v0, Lexpo/modules/updates/loader/RemoteLoader;->Companion:Lexpo/modules/updates/loader/RemoteLoader$Companion;

    .line 114
    iget-object v1, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->context:Landroid/content/Context;

    .line 115
    iget-object v2, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 116
    iget-object v3, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 117
    iget-object v4, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    invoke-virtual {v4}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v4

    .line 118
    iget-object v5, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 119
    iget-object v6, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->updatesDirectory:Ljava/io/File;

    .line 120
    iget-object v7, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 113
    new-instance v9, Lexpo/modules/updates/procedures/FetchUpdateProcedure$$ExternalSyntheticLambda0;

    invoke-direct {v9, p2, p0}, Lexpo/modules/updates/procedures/FetchUpdateProcedure$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lexpo/modules/updates/procedures/FetchUpdateProcedure;)V

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Lexpo/modules/updates/loader/RemoteLoader$Companion;->processSuccessLoaderResult(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/loader/Loader$LoaderResult;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final processSuccessLoaderResult$lambda$1(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lexpo/modules/updates/procedures/FetchUpdateProcedure;Lexpo/modules/updates/db/entity/UpdateEntity;Z)Lkotlin/Unit;
    .locals 1

    if-eqz p3, :cond_0

    .line 124
    new-instance p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithRollback;

    invoke-direct {p2}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithRollback;-><init>()V

    check-cast p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p0, p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 125
    iget-object p0, p1, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$RollBackToEmbedded;

    invoke-direct {p1}, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$RollBackToEmbedded;-><init>()V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 128
    new-instance p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadComplete;

    invoke-direct {p2}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadComplete;-><init>()V

    check-cast p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p0, p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 129
    iget-object p0, p1, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Failure;

    invoke-direct {p1}, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Failure;-><init>()V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_1
    new-instance p3, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;

    invoke-virtual {p2}, Lexpo/modules/updates/db/entity/UpdateEntity;->getManifest()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p3, v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadCompleteWithUpdate;-><init>(Lorg/json/JSONObject;)V

    check-cast p3, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p0, p3}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 132
    iget-object p0, p1, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Success;

    invoke-direct {p1, p2}, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$Success;-><init>(Lexpo/modules/updates/db/entity/UpdateEntity;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final startRemoteLoader(Lexpo/modules/updates/db/UpdatesDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/db/UpdatesDatabase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/updates/loader/Loader$LoaderResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 140
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 146
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 147
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 56
    new-instance v10, Lexpo/modules/updates/loader/RemoteLoader;

    .line 57
    invoke-static {p0}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->access$getContext$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Landroid/content/Context;

    move-result-object v3

    .line 58
    invoke-static {p0}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->access$getUpdatesConfiguration$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v4

    .line 59
    invoke-static {p0}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->access$getLogger$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/logging/UpdatesLogger;

    move-result-object v5

    .line 61
    invoke-static {p0}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->access$getFileDownloader$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/loader/FileDownloader;

    move-result-object v7

    .line 62
    invoke-static {p0}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->access$getUpdatesDirectory$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Ljava/io/File;

    move-result-object v8

    .line 63
    invoke-static {p0}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->access$getLaunchedUpdate$p(Lexpo/modules/updates/procedures/FetchUpdateProcedure;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v9

    move-object v2, v10

    move-object v6, p1

    .line 56
    invoke-direct/range {v2 .. v9}, Lexpo/modules/updates/loader/RemoteLoader;-><init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/loader/FileDownloader;Ljava/io/File;Lexpo/modules/updates/db/entity/UpdateEntity;)V

    .line 66
    new-instance p1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;

    invoke-direct {p1, v1, p0}, Lexpo/modules/updates/procedures/FetchUpdateProcedure$startRemoteLoader$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lexpo/modules/updates/procedures/FetchUpdateProcedure;)V

    check-cast p1, Lexpo/modules/updates/loader/Loader$LoaderCallback;

    .line 65
    invoke-virtual {v10, p1}, Lexpo/modules/updates/loader/RemoteLoader;->start(Lexpo/modules/updates/loader/Loader$LoaderCallback;)V

    .line 148
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 139
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getLoggerTimerLabel()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->loggerTimerLabel:Ljava/lang/String;

    return-object v0
.end method

.method public run(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Failed to download new update: "

    instance-of v1, p2, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;

    iget v2, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget p2, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->label:I

    sub-int/2addr p2, v3

    iput p2, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;

    invoke-direct {v1, p0, p2}, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;-><init>(Lexpo/modules/updates/procedures/FetchUpdateProcedure;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 36
    iget v3, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    iget-object v1, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v7, v1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    new-instance p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Download;

    invoke-direct {p2}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Download;-><init>()V

    check-cast p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p1, p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 39
    iget-object p2, p0, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    invoke-virtual {p2}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object p2

    .line 41
    :try_start_1
    iput-object p0, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->L$0:Ljava/lang/Object;

    iput-object p1, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->L$1:Ljava/lang/Object;

    iput v4, v1, Lexpo/modules/updates/procedures/FetchUpdateProcedure$run$1;->label:I

    invoke-direct {p0, p2, v1}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->startRemoteLoader(Lexpo/modules/updates/db/UpdatesDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    .line 36
    :goto_1
    :try_start_2
    check-cast p2, Lexpo/modules/updates/loader/Loader$LoaderResult;

    .line 42
    invoke-direct {v1, p2, p1}, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->processSuccessLoaderResult(Lexpo/modules/updates/loader/Loader$LoaderResult;Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :goto_2
    invoke-interface {p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_1
    move-exception p2

    move-object v7, p0

    .line 44
    :goto_3
    :try_start_3
    iget-object v1, v7, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    const-string v2, "Failed to download new update"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lexpo/modules/updates/logging/UpdatesLogger;->error$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Ljava/lang/Exception;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    .line 46
    new-instance v1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$DownloadError;-><init>(Ljava/lang/String;)V

    check-cast v1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    .line 45
    invoke-interface {p1, v1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 48
    iget-object v0, v7, Lexpo/modules/updates/procedures/FetchUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$ErrorResult;

    invoke-direct {v1, p2}, Lexpo/modules/updates/IUpdatesController$FetchUpdateResult$ErrorResult;-><init>(Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 52
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 50
    :goto_5
    invoke-interface {p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    throw p2
.end method
