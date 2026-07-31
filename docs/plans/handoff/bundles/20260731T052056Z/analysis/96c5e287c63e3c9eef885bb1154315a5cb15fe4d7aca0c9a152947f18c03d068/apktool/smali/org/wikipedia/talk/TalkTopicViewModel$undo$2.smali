.class public final Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $undoRevId:J

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 12
    iput p5, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->this$0:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    check-cast v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 14
    .line 15
    const/4 v6, 0x6

    .line 16
    move-object v5, p2

    .line 17
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    move-object v6, p2

    .line 22
    new-instance v2, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 23
    .line 24
    move-object v5, v0

    .line 25
    check-cast v5, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 26
    .line 27
    const/4 v7, 0x5

    .line 28
    iget-wide v3, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 29
    .line 30
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :pswitch_1
    move-object v6, p2

    .line 35
    new-instance v2, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 36
    .line 37
    move-object v3, v0

    .line 38
    check-cast v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 39
    .line 40
    iget-wide v4, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_2
    move-object v6, p2

    .line 48
    new-instance v2, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 49
    .line 50
    move-object v3, v0

    .line 51
    check-cast v3, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 52
    .line 53
    iget-wide v4, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 54
    .line 55
    const/4 v7, 0x3

    .line 56
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    :pswitch_3
    move-object v6, p2

    .line 61
    new-instance v2, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 62
    .line 63
    move-object v5, v0

    .line 64
    check-cast v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 65
    .line 66
    const/4 v7, 0x2

    .line 67
    iget-wide v3, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 68
    .line 69
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :pswitch_4
    move-object v6, p2

    .line 74
    new-instance v2, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 75
    .line 76
    move-object v3, v0

    .line 77
    check-cast v3, Landroidx/compose/animation/core/Animatable;

    .line 78
    .line 79
    iget-wide v4, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 80
    .line 81
    const/4 v7, 0x1

    .line 82
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 83
    .line 84
    .line 85
    return-object v2

    .line 86
    :pswitch_5
    move-object v6, p2

    .line 87
    new-instance v2, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 88
    .line 89
    move-object v3, v0

    .line 90
    check-cast v3, Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 91
    .line 92
    iget-wide v4, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
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
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
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
    .locals 17

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    iget-wide v2, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 7
    .line 8
    iget-object v5, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    iget v1, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    if-ne v1, v7, :cond_0

    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object v8, v9

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    move-object v11, v5

    .line 40
    check-cast v11, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 41
    .line 42
    iput v7, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 43
    .line 44
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 45
    .line 46
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 47
    .line 48
    new-instance v10, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;

    .line 49
    .line 50
    const/16 v16, 0x0

    .line 51
    .line 52
    iget-wide v12, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 53
    .line 54
    const/4 v14, 0x1

    .line 55
    const/4 v15, 0x0

    .line 56
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;JZLjava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v10, v4}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-ne v1, v0, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move-object v1, v8

    .line 67
    :goto_0
    if-ne v1, v0, :cond_3

    .line 68
    .line 69
    move-object v8, v0

    .line 70
    :cond_3
    :goto_1
    return-object v8

    .line 71
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 72
    .line 73
    iget v10, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 74
    .line 75
    const/4 v11, 0x3

    .line 76
    if-eqz v10, :cond_7

    .line 77
    .line 78
    if-eq v10, v7, :cond_6

    .line 79
    .line 80
    if-eq v10, v1, :cond_5

    .line 81
    .line 82
    if-ne v10, v11, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move-object v8, v9

    .line 89
    goto :goto_5

    .line 90
    :cond_5
    :goto_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    move-object/from16 v2, p1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget-object v6, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 104
    .line 105
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v6}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    iput v7, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {v6, v2, v3, v7, v4}, Lorg/wikipedia/dataclient/Service$-CC;->getListById$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;JZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-ne v2, v0, :cond_8

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    :goto_3
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 126
    .line 127
    check-cast v5, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 128
    .line 129
    iget-object v3, v5, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_updateListByIdFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 130
    .line 131
    if-nez v2, :cond_a

    .line 132
    .line 133
    new-instance v2, Lorg/wikipedia/util/Resource$Error;

    .line 134
    .line 135
    new-instance v5, Ljava/lang/Throwable;

    .line 136
    .line 137
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 138
    .line 139
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    iget-object v6, v6, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 144
    .line 145
    iget-object v6, v6, Lorg/wikipedia/ActivityLifecycleHandler;->currentActivity:Landroid/app/Activity;

    .line 146
    .line 147
    if-nez v6, :cond_9

    .line 148
    .line 149
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    :cond_9
    const v7, 0x7f1201e2

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {v2, v5}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    iput v1, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 170
    .line 171
    invoke-virtual {v3, v2, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-ne v1, v0, :cond_b

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_a
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 179
    .line 180
    invoke-direct {v1, v2}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iput v11, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 184
    .line 185
    invoke-virtual {v3, v1, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-ne v1, v0, :cond_b

    .line 190
    .line 191
    :goto_4
    move-object v8, v0

    .line 192
    :cond_b
    :goto_5
    return-object v8

    .line 193
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 194
    .line 195
    iget v1, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 196
    .line 197
    if-eqz v1, :cond_d

    .line 198
    .line 199
    if-ne v1, v7, :cond_c

    .line 200
    .line 201
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_c
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    move-object v8, v9

    .line 209
    goto :goto_6

    .line 210
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    check-cast v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 214
    .line 215
    iput v7, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 216
    .line 217
    invoke-virtual {v5, v2, v3, v4}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->runHighlightTasks(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-ne v1, v0, :cond_e

    .line 222
    .line 223
    move-object v8, v0

    .line 224
    :cond_e
    :goto_6
    return-object v8

    .line 225
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 226
    .line 227
    iget v1, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 228
    .line 229
    if-eqz v1, :cond_10

    .line 230
    .line 231
    if-ne v1, v7, :cond_f

    .line 232
    .line 233
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_f
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    move-object v8, v9

    .line 241
    goto :goto_7

    .line 242
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    check-cast v5, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 246
    .line 247
    iget-object v1, v5, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 248
    .line 249
    iput v7, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 250
    .line 251
    invoke-virtual {v1, v2, v3, v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreFling-QWom1Mo(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    if-ne v1, v0, :cond_11

    .line 256
    .line 257
    move-object v8, v0

    .line 258
    :cond_11
    :goto_7
    return-object v8

    .line 259
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 260
    .line 261
    iget v10, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 262
    .line 263
    const-wide/16 v11, 0x8

    .line 264
    .line 265
    if-eqz v10, :cond_14

    .line 266
    .line 267
    if-eq v10, v7, :cond_13

    .line 268
    .line 269
    if-ne v10, v1, :cond_12

    .line 270
    .line 271
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto :goto_a

    .line 275
    :cond_12
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    move-object v8, v9

    .line 279
    goto :goto_b

    .line 280
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    sub-long v9, v2, v11

    .line 288
    .line 289
    iput v7, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 290
    .line 291
    invoke-static {v9, v10, v4}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    if-ne v6, v0, :cond_15

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_15
    :goto_8
    iput v1, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 299
    .line 300
    invoke-static {v11, v12, v4}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    if-ne v1, v0, :cond_16

    .line 305
    .line 306
    :goto_9
    move-object v8, v0

    .line 307
    goto :goto_b

    .line 308
    :cond_16
    :goto_a
    check-cast v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 309
    .line 310
    iget-object v0, v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 311
    .line 312
    if-eqz v0, :cond_17

    .line 313
    .line 314
    new-instance v1, Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException;

    .line 315
    .line 316
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException;-><init>(J)V

    .line 317
    .line 318
    .line 319
    new-instance v2, Lkotlin/Result$Failure;

    .line 320
    .line 321
    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    :cond_17
    :goto_b
    return-object v8

    .line 328
    :pswitch_4
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 329
    .line 330
    iget v0, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 331
    .line 332
    if-eqz v0, :cond_19

    .line 333
    .line 334
    if-ne v0, v7, :cond_18

    .line 335
    .line 336
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    goto :goto_c

    .line 340
    :cond_18
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    move-object v8, v9

    .line 344
    goto :goto_c

    .line 345
    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    move-object v0, v5

    .line 349
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 350
    .line 351
    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    .line 352
    .line 353
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 354
    .line 355
    .line 356
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->MagnifierSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 357
    .line 358
    iput v7, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 359
    .line 360
    const/4 v3, 0x0

    .line 361
    const/16 v5, 0xc

    .line 362
    .line 363
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    if-ne v0, v10, :cond_1a

    .line 368
    .line 369
    move-object v8, v10

    .line 370
    :cond_1a
    :goto_c
    return-object v8

    .line 371
    :pswitch_5
    move-object v10, v5

    .line 372
    check-cast v10, Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 373
    .line 374
    iget-object v0, v10, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 375
    .line 376
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 377
    .line 378
    iget v2, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 379
    .line 380
    if-eqz v2, :cond_1d

    .line 381
    .line 382
    if-eq v2, v7, :cond_1c

    .line 383
    .line 384
    if-ne v2, v1, :cond_1b

    .line 385
    .line 386
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    move-object/from16 v0, p1

    .line 390
    .line 391
    goto :goto_f

    .line 392
    :cond_1b
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    move-object v8, v9

    .line 396
    goto :goto_10

    .line 397
    :cond_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    move-object/from16 v2, p1

    .line 401
    .line 402
    goto :goto_d

    .line 403
    :cond_1d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 407
    .line 408
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 409
    .line 410
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    iput v7, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 415
    .line 416
    const-string v3, "csrf"

    .line 417
    .line 418
    invoke-interface {v2, v3, v4}, Lorg/wikipedia/dataclient/Service;->getToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    if-ne v2, v11, :cond_1e

    .line 423
    .line 424
    goto :goto_e

    .line 425
    :cond_1e
    :goto_d
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 426
    .line 427
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 428
    .line 429
    if-eqz v2, :cond_1f

    .line 430
    .line 431
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    :cond_1f
    move-object v2, v9

    .line 436
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 440
    .line 441
    iget-object v3, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 442
    .line 443
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    iput v1, v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->label:I

    .line 452
    .line 453
    move-object v1, v0

    .line 454
    move-object v0, v3

    .line 455
    move-object v5, v4

    .line 456
    iget-wide v3, v5, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;->$undoRevId:J

    .line 457
    .line 458
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service$-CC;->postUndoEdit$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    if-ne v0, v11, :cond_20

    .line 463
    .line 464
    :goto_e
    move-object v8, v11

    .line 465
    goto :goto_10

    .line 466
    :cond_20
    :goto_f
    check-cast v0, Lorg/wikipedia/edit/Edit;

    .line 467
    .line 468
    iget-object v1, v10, Lorg/wikipedia/talk/TalkTopicViewModel;->undoResponseData:Lorg/wikipedia/util/SingleLiveData;

    .line 469
    .line 470
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 471
    .line 472
    iget-object v0, v0, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    .line 473
    .line 474
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    const-string v3, "Success"

    .line 478
    .line 479
    iget-object v0, v0, Lorg/wikipedia/edit/Edit$Result;->status:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    :goto_10
    return-object v8

    .line 496
    nop

    .line 497
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
