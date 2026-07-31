.class public final Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $newRevision:J

.field public final synthetic $r8$classId:I

.field public I$0:I

.field public J$0:J

.field public label:I

.field public final synthetic this$0:Landroidx/lifecycle/ViewModel;


# direct methods
.method public constructor <init>(JLorg/wikipedia/edit/EditSectionViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->$r8$classId:I

    .line 3
    .line 4
    iput-wide p1, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->$newRevision:J

    .line 5
    .line 6
    iput-object p3, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->this$0:Landroidx/lifecycle/ViewModel;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;JLkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->$r8$classId:I

    .line 13
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->this$0:Landroidx/lifecycle/ViewModel;

    iput-wide p2, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->$newRevision:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->$r8$classId:I

    .line 2
    .line 3
    iget-wide v0, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->$newRevision:J

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->this$0:Landroidx/lifecycle/ViewModel;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;

    .line 11
    .line 12
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 13
    .line 14
    invoke-direct {p1, p0, v0, v1, p2}, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;JLkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p1, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;

    .line 19
    .line 20
    check-cast p0, Lorg/wikipedia/edit/EditSectionViewModel;

    .line 21
    .line 22
    invoke-direct {p1, v0, v1, p0, p2}, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;-><init>(JLorg/wikipedia/edit/EditSectionViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
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
    iget v0, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-wide/16 v8, 0x7d0

    .line 8
    .line 9
    const/16 v10, 0xa

    .line 10
    .line 11
    iget-wide v11, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->$newRevision:J

    .line 12
    .line 13
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    iget-object v6, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->this$0:Landroidx/lifecycle/ViewModel;

    .line 16
    .line 17
    const/4 v13, 0x1

    .line 18
    const/4 v14, 0x2

    .line 19
    const/4 v15, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v6, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 24
    .line 25
    iget-object v0, v6, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 26
    .line 27
    iget-object v6, v6, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_waitForRevisionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 28
    .line 29
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v1, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->label:I

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-eq v1, v13, :cond_1

    .line 36
    .line 37
    if-ne v1, v14, :cond_0

    .line 38
    .line 39
    iget v1, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->I$0:I

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v16, v0

    .line 45
    .line 46
    move-object v8, v3

    .line 47
    move-object/from16 v18, v6

    .line 48
    .line 49
    move-object/from16 v0, p1

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object v7, v15

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    iget-wide v1, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->J$0:J

    .line 60
    .line 61
    iget v4, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->I$0:I

    .line 62
    .line 63
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    move v10, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lorg/wikipedia/util/Resource$Loading;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v15, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    const-wide/16 v1, -0x1

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    :goto_0
    cmp-long v16, v1, v11

    .line 86
    .line 87
    if-gez v16, :cond_5

    .line 88
    .line 89
    if-ge v4, v10, :cond_5

    .line 90
    .line 91
    iput v4, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->I$0:I

    .line 92
    .line 93
    iput-wide v1, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->J$0:J

    .line 94
    .line 95
    iput v13, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->label:I

    .line 96
    .line 97
    invoke-static {v8, v9, v5}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    if-ne v10, v3, :cond_2

    .line 102
    .line 103
    move-object v8, v3

    .line 104
    goto :goto_2

    .line 105
    :goto_1
    sget-object v4, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 106
    .line 107
    iget-object v4, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 108
    .line 109
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v16

    .line 117
    sget-object v17, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 118
    .line 119
    invoke-virtual/range {v17 .. v17}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v17

    .line 123
    iput v10, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->I$0:I

    .line 124
    .line 125
    iput-wide v1, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->J$0:J

    .line 126
    .line 127
    iput v14, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->label:I

    .line 128
    .line 129
    move-object v1, v3

    .line 130
    const/4 v3, 0x0

    .line 131
    move-object v2, v0

    .line 132
    move-object v0, v4

    .line 133
    const/4 v4, 0x0

    .line 134
    move-object/from16 v18, v6

    .line 135
    .line 136
    const/16 v6, 0x3a

    .line 137
    .line 138
    move-object v8, v1

    .line 139
    move-object/from16 v1, v16

    .line 140
    .line 141
    move-object/from16 v16, v2

    .line 142
    .line 143
    move-object/from16 v2, v17

    .line 144
    .line 145
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/dataclient/Service$-CC;->getPageSummary$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-ne v0, v8, :cond_4

    .line 150
    .line 151
    :goto_2
    move-object v7, v8

    .line 152
    goto :goto_4

    .line 153
    :cond_4
    move v1, v10

    .line 154
    :goto_3
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 155
    .line 156
    iget-wide v2, v0, Lorg/wikipedia/dataclient/page/PageSummary;->revision:J

    .line 157
    .line 158
    add-int/lit8 v4, v1, 0x1

    .line 159
    .line 160
    move-wide v1, v2

    .line 161
    move-object v3, v8

    .line 162
    move-object/from16 v0, v16

    .line 163
    .line 164
    move-object/from16 v6, v18

    .line 165
    .line 166
    const-wide/16 v8, 0x7d0

    .line 167
    .line 168
    const/16 v10, 0xa

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_5
    move-object/from16 v18, v6

    .line 172
    .line 173
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 174
    .line 175
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-direct {v0, v1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    move-object/from16 v1, v18

    .line 184
    .line 185
    invoke-virtual {v1, v15, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :goto_4
    return-object v7

    .line 189
    :pswitch_0
    move-object v8, v6

    .line 190
    check-cast v8, Lorg/wikipedia/edit/EditSectionViewModel;

    .line 191
    .line 192
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 193
    .line 194
    iget v0, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->label:I

    .line 195
    .line 196
    if-eqz v0, :cond_8

    .line 197
    .line 198
    if-eq v0, v13, :cond_7

    .line 199
    .line 200
    if-ne v0, v14, :cond_6

    .line 201
    .line 202
    iget v0, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->I$0:I

    .line 203
    .line 204
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    move-wide/from16 v16, v11

    .line 208
    .line 209
    const-wide/16 v10, 0x7d0

    .line 210
    .line 211
    move v12, v0

    .line 212
    move-object/from16 v0, p1

    .line 213
    .line 214
    goto :goto_8

    .line 215
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    move-object v7, v15

    .line 219
    goto/16 :goto_9

    .line 220
    .line 221
    :cond_7
    iget-wide v0, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->J$0:J

    .line 222
    .line 223
    iget v2, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->I$0:I

    .line 224
    .line 225
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    move-wide/from16 v16, v11

    .line 229
    .line 230
    const-wide/16 v10, 0x7d0

    .line 231
    .line 232
    move v12, v2

    .line 233
    goto :goto_6

    .line 234
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    const-wide/16 v1, -0x1

    .line 238
    .line 239
    const/4 v3, 0x0

    .line 240
    :goto_5
    cmp-long v0, v1, v11

    .line 241
    .line 242
    if-gez v0, :cond_b

    .line 243
    .line 244
    const/16 v10, 0xa

    .line 245
    .line 246
    if-ge v3, v10, :cond_b

    .line 247
    .line 248
    iput v3, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->I$0:I

    .line 249
    .line 250
    iput-wide v1, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->J$0:J

    .line 251
    .line 252
    iput v13, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->label:I

    .line 253
    .line 254
    move-wide/from16 v16, v11

    .line 255
    .line 256
    const-wide/16 v10, 0x7d0

    .line 257
    .line 258
    invoke-static {v10, v11, v5}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-ne v0, v9, :cond_9

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_9
    move-wide v0, v1

    .line 266
    move v12, v3

    .line 267
    :goto_6
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 268
    .line 269
    iget-object v2, v8, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 270
    .line 271
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 272
    .line 273
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iget-object v3, v8, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 278
    .line 279
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    sget-object v4, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 284
    .line 285
    invoke-virtual {v4}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    iput v12, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->I$0:I

    .line 290
    .line 291
    iput-wide v0, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->J$0:J

    .line 292
    .line 293
    iput v14, v5, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$2;->label:I

    .line 294
    .line 295
    move-object v1, v3

    .line 296
    const/4 v3, 0x0

    .line 297
    move-object v0, v2

    .line 298
    move-object v2, v4

    .line 299
    const/4 v4, 0x0

    .line 300
    const/16 v6, 0x3a

    .line 301
    .line 302
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/dataclient/Service$-CC;->getPageSummary$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    if-ne v0, v9, :cond_a

    .line 307
    .line 308
    :goto_7
    move-object v7, v9

    .line 309
    goto :goto_9

    .line 310
    :cond_a
    :goto_8
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 311
    .line 312
    iget-wide v1, v0, Lorg/wikipedia/dataclient/page/PageSummary;->revision:J

    .line 313
    .line 314
    add-int/lit8 v3, v12, 0x1

    .line 315
    .line 316
    move-object/from16 v5, p0

    .line 317
    .line 318
    move-wide/from16 v11, v16

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_b
    iget-object v0, v8, Lorg/wikipedia/edit/EditSectionViewModel;->_waitForRevisionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 322
    .line 323
    new-instance v3, Lorg/wikipedia/util/Resource$Success;

    .line 324
    .line 325
    new-instance v4, Ljava/lang/Long;

    .line 326
    .line 327
    invoke-direct {v4, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 328
    .line 329
    .line 330
    invoke-direct {v3, v4}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v15, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    :goto_9
    return-object v7

    .line 340
    nop

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
