.class public final Landroidx/paging/FlowExtKt$simpleScan$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final $$this$flow:Ljava/lang/Object;

.field public final $accumulator:Ljava/lang/Object;

.field public final $operation:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 29
    iput p4, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$operation:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$$this$flow:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$r8$classId:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$$this$flow:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$operation:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/DistinctFlowImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$r8$classId:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$operation:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$$this$flow:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$r8$classId:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$$this$flow:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$operation:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p2}, Lkotlinx/coroutines/internal/InlineList;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$operation:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p2, Landroidx/paging/PageFetcher$flow$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/16 v1, 0x1b

    .line 19
    .line 20
    invoke-direct {p2, v1, p1, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$$this$flow:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    iget v3, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$r8$classId:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/high16 v8, -0x80000000

    .line 15
    .line 16
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    iget-object v10, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$$this$flow:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v11, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$operation:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v12, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v13, 0x0

    .line 25
    packed-switch v3, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    move-object v0, v1

    .line 29
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportSize-YbymL2g()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    const/16 v3, 0x20

    .line 36
    .line 37
    shr-long/2addr v1, v3

    .line 38
    long-to-int v1, v1

    .line 39
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 40
    .line 41
    check-cast v12, Ljava/util/ArrayList;

    .line 42
    .line 43
    check-cast v11, Ljava/util/Set;

    .line 44
    .line 45
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 62
    .line 63
    iget v3, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    .line 64
    .line 65
    if-gez v3, :cond_1

    .line 66
    .line 67
    move v5, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v5, v3

    .line 70
    :goto_1
    iget v6, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 71
    .line 72
    add-int/2addr v3, v6

    .line 73
    if-le v3, v1, :cond_2

    .line 74
    .line 75
    move v3, v1

    .line 76
    :cond_2
    sub-int/2addr v3, v5

    .line 77
    if-gez v3, :cond_3

    .line 78
    .line 79
    move v3, v4

    .line 80
    :cond_3
    int-to-float v3, v3

    .line 81
    int-to-float v5, v6

    .line 82
    div-float/2addr v3, v5

    .line 83
    const/high16 v5, 0x3f000000    # 0.5f

    .line 84
    .line 85
    cmpl-float v3, v3, v5

    .line 86
    .line 87
    if-ltz v3, :cond_0

    .line 88
    .line 89
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    .line 90
    .line 91
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lorg/wikipedia/search/SearchResult;

    .line 96
    .line 97
    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_0

    .line 102
    .line 103
    invoke-interface {v10, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    return-object v9

    .line 108
    :pswitch_0
    check-cast v12, Lkotlin/coroutines/CoroutineContext;

    .line 109
    .line 110
    check-cast v10, Landroidx/paging/PageFetcher$flow$1;

    .line 111
    .line 112
    invoke-static {v12, v1, v11, v10, v2}, Lkotlinx/coroutines/flow/internal/CombineKt;->withContextUndispatched(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 117
    .line 118
    if-ne v0, v1, :cond_5

    .line 119
    .line 120
    move-object v9, v0

    .line 121
    :cond_5
    return-object v9

    .line 122
    :pswitch_1
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    move-object v3, v2

    .line 127
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;

    .line 128
    .line 129
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 130
    .line 131
    and-int v14, v4, v8

    .line 132
    .line 133
    if-eqz v14, :cond_6

    .line 134
    .line 135
    sub-int/2addr v4, v8

    .line 136
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;

    .line 140
    .line 141
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;-><init>(Landroidx/paging/FlowExtKt$simpleScan$1$1;Lkotlin/coroutines/Continuation;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    iget-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->result:Ljava/lang/Object;

    .line 145
    .line 146
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 147
    .line 148
    iget v8, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 149
    .line 150
    const/4 v14, 0x3

    .line 151
    if-eqz v8, :cond_a

    .line 152
    .line 153
    if-eq v8, v7, :cond_7

    .line 154
    .line 155
    if-eq v8, v5, :cond_9

    .line 156
    .line 157
    if-ne v8, v14, :cond_8

    .line 158
    .line 159
    :cond_7
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_8
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    move-object v9, v13

    .line 167
    goto :goto_5

    .line 168
    :cond_9
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$1:Ljava/lang/Object;

    .line 169
    .line 170
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Landroidx/paging/FlowExtKt$simpleScan$1$1;

    .line 171
    .line 172
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    move-object/from16 v16, v1

    .line 176
    .line 177
    move-object v1, v0

    .line 178
    move-object/from16 v0, v16

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_a
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    check-cast v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 185
    .line 186
    iget-boolean v2, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 187
    .line 188
    if-eqz v2, :cond_b

    .line 189
    .line 190
    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    .line 191
    .line 192
    iput v7, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 193
    .line 194
    invoke-interface {v10, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-ne v0, v4, :cond_d

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_b
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 202
    .line 203
    iput-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Landroidx/paging/FlowExtKt$simpleScan$1$1;

    .line 204
    .line 205
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$1:Ljava/lang/Object;

    .line 206
    .line 207
    iput v5, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 208
    .line 209
    invoke-interface {v11, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-ne v2, v4, :cond_c

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_c
    :goto_3
    check-cast v2, Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-nez v2, :cond_d

    .line 223
    .line 224
    iget-object v2, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$accumulator:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 227
    .line 228
    iput-boolean v7, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 229
    .line 230
    iget-object v0, v0, Landroidx/paging/FlowExtKt$simpleScan$1$1;->$$this$flow:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 233
    .line 234
    iput-object v13, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$0:Landroidx/paging/FlowExtKt$simpleScan$1$1;

    .line 235
    .line 236
    iput-object v13, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->L$1:Ljava/lang/Object;

    .line 237
    .line 238
    iput v14, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$1$1$emit$1;->label:I

    .line 239
    .line 240
    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-ne v0, v4, :cond_d

    .line 245
    .line 246
    :goto_4
    move-object v9, v4

    .line 247
    :cond_d
    :goto_5
    return-object v9

    .line 248
    :pswitch_2
    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 249
    .line 250
    check-cast v11, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 251
    .line 252
    instance-of v3, v2, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;

    .line 253
    .line 254
    if-eqz v3, :cond_e

    .line 255
    .line 256
    move-object v3, v2

    .line 257
    check-cast v3, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;

    .line 258
    .line 259
    iget v4, v3, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->label:I

    .line 260
    .line 261
    and-int v5, v4, v8

    .line 262
    .line 263
    if-eqz v5, :cond_e

    .line 264
    .line 265
    sub-int/2addr v4, v8

    .line 266
    iput v4, v3, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->label:I

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_e
    new-instance v3, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;

    .line 270
    .line 271
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;-><init>(Landroidx/paging/FlowExtKt$simpleScan$1$1;Lkotlin/coroutines/Continuation;)V

    .line 272
    .line 273
    .line 274
    :goto_6
    iget-object v0, v3, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->result:Ljava/lang/Object;

    .line 275
    .line 276
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 277
    .line 278
    iget v4, v3, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->label:I

    .line 279
    .line 280
    if-eqz v4, :cond_10

    .line 281
    .line 282
    if-ne v4, v7, :cond_f

    .line 283
    .line 284
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_f
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    move-object v9, v13

    .line 292
    goto :goto_7

    .line 293
    :cond_10
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, v11, Lkotlinx/coroutines/flow/DistinctFlowImpl;->keySelector:Lkotlin/jvm/functions/Function1;

    .line 297
    .line 298
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    iget-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 303
    .line 304
    sget-object v5, Lkotlinx/coroutines/flow/internal/CombineKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .line 305
    .line 306
    if-eq v4, v5, :cond_11

    .line 307
    .line 308
    iget-object v5, v11, Lkotlinx/coroutines/flow/DistinctFlowImpl;->areEquivalent:Lkotlin/jvm/functions/Function2;

    .line 309
    .line 310
    invoke-interface {v5, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    check-cast v4, Ljava/lang/Boolean;

    .line 315
    .line 316
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-nez v4, :cond_12

    .line 321
    .line 322
    :cond_11
    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    .line 325
    .line 326
    iput v7, v3, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->label:I

    .line 327
    .line 328
    invoke-interface {v10, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    if-ne v0, v2, :cond_12

    .line 333
    .line 334
    move-object v9, v2

    .line 335
    :cond_12
    :goto_7
    return-object v9

    .line 336
    :pswitch_3
    instance-of v3, v2, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    .line 337
    .line 338
    if-eqz v3, :cond_13

    .line 339
    .line 340
    move-object v3, v2

    .line 341
    check-cast v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    .line 342
    .line 343
    iget v14, v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 344
    .line 345
    and-int v15, v14, v8

    .line 346
    .line 347
    if-eqz v15, :cond_13

    .line 348
    .line 349
    sub-int/2addr v14, v8

    .line 350
    iput v14, v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 351
    .line 352
    goto :goto_8

    .line 353
    :cond_13
    new-instance v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    .line 354
    .line 355
    invoke-direct {v3, v0, v2}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;-><init>(Landroidx/paging/FlowExtKt$simpleScan$1$1;Lkotlin/coroutines/Continuation;)V

    .line 356
    .line 357
    .line 358
    :goto_8
    iget-object v0, v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 359
    .line 360
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 361
    .line 362
    iget v8, v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 363
    .line 364
    if-eqz v8, :cond_16

    .line 365
    .line 366
    if-eq v8, v7, :cond_15

    .line 367
    .line 368
    if-ne v8, v5, :cond_14

    .line 369
    .line 370
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_14
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    move-object v9, v13

    .line 378
    goto :goto_b

    .line 379
    :cond_15
    iget-object v1, v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 380
    .line 381
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_16
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    move-object v0, v10

    .line 389
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 390
    .line 391
    check-cast v1, Ljava/util/Set;

    .line 392
    .line 393
    check-cast v12, Landroidx/room/RoomDatabase;

    .line 394
    .line 395
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 396
    .line 397
    iput-object v0, v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 398
    .line 399
    iput v7, v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 400
    .line 401
    invoke-static {v12, v7, v4, v11, v3}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    if-ne v1, v2, :cond_17

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :cond_17
    move-object/from16 v16, v1

    .line 409
    .line 410
    move-object v1, v0

    .line 411
    move-object/from16 v0, v16

    .line 412
    .line 413
    :goto_9
    iput-object v13, v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 414
    .line 415
    iput v5, v3, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 416
    .line 417
    invoke-interface {v1, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    if-ne v0, v2, :cond_18

    .line 422
    .line 423
    :goto_a
    move-object v9, v2

    .line 424
    :cond_18
    :goto_b
    return-object v9

    .line 425
    :pswitch_4
    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 426
    .line 427
    instance-of v3, v2, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;

    .line 428
    .line 429
    if-eqz v3, :cond_19

    .line 430
    .line 431
    move-object v3, v2

    .line 432
    check-cast v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;

    .line 433
    .line 434
    iget v4, v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;->label:I

    .line 435
    .line 436
    and-int v14, v4, v8

    .line 437
    .line 438
    if-eqz v14, :cond_19

    .line 439
    .line 440
    sub-int/2addr v4, v8

    .line 441
    iput v4, v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;->label:I

    .line 442
    .line 443
    goto :goto_c

    .line 444
    :cond_19
    new-instance v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;

    .line 445
    .line 446
    invoke-direct {v3, v0, v2}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;-><init>(Landroidx/paging/FlowExtKt$simpleScan$1$1;Lkotlin/coroutines/Continuation;)V

    .line 447
    .line 448
    .line 449
    :goto_c
    iget-object v0, v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;->result:Ljava/lang/Object;

    .line 450
    .line 451
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 452
    .line 453
    iget v4, v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;->label:I

    .line 454
    .line 455
    if-eqz v4, :cond_1c

    .line 456
    .line 457
    if-eq v4, v7, :cond_1b

    .line 458
    .line 459
    if-ne v4, v5, :cond_1a

    .line 460
    .line 461
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    goto :goto_f

    .line 465
    :cond_1a
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    move-object v9, v13

    .line 469
    goto :goto_f

    .line 470
    :cond_1b
    iget-object v1, v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 471
    .line 472
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    goto :goto_d

    .line 476
    :cond_1c
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 480
    .line 481
    sget-object v4, Landroidx/paging/FlowExtKt;->NULL:Ljava/lang/Object;

    .line 482
    .line 483
    if-ne v0, v4, :cond_1e

    .line 484
    .line 485
    move-object v0, v1

    .line 486
    :cond_1d
    move-object v1, v12

    .line 487
    goto :goto_d

    .line 488
    :cond_1e
    check-cast v11, Lkotlin/jvm/functions/Function3;

    .line 489
    .line 490
    iput-object v12, v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 491
    .line 492
    iput v7, v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;->label:I

    .line 493
    .line 494
    invoke-interface {v11, v0, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    if-ne v0, v2, :cond_1d

    .line 499
    .line 500
    goto :goto_e

    .line 501
    :goto_d
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    .line 504
    .line 505
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 506
    .line 507
    iput-object v13, v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 508
    .line 509
    iput v5, v3, Landroidx/paging/FlowExtKt$simpleRunningReduce$1$1$emit$1;->label:I

    .line 510
    .line 511
    invoke-interface {v10, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    if-ne v0, v2, :cond_1f

    .line 516
    .line 517
    :goto_e
    move-object v9, v2

    .line 518
    :cond_1f
    :goto_f
    return-object v9

    .line 519
    :pswitch_5
    move-object v0, v1

    .line 520
    check-cast v0, Ljava/lang/Boolean;

    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    check-cast v11, Landroidx/compose/animation/core/Transition;

    .line 527
    .line 528
    check-cast v12, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 529
    .line 530
    if-eqz v0, :cond_20

    .line 531
    .line 532
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 533
    .line 534
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 539
    .line 540
    iget-object v1, v11, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 541
    .line 542
    invoke-virtual {v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    iget-object v2, v11, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 547
    .line 548
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    check-cast v0, Ljava/lang/Boolean;

    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    :cond_20
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    return-object v9

    .line 570
    :pswitch_6
    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 571
    .line 572
    instance-of v3, v2, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;

    .line 573
    .line 574
    if-eqz v3, :cond_21

    .line 575
    .line 576
    move-object v3, v2

    .line 577
    check-cast v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;

    .line 578
    .line 579
    iget v4, v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    .line 580
    .line 581
    and-int v14, v4, v8

    .line 582
    .line 583
    if-eqz v14, :cond_21

    .line 584
    .line 585
    sub-int/2addr v4, v8

    .line 586
    iput v4, v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    .line 587
    .line 588
    goto :goto_10

    .line 589
    :cond_21
    new-instance v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;

    .line 590
    .line 591
    invoke-direct {v3, v0, v2}, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;-><init>(Landroidx/paging/FlowExtKt$simpleScan$1$1;Lkotlin/coroutines/Continuation;)V

    .line 592
    .line 593
    .line 594
    :goto_10
    iget-object v0, v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->result:Ljava/lang/Object;

    .line 595
    .line 596
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 597
    .line 598
    iget v4, v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    .line 599
    .line 600
    if-eqz v4, :cond_24

    .line 601
    .line 602
    if-eq v4, v7, :cond_23

    .line 603
    .line 604
    if-ne v4, v5, :cond_22

    .line 605
    .line 606
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    goto :goto_13

    .line 610
    :cond_22
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    move-object v9, v13

    .line 614
    goto :goto_13

    .line 615
    :cond_23
    iget-object v1, v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 616
    .line 617
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    goto :goto_11

    .line 621
    :cond_24
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    check-cast v11, Landroidx/paging/PageFetcher$flow$1$2;

    .line 625
    .line 626
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 627
    .line 628
    iput-object v12, v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 629
    .line 630
    iput v7, v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    .line 631
    .line 632
    invoke-virtual {v11, v0, v1, v3}, Landroidx/paging/PageFetcher$flow$1$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    if-ne v0, v2, :cond_25

    .line 637
    .line 638
    goto :goto_12

    .line 639
    :cond_25
    move-object v1, v12

    .line 640
    :goto_11
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 641
    .line 642
    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    .line 643
    .line 644
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 645
    .line 646
    iput-object v13, v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 647
    .line 648
    iput v5, v3, Landroidx/paging/FlowExtKt$simpleScan$1$1$emit$1;->label:I

    .line 649
    .line 650
    invoke-interface {v10, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    if-ne v0, v2, :cond_26

    .line 655
    .line 656
    :goto_12
    move-object v9, v2

    .line 657
    :cond_26
    :goto_13
    return-object v9

    .line 658
    nop

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
