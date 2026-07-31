.class public final Lexpo/modules/updates/statemachine/UpdatesStateMachine;
.super Ljava/lang/Object;
.source "UpdatesStateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatesStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatesStateMachine.kt\nexpo/modules/updates/statemachine/UpdatesStateMachine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u0017\u001a\u00020\u000eH\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0006\u0010\u001d\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/updates/statemachine/UpdatesStateMachine;",
        "",
        "logger",
        "Lexpo/modules/updates/logging/UpdatesLogger;",
        "eventManager",
        "Lexpo/modules/updates/events/IUpdatesEventManager;",
        "validUpdatesStateValues",
        "",
        "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
        "<init>",
        "(Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/events/IUpdatesEventManager;Ljava/util/Set;)V",
        "serialExecutorQueue",
        "Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;",
        "queueExecution",
        "",
        "stateMachineProcedure",
        "Lexpo/modules/updates/procedures/StateMachineProcedure;",
        "state",
        "value",
        "Lexpo/modules/updates/statemachine/UpdatesStateContext;",
        "context",
        "getContext",
        "()Lexpo/modules/updates/statemachine/UpdatesStateContext;",
        "resetAndIncrementRestartCount",
        "processEvent",
        "event",
        "Lexpo/modules/updates/statemachine/UpdatesStateEvent;",
        "transition",
        "",
        "sendContextToJS",
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
.field public static final Companion:Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;

.field private static final updatesStateAllowedEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
            "Ljava/util/Set<",
            "Lexpo/modules/updates/statemachine/UpdatesStateEventType;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final updatesStateTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lexpo/modules/updates/statemachine/UpdatesStateEventType;",
            "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Lexpo/modules/updates/statemachine/UpdatesStateContext;

.field private final eventManager:Lexpo/modules/updates/events/IUpdatesEventManager;

.field private final logger:Lexpo/modules/updates/logging/UpdatesLogger;

.field private final serialExecutorQueue:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

.field private state:Lexpo/modules/updates/statemachine/UpdatesStateValue;

.field private final validUpdatesStateValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->Companion:Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;

    const/4 v0, 0x4

    .line 102
    new-array v1, v0, [Lkotlin/Pair;

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    const/4 v3, 0x5

    new-array v4, v3, [Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->StartStartup:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->EndStartup:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->Check:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->Download:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->Restart:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    aput-object v5, v4, v0

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v6

    .line 103
    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Checking:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    new-array v4, v9, [Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->CheckCompleteAvailable:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    aput-object v5, v4, v6

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->CheckCompleteUnavailable:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    aput-object v5, v4, v7

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->CheckError:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    aput-object v5, v4, v8

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v7

    .line 104
    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Downloading:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    new-array v4, v8, [Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->DownloadComplete:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    aput-object v5, v4, v6

    sget-object v5, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->DownloadError:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    aput-object v5, v4, v7

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v8

    .line 105
    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Restarting:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v9

    .line 101
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->updatesStateAllowedEvents:Ljava/util/Map;

    const/16 v1, 0xa

    .line 113
    new-array v1, v1, [Lkotlin/Pair;

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->StartStartup:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v4, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v6

    .line 114
    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->EndStartup:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v4, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v7

    .line 115
    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->Check:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v4, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Checking:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v8

    .line 116
    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->CheckCompleteAvailable:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v4, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v9

    .line 117
    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->CheckCompleteUnavailable:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v4, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v0

    .line 118
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->CheckError:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v3

    .line 119
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->Download:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Downloading:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 120
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->DownloadComplete:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 121
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->DownloadError:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 122
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateEventType;->Restart:Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    sget-object v2, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Restarting:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 112
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->updatesStateTransitions:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/events/IUpdatesEventManager;Ljava/util/Set;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/updates/logging/UpdatesLogger;",
            "Lexpo/modules/updates/events/IUpdatesEventManager;",
            "Ljava/util/Set<",
            "+",
            "Lexpo/modules/updates/statemachine/UpdatesStateValue;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "logger"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventManager"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "validUpdatesStateValues"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    .line 15
    iput-object v2, v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->eventManager:Lexpo/modules/updates/events/IUpdatesEventManager;

    .line 16
    iput-object v3, v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->validUpdatesStateValues:Ljava/util/Set;

    .line 18
    new-instance v2, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    .line 19
    move-object v6, v1

    check-cast v6, Lexpo/modules/updates/logging/IUpdatesLogger;

    .line 20
    new-instance v1, Lexpo/modules/updates/statemachine/UpdatesStateMachine$serialExecutorQueue$1;

    invoke-direct {v1, v0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine$serialExecutorQueue$1;-><init>(Lexpo/modules/updates/statemachine/UpdatesStateMachine;)V

    move-object v7, v1

    check-cast v7, Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    .line 18
    invoke-direct/range {v5 .. v10}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;-><init>(Lexpo/modules/updates/logging/IUpdatesLogger;Lexpo/modules/updates/procedures/StateMachineProcedure$StateMachineProcedureContext;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->serialExecutorQueue:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    .line 46
    sget-object v1, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    iput-object v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->state:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    .line 51
    new-instance v1, Lexpo/modules/updates/statemachine/UpdatesStateContext;

    const/16 v16, 0x1fff

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lexpo/modules/updates/statemachine/UpdatesStateContext;-><init>(ZZZZZZILorg/json/JSONObject;Lorg/json/JSONObject;Lexpo/modules/updates/statemachine/UpdatesStateContextRollback;Lexpo/modules/updates/statemachine/UpdatesStateError;Lexpo/modules/updates/statemachine/UpdatesStateError;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->context:Lexpo/modules/updates/statemachine/UpdatesStateContext;

    return-void
.end method

.method public static final synthetic access$getState$p(Lexpo/modules/updates/statemachine/UpdatesStateMachine;)Lexpo/modules/updates/statemachine/UpdatesStateValue;
    .locals 0

    .line 13
    iget-object p0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->state:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    return-object p0
.end method

.method public static final synthetic access$getUpdatesStateAllowedEvents$cp()Ljava/util/Map;
    .locals 1

    .line 13
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->updatesStateAllowedEvents:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getUpdatesStateTransitions$cp()Ljava/util/Map;
    .locals 1

    .line 13
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->updatesStateTransitions:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$processEvent(Lexpo/modules/updates/statemachine/UpdatesStateMachine;Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->processEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V

    return-void
.end method

.method public static final synthetic access$resetAndIncrementRestartCount(Lexpo/modules/updates/statemachine/UpdatesStateMachine;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->resetAndIncrementRestartCount()V

    return-void
.end method

.method private final processEvent(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)V
    .locals 4

    .line 68
    invoke-direct {p0, p1}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->transition(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->Companion:Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;

    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->context:Lexpo/modules/updates/statemachine/UpdatesStateContext;

    invoke-static {v0, v1, p1}, Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;->access$reduceContext(Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;Lexpo/modules/updates/statemachine/UpdatesStateContext;Lexpo/modules/updates/statemachine/UpdatesStateEvent;)Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->context:Lexpo/modules/updates/statemachine/UpdatesStateContext;

    .line 70
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent;->getType()Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    move-result-object p1

    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->context:Lexpo/modules/updates/statemachine/UpdatesStateContext;

    invoke-virtual {v1}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->getJson()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updates state change: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", context = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->sendContextToJS()V

    :cond_0
    return-void
.end method

.method private final resetAndIncrementRestartCount()V
    .locals 4

    .line 58
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    iput-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->state:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    .line 59
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->context:Lexpo/modules/updates/statemachine/UpdatesStateContext;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->resetCopyWithIncrementedRestartCountAndSequenceNumber()Lexpo/modules/updates/statemachine/UpdatesStateContext;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->context:Lexpo/modules/updates/statemachine/UpdatesStateContext;

    .line 60
    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->logger:Lexpo/modules/updates/logging/UpdatesLogger;

    invoke-virtual {v0}, Lexpo/modules/updates/statemachine/UpdatesStateContext;->getJson()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updates state change: reset, context = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lexpo/modules/updates/logging/UpdatesLogger;->info$default(Lexpo/modules/updates/logging/UpdatesLogger;Ljava/lang/String;Lexpo/modules/updates/logging/UpdatesErrorCode;ILjava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->sendContextToJS()V

    return-void
.end method

.method private final transition(Lexpo/modules/updates/statemachine/UpdatesStateEvent;)Z
    .locals 2

    .line 79
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->updatesStateAllowedEvents:Ljava/util/Map;

    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->state:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent;->getType()Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 84
    :cond_1
    sget-object v0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->updatesStateTransitions:Ljava/util/Map;

    invoke-virtual {p1}, Lexpo/modules/updates/statemachine/UpdatesStateEvent;->getType()Lexpo/modules/updates/statemachine/UpdatesStateEventType;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/updates/statemachine/UpdatesStateValue;

    if-nez p1, :cond_2

    sget-object p1, Lexpo/modules/updates/statemachine/UpdatesStateValue;->Idle:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    .line 85
    :cond_2
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->validUpdatesStateValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 89
    :cond_3
    iput-object p1, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->state:Lexpo/modules/updates/statemachine/UpdatesStateValue;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final getContext()Lexpo/modules/updates/statemachine/UpdatesStateContext;
    .locals 1

    .line 51
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->context:Lexpo/modules/updates/statemachine/UpdatesStateContext;

    return-object v0
.end method

.method public final queueExecution(Lexpo/modules/updates/procedures/StateMachineProcedure;)V
    .locals 1

    const-string v0, "stateMachineProcedure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->serialExecutorQueue:Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;

    invoke-virtual {v0, p1}, Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;->queueExecution(Lexpo/modules/updates/procedures/StateMachineProcedure;)V

    return-void
.end method

.method public final sendContextToJS()V
    .locals 2

    .line 94
    iget-object v0, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->eventManager:Lexpo/modules/updates/events/IUpdatesEventManager;

    iget-object v1, p0, Lexpo/modules/updates/statemachine/UpdatesStateMachine;->context:Lexpo/modules/updates/statemachine/UpdatesStateContext;

    invoke-interface {v0, v1}, Lexpo/modules/updates/events/IUpdatesEventManager;->sendStateMachineContextEvent(Lexpo/modules/updates/statemachine/UpdatesStateContext;)V

    return-void
.end method
