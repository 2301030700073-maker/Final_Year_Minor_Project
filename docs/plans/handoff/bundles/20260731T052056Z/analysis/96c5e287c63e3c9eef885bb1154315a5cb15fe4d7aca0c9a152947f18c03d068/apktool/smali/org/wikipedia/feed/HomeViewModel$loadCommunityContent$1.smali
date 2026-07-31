.class public final Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 16
    iput p5, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->$r8$classId:I

    iput p1, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->$r8$classId:I

    .line 15
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;Landroid/content/Context;ILkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget p1, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 9
    .line 10
    iget v2, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v3, p0

    .line 15
    check-cast v3, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 16
    .line 17
    move-object v4, v0

    .line 18
    check-cast v4, Landroid/content/Context;

    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    move-object v5, p2

    .line 22
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    move-object v5, p2

    .line 27
    new-instance v2, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 28
    .line 29
    iget v3, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v4, p0

    .line 34
    check-cast v4, Landroidx/compose/animation/core/Animatable;

    .line 35
    .line 36
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 37
    .line 38
    const/4 v7, 0x2

    .line 39
    move-object v6, v5

    .line 40
    move-object v5, v0

    .line 41
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :pswitch_1
    move-object v5, p2

    .line 46
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 47
    .line 48
    iget-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 51
    .line 52
    check-cast v0, Landroid/content/Context;

    .line 53
    .line 54
    iget p0, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    .line 55
    .line 56
    invoke-direct {p1, p2, v0, p0, v5}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;Landroid/content/Context;ILkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_2
    move-object v5, p2

    .line 61
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 62
    .line 63
    check-cast v0, Lorg/wikipedia/feed/HomeViewModel;

    .line 64
    .line 65
    invoke-direct {p0, v0, v5}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;-><init>(Lorg/wikipedia/feed/HomeViewModel;Lkotlin/coroutines/Continuation;)V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v6, 0x3

    .line 6
    const/4 v7, 0x2

    .line 7
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v1, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    const/4 v10, 0x1

    .line 15
    const/4 v11, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget v3, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    .line 20
    .line 21
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 22
    .line 23
    iget v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    if-eq v0, v10, :cond_1

    .line 28
    .line 29
    if-ne v0, v7, :cond_0

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object v8, v11

    .line 39
    goto :goto_3

    .line 40
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :try_start_1
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 50
    .line 51
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput v10, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 60
    .line 61
    iget-object v0, v0, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 62
    .line 63
    new-instance v2, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    invoke-direct {v2, v3, v12}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v9, v10, v2, v4}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-ne v0, v5, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    :goto_0
    iget-object v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 79
    .line 80
    invoke-virtual {v0}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->loadCategories()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :goto_1
    const-string v2, "Error deleting categories data of "

    .line 85
    .line 86
    const-string v9, " years ago"

    .line 87
    .line 88
    invoke-static {v3, v2, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    sget-object v3, Lorg/wikipedia/util/log/L;->LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 93
    .line 94
    invoke-virtual {v3, v2, v0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 98
    .line 99
    sget-object v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 100
    .line 101
    new-instance v3, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestData$2$1;

    .line 102
    .line 103
    check-cast v1, Landroid/content/Context;

    .line 104
    .line 105
    invoke-direct {v3, v1, v0, v11, v6}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestData$2$1;-><init>(Landroid/content/Context;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;I)V

    .line 106
    .line 107
    .line 108
    iput v7, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 109
    .line 110
    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-ne v0, v5, :cond_4

    .line 115
    .line 116
    :goto_2
    move-object v8, v5

    .line 117
    :cond_4
    :goto_3
    return-object v8

    .line 118
    :pswitch_0
    move-object v9, v1

    .line 119
    check-cast v9, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 120
    .line 121
    iget v12, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    .line 122
    .line 123
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 124
    .line 125
    iget v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 126
    .line 127
    const/4 v14, 0x6

    .line 128
    const/16 v15, 0xfa

    .line 129
    .line 130
    const/high16 v1, 0x3f800000    # 1.0f

    .line 131
    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    if-eq v0, v10, :cond_7

    .line 135
    .line 136
    if-eq v0, v7, :cond_6

    .line 137
    .line 138
    if-ne v0, v6, :cond_5

    .line 139
    .line 140
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_7

    .line 144
    .line 145
    :cond_5
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    move-object v8, v11

    .line 149
    goto :goto_8

    .line 150
    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    move v7, v1

    .line 154
    goto :goto_5

    .line 155
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-le v12, v0, :cond_b

    .line 167
    .line 168
    iget-object v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 171
    .line 172
    new-instance v2, Ljava/lang/Float;

    .line 173
    .line 174
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    .line 175
    .line 176
    .line 177
    iput v10, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 178
    .line 179
    invoke-virtual {v0, v2, v4}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-ne v0, v13, :cond_9

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_9
    :goto_4
    iget-object v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 189
    .line 190
    move v2, v1

    .line 191
    new-instance v1, Ljava/lang/Float;

    .line 192
    .line 193
    const/high16 v3, 0x40000000    # 2.0f

    .line 194
    .line 195
    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(F)V

    .line 196
    .line 197
    .line 198
    move v3, v2

    .line 199
    invoke-static {v15, v14, v11}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iput v7, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 204
    .line 205
    move v5, v3

    .line 206
    const/4 v3, 0x0

    .line 207
    move v7, v5

    .line 208
    const/16 v5, 0xc

    .line 209
    .line 210
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-ne v0, v13, :cond_a

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_a
    :goto_5
    iget-object v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 220
    .line 221
    new-instance v1, Ljava/lang/Float;

    .line 222
    .line 223
    invoke-direct {v1, v7}, Ljava/lang/Float;-><init>(F)V

    .line 224
    .line 225
    .line 226
    invoke-static {v15, v14, v11}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iput v6, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    const/16 v5, 0xc

    .line 234
    .line 235
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-ne v0, v13, :cond_b

    .line 240
    .line 241
    :goto_6
    move-object v8, v13

    .line 242
    goto :goto_8

    .line 243
    :cond_b
    :goto_7
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 244
    .line 245
    .line 246
    :goto_8
    return-object v8

    .line 247
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 248
    .line 249
    iget v3, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 250
    .line 251
    if-eqz v3, :cond_d

    .line 252
    .line 253
    if-ne v3, v10, :cond_c

    .line 254
    .line 255
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_c
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    move-object v8, v11

    .line 263
    goto :goto_9

    .line 264
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    new-instance v2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 268
    .line 269
    invoke-direct {v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;-><init>()V

    .line 270
    .line 271
    .line 272
    check-cast v1, Landroid/content/Context;

    .line 273
    .line 274
    iget v3, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    .line 275
    .line 276
    iput v10, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 277
    .line 278
    invoke-static {v2, v1, v3, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;->update$glance_appwidget_release$default(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroid/content/Context;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    if-ne v1, v0, :cond_e

    .line 283
    .line 284
    move-object v8, v0

    .line 285
    :cond_e
    :goto_9
    return-object v8

    .line 286
    :pswitch_2
    move-object v6, v1

    .line 287
    check-cast v6, Lorg/wikipedia/feed/HomeViewModel;

    .line 288
    .line 289
    iget-object v12, v6, Lorg/wikipedia/feed/HomeViewModel;->_communityState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 290
    .line 291
    iget-object v13, v6, Lorg/wikipedia/feed/HomeViewModel;->wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 292
    .line 293
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 294
    .line 295
    iget v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    .line 296
    .line 297
    if-eqz v0, :cond_10

    .line 298
    .line 299
    if-ne v0, v10, :cond_f

    .line 300
    .line 301
    iget v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 302
    .line 303
    iget-object v1, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v1, Lj$/time/LocalDate;

    .line 306
    .line 307
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    move v15, v0

    .line 311
    move/from16 v17, v9

    .line 312
    .line 313
    move-object/from16 v0, p1

    .line 314
    .line 315
    goto/16 :goto_a

    .line 316
    .line 317
    :cond_f
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    move-object v8, v11

    .line 321
    goto/16 :goto_d

    .line 322
    .line 323
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v12}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Lorg/wikipedia/feed/CommunityContentState;

    .line 331
    .line 332
    iget-object v0, v0, Lorg/wikipedia/feed/CommunityContentState;->cards:Ljava/util/List;

    .line 333
    .line 334
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v18

    .line 338
    invoke-virtual {v12}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    move-object v15, v0

    .line 343
    check-cast v15, Lorg/wikipedia/feed/CommunityContentState;

    .line 344
    .line 345
    iget-object v0, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 346
    .line 347
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    move-object/from16 v17, v0

    .line 352
    .line 353
    check-cast v17, Lorg/wikipedia/dataclient/WikiSite;

    .line 354
    .line 355
    xor-int/lit8 v19, v18, 0x1

    .line 356
    .line 357
    const/16 v21, 0x0

    .line 358
    .line 359
    const/16 v22, 0x61

    .line 360
    .line 361
    const/16 v16, 0x0

    .line 362
    .line 363
    const/16 v20, 0x0

    .line 364
    .line 365
    invoke-static/range {v15 .. v22}, Lorg/wikipedia/feed/CommunityContentState;->copy$default(Lorg/wikipedia/feed/CommunityContentState;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;Lorg/wikipedia/feed/FeedEmptyState;I)Lorg/wikipedia/feed/CommunityContentState;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v12, v11, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    iget v15, v6, Lorg/wikipedia/feed/HomeViewModel;->nextCommunityAge:I

    .line 373
    .line 374
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    iget v1, v6, Lorg/wikipedia/feed/HomeViewModel;->nextCommunityAge:I

    .line 379
    .line 380
    int-to-long v1, v1

    .line 381
    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 386
    .line 387
    iget-object v1, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 388
    .line 389
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 394
    .line 395
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v0}, Lj$/time/LocalDate;->getYear()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v0}, Lj$/time/LocalDate;->getMonthValue()I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    new-instance v5, Ljava/lang/Integer;

    .line 412
    .line 413
    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 414
    .line 415
    .line 416
    new-array v3, v10, [Ljava/lang/Object;

    .line 417
    .line 418
    aput-object v5, v3, v9

    .line 419
    .line 420
    invoke-static {v3, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    const-string v5, "%02d"

    .line 425
    .line 426
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    invoke-virtual {v0}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 431
    .line 432
    .line 433
    move-result v11

    .line 434
    move/from16 v17, v9

    .line 435
    .line 436
    new-instance v9, Ljava/lang/Integer;

    .line 437
    .line 438
    invoke-direct {v9, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 439
    .line 440
    .line 441
    new-array v11, v10, [Ljava/lang/Object;

    .line 442
    .line 443
    aput-object v9, v11, v17

    .line 444
    .line 445
    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    iget-object v9, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 454
    .line 455
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v9

    .line 459
    check-cast v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 460
    .line 461
    iget-object v9, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 462
    .line 463
    iput-object v0, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->L$0:Ljava/lang/Object;

    .line 464
    .line 465
    iput v15, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->I$0:I

    .line 466
    .line 467
    iput v10, v4, Lorg/wikipedia/feed/HomeViewModel$loadCommunityContent$1;->label:I

    .line 468
    .line 469
    move-object/from16 v25, v9

    .line 470
    .line 471
    move-object v9, v0

    .line 472
    move-object v0, v1

    .line 473
    move-object v1, v2

    .line 474
    move-object v2, v3

    .line 475
    move-object v3, v5

    .line 476
    move-object v5, v4

    .line 477
    move-object/from16 v4, v25

    .line 478
    .line 479
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/RestService;->getFeedFeatured(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    if-ne v0, v14, :cond_11

    .line 484
    .line 485
    move-object v8, v14

    .line 486
    goto/16 :goto_d

    .line 487
    .line 488
    :cond_11
    move-object v1, v9

    .line 489
    :goto_a
    check-cast v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;

    .line 490
    .line 491
    invoke-static {}, Landroidx/room/Room;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    iget-object v3, v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->tfa:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 496
    .line 497
    iget-object v4, v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->onthisday:Ljava/util/List;

    .line 498
    .line 499
    iget-object v5, v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->news:Ljava/util/List;

    .line 500
    .line 501
    if-eqz v3, :cond_12

    .line 502
    .line 503
    new-instance v9, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    .line 504
    .line 505
    iget-object v11, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 506
    .line 507
    invoke-virtual {v11}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v11

    .line 511
    check-cast v11, Lorg/wikipedia/dataclient/WikiSite;

    .line 512
    .line 513
    invoke-direct {v9, v3, v15, v11}, Lorg/wikipedia/feed/featured/FeaturedArticleCard;-><init>(Lorg/wikipedia/dataclient/page/PageSummary;ILorg/wikipedia/dataclient/WikiSite;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2, v9}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    :cond_12
    iget-object v3, v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->topRead:Lorg/wikipedia/feed/topread/TopRead;

    .line 520
    .line 521
    if-eqz v3, :cond_13

    .line 522
    .line 523
    new-instance v9, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 524
    .line 525
    iget-object v11, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 526
    .line 527
    invoke-virtual {v11}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v11

    .line 531
    check-cast v11, Lorg/wikipedia/dataclient/WikiSite;

    .line 532
    .line 533
    invoke-direct {v9, v3, v15, v11}, Lorg/wikipedia/feed/topread/TopReadCard;-><init>(Lorg/wikipedia/feed/topread/TopRead;ILorg/wikipedia/dataclient/WikiSite;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v2, v9}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    :cond_13
    iget-object v3, v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->dyk:Ljava/util/List;

    .line 540
    .line 541
    if-eqz v3, :cond_14

    .line 542
    .line 543
    new-instance v9, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 544
    .line 545
    invoke-virtual {v1}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    iget-object v11, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 553
    .line 554
    invoke-virtual {v11}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v11

    .line 558
    check-cast v11, Lorg/wikipedia/dataclient/WikiSite;

    .line 559
    .line 560
    invoke-direct {v9, v3, v1, v11}, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;-><init>(Ljava/util/List;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, v9}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    :cond_14
    if-eqz v5, :cond_16

    .line 567
    .line 568
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-eqz v1, :cond_15

    .line 573
    .line 574
    goto :goto_b

    .line 575
    :cond_15
    new-instance v1, Lorg/wikipedia/feed/news/NewsCard;

    .line 576
    .line 577
    iget-object v3, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 578
    .line 579
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    check-cast v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 584
    .line 585
    invoke-direct {v1, v5, v15, v3}, Lorg/wikipedia/feed/news/NewsCard;-><init>(Ljava/util/List;ILorg/wikipedia/dataclient/WikiSite;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    :cond_16
    :goto_b
    if-eqz v4, :cond_18

    .line 592
    .line 593
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-eqz v1, :cond_17

    .line 598
    .line 599
    goto :goto_c

    .line 600
    :cond_17
    new-instance v1, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    .line 601
    .line 602
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    iget-object v4, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 607
    .line 608
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v4

    .line 612
    check-cast v4, Lorg/wikipedia/dataclient/WikiSite;

    .line 613
    .line 614
    invoke-direct {v1, v3, v15, v4}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;-><init>(Ljava/util/List;ILorg/wikipedia/dataclient/WikiSite;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    :cond_18
    :goto_c
    iget-object v0, v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->potd:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 621
    .line 622
    if-eqz v0, :cond_19

    .line 623
    .line 624
    new-instance v1, Lorg/wikipedia/feed/image/FeaturedImageCard;

    .line 625
    .line 626
    iget-object v3, v13, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 627
    .line 628
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    check-cast v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 633
    .line 634
    invoke-direct {v1, v0, v15, v3}, Lorg/wikipedia/feed/image/FeaturedImageCard;-><init>(Lorg/wikipedia/feed/image/FeaturedImage;ILorg/wikipedia/dataclient/WikiSite;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    :cond_19
    invoke-static {v2}, Landroidx/room/Room;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    if-nez v1, :cond_1a

    .line 653
    .line 654
    new-instance v1, Lorg/wikipedia/feed/dayheader/DayHeaderCard;

    .line 655
    .line 656
    invoke-direct {v1, v15}, Lorg/wikipedia/feed/dayheader/DayHeaderCard;-><init>(I)V

    .line 657
    .line 658
    .line 659
    move/from16 v2, v17

    .line 660
    .line 661
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    :cond_1a
    add-int/2addr v15, v10

    .line 665
    iput v15, v6, Lorg/wikipedia/feed/HomeViewModel;->nextCommunityAge:I

    .line 666
    .line 667
    invoke-virtual {v12}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    move-object/from16 v17, v1

    .line 672
    .line 673
    check-cast v17, Lorg/wikipedia/feed/CommunityContentState;

    .line 674
    .line 675
    invoke-virtual {v12}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    check-cast v1, Lorg/wikipedia/feed/CommunityContentState;

    .line 680
    .line 681
    iget-object v1, v1, Lorg/wikipedia/feed/CommunityContentState;->cards:Ljava/util/List;

    .line 682
    .line 683
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 684
    .line 685
    .line 686
    move-result-object v18

    .line 687
    const/16 v23, 0x0

    .line 688
    .line 689
    const/16 v24, 0x42

    .line 690
    .line 691
    const/16 v19, 0x0

    .line 692
    .line 693
    const/16 v20, 0x0

    .line 694
    .line 695
    const/16 v21, 0x0

    .line 696
    .line 697
    const/16 v22, 0x0

    .line 698
    .line 699
    invoke-static/range {v17 .. v24}, Lorg/wikipedia/feed/CommunityContentState;->copy$default(Lorg/wikipedia/feed/CommunityContentState;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;Lorg/wikipedia/feed/FeedEmptyState;I)Lorg/wikipedia/feed/CommunityContentState;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    const/4 v1, 0x0

    .line 704
    invoke-virtual {v12, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    :goto_d
    return-object v8

    .line 708
    nop

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
