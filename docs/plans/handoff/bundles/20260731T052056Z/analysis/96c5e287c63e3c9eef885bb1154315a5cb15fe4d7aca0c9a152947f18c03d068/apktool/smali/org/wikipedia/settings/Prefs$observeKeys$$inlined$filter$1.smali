.class public final Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $keyStrings$inlined:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->$this_unsafeTransform$inlined:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->$keyStrings$inlined:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->$r8$classId:I

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    sget-object v5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$nullArrayFactory$1;->INSTANCE:Lkotlinx/coroutines/flow/FlowKt__ZipKt$nullArrayFactory$1;

    .line 11
    .line 12
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    const/high16 v7, -0x80000000

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    iget-object v10, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->$keyStrings$inlined:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v11, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->$this_unsafeTransform$inlined:Ljava/lang/Object;

    .line 21
    .line 22
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    packed-switch v3, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    check-cast v11, Lkotlinx/coroutines/flow/Flow;

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 30
    .line 31
    check-cast v10, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 32
    .line 33
    const/16 v3, 0x15

    .line 34
    .line 35
    invoke-direct {v0, v3, v1, v10}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v11, v0, v2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    if-ne v0, v1, :cond_0

    .line 45
    .line 46
    move-object v12, v0

    .line 47
    :cond_0
    return-object v12

    .line 48
    :pswitch_0
    check-cast v11, Lkotlinx/coroutines/flow/Flow;

    .line 49
    .line 50
    new-instance v0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 51
    .line 52
    check-cast v10, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 53
    .line 54
    const/16 v3, 0x14

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v10}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v11, v0, v2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 64
    .line 65
    if-ne v0, v1, :cond_1

    .line 66
    .line 67
    move-object v12, v0

    .line 68
    :cond_1
    return-object v12

    .line 69
    :pswitch_1
    check-cast v11, Lkotlinx/coroutines/flow/Flow;

    .line 70
    .line 71
    new-instance v0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 72
    .line 73
    check-cast v10, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 74
    .line 75
    const/16 v3, 0x12

    .line 76
    .line 77
    invoke-direct {v0, v3, v1, v10}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v11, v0, v2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 85
    .line 86
    if-ne v0, v1, :cond_2

    .line 87
    .line 88
    move-object v12, v0

    .line 89
    :cond_2
    return-object v12

    .line 90
    :pswitch_2
    check-cast v11, [Lkotlinx/coroutines/flow/Flow;

    .line 91
    .line 92
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 93
    .line 94
    check-cast v10, Lkotlin/jvm/functions/Function5;

    .line 95
    .line 96
    const/4 v3, 0x6

    .line 97
    invoke-direct {v0, v3, v10, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v5, v0, v1, v11}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 105
    .line 106
    if-ne v0, v1, :cond_3

    .line 107
    .line 108
    move-object v12, v0

    .line 109
    :cond_3
    return-object v12

    .line 110
    :pswitch_3
    check-cast v11, [Lkotlinx/coroutines/flow/Flow;

    .line 111
    .line 112
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 113
    .line 114
    check-cast v10, Lkotlin/jvm/functions/Function4;

    .line 115
    .line 116
    const/4 v3, 0x5

    .line 117
    invoke-direct {v0, v3, v10, v9}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v5, v0, v1, v11}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 125
    .line 126
    if-ne v0, v1, :cond_4

    .line 127
    .line 128
    move-object v12, v0

    .line 129
    :cond_4
    return-object v12

    .line 130
    :pswitch_4
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;

    .line 131
    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    move-object v3, v2

    .line 135
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;

    .line 136
    .line 137
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    .line 138
    .line 139
    and-int v5, v4, v7

    .line 140
    .line 141
    if-eqz v5, :cond_5

    .line 142
    .line 143
    sub-int/2addr v4, v7

    .line 144
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;

    .line 148
    .line 149
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;-><init>(Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;Lkotlin/coroutines/Continuation;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .line 153
    .line 154
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 155
    .line 156
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    .line 157
    .line 158
    if-eqz v4, :cond_7

    .line 159
    .line 160
    if-ne v4, v8, :cond_6

    .line 161
    .line 162
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->L$0:Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 163
    .line 164
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    goto :goto_1

    .line 170
    :cond_6
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    check-cast v11, Lkotlinx/coroutines/flow/Flow;

    .line 178
    .line 179
    new-instance v4, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 180
    .line 181
    check-cast v10, Landroidx/compose/runtime/Recomposer$join$2;

    .line 182
    .line 183
    const/16 v0, 0xe

    .line 184
    .line 185
    invoke-direct {v4, v0, v10, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :try_start_1
    iput-object v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->L$0:Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 189
    .line 190
    iput v8, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    .line 191
    .line 192
    invoke-interface {v11, v4, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    if-ne v0, v2, :cond_8

    .line 197
    .line 198
    move-object v9, v2

    .line 199
    goto :goto_3

    .line 200
    :catch_1
    move-exception v0

    .line 201
    move-object v1, v4

    .line 202
    :goto_1
    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->owner:Ljava/lang/Object;

    .line 203
    .line 204
    if-ne v2, v1, :cond_9

    .line 205
    .line 206
    iget-object v0, v3, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 212
    .line 213
    .line 214
    :cond_8
    :goto_2
    move-object v9, v12

    .line 215
    :goto_3
    return-object v9

    .line 216
    :cond_9
    throw v0

    .line 217
    :pswitch_5
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 218
    .line 219
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 220
    .line 221
    .line 222
    check-cast v11, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 223
    .line 224
    new-instance v3, Landroidx/paging/FlowExtKt$simpleScan$1$1;

    .line 225
    .line 226
    check-cast v10, Landroidx/compose/runtime/Recomposer$join$2;

    .line 227
    .line 228
    invoke-direct {v3, v0, v1, v10}, Landroidx/paging/FlowExtKt$simpleScan$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v11, v3, v2}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 236
    .line 237
    if-ne v0, v1, :cond_a

    .line 238
    .line 239
    move-object v12, v0

    .line 240
    :cond_a
    return-object v12

    .line 241
    :pswitch_6
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    .line 242
    .line 243
    if-eqz v3, :cond_b

    .line 244
    .line 245
    move-object v3, v2

    .line 246
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    .line 247
    .line 248
    iget v5, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 249
    .line 250
    and-int v10, v5, v7

    .line 251
    .line 252
    if-eqz v10, :cond_b

    .line 253
    .line 254
    sub-int/2addr v5, v7

    .line 255
    iput v5, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_b
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    .line 259
    .line 260
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;-><init>(Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;Lkotlin/coroutines/Continuation;)V

    .line 261
    .line 262
    .line 263
    :goto_4
    iget-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .line 264
    .line 265
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 266
    .line 267
    iget v7, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 268
    .line 269
    if-eqz v7, :cond_e

    .line 270
    .line 271
    if-eq v7, v8, :cond_d

    .line 272
    .line 273
    if-ne v7, v4, :cond_c

    .line 274
    .line 275
    iget-wide v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    .line 276
    .line 277
    iget-object v6, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Throwable;

    .line 278
    .line 279
    iget-object v7, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 280
    .line 281
    iget-object v10, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 282
    .line 283
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_c
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_a

    .line 291
    .line 292
    :cond_d
    iget-wide v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    .line 293
    .line 294
    iget-object v6, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 295
    .line 296
    iget-object v7, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 297
    .line 298
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    move-object v10, v7

    .line 302
    move-object v7, v6

    .line 303
    goto :goto_5

    .line 304
    :cond_e
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    const-wide/16 v6, 0x0

    .line 308
    .line 309
    :cond_f
    iget-object v2, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->$this_unsafeTransform$inlined:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v2, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 312
    .line 313
    iput-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 314
    .line 315
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 316
    .line 317
    iput-object v9, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Throwable;

    .line 318
    .line 319
    iput-wide v6, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    .line 320
    .line 321
    iput v8, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 322
    .line 323
    invoke-static {v2, v1, v3}, Lkotlinx/coroutines/flow/StateFlowKt;->catchImpl(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    if-ne v2, v5, :cond_10

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_10
    move-object v10, v0

    .line 331
    move-wide v15, v6

    .line 332
    move-object v7, v1

    .line 333
    move-wide v0, v15

    .line 334
    :goto_5
    move-object v6, v2

    .line 335
    check-cast v6, Ljava/lang/Throwable;

    .line 336
    .line 337
    if-eqz v6, :cond_13

    .line 338
    .line 339
    iget-object v2, v10, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->$keyStrings$inlined:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v2, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1;

    .line 342
    .line 343
    new-instance v11, Ljava/lang/Long;

    .line 344
    .line 345
    invoke-direct {v11, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 346
    .line 347
    .line 348
    iput-object v10, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 349
    .line 350
    iput-object v7, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 351
    .line 352
    iput-object v6, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Throwable;

    .line 353
    .line 354
    iput-wide v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    .line 355
    .line 356
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 357
    .line 358
    invoke-virtual {v2, v7, v6, v11, v3}, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    if-ne v2, v5, :cond_11

    .line 363
    .line 364
    :goto_6
    move-object v9, v5

    .line 365
    goto :goto_a

    .line 366
    :cond_11
    :goto_7
    check-cast v2, Ljava/lang/Boolean;

    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_12

    .line 373
    .line 374
    const-wide/16 v13, 0x1

    .line 375
    .line 376
    add-long/2addr v0, v13

    .line 377
    move v2, v8

    .line 378
    :goto_8
    move-wide v15, v0

    .line 379
    move-object v1, v7

    .line 380
    move-wide v6, v15

    .line 381
    move-object v0, v10

    .line 382
    goto :goto_9

    .line 383
    :cond_12
    throw v6

    .line 384
    :cond_13
    const/4 v2, 0x0

    .line 385
    goto :goto_8

    .line 386
    :goto_9
    if-nez v2, :cond_f

    .line 387
    .line 388
    move-object v9, v12

    .line 389
    :goto_a
    return-object v9

    .line 390
    :pswitch_7
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;

    .line 391
    .line 392
    if-eqz v3, :cond_14

    .line 393
    .line 394
    move-object v3, v2

    .line 395
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;

    .line 396
    .line 397
    iget v5, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->label:I

    .line 398
    .line 399
    and-int v10, v5, v7

    .line 400
    .line 401
    if-eqz v10, :cond_14

    .line 402
    .line 403
    sub-int/2addr v5, v7

    .line 404
    iput v5, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->label:I

    .line 405
    .line 406
    goto :goto_b

    .line 407
    :cond_14
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;

    .line 408
    .line 409
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;-><init>(Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;Lkotlin/coroutines/Continuation;)V

    .line 410
    .line 411
    .line 412
    :goto_b
    iget-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .line 413
    .line 414
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 415
    .line 416
    iget v7, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->label:I

    .line 417
    .line 418
    if-eqz v7, :cond_17

    .line 419
    .line 420
    if-eq v7, v8, :cond_16

    .line 421
    .line 422
    if-ne v7, v4, :cond_15

    .line 423
    .line 424
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    goto :goto_e

    .line 428
    :cond_15
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto :goto_f

    .line 432
    :cond_16
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 433
    .line 434
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->L$0:Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 435
    .line 436
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    move-object v15, v1

    .line 440
    move-object v1, v0

    .line 441
    move-object v0, v15

    .line 442
    goto :goto_c

    .line 443
    :cond_17
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    check-cast v11, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 447
    .line 448
    iput-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->L$0:Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 449
    .line 450
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 451
    .line 452
    iput v8, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->label:I

    .line 453
    .line 454
    invoke-static {v11, v1, v3}, Lkotlinx/coroutines/flow/StateFlowKt;->catchImpl(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    if-ne v2, v5, :cond_18

    .line 459
    .line 460
    goto :goto_d

    .line 461
    :cond_18
    :goto_c
    check-cast v2, Ljava/lang/Throwable;

    .line 462
    .line 463
    if-eqz v2, :cond_19

    .line 464
    .line 465
    iget-object v0, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->$keyStrings$inlined:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 468
    .line 469
    iput-object v9, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->L$0:Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 470
    .line 471
    iput-object v9, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 472
    .line 473
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1;->label:I

    .line 474
    .line 475
    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    if-ne v0, v5, :cond_19

    .line 480
    .line 481
    :goto_d
    move-object v9, v5

    .line 482
    goto :goto_f

    .line 483
    :cond_19
    :goto_e
    move-object v9, v12

    .line 484
    :goto_f
    return-object v9

    .line 485
    :pswitch_8
    check-cast v11, Lkotlinx/coroutines/flow/Flow;

    .line 486
    .line 487
    new-instance v0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 488
    .line 489
    check-cast v10, Landroidx/paging/SeparatorState;

    .line 490
    .line 491
    const/16 v3, 0xb

    .line 492
    .line 493
    invoke-direct {v0, v3, v1, v10}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    invoke-interface {v11, v0, v2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 501
    .line 502
    if-ne v0, v1, :cond_1a

    .line 503
    .line 504
    move-object v12, v0

    .line 505
    :cond_1a
    return-object v12

    .line 506
    :pswitch_9
    check-cast v11, Lkotlinx/coroutines/flow/Flow;

    .line 507
    .line 508
    new-instance v0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 509
    .line 510
    check-cast v10, Ljava/util/Set;

    .line 511
    .line 512
    const/16 v3, 0x13

    .line 513
    .line 514
    invoke-direct {v0, v3, v1, v10}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    invoke-interface {v11, v0, v2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 522
    .line 523
    if-ne v0, v1, :cond_1b

    .line 524
    .line 525
    move-object v12, v0

    .line 526
    :cond_1b
    return-object v12

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
