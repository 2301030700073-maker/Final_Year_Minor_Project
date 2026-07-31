.class public final Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $revisionIdFrom:J

.field public $revisionIdTo:J

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$4:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdFrom:J

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JJLkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$r8$classId:I

    .line 15
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->this$0:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdTo:J

    iput-wide p4, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdFrom:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$4:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, v0

    .line 13
    check-cast v3, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 14
    .line 15
    move-object v4, v1

    .line 16
    check-cast v4, Lkotlin/jvm/internal/Ref$LongRef;

    .line 17
    .line 18
    iget-wide v5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdFrom:J

    .line 19
    .line 20
    move-object v7, p2

    .line 21
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    return-object v2

    .line 27
    :pswitch_0
    move-object v7, p2

    .line 28
    new-instance v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;

    .line 29
    .line 30
    move-object v4, v1

    .line 31
    check-cast v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 32
    .line 33
    iget-wide v5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdTo:J

    .line 34
    .line 35
    iget-wide v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdFrom:J

    .line 36
    .line 37
    move-object v9, v7

    .line 38
    move-wide v7, v0

    .line 39
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JJLkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    return-object v3

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    iget-object v2, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    iget v8, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->label:I

    .line 20
    .line 21
    if-eqz v8, :cond_1

    .line 22
    .line 23
    if-ne v8, v7, :cond_0

    .line 24
    .line 25
    iget-wide v2, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdTo:J

    .line 26
    .line 27
    iget-object v0, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$3:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 30
    .line 31
    iget-object v4, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 34
    .line 35
    iget-object v5, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-wide v9, v2

    .line 43
    move-object/from16 v3, p1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object v6, v3

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 57
    .line 58
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;

    .line 59
    .line 60
    iget-object v8, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$4:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v8, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 63
    .line 64
    invoke-direct {v4, v8, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;)V

    .line 65
    .line 66
    .line 67
    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 68
    .line 69
    iget-object v3, v8, Landroidx/compose/foundation/gestures/ScrollingLogic;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 70
    .line 71
    iget-wide v9, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 72
    .line 73
    iget-object v11, v8, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 74
    .line 75
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 76
    .line 77
    iget-wide v13, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdFrom:J

    .line 78
    .line 79
    if-ne v11, v12, :cond_2

    .line 80
    .line 81
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    :goto_0
    invoke-virtual {v8, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    iput-object v8, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object v8, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v2, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$3:Ljava/lang/Object;

    .line 99
    .line 100
    iput-wide v9, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdTo:J

    .line 101
    .line 102
    iput v7, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->label:I

    .line 103
    .line 104
    invoke-interface {v3, v4, v11, v5}, Landroidx/compose/foundation/gestures/FlingBehavior;->performFling(Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-ne v3, v0, :cond_3

    .line 109
    .line 110
    move-object v6, v0

    .line 111
    goto :goto_3

    .line 112
    :cond_3
    move-object v0, v2

    .line 113
    move-object v4, v8

    .line 114
    move-object v5, v4

    .line 115
    :goto_1
    check-cast v3, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v5, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iget-object v3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 126
    .line 127
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    if-ne v3, v4, :cond_4

    .line 131
    .line 132
    invoke-static {v9, v10, v2, v5, v1}, Landroidx/compose/ui/unit/Velocity;->copy-OhffZ5M$default(JFFI)J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-static {v9, v10, v5, v2, v7}, Landroidx/compose/ui/unit/Velocity;->copy-OhffZ5M$default(JFFI)J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    :goto_2
    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 142
    .line 143
    :goto_3
    return-object v6

    .line 144
    :pswitch_0
    move-object v9, v2

    .line 145
    check-cast v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 146
    .line 147
    iget-object v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->watchedStatus:Landroidx/lifecycle/MutableLiveData;

    .line 148
    .line 149
    iget-object v2, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 152
    .line 153
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 154
    .line 155
    iget v8, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->label:I

    .line 156
    .line 157
    const/4 v12, 0x4

    .line 158
    const/4 v15, 0x3

    .line 159
    const/4 v13, 0x0

    .line 160
    const/16 v16, 0x0

    .line 161
    .line 162
    if-eqz v8, :cond_9

    .line 163
    .line 164
    if-eq v8, v7, :cond_8

    .line 165
    .line 166
    if-eq v8, v1, :cond_7

    .line 167
    .line 168
    if-eq v8, v15, :cond_6

    .line 169
    .line 170
    if-ne v8, v12, :cond_5

    .line 171
    .line 172
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    move-object/from16 v0, p1

    .line 176
    .line 177
    move v10, v13

    .line 178
    move-object/from16 v8, v16

    .line 179
    .line 180
    goto/16 :goto_c

    .line 181
    .line 182
    :cond_5
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    move-object v6, v3

    .line 186
    goto/16 :goto_10

    .line 187
    .line 188
    :cond_6
    iget-object v0, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$4:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 191
    .line 192
    iget-object v1, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$3:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 195
    .line 196
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    move-object/from16 v2, p1

    .line 200
    .line 201
    move-object v3, v0

    .line 202
    move v0, v13

    .line 203
    move-object/from16 v8, v16

    .line 204
    .line 205
    goto/16 :goto_9

    .line 206
    .line 207
    :cond_7
    iget-object v0, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$1:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, Lkotlinx/coroutines/DeferredCoroutine;

    .line 210
    .line 211
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v1, p1

    .line 215
    .line 216
    move-object v3, v0

    .line 217
    move v0, v13

    .line 218
    move-object/from16 v8, v16

    .line 219
    .line 220
    goto/16 :goto_7

    .line 221
    .line 222
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    move-object/from16 v3, p1

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    iget-wide v3, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdTo:J

    .line 232
    .line 233
    iput-wide v3, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 234
    .line 235
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    instance-of v3, v3, Lorg/wikipedia/util/Resource$Success;

    .line 240
    .line 241
    if-nez v3, :cond_e

    .line 242
    .line 243
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 244
    .line 245
    iget-object v3, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 246
    .line 247
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 248
    .line 249
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    iget-object v4, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 254
    .line 255
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    iput-object v2, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 260
    .line 261
    iput v7, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->label:I

    .line 262
    .line 263
    invoke-interface {v3, v4, v5}, Lorg/wikipedia/dataclient/Service;->getWatchedStatusWithRights(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    if-ne v3, v14, :cond_a

    .line 268
    .line 269
    goto/16 :goto_b

    .line 270
    .line 271
    :cond_a
    :goto_4
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 272
    .line 273
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    iget v8, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 286
    .line 287
    if-gez v8, :cond_b

    .line 288
    .line 289
    iget v8, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 290
    .line 291
    iput v8, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 292
    .line 293
    :cond_b
    const-wide/16 v17, 0x0

    .line 294
    .line 295
    iget-wide v10, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 296
    .line 297
    cmp-long v8, v10, v17

    .line 298
    .line 299
    if-gez v8, :cond_c

    .line 300
    .line 301
    iget-wide v10, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->lastrevid:J

    .line 302
    .line 303
    iput-wide v10, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 304
    .line 305
    :cond_c
    iget v8, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->ns:I

    .line 306
    .line 307
    iput v8, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->ns:I

    .line 308
    .line 309
    iget-boolean v8, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watched:Z

    .line 310
    .line 311
    iput-boolean v8, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 312
    .line 313
    new-instance v8, Lorg/wikipedia/util/Resource$Success;

    .line 314
    .line 315
    invoke-direct {v8, v4}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 322
    .line 323
    if-eqz v0, :cond_d

    .line 324
    .line 325
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->rights:Ljava/util/List;

    .line 326
    .line 327
    if-eqz v0, :cond_d

    .line 328
    .line 329
    const-string v3, "rollback"

    .line 330
    .line 331
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-ne v0, v7, :cond_d

    .line 336
    .line 337
    move v0, v7

    .line 338
    goto :goto_5

    .line 339
    :cond_d
    move v0, v13

    .line 340
    :goto_5
    iput-boolean v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->hasRollbackRights:Z

    .line 341
    .line 342
    iget-object v3, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->rollbackRights:Landroidx/lifecycle/MutableLiveData;

    .line 343
    .line 344
    new-instance v4, Lorg/wikipedia/util/Resource$Success;

    .line 345
    .line 346
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-direct {v4, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_e
    const-wide/16 v17, 0x0

    .line 358
    .line 359
    :goto_6
    iget-wide v10, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->$revisionIdFrom:J

    .line 360
    .line 361
    cmp-long v0, v10, v17

    .line 362
    .line 363
    if-ltz v0, :cond_14

    .line 364
    .line 365
    new-instance v8, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;

    .line 366
    .line 367
    move v0, v13

    .line 368
    const/4 v13, 0x1

    .line 369
    move-object/from16 v12, v16

    .line 370
    .line 371
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$goForward$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JLkotlin/coroutines/Continuation;I)V

    .line 372
    .line 373
    .line 374
    move-object v3, v8

    .line 375
    move-object v8, v12

    .line 376
    invoke-static {v2, v8, v3, v15}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    new-instance v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;

    .line 381
    .line 382
    invoke-direct {v4, v9, v8, v7}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 383
    .line 384
    .line 385
    invoke-static {v2, v8, v4, v15}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    iput-object v8, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 390
    .line 391
    iput-object v3, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$1:Ljava/lang/Object;

    .line 392
    .line 393
    iput v1, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->label:I

    .line 394
    .line 395
    invoke-virtual {v2, v5}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-ne v1, v14, :cond_f

    .line 400
    .line 401
    goto/16 :goto_b

    .line 402
    .line 403
    :cond_f
    :goto_7
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 404
    .line 405
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 406
    .line 407
    if-eqz v1, :cond_10

    .line 408
    .line 409
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 410
    .line 411
    .line 412
    move-result-object v16

    .line 413
    move-object/from16 v1, v16

    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_10
    move-object v1, v8

    .line 417
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    iput-object v8, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 421
    .line 422
    iput-object v8, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$1:Ljava/lang/Object;

    .line 423
    .line 424
    iput-object v1, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$3:Ljava/lang/Object;

    .line 425
    .line 426
    iput-object v9, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$4:Ljava/lang/Object;

    .line 427
    .line 428
    iput v15, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->label:I

    .line 429
    .line 430
    invoke-interface {v3, v5}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    if-ne v2, v14, :cond_11

    .line 435
    .line 436
    goto :goto_b

    .line 437
    :cond_11
    move-object v3, v9

    .line 438
    :goto_9
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 439
    .line 440
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 441
    .line 442
    if-eqz v2, :cond_12

    .line 443
    .line 444
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 445
    .line 446
    .line 447
    move-result-object v16

    .line 448
    move-object/from16 v8, v16

    .line 449
    .line 450
    :cond_12
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    iget-object v2, v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 454
    .line 455
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 460
    .line 461
    iput-object v2, v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 462
    .line 463
    iget-object v2, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 464
    .line 465
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 470
    .line 471
    iput-object v2, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 472
    .line 473
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    iget-wide v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 477
    .line 478
    iget-wide v4, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->lastrevid:J

    .line 479
    .line 480
    cmp-long v1, v2, v4

    .line 481
    .line 482
    if-gez v1, :cond_13

    .line 483
    .line 484
    goto :goto_a

    .line 485
    :cond_13
    move v7, v0

    .line 486
    :goto_a
    iput-boolean v7, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->canGoForward:Z

    .line 487
    .line 488
    goto :goto_e

    .line 489
    :cond_14
    move v0, v13

    .line 490
    move-object/from16 v8, v16

    .line 491
    .line 492
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 493
    .line 494
    iget-object v1, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 495
    .line 496
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 497
    .line 498
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    iget v2, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 503
    .line 504
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    iget-wide v3, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 509
    .line 510
    iput-object v8, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->L$0:Ljava/lang/Object;

    .line 511
    .line 512
    iput v12, v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;->label:I

    .line 513
    .line 514
    move v10, v0

    .line 515
    move-object v0, v1

    .line 516
    move-object v1, v2

    .line 517
    const/4 v2, 0x2

    .line 518
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->getRevisionDetailsWithInfo(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    if-ne v0, v14, :cond_15

    .line 523
    .line 524
    :goto_b
    move-object v6, v14

    .line 525
    goto :goto_10

    .line 526
    :cond_15
    :goto_c
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 527
    .line 528
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 529
    .line 530
    if-eqz v0, :cond_16

    .line 531
    .line 532
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 533
    .line 534
    .line 535
    move-result-object v16

    .line 536
    move-object/from16 v8, v16

    .line 537
    .line 538
    :cond_16
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    iget-object v0, v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 542
    .line 543
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 548
    .line 549
    iput-object v1, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 550
    .line 551
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 556
    .line 557
    iget-wide v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 558
    .line 559
    iget-wide v3, v8, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->lastrevid:J

    .line 560
    .line 561
    cmp-long v1, v1, v3

    .line 562
    .line 563
    if-gez v1, :cond_17

    .line 564
    .line 565
    move v13, v7

    .line 566
    goto :goto_d

    .line 567
    :cond_17
    move v13, v10

    .line 568
    :goto_d
    iput-boolean v13, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->canGoForward:Z

    .line 569
    .line 570
    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 575
    .line 576
    iput-object v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 577
    .line 578
    :goto_e
    iget-object v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    iget-wide v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 584
    .line 585
    iput-wide v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 586
    .line 587
    iget-object v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 588
    .line 589
    if-eqz v0, :cond_18

    .line 590
    .line 591
    iget-wide v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 592
    .line 593
    goto :goto_f

    .line 594
    :cond_18
    iget-object v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    iget-wide v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parentRevId:J

    .line 600
    .line 601
    :goto_f
    iput-wide v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 602
    .line 603
    iget-object v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionDetails:Landroidx/lifecycle/MutableLiveData;

    .line 604
    .line 605
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 606
    .line 607
    invoke-direct {v1, v6}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    iget-wide v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 614
    .line 615
    iget-wide v2, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 616
    .line 617
    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->getDiffText(JJ)V

    .line 618
    .line 619
    .line 620
    :goto_10
    return-object v6

    .line 621
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
