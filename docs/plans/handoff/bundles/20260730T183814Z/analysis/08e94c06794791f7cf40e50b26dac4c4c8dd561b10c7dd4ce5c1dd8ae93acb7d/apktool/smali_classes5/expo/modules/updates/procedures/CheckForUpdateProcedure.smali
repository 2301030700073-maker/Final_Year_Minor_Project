.class public final Lexpo/modules/updates/procedures/CheckForUpdateProcedure;
.super Lexpo/modules/updates/procedures/StateMachineProcedure;
.source "CheckForUpdateProcedure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckForUpdateProcedure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckForUpdateProcedure.kt\nexpo/modules/updates/procedures/CheckForUpdateProcedure\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,200:1\n314#2,11:201\n*S KotlinDebug\n*F\n+ 1 CheckForUpdateProcedure.kt\nexpo/modules/updates/procedures/CheckForUpdateProcedure\n*L\n55#1:201,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0016\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010\u001dJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0082@\u00a2\u0006\u0002\u0010\"J\"\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010%\u001a\u0004\u0018\u00010\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lexpo/modules/updates/procedures/CheckForUpdateProcedure;",
        "Lexpo/modules/updates/procedures/StateMachineProcedure;",
        "context",
        "Landroid/content/Context;",
        "updatesConfiguration",
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "databaseHolder",
        "Lexpo/modules/updates/db/DatabaseHolder;",
        "updatesLogger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "fileDownloader",
        "Lexpo/modules/updates/loader/FileDownloader;",
        "selectionPolicy",
        "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
        "launchedUpdate",
        "Lexpo/modules/updates/db/entity/UpdateEntity;",
        "callback",
        "Lkotlin/Function1;",
        "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;",
        "",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/jvm/functions/Function1;)V",
        "loggerTimerLabel",
        "",
        "getLoggerTimerLabel",
        "()Ljava/lang/String;",
        "run",
        "procedureContext",
        "Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;",
        "(Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "downloadRemoteUpdate",
        "Lexpo/modules/updates/loader/UpdateResponse;",
        "extraHeaders",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processUpdatesResponse",
        "updateResponse",
        "embeddedUpdate",
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
            "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

.field private final fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

.field private final launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

.field private final loggerTimerLabel:Ljava/lang/String;

.field private final selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

.field private final updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

.field private final updatesLogger:Lexpo/modules/updates/logging/UpdatesLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/DatabaseHolder;Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/loader/FileDownloader;Lexpo/modules/updates/selectionpolicy/SelectionPolicy;Lexpo/modules/updates/db/entity/UpdateEntity;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/updates/UpdatesConfiguration;",
            "Lexpo/modules/updates/db/DatabaseHolder;",
            "Lexpo/modules/updates/logging/UpdatesLogger;",
            "Lexpo/modules/updates/loader/FileDownloader;",
            "Lexpo/modules/updates/selectionpolicy/SelectionPolicy;",
            "Lexpo/modules/updates/db/entity/UpdateEntity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileDownloader"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionPolicy"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lexpo/modules/updates/procedures/StateMachineProcedure;-><init>()V

    .line 23
    iput-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 25
    iput-object p3, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    .line 26
    iput-object p4, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->updatesLogger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 27
    iput-object p5, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    .line 28
    iput-object p6, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 29
    iput-object p7, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 30
    iput-object p8, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    .line 32
    const-string p1, "timer-check-for-update"

    iput-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->loggerTimerLabel:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$downloadRemoteUpdate(Lexpo/modules/updates/procedures/CheckForUpdateProcedure;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->downloadRemoteUpdate(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFileDownloader$p(Lexpo/modules/updates/procedures/CheckForUpdateProcedure;)Lexpo/modules/updates/loader/FileDownloader;
    .locals 0

    .line 22
    iget-object p0, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->fileDownloader:Lexpo/modules/updates/loader/FileDownloader;

    return-object p0
.end method

.method private final downloadRemoteUpdate(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/updates/loader/UpdateResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 202
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 208
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 209
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 56
    invoke-static {p0}, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->access$getFileDownloader$p(Lexpo/modules/updates/procedures/CheckForUpdateProcedure;)Lexpo/modules/updates/loader/FileDownloader;

    move-result-object v2

    .line 58
    new-instance v3, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$downloadRemoteUpdate$2$1;

    invoke-direct {v3, v1}, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$downloadRemoteUpdate$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;

    .line 56
    invoke-virtual {v2, p1, v3}, Lexpo/modules/updates/loader/FileDownloader;->downloadRemoteUpdate(Lorg/json/JSONObject;Lexpo/modules/updates/loader/FileDownloader$RemoteUpdateDownloadCallback;)V

    .line 210
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 201
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final processUpdatesResponse(Lexpo/modules/updates/loader/UpdateResponse;Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lexpo/modules/updates/db/entity/UpdateEntity;)V
    .locals 8

    .line 75
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getDirectiveUpdateResponsePart()Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateResponsePart$DirectiveUpdateResponsePart;->getUpdateDirective()Lexpo/modules/updates/loader/UpdateDirective;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 76
    :goto_0
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getManifestUpdateResponsePart()Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lexpo/modules/updates/loader/UpdateResponsePart$ManifestUpdateResponsePart;->getUpdate()Lexpo/modules/updates/manifest/Update;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_8

    .line 80
    instance-of v2, v0, Lexpo/modules/updates/loader/UpdateDirective$NoUpdateAvailableUpdateDirective;

    if-eqz v2, :cond_2

    .line 81
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;

    invoke-direct {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;-><init>()V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 82
    iget-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    .line 83
    new-instance p3, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;

    .line 84
    sget-object v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->NO_UPDATE_AVAILABLE_ON_SERVER:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    .line 83
    invoke-direct {p3, v0}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V

    .line 82
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    return-void

    .line 91
    :cond_2
    instance-of v2, v0, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;

    if-eqz v2, :cond_7

    .line 92
    iget-object v2, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {v2}, Lexpo/modules/updates/UpdatesConfiguration;->getHasEmbeddedUpdate()Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;

    invoke-direct {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;-><init>()V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 94
    iget-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    .line 95
    new-instance p3, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;

    .line 96
    sget-object v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->ROLLBACK_NO_EMBEDDED:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    .line 95
    invoke-direct {p3, v0}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V

    .line 94
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    return-void

    :cond_3
    if-nez p3, :cond_4

    .line 104
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;

    invoke-direct {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;-><init>()V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 105
    iget-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    .line 106
    new-instance p3, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;

    .line 107
    sget-object v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->ROLLBACK_NO_EMBEDDED:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    .line 106
    invoke-direct {p3, v0}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V

    .line 105
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-interface {p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    return-void

    .line 114
    :cond_4
    iget-object v2, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 115
    check-cast v0, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;

    .line 117
    iget-object v3, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 118
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getResponseHeaderData()Lexpo/modules/updates/manifest/ResponseHeaderData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponseHeaderData;->getManifestFilters()Lorg/json/JSONObject;

    move-result-object v1

    .line 114
    :cond_5
    invoke-virtual {v2, v0, p3, v3, v1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->shouldLoadRollBackToEmbeddedDirective(Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 121
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;

    invoke-direct {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;-><init>()V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 122
    iget-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    .line 123
    new-instance p3, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;

    .line 124
    sget-object v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->ROLLBACK_REJECTED_BY_SELECTION_POLICY:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    .line 123
    invoke-direct {p3, v0}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V

    .line 122
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    return-void

    .line 131
    :cond_6
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithRollback;

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;->getCommitTime()Ljava/util/Date;

    move-result-object p3

    invoke-direct {p1, p3}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithRollback;-><init>(Ljava/util/Date;)V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 132
    iget-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    new-instance p3, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$RollBackToEmbedded;

    invoke-virtual {v0}, Lexpo/modules/updates/loader/UpdateDirective$RollBackToEmbeddedUpdateDirective;->getCommitTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p3, v0}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$RollBackToEmbedded;-><init>(Ljava/util/Date;)V

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-interface {p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    return-void

    .line 79
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_8
    if-nez v2, :cond_9

    .line 140
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;

    invoke-direct {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;-><init>()V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 141
    iget-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    .line 142
    new-instance p3, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;

    .line 143
    sget-object v0, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->NO_UPDATE_AVAILABLE_ON_SERVER:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    .line 142
    invoke-direct {p3, v0}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V

    .line 141
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    return-void

    .line 150
    :cond_9
    iget-object p3, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    if-nez p3, :cond_a

    .line 153
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;

    invoke-interface {v2}, Lexpo/modules/updates/manifest/Update;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object p3

    invoke-virtual {p3}, Lexpo/modules/manifests/core/Manifest;->getRawJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p1, p3}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 154
    iget-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    new-instance p3, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$UpdateAvailable;

    invoke-direct {p3, v2}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$UpdateAvailable;-><init>(Lexpo/modules/updates/manifest/Update;)V

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-interface {p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    return-void

    .line 161
    :cond_a
    iget-object p3, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->selectionPolicy:Lexpo/modules/updates/selectionpolicy/SelectionPolicy;

    .line 162
    invoke-interface {v2}, Lexpo/modules/updates/manifest/Update;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v0

    .line 163
    iget-object v3, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 164
    invoke-virtual {p1}, Lexpo/modules/updates/loader/UpdateResponse;->getResponseHeaderData()Lexpo/modules/updates/manifest/ResponseHeaderData;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lexpo/modules/updates/manifest/ResponseHeaderData;->getManifestFilters()Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_2

    :cond_b
    move-object p1, v1

    .line 161
    :goto_2
    invoke-virtual {p3, v0, v3, p1}, Lexpo/modules/updates/selectionpolicy/SelectionPolicy;->shouldLoadNewUpdate(Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;Lorg/json/JSONObject;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    .line 173
    invoke-interface {v2}, Lexpo/modules/updates/manifest/Update;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 174
    iget-object v3, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    invoke-virtual {v3}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/updates/db/UpdatesDatabase;->updateDao()Lexpo/modules/updates/db/dao/UpdateDao;

    move-result-object v3

    .line 175
    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object v4

    .line 174
    invoke-virtual {v3, v4}, Lexpo/modules/updates/db/dao/UpdateDao;->loadUpdateWithId(Ljava/util/UUID;)Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 178
    invoke-virtual {v3}, Lexpo/modules/updates/db/entity/UpdateEntity;->getFailedLaunchCount()I

    move-result v4

    if-nez v4, :cond_c

    move p3, v0

    .line 179
    :cond_c
    iget-object v4, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->updatesLogger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {p1}, Lexpo/modules/updates/db/entity/UpdateEntity;->getId()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v3}, Lexpo/modules/updates/db/entity/UpdateEntity;->getFailedLaunchCount()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Stored update found: ID = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, ", failureCount = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {v4, p1, v1, v3, v1}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    xor-int/lit8 p1, p3, 0x1

    move v7, p3

    move p3, p1

    move p1, v7

    goto :goto_3

    :cond_d
    move p1, v0

    :goto_3
    move v7, p3

    move p3, p1

    move p1, v7

    goto :goto_4

    :cond_e
    move p1, p3

    move p3, v0

    goto :goto_4

    :cond_f
    move p1, p3

    :goto_4
    if-eqz p3, :cond_10

    .line 186
    new-instance p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;

    invoke-interface {v2}, Lexpo/modules/updates/manifest/Update;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object p3

    invoke-virtual {p3}, Lexpo/modules/manifests/core/Manifest;->getRawJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p1, p3}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteWithUpdate;-><init>(Lorg/json/JSONObject;)V

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p2, p1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 187
    iget-object p1, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    new-instance p3, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$UpdateAvailable;

    invoke-direct {p3, v2}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$UpdateAvailable;-><init>(Lexpo/modules/updates/manifest/Update;)V

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-interface {p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    goto :goto_6

    :cond_10
    if-ne p1, v0, :cond_11

    .line 191
    sget-object p1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->UPDATE_PREVIOUSLY_FAILED:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    goto :goto_5

    .line 192
    :cond_11
    sget-object p1, Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;->UPDATE_REJECTED_BY_SELECTION_POLICY:Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;

    .line 194
    :goto_5
    new-instance p3, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;

    invoke-direct {p3}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckCompleteUnavailable;-><init>()V

    check-cast p3, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p2, p3}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 195
    iget-object p3, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;

    invoke-direct {v0, p1}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$NoUpdateAvailable;-><init>(Lexpo/modules/updates/loader/LoaderTask$RemoteCheckResultNotAvailableReason;)V

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-interface {p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    :goto_6
    return-void
.end method


# virtual methods
.method public getLoggerTimerLabel()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->loggerTimerLabel:Ljava/lang/String;

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

    instance-of v0, p2, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;

    iget v1, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;

    invoke-direct {v0, p0, p2}, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;-><init>(Lexpo/modules/updates/procedures/CheckForUpdateProcedure;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/updates/db/entity/UpdateEntity;

    iget-object v1, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;

    iget-object v0, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    new-instance p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Check;

    invoke-direct {p2}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$Check;-><init>()V

    check-cast p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {p1, p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 37
    sget-object p2, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->INSTANCE:Lexpo/modules/updates/manifest/EmbeddedManifestUtils;

    iget-object v2, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->context:Landroid/content/Context;

    iget-object v4, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    invoke-virtual {p2, v2, v4}, Lexpo/modules/updates/manifest/EmbeddedManifestUtils;->getEmbeddedUpdate(Landroid/content/Context;Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/manifest/EmbeddedUpdate;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lexpo/modules/updates/manifest/EmbeddedUpdate;->getUpdateEntity()Lexpo/modules/updates/db/entity/UpdateEntity;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 38
    :goto_1
    sget-object v2, Lexpo/modules/updates/loader/FileDownloader;->Companion:Lexpo/modules/updates/loader/FileDownloader$Companion;

    .line 39
    iget-object v4, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->databaseHolder:Lexpo/modules/updates/db/DatabaseHolder;

    invoke-virtual {v4}, Lexpo/modules/updates/db/DatabaseHolder;->getDatabase()Lexpo/modules/updates/db/UpdatesDatabase;

    move-result-object v4

    .line 40
    iget-object v5, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->updatesConfiguration:Lexpo/modules/updates/UpdatesConfiguration;

    .line 41
    iget-object v6, p0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->launchedUpdate:Lexpo/modules/updates/db/entity/UpdateEntity;

    .line 38
    invoke-virtual {v2, v4, v5, v6, p2}, Lexpo/modules/updates/loader/FileDownloader$Companion;->getExtraHeadersForRemoteUpdateRequest(Lexpo/modules/updates/db/UpdatesDatabase;Lexpo/modules/updates/UpdatesConfiguration;Lexpo/modules/updates/db/entity/UpdateEntity;Lexpo/modules/updates/db/entity/UpdateEntity;)Lorg/json/JSONObject;

    move-result-object v2

    .line 46
    :try_start_1
    iput-object p0, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure$run$1;->label:I

    invoke-direct {p0, v2, v0}, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->downloadRemoteUpdate(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v1, p0

    .line 34
    :goto_2
    :try_start_2
    check-cast v0, Lexpo/modules/updates/loader/UpdateResponse;

    .line 47
    invoke-direct {v1, v0, p1, p2}, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->processUpdatesResponse(Lexpo/modules/updates/loader/UpdateResponse;Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;Lexpo/modules/updates/db/entity/UpdateEntity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v0, p0

    :goto_3
    move-object v1, p1

    move-object p1, p2

    .line 49
    :goto_4
    new-instance p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckError;

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lexpo/modules/core/logging/LoggerUtilsKt;->localizedMessageWithCauseLocalizedMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lexpo/modules/updates/statemachine/UpdatesStateEvent$CheckError;-><init>(Ljava/lang/String;)V

    check-cast p2, Lexpo/modules/updates/statemachine/UpdatesStateEvent;

    invoke-interface {v1, p2}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->processStateEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    .line 50
    iget-object p2, v0, Lexpo/modules/updates/procedures/CheckForUpdateProcedure;->callback:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$ErrorResult;

    invoke-direct {v0, p1}, Lexpo/modules/updates/IUpdatesController$CheckForUpdateResult$ErrorResult;-><init>(Ljava/lang/Exception;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v1}, Lexpo/modules/updates/procedures/StateMachineProcedure$ProcedureContext;->onComplete()V

    .line 53
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
