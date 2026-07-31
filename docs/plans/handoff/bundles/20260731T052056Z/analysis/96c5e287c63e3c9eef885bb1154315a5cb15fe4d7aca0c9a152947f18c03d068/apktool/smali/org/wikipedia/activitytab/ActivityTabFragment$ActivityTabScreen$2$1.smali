.class public final Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $areGamesAvailable:Z

.field public final synthetic $gamesModuleOffsetInItem$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final synthetic $listState:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic $modules:Lorg/wikipedia/activitytab/ActivityTabModules;

.field public final synthetic $onScrollToGamesConsumed:Lkotlin/jvm/functions/Function0;

.field public final synthetic $scrollToGames:Z

.field public I$0:I

.field public label:I


# direct methods
.method public constructor <init>(ZLorg/wikipedia/activitytab/ActivityTabModules;ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$scrollToGames:Z

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$modules:Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 4
    .line 5
    iput-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$areGamesAvailable:Z

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$onScrollToGamesConsumed:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$gamesModuleOffsetInItem$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    new-instance v0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;

    .line 2
    .line 3
    iget-object v5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$onScrollToGamesConsumed:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iget-object v6, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$gamesModuleOffsetInItem$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 6
    .line 7
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$scrollToGames:Z

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$modules:Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 10
    .line 11
    iget-boolean v3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$areGamesAvailable:Z

    .line 12
    .line 13
    iget-object v4, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    .line 14
    .line 15
    move-object v7, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;-><init>(ZLorg/wikipedia/activitytab/ActivityTabModules;ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$listState:Landroidx/compose/foundation/lazy/LazyListState;

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    iget-object v5, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$gamesModuleOffsetInItem$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eq v1, v7, :cond_2

    .line 16
    .line 17
    if-eq v1, v6, :cond_1

    .line 18
    .line 19
    if-ne v1, v4, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_1
    iget v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->I$0:I

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    iget v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->I$0:I

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$scrollToGames:Z

    .line 48
    .line 49
    if-eqz p1, :cond_9

    .line 50
    .line 51
    sget-object p1, Lorg/wikipedia/activitytab/ModuleType;->GAMES:Lorg/wikipedia/activitytab/ModuleType;

    .line 52
    .line 53
    iget-boolean v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$areGamesAvailable:Z

    .line 54
    .line 55
    iget-object v8, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$modules:Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    invoke-static {v8, p1, v9, v1, v6}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleVisible$default(Lorg/wikipedia/activitytab/ActivityTabModules;Lorg/wikipedia/activitytab/ModuleType;ZZI)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_9

    .line 63
    .line 64
    sget-object p1, Lorg/wikipedia/activitytab/ModuleType;->TIME_SPENT:Lorg/wikipedia/activitytab/ModuleType;

    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-static {v8, p1, v9, v9, v1}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleVisible$default(Lorg/wikipedia/activitytab/ActivityTabModules;Lorg/wikipedia/activitytab/ModuleType;ZZI)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_5

    .line 72
    .line 73
    sget-object p1, Lorg/wikipedia/activitytab/ModuleType;->READING_INSIGHTS:Lorg/wikipedia/activitytab/ModuleType;

    .line 74
    .line 75
    invoke-static {v8, p1, v9, v9, v1}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleVisible$default(Lorg/wikipedia/activitytab/ActivityTabModules;Lorg/wikipedia/activitytab/ModuleType;ZZI)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    move p1, v9

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    :goto_0
    move p1, v7

    .line 85
    :goto_1
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 86
    .line 87
    .line 88
    iput p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->I$0:I

    .line 89
    .line 90
    iput v7, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->label:I

    .line 91
    .line 92
    invoke-static {v3, p1, p0}, Landroidx/compose/foundation/lazy/LazyListState;->scrollToItem$default(Landroidx/compose/foundation/lazy/LazyListState;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-ne v1, v0, :cond_6

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    move v1, p1

    .line 100
    :goto_2
    new-instance p1, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    const/16 v7, 0x1d

    .line 103
    .line 104
    invoke-direct {p1, v7, v5}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance v7, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 112
    .line 113
    const/4 v8, 0x4

    .line 114
    invoke-direct {v7, v6, v8, v2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 115
    .line 116
    .line 117
    iput v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->I$0:I

    .line 118
    .line 119
    iput v6, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->label:I

    .line 120
    .line 121
    invoke-static {p1, v7, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-ne p1, v0, :cond_7

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_7
    :goto_3
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iput v1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->I$0:I

    .line 133
    .line 134
    iput v4, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->label:I

    .line 135
    .line 136
    invoke-virtual {v3, v1, p1, p0}, Landroidx/compose/foundation/lazy/LazyListState;->animateScrollToItem(IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v0, :cond_8

    .line 141
    .line 142
    :goto_4
    return-object v0

    .line 143
    :cond_8
    :goto_5
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;->$onScrollToGamesConsumed:Lkotlin/jvm/functions/Function0;

    .line 144
    .line 145
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 149
    .line 150
    return-object p0
.end method
