.class public abstract Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;


# instance fields
.field public final _effect:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final sideEffectHandlers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Ljava/util/List;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v1, v0, v3}, Lkotlinx/coroutines/flow/FlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->_effect:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 14
    .line 15
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 16
    .line 17
    invoke-direct {v1, v0, v3}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/StandaloneCoroutine;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 21
    .line 22
    new-instance v8, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/16 v0, 0xa

    .line 25
    .line 26
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v10, v0

    .line 48
    check-cast v10, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandlerFactory;

    .line 49
    .line 50
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;

    .line 55
    .line 56
    const/4 v6, 0x4

    .line 57
    const/4 v7, 0x3

    .line 58
    const/4 v1, 0x2

    .line 59
    const-class v3, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;

    .line 60
    .line 61
    const-string v4, "event"

    .line 62
    .line 63
    const-string v5, "event(Ljava/lang/Object;)V"

    .line 64
    .line 65
    move-object v2, p0

    .line 66
    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    move-object v12, v0

    .line 70
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;

    .line 71
    .line 72
    const/4 v7, 0x4

    .line 73
    const-class v3, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;

    .line 74
    .line 75
    const-string v4, "emitEffect"

    .line 76
    .line 77
    const-string v5, "emitEffect(Ljava/lang/Object;)V"

    .line 78
    .line 79
    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v10, v11, v12, v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandlerFactory;->create(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;)Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    iput-object v8, p0, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->sideEffectHandlers:Ljava/util/ArrayList;

    .line 91
    .line 92
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 95
    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final emitEffect(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 9
    .line 10
    const/16 v5, 0x17

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p1

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;IZ)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    invoke-static {v0, v4, v4, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final event(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, p0, p1, v3, v2}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x3

    .line 17
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final getEffect()Lkotlinx/coroutines/flow/ReadonlySharedFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;->stateMachine:Lokhttp3/ConnectionPool;

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lnet/thunderbird/core/common/state/StateMachine;

    .line 8
    .line 9
    invoke-interface {p0}, Lnet/thunderbird/core/common/state/StateMachine;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
