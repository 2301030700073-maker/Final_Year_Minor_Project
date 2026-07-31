.class public final Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public debuggerBuilder:Landroidx/compose/material/ripple/StateLayer;

.field public initialState:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

.field public logTag:Ljava/lang/String;

.field public logger:Lnet/thunderbird/core/logging/Logger;

.field public final scope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

.field public final stateRegistrar:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->scope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->stateRegistrar:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final state(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->stateRegistrar:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->initialState:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const-class p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, " is already defined as initial state."

    .line 31
    .line 32
    invoke-static {p0, p1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    new-instance p0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    new-instance p2, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;

    .line 49
    .line 50
    new-instance v1, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateListeners;

    .line 51
    .line 52
    iget-object v2, p0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->onEnter:Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {v1, v2}, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateListeners;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transitions:Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    invoke-direct {p2, p1, v1, p0}, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;-><init>(Lkotlin/jvm/internal/ClassReference;Lnet/thunderbird/core/common/state/DefaultStateMachine$StateListeners;Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, " is already registered as a state."

    .line 71
    .line 72
    invoke-static {p0, p1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
