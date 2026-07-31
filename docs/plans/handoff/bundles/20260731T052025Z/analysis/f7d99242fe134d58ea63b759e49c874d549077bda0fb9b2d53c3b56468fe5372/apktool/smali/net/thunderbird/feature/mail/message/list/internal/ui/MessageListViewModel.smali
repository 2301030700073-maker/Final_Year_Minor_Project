.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;
.super Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final stateMachine:Lokhttp3/ConnectionPool;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;Ljava/util/List;Lnet/thunderbird/core/common/resources/StringsResourceManager;)V
    .locals 11

    .line 1
    invoke-direct {p0, p1, p3}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;-><init>(Lnet/thunderbird/core/logging/Logger;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object v9

    .line 8
    new-instance v0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/16 v7, 0x16

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const-class v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;

    .line 15
    .line 16
    const-string v4, "event"

    .line 17
    .line 18
    const-string v5, "event(Ljava/lang/Object;)V"

    .line 19
    .line 20
    move-object v2, p0

    .line 21
    invoke-direct/range {v0 .. v7}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 22
    .line 23
    .line 24
    move-object v10, v0

    .line 25
    new-instance v0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 26
    .line 27
    const/16 v7, 0x17

    .line 28
    .line 29
    const-class v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;

    .line 30
    .line 31
    const-string v4, "emitEffect"

    .line 32
    .line 33
    const-string v5, "emitEffect(Ljava/lang/Object;)V"

    .line 34
    .line 35
    invoke-direct/range {v0 .. v7}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lokhttp3/ConnectionPool;

    .line 39
    .line 40
    move-object v5, v0

    .line 41
    move-object v0, v1

    .line 42
    iget-object v1, p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 43
    .line 44
    iget-object v2, p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;->clock:Lkotlin/time/Clock;

    .line 45
    .line 46
    iget-object v6, p2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/MessageListStateMachine$Factory;->debuggingSettingsPreferenceManager:Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 47
    .line 48
    move-object v3, v9

    .line 49
    move-object v4, v10

    .line 50
    invoke-direct/range {v0 .. v6}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/time/Clock;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListViewModel;->stateMachine:Lokhttp3/ConnectionPool;

    .line 54
    .line 55
    new-instance v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    const/16 v1, 0x1c

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 60
    .line 61
    .line 62
    const-string v1, "MessageListViewModel"

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v6, 0x2

    .line 66
    invoke-static {p1, v1, v4, v0, v6}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    move-object v2, p0

    .line 77
    move-object v1, p1

    .line 78
    move-object v3, p4

    .line 79
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 83
    .line 84
    invoke-direct {v1, v8, v0, v6}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 92
    .line 93
    .line 94
    return-void
.end method
