.class public final Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->this$0:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->this$0:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    iget-object v5, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->this$0:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v1, v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    .line 18
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    iget v8, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 21
    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    if-ne v8, v6, :cond_0

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v2, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    move-object v8, v3

    .line 45
    check-cast v8, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 46
    .line 47
    const/16 v21, 0x0

    .line 48
    .line 49
    const/16 v22, 0x1fff

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    const/16 v18, 0x0

    .line 63
    .line 64
    const/16 v19, 0x0

    .line 65
    .line 66
    const/16 v20, 0x1

    .line 67
    .line 68
    invoke-static/range {v8 .. v22}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v1, v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    iget-object v3, v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->homePreferenceRepository:Lokhttp3/MultipartBody$Builder;

    .line 79
    .line 80
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 85
    .line 86
    iget-object v4, v4, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 87
    .line 88
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 93
    .line 94
    iget-object v5, v5, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topicPreviewContent:Ljava/util/Map;

    .line 95
    .line 96
    iput v6, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 97
    .line 98
    invoke-virtual {v3, v4, v5, v0}, Lokhttp3/MultipartBody$Builder;->getPersonalizedPreviewContent(Ljava/util/Set;Ljava/util/Map;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-ne v0, v7, :cond_3

    .line 103
    .line 104
    move-object v2, v7

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    :goto_0
    move-object v14, v0

    .line 107
    check-cast v14, Ljava/util/List;

    .line 108
    .line 109
    :cond_4
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v3, v0

    .line 114
    check-cast v3, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 115
    .line 116
    const/16 v16, 0x0

    .line 117
    .line 118
    const/16 v17, 0x4fff

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v9, 0x0

    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v11, 0x0

    .line 128
    const/4 v12, 0x0

    .line 129
    const/4 v13, 0x0

    .line 130
    const/4 v15, 0x0

    .line 131
    invoke-static/range {v3 .. v17}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    :goto_1
    return-object v2

    .line 142
    :pswitch_0
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 143
    .line 144
    iget v7, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 145
    .line 146
    if-eqz v7, :cond_6

    .line 147
    .line 148
    if-ne v7, v6, :cond_5

    .line 149
    .line 150
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-object v2, v3

    .line 158
    goto :goto_2

    .line 159
    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iput v6, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 163
    .line 164
    sget-object v3, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->Factory:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 165
    .line 166
    invoke-virtual {v5, v0}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->initialize(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-ne v0, v1, :cond_7

    .line 171
    .line 172
    move-object v2, v1

    .line 173
    :cond_7
    :goto_2
    return-object v2

    .line 174
    :pswitch_1
    iget-object v1, v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 175
    .line 176
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 177
    .line 178
    iget v8, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 179
    .line 180
    if-eqz v8, :cond_9

    .line 181
    .line 182
    if-ne v8, v6, :cond_8

    .line 183
    .line 184
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v0, p1

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    move-object v2, v3

    .line 194
    goto :goto_4

    .line 195
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_a
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    move-object v8, v3

    .line 203
    check-cast v8, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 204
    .line 205
    const/16 v21, 0x0

    .line 206
    .line 207
    const/16 v22, 0x73ff

    .line 208
    .line 209
    const/4 v9, 0x0

    .line 210
    const/4 v10, 0x0

    .line 211
    const/4 v11, 0x0

    .line 212
    const/4 v12, 0x0

    .line 213
    const/4 v13, 0x0

    .line 214
    const/4 v14, 0x0

    .line 215
    const/4 v15, 0x0

    .line 216
    const/16 v16, 0x0

    .line 217
    .line 218
    const/16 v17, 0x1

    .line 219
    .line 220
    const/16 v18, 0x0

    .line 221
    .line 222
    const/16 v19, 0x0

    .line 223
    .line 224
    const/16 v20, 0x0

    .line 225
    .line 226
    invoke-static/range {v8 .. v22}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v1, v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_a

    .line 235
    .line 236
    iget-object v3, v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->homePreferenceRepository:Lokhttp3/MultipartBody$Builder;

    .line 237
    .line 238
    iput v6, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 239
    .line 240
    invoke-virtual {v3, v0}, Lokhttp3/MultipartBody$Builder;->getCommunityPreviewContent(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-ne v0, v7, :cond_b

    .line 245
    .line 246
    move-object v2, v7

    .line 247
    goto :goto_4

    .line 248
    :cond_b
    :goto_3
    move-object v11, v0

    .line 249
    check-cast v11, Ljava/util/List;

    .line 250
    .line 251
    :cond_c
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    move-object v3, v0

    .line 256
    check-cast v3, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 257
    .line 258
    const/16 v16, 0x0

    .line 259
    .line 260
    const/16 v17, 0x79ff

    .line 261
    .line 262
    const/4 v4, 0x0

    .line 263
    const/4 v5, 0x0

    .line 264
    const/4 v6, 0x0

    .line 265
    const/4 v7, 0x0

    .line 266
    const/4 v8, 0x0

    .line 267
    const/4 v9, 0x0

    .line 268
    const/4 v10, 0x0

    .line 269
    const/4 v12, 0x0

    .line 270
    const/4 v13, 0x0

    .line 271
    const/4 v14, 0x0

    .line 272
    const/4 v15, 0x0

    .line 273
    invoke-static/range {v3 .. v17}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v1, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_c

    .line 282
    .line 283
    :goto_4
    return-object v2

    .line 284
    :pswitch_2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 285
    .line 286
    iget v7, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 287
    .line 288
    if-eqz v7, :cond_e

    .line 289
    .line 290
    if-ne v7, v6, :cond_d

    .line 291
    .line 292
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_d
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    move-object v2, v3

    .line 300
    goto :goto_6

    .line 301
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iput-boolean v6, v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestsUpdated:Z

    .line 305
    .line 306
    sget-object v3, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->Factory:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 307
    .line 308
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 309
    .line 310
    const-string v3, ""

    .line 311
    .line 312
    const v4, 0x7f12060b

    .line 313
    .line 314
    .line 315
    invoke-static {v4, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v3, v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestSelectionRepository:Lretrofit2/Retrofit;

    .line 319
    .line 320
    iput v6, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 321
    .line 322
    invoke-virtual {v3, v0}, Lretrofit2/Retrofit;->deleteAllInterests(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-ne v0, v1, :cond_f

    .line 327
    .line 328
    move-object v2, v1

    .line 329
    goto :goto_6

    .line 330
    :cond_f
    :goto_5
    iget-object v1, v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 331
    .line 332
    :cond_10
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    move-object v3, v0

    .line 337
    check-cast v3, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 338
    .line 339
    const/16 v16, 0x0

    .line 340
    .line 341
    const/16 v17, 0x7f83

    .line 342
    .line 343
    const/4 v4, 0x0

    .line 344
    const/4 v5, 0x0

    .line 345
    const/4 v6, 0x0

    .line 346
    sget-object v7, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 347
    .line 348
    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 349
    .line 350
    sget-object v9, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 351
    .line 352
    const/4 v10, 0x0

    .line 353
    const/4 v11, 0x0

    .line 354
    const/4 v12, 0x0

    .line 355
    const/4 v13, 0x0

    .line 356
    const/4 v14, 0x0

    .line 357
    const/4 v15, 0x0

    .line 358
    invoke-static/range {v3 .. v17}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-virtual {v1, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_10

    .line 367
    .line 368
    :goto_6
    return-object v2

    .line 369
    :pswitch_3
    iget-object v1, v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 370
    .line 371
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 372
    .line 373
    iget v8, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 374
    .line 375
    if-eqz v8, :cond_12

    .line 376
    .line 377
    if-ne v8, v6, :cond_11

    .line 378
    .line 379
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    move-object/from16 v0, p1

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_11
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    move-object v2, v3

    .line 389
    goto :goto_8

    .line 390
    :cond_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    :cond_13
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    move-object v8, v3

    .line 398
    check-cast v8, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 399
    .line 400
    const/16 v21, 0x0

    .line 401
    .line 402
    const/16 v22, 0x7ff3

    .line 403
    .line 404
    const/4 v9, 0x0

    .line 405
    const/4 v10, 0x1

    .line 406
    const/4 v11, 0x0

    .line 407
    const/4 v12, 0x0

    .line 408
    const/4 v13, 0x0

    .line 409
    const/4 v14, 0x0

    .line 410
    const/4 v15, 0x0

    .line 411
    const/16 v16, 0x0

    .line 412
    .line 413
    const/16 v17, 0x0

    .line 414
    .line 415
    const/16 v18, 0x0

    .line 416
    .line 417
    const/16 v19, 0x0

    .line 418
    .line 419
    const/16 v20, 0x0

    .line 420
    .line 421
    invoke-static/range {v8 .. v22}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    invoke-virtual {v1, v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-eqz v3, :cond_13

    .line 430
    .line 431
    iget-object v3, v5, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestSelectionRepository:Lretrofit2/Retrofit;

    .line 432
    .line 433
    iput v6, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;->label:I

    .line 434
    .line 435
    invoke-virtual {v3, v0}, Lretrofit2/Retrofit;->loadInitialArticles(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    if-ne v0, v7, :cond_14

    .line 440
    .line 441
    move-object v2, v7

    .line 442
    goto :goto_8

    .line 443
    :cond_14
    :goto_7
    move-object v3, v0

    .line 444
    check-cast v3, Ljava/util/List;

    .line 445
    .line 446
    :cond_15
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    move-object v4, v0

    .line 451
    check-cast v4, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 452
    .line 453
    iget-object v5, v4, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 454
    .line 455
    invoke-static {v5, v3}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    const/16 v17, 0x0

    .line 468
    .line 469
    const/16 v18, 0x7ff9

    .line 470
    .line 471
    const/4 v6, 0x0

    .line 472
    const/4 v7, 0x0

    .line 473
    const/4 v8, 0x0

    .line 474
    const/4 v9, 0x0

    .line 475
    const/4 v10, 0x0

    .line 476
    const/4 v11, 0x0

    .line 477
    const/4 v12, 0x0

    .line 478
    const/4 v13, 0x0

    .line 479
    const/4 v14, 0x0

    .line 480
    const/4 v15, 0x0

    .line 481
    const/16 v16, 0x0

    .line 482
    .line 483
    invoke-static/range {v4 .. v18}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-virtual {v1, v0, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_15

    .line 492
    .line 493
    :goto_8
    return-object v2

    .line 494
    nop

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
