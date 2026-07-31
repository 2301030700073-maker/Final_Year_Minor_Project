.class public final Lorg/wikipedia/random/RandomViewModel$loadMore$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public I$0:I

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->$r8$classId:I

    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 13
    iput p3, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 14
    iput p4, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->this$0:Ljava/lang/Object;

    iput p2, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 9
    .line 10
    iget p0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 11
    .line 12
    check-cast v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 13
    .line 14
    invoke-direct {p1, p0, v0, p2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(ILorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 19
    .line 20
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 21
    .line 22
    const/4 p1, 0x5

    .line 23
    invoke-direct {p0, v0, p2, p1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_1
    new-instance p1, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 28
    .line 29
    check-cast v0, Lorg/wikipedia/history/HistoryEntry;

    .line 30
    .line 31
    iget p0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :pswitch_2
    new-instance p1, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 39
    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    iget p0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :pswitch_3
    new-instance p1, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 50
    .line 51
    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    .line 52
    .line 53
    iget p0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_4
    new-instance p1, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 61
    .line 62
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;

    .line 63
    .line 64
    iget p0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(Ljava/lang/Object;ILkotlin/coroutines/Continuation;I)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :pswitch_5
    new-instance p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 72
    .line 73
    check-cast v0, Lorg/wikipedia/random/RandomViewModel;

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, v0, p2, p1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;-><init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v5, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    iget v1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    if-ne v1, v7, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v4, v8

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 39
    .line 40
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget v1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 49
    .line 50
    add-int/lit8 v2, v1, 0x1

    .line 51
    .line 52
    iput v7, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 53
    .line 54
    iget-object p1, p1, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 55
    .line 56
    new-instance v6, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;

    .line 57
    .line 58
    invoke-direct {v6, v1, v2, v7}, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;-><init>(III)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v7, v3, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    move-object v4, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 70
    .line 71
    check-cast v5, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 72
    .line 73
    iget-object p0, v5, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->_categoryState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 74
    .line 75
    new-instance v0, Lorg/wikipedia/util/UiState$Success;

    .line 76
    .line 77
    invoke-direct {v0, p1}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v8, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :goto_1
    return-object v4

    .line 87
    :pswitch_0
    check-cast v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;

    .line 88
    .line 89
    iget-object v0, v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->_uiSourceState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 90
    .line 91
    iget-object v5, v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel;->availableSources:Ljava/util/ArrayList;

    .line 92
    .line 93
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 94
    .line 95
    iget v10, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 96
    .line 97
    if-eqz v10, :cond_5

    .line 98
    .line 99
    if-eq v10, v7, :cond_4

    .line 100
    .line 101
    if-ne v10, v2, :cond_3

    .line 102
    .line 103
    iget p0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_3
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v4, v8

    .line 114
    goto/16 :goto_7

    .line 115
    .line 116
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lorg/wikipedia/util/Resource$Loading;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v8, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    sget-object p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->INTERESTS:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 135
    .line 136
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 140
    .line 141
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput v7, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 150
    .line 151
    iget-object p1, p1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 152
    .line 153
    new-instance v6, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    invoke-direct {v6, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1, v7, v3, v6, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-ne p1, v9, :cond_6

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_6
    :goto_2
    check-cast p1, Ljava/lang/Number;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-lez p1, :cond_7

    .line 172
    .line 173
    move p1, v7

    .line 174
    goto :goto_3

    .line 175
    :cond_7
    move p1, v3

    .line 176
    :goto_3
    if-eqz p1, :cond_8

    .line 177
    .line 178
    sget-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->READING_LIST:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 179
    .line 180
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    :cond_8
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 184
    .line 185
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iput p1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 194
    .line 195
    iput v2, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 196
    .line 197
    iget-object v1, v1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 198
    .line 199
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 200
    .line 201
    const/16 v6, 0x17

    .line 202
    .line 203
    invoke-direct {v2, v6}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v7, v3, v2, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    if-ne p0, v9, :cond_9

    .line 211
    .line 212
    :goto_4
    move-object v4, v9

    .line 213
    goto :goto_7

    .line 214
    :cond_9
    move v13, p1

    .line 215
    move-object p1, p0

    .line 216
    move p0, v13

    .line 217
    :goto_5
    check-cast p1, Ljava/lang/Number;

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-lez p1, :cond_a

    .line 224
    .line 225
    move p1, v7

    .line 226
    goto :goto_6

    .line 227
    :cond_a
    move p1, v3

    .line 228
    :goto_6
    if-eqz p1, :cond_b

    .line 229
    .line 230
    sget-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->HISTORY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 231
    .line 232
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_b
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 236
    .line 237
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 242
    .line 243
    new-instance v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;

    .line 244
    .line 245
    if-eqz p0, :cond_c

    .line 246
    .line 247
    move v3, v7

    .line 248
    :cond_c
    invoke-direct {v5, v3, p1, v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceViewModel$SourceSelectionUiState;-><init>(ZZLorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V

    .line 249
    .line 250
    .line 251
    invoke-direct {v2, v5}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v8, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    :goto_7
    return-object v4

    .line 261
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 262
    .line 263
    iget v1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 264
    .line 265
    if-eqz v1, :cond_e

    .line 266
    .line 267
    if-ne v1, v7, :cond_d

    .line 268
    .line 269
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_d
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    move-object v4, v8

    .line 277
    goto :goto_9

    .line 278
    :cond_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 282
    .line 283
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->pageImagesDao()Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    check-cast v5, Lorg/wikipedia/history/HistoryEntry;

    .line 292
    .line 293
    iget v1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 294
    .line 295
    iput v7, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 296
    .line 297
    iget-object v2, p1, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 298
    .line 299
    new-instance v3, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;

    .line 300
    .line 301
    invoke-direct {v3, p1, v5, v1, v8}, Lorg/wikipedia/pageimages/db/PageImageDao_Impl$upsertForTimeSpent$2;-><init>(Lorg/wikipedia/pageimages/db/PageImageDao_Impl;Lorg/wikipedia/history/HistoryEntry;ILkotlin/coroutines/Continuation;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v2, p0, v3}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    if-ne p0, v0, :cond_f

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_f
    move-object p0, v4

    .line 312
    :goto_8
    if-ne p0, v0, :cond_10

    .line 313
    .line 314
    move-object v4, v0

    .line 315
    :cond_10
    :goto_9
    return-object v4

    .line 316
    :pswitch_2
    iget v0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 317
    .line 318
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 319
    .line 320
    iget v2, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 321
    .line 322
    if-eqz v2, :cond_12

    .line 323
    .line 324
    if-ne v2, v7, :cond_11

    .line 325
    .line 326
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    goto :goto_a

    .line 330
    :cond_11
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    move-object p1, v8

    .line 334
    goto :goto_a

    .line 335
    :cond_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    sget-object p1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 339
    .line 340
    check-cast v5, Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-static {v5}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    int-to-long v4, v0

    .line 354
    invoke-virtual {v2, v4, v5}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    if-eqz v0, :cond_13

    .line 362
    .line 363
    move v3, v7

    .line 364
    :cond_13
    iput v7, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 365
    .line 366
    sget-object v0, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->INSTANCE:Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;

    .line 367
    .line 368
    invoke-virtual {v0, p1, v2, v3, p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->getGameState(Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    if-ne p1, v1, :cond_14

    .line 373
    .line 374
    move-object p1, v1

    .line 375
    :cond_14
    :goto_a
    return-object p1

    .line 376
    :pswitch_3
    check-cast v5, Landroidx/compose/foundation/pager/PagerState;

    .line 377
    .line 378
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 379
    .line 380
    iget v1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 381
    .line 382
    if-eqz v1, :cond_16

    .line 383
    .line 384
    if-ne v1, v7, :cond_15

    .line 385
    .line 386
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_15
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    move-object v4, v8

    .line 394
    goto :goto_c

    .line 395
    :cond_16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    iput v7, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 399
    .line 400
    invoke-virtual {v5, p0}, Landroidx/compose/foundation/pager/PagerState;->awaitScrollDependencies(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    if-ne p1, v0, :cond_17

    .line 405
    .line 406
    move-object v4, v0

    .line 407
    goto :goto_c

    .line 408
    :cond_17
    :goto_b
    iget p0, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 409
    .line 410
    invoke-virtual {v5, p0}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    .line 411
    .line 412
    .line 413
    move-result p0

    .line 414
    const/4 p1, 0x0

    .line 415
    invoke-virtual {v5, p1, p0, v7}, Landroidx/compose/foundation/pager/PagerState;->snapToItem$foundation(FIZ)V

    .line 416
    .line 417
    .line 418
    :goto_c
    return-object v4

    .line 419
    :pswitch_4
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 420
    .line 421
    iget v1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 422
    .line 423
    if-eqz v1, :cond_19

    .line 424
    .line 425
    if-ne v1, v7, :cond_18

    .line 426
    .line 427
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    goto :goto_d

    .line 431
    :cond_18
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    move-object v4, v8

    .line 435
    goto :goto_d

    .line 436
    :cond_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;

    .line 440
    .line 441
    iget-object p1, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 442
    .line 443
    iget v1, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 444
    .line 445
    iput v7, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 446
    .line 447
    invoke-interface {p1, v1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;->scrollToItem(ILorg/wikipedia/random/RandomViewModel$loadMore$2;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    if-ne p0, v0, :cond_1a

    .line 452
    .line 453
    move-object v4, v0

    .line 454
    :cond_1a
    :goto_d
    return-object v4

    .line 455
    :pswitch_5
    check-cast v5, Lorg/wikipedia/random/RandomViewModel;

    .line 456
    .line 457
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 458
    .line 459
    iget v9, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 460
    .line 461
    if-eqz v9, :cond_1e

    .line 462
    .line 463
    if-eq v9, v7, :cond_1d

    .line 464
    .line 465
    if-ne v9, v2, :cond_1c

    .line 466
    .line 467
    iget v6, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 468
    .line 469
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    :cond_1b
    move p1, v6

    .line 473
    goto :goto_e

    .line 474
    :cond_1c
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    move-object v4, v8

    .line 478
    goto/16 :goto_14

    .line 479
    .line 480
    :cond_1d
    iget v6, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 481
    .line 482
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    goto :goto_f

    .line 486
    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    move p1, v3

    .line 490
    :goto_e
    add-int/lit8 v6, p1, 0x1

    .line 491
    .line 492
    const/4 v9, 0x5

    .line 493
    if-ge p1, v9, :cond_26

    .line 494
    .line 495
    iget-object p1, v5, Lorg/wikipedia/random/RandomViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 496
    .line 497
    iput v6, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 498
    .line 499
    iput v7, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 500
    .line 501
    sget-object v9, Lorg/wikipedia/feed/random/RandomClient;->INSTANCE:Lorg/wikipedia/feed/random/RandomClient;

    .line 502
    .line 503
    invoke-virtual {v9, p1, v1, p0}, Lorg/wikipedia/feed/random/RandomClient;->getRandomPages(Lorg/wikipedia/dataclient/WikiSite;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    if-ne p1, v0, :cond_1f

    .line 508
    .line 509
    goto :goto_12

    .line 510
    :cond_1f
    :goto_f
    check-cast p1, Ljava/lang/Iterable;

    .line 511
    .line 512
    new-instance v9, Ljava/util/ArrayList;

    .line 513
    .line 514
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .line 516
    .line 517
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    :cond_20
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 522
    .line 523
    .line 524
    move-result v10

    .line 525
    if-eqz v10, :cond_23

    .line 526
    .line 527
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v10

    .line 531
    move-object v11, v10

    .line 532
    check-cast v11, Lorg/wikipedia/page/PageTitle;

    .line 533
    .line 534
    iget-object v12, v11, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 535
    .line 536
    if-eqz v12, :cond_20

    .line 537
    .line 538
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 539
    .line 540
    .line 541
    move-result v12

    .line 542
    if-nez v12, :cond_21

    .line 543
    .line 544
    goto :goto_10

    .line 545
    :cond_21
    iget-object v11, v11, Lorg/wikipedia/page/PageTitle;->extract:Ljava/lang/String;

    .line 546
    .line 547
    if-eqz v11, :cond_20

    .line 548
    .line 549
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 550
    .line 551
    .line 552
    move-result v11

    .line 553
    if-nez v11, :cond_22

    .line 554
    .line 555
    goto :goto_10

    .line 556
    :cond_22
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    goto :goto_10

    .line 560
    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 561
    .line 562
    .line 563
    move-result p1

    .line 564
    if-nez p1, :cond_24

    .line 565
    .line 566
    iget-object p0, v5, Lorg/wikipedia/random/RandomViewModel;->items:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 567
    .line 568
    invoke-virtual {p0, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 569
    .line 570
    .line 571
    goto :goto_13

    .line 572
    :cond_24
    sget-object p1, Lkotlin/time/Duration;->Companion:Lokio/Path$Companion;

    .line 573
    .line 574
    const/16 p1, 0x3e8

    .line 575
    .line 576
    sget-object v9, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 577
    .line 578
    invoke-static {p1, v9}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 579
    .line 580
    .line 581
    move-result-wide v9

    .line 582
    iput v6, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->I$0:I

    .line 583
    .line 584
    iput v2, p0, Lorg/wikipedia/random/RandomViewModel$loadMore$2;->label:I

    .line 585
    .line 586
    invoke-static {v9, v10}, Lkotlinx/coroutines/AwaitKt;->toDelayMillis-LRDsOJo(J)J

    .line 587
    .line 588
    .line 589
    move-result-wide v9

    .line 590
    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 595
    .line 596
    if-ne p1, v9, :cond_25

    .line 597
    .line 598
    goto :goto_11

    .line 599
    :cond_25
    move-object p1, v4

    .line 600
    :goto_11
    if-ne p1, v0, :cond_1b

    .line 601
    .line 602
    :goto_12
    move-object v4, v0

    .line 603
    goto :goto_14

    .line 604
    :cond_26
    :goto_13
    iget-object p0, v5, Lorg/wikipedia/random/RandomViewModel;->loadError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 605
    .line 606
    invoke-virtual {p0, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    iput-boolean v3, v5, Lorg/wikipedia/random/RandomViewModel;->loading:Z

    .line 610
    .line 611
    :goto_14
    return-object v4

    .line 612
    nop

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
