.class public final Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $draggedState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $focusedState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $hoveredState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $pressedState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $this_CollectInteractionsAsState:Landroidx/compose/foundation/interaction/InteractionSource;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/InteractionSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$pressedState:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$focusedState:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$hoveredState:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$draggedState:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$this_CollectInteractionsAsState:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$pressedState:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$focusedState:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$hoveredState:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$draggedState:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$this_CollectInteractionsAsState:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/InteractionSource;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->label:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$pressedState:Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    move-object v4, p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object v4, v2

    .line 36
    :goto_0
    iget-object p1, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$focusedState:Landroidx/compose/runtime/MutableState;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    move-object v5, p1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move-object v5, v2

    .line 48
    :goto_1
    iget-object p1, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$hoveredState:Landroidx/compose/runtime/MutableState;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    move-object v6, p1

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move-object v6, v2

    .line 60
    :goto_2
    iget-object p1, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$draggedState:Landroidx/compose/runtime/MutableState;

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    new-instance v2, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    :cond_5
    move-object v7, v2

    .line 70
    iget-object p1, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$this_CollectInteractionsAsState:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 71
    .line 72
    check-cast p1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 73
    .line 74
    iget-object p1, p1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 75
    .line 76
    new-instance v3, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1$1;

    .line 77
    .line 78
    iget-object v8, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$pressedState:Landroidx/compose/runtime/MutableState;

    .line 79
    .line 80
    iget-object v9, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$focusedState:Landroidx/compose/runtime/MutableState;

    .line 81
    .line 82
    iget-object v10, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$hoveredState:Landroidx/compose/runtime/MutableState;

    .line 83
    .line 84
    iget-object v11, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->$draggedState:Landroidx/compose/runtime/MutableState;

    .line 85
    .line 86
    invoke-direct/range {v3 .. v11}, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1$1;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 87
    .line 88
    .line 89
    iput v1, p0, Landroidx/compose/material3/ListItemKt$CollectInteractionsAsState$1$1;->label:I

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 95
    .line 96
    .line 97
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 98
    .line 99
    return-object p0
.end method
