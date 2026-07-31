.class public final Landroidx/paging/SingleRunner$runInIsolation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 14
    iput p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 15
    iput p4, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Landroidx/paging/AsyncPagingDataDiffer;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$r8$classId:I

    .line 16
    iput-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private final invokeSuspend$androidx$paging$PagingDataPresenter$collectFrom$2$1$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v2

    .line 15
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v12, p0

    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object v12, p0

    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    move-object v12, p0

    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    move-object v12, p0

    .line 37
    goto :goto_0

    .line 38
    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object v12, p0

    .line 42
    goto/16 :goto_a

    .line 43
    .line 44
    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Landroidx/paging/PageEvent;

    .line 50
    .line 51
    instance-of v1, p1, Landroidx/paging/PageEvent$StaticList;

    .line 52
    .line 53
    if-nez v1, :cond_16

    .line 54
    .line 55
    instance-of v1, p1, Landroidx/paging/PageEvent$Insert;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    move-object v3, p1

    .line 60
    check-cast v3, Landroidx/paging/PageEvent$Insert;

    .line 61
    .line 62
    iget-object v4, v3, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 63
    .line 64
    sget-object v5, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 65
    .line 66
    if-ne v4, v5, :cond_0

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v4, p1

    .line 71
    check-cast v4, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 72
    .line 73
    iget-object v5, v3, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 74
    .line 75
    iget v6, v3, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 76
    .line 77
    iget v7, v3, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 78
    .line 79
    iget-object v9, v3, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 80
    .line 81
    iget-object v10, v3, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Landroidx/paging/PagingData;

    .line 86
    .line 87
    iget-object v11, p1, Landroidx/paging/PagingData;->hintReceiver:Landroidx/paging/HintHandler;

    .line 88
    .line 89
    const/4 p1, 0x2

    .line 90
    iput p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 91
    .line 92
    const/4 v8, 0x1

    .line 93
    move-object v12, p0

    .line 94
    invoke-virtual/range {v4 .. v12}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->presentNewList(Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-ne p0, v0, :cond_13

    .line 99
    .line 100
    goto/16 :goto_8

    .line 101
    .line 102
    :cond_0
    move-object v12, p0

    .line 103
    if-eqz v1, :cond_f

    .line 104
    .line 105
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 108
    .line 109
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 110
    .line 111
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_1

    .line 122
    .line 123
    const/4 p0, 0x3

    .line 124
    iput p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 125
    .line 126
    invoke-static {v12}, Lkotlinx/coroutines/AwaitKt;->yield(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-ne p0, v0, :cond_1

    .line 131
    .line 132
    goto/16 :goto_8

    .line 133
    .line 134
    :cond_1
    :goto_0
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 137
    .line 138
    iget-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 139
    .line 140
    iget-object v1, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Landroidx/paging/PageEvent;

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Landroidx/paging/PageStore;->processEvent(Landroidx/paging/PageEvent;)Landroidx/paging/FlowExtKt;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const/4 v1, 0x4

    .line 149
    iput v1, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 150
    .line 151
    invoke-virtual {p0, p1, v12}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->presentPagingDataEvent(Landroidx/paging/FlowExtKt;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-ne p0, v0, :cond_2

    .line 156
    .line 157
    goto/16 :goto_8

    .line 158
    .line 159
    :cond_2
    :goto_1
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 162
    .line 163
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->combinedLoadStatesCollection:Lcom/caverock/androidsvg/SVG;

    .line 164
    .line 165
    iget-object p1, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p1, Landroidx/paging/PageEvent;

    .line 168
    .line 169
    check-cast p1, Landroidx/paging/PageEvent$Insert;

    .line 170
    .line 171
    iget-object v0, p1, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 172
    .line 173
    iget-object p1, p1, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 174
    .line 175
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 176
    .line 177
    .line 178
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 181
    .line 182
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->combinedLoadStatesCollection:Lcom/caverock/androidsvg/SVG;

    .line 183
    .line 184
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 187
    .line 188
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 189
    .line 190
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 195
    .line 196
    if-eqz p0, :cond_3

    .line 197
    .line 198
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->source:Landroidx/paging/LoadStates;

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_3
    move-object p0, v2

    .line 202
    :goto_2
    if-eqz p0, :cond_e

    .line 203
    .line 204
    iget-object p1, p0, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    .line 205
    .line 206
    iget-boolean p1, p1, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 207
    .line 208
    iget-object p0, p0, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    .line 209
    .line 210
    iget-boolean p0, p0, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 211
    .line 212
    iget-object v0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Landroidx/paging/PageEvent;

    .line 215
    .line 216
    check-cast v0, Landroidx/paging/PageEvent$Insert;

    .line 217
    .line 218
    iget-object v1, v0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 219
    .line 220
    sget-object v2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 221
    .line 222
    const/4 v3, 0x1

    .line 223
    const/4 v4, 0x0

    .line 224
    if-ne v1, v2, :cond_4

    .line 225
    .line 226
    if-nez p1, :cond_5

    .line 227
    .line 228
    :cond_4
    sget-object p1, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 229
    .line 230
    if-ne v1, p1, :cond_6

    .line 231
    .line 232
    if-nez p0, :cond_5

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_5
    move p0, v4

    .line 236
    goto :goto_4

    .line 237
    :cond_6
    :goto_3
    move p0, v3

    .line 238
    :goto_4
    iget-object p1, v0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 239
    .line 240
    if-eqz p1, :cond_7

    .line 241
    .line 242
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_9

    .line 258
    .line 259
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Landroidx/paging/TransformablePage;

    .line 264
    .line 265
    iget-object v0, v0, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-nez v0, :cond_8

    .line 272
    .line 273
    move v3, v4

    .line 274
    :cond_9
    :goto_5
    iget-object p1, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 277
    .line 278
    if-nez p0, :cond_a

    .line 279
    .line 280
    iput-boolean v4, p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->lastAccessedIndexUnfulfilled:Z

    .line 281
    .line 282
    goto/16 :goto_a

    .line 283
    .line 284
    :cond_a
    iget-boolean p0, p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->lastAccessedIndexUnfulfilled:Z

    .line 285
    .line 286
    if-nez p0, :cond_b

    .line 287
    .line 288
    if-eqz v3, :cond_13

    .line 289
    .line 290
    :cond_b
    if-nez v3, :cond_d

    .line 291
    .line 292
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 295
    .line 296
    iget p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->lastAccessedIndex:I

    .line 297
    .line 298
    iget-object p1, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 301
    .line 302
    iget-object v0, p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 303
    .line 304
    iget v0, v0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 305
    .line 306
    if-lt p0, v0, :cond_d

    .line 307
    .line 308
    iget p0, p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->lastAccessedIndex:I

    .line 309
    .line 310
    iget-object p1, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 313
    .line 314
    iget-object v0, p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 315
    .line 316
    iget v1, v0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 317
    .line 318
    iget v0, v0, Landroidx/paging/PageStore;->dataCount:I

    .line 319
    .line 320
    add-int/2addr v1, v0

    .line 321
    if-le p0, v1, :cond_c

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_c
    iput-boolean v4, p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->lastAccessedIndexUnfulfilled:Z

    .line 325
    .line 326
    goto/16 :goto_a

    .line 327
    .line 328
    :cond_d
    :goto_6
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 331
    .line 332
    iget-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->hintReceiver:Landroidx/paging/HintHandler;

    .line 333
    .line 334
    if-eqz p1, :cond_13

    .line 335
    .line 336
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 337
    .line 338
    iget p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->lastAccessedIndex:I

    .line 339
    .line 340
    invoke-virtual {v0, p0}, Landroidx/paging/PageStore;->createAccessHintForIndex(I)Landroidx/paging/ViewportHint$Access;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-virtual {p1, p0}, Landroidx/paging/HintHandler;->processHint(Landroidx/paging/ViewportHint;)V

    .line 345
    .line 346
    .line 347
    goto :goto_a

    .line 348
    :cond_e
    const-string p0, "PagingDataPresenter.combinedLoadStatesCollection.stateFlow should not hold null CombinedLoadStates after Insert event."

    .line 349
    .line 350
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return-object v2

    .line 354
    :cond_f
    instance-of p0, p1, Landroidx/paging/PageEvent$Drop;

    .line 355
    .line 356
    if-eqz p0, :cond_12

    .line 357
    .line 358
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 361
    .line 362
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 363
    .line 364
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object p0

    .line 368
    check-cast p0, Ljava/lang/Boolean;

    .line 369
    .line 370
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 371
    .line 372
    .line 373
    move-result p0

    .line 374
    if-eqz p0, :cond_10

    .line 375
    .line 376
    const/4 p0, 0x5

    .line 377
    iput p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 378
    .line 379
    invoke-static {v12}, Lkotlinx/coroutines/AwaitKt;->yield(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    if-ne p0, v0, :cond_10

    .line 384
    .line 385
    goto :goto_8

    .line 386
    :cond_10
    :goto_7
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 389
    .line 390
    iget-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->pageStore:Landroidx/paging/PageStore;

    .line 391
    .line 392
    iget-object v1, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v1, Landroidx/paging/PageEvent;

    .line 395
    .line 396
    invoke-virtual {p1, v1}, Landroidx/paging/PageStore;->processEvent(Landroidx/paging/PageEvent;)Landroidx/paging/FlowExtKt;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    const/4 v1, 0x6

    .line 401
    iput v1, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 402
    .line 403
    invoke-virtual {p0, p1, v12}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->presentPagingDataEvent(Landroidx/paging/FlowExtKt;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    if-ne p0, v0, :cond_11

    .line 408
    .line 409
    :goto_8
    return-object v0

    .line 410
    :cond_11
    :goto_9
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 413
    .line 414
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->combinedLoadStatesCollection:Lcom/caverock/androidsvg/SVG;

    .line 415
    .line 416
    iget-object p1, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast p1, Landroidx/paging/PageEvent;

    .line 419
    .line 420
    check-cast p1, Landroidx/paging/PageEvent$Drop;

    .line 421
    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    throw v2

    .line 429
    :cond_12
    instance-of p0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    .line 430
    .line 431
    if-eqz p0, :cond_13

    .line 432
    .line 433
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 436
    .line 437
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->combinedLoadStatesCollection:Lcom/caverock/androidsvg/SVG;

    .line 438
    .line 439
    check-cast p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    .line 440
    .line 441
    iget-object v0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->source:Landroidx/paging/LoadStates;

    .line 442
    .line 443
    iget-object p1, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->mediator:Landroidx/paging/LoadStates;

    .line 444
    .line 445
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 446
    .line 447
    .line 448
    :cond_13
    :goto_a
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast p0, Landroidx/paging/PageEvent;

    .line 451
    .line 452
    instance-of p1, p0, Landroidx/paging/PageEvent$Insert;

    .line 453
    .line 454
    if-nez p1, :cond_14

    .line 455
    .line 456
    instance-of p1, p0, Landroidx/paging/PageEvent$Drop;

    .line 457
    .line 458
    if-nez p1, :cond_14

    .line 459
    .line 460
    instance-of p0, p0, Landroidx/paging/PageEvent$StaticList;

    .line 461
    .line 462
    if-eqz p0, :cond_15

    .line 463
    .line 464
    :cond_14
    iget-object p0, v12, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 467
    .line 468
    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->onPagesUpdatedListeners:Lkotlin/collections/IndexingIterable;

    .line 469
    .line 470
    invoke-virtual {p0}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    if-eqz p1, :cond_15

    .line 479
    .line 480
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 485
    .line 486
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    goto :goto_b

    .line 490
    :cond_15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 491
    .line 492
    return-object p0

    .line 493
    :cond_16
    throw v2

    .line 494
    nop

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 13
    .line 14
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    const/16 v2, 0x1d

    .line 17
    .line 18
    invoke-direct {v0, p0, v1, p2, v2}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    new-instance v3, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v4, p1

    .line 29
    check-cast v4, Landroidx/paging/PageEvent;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v5, p0

    .line 34
    check-cast v5, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 35
    .line 36
    move-object v6, v1

    .line 37
    check-cast v6, Landroidx/paging/PagingData;

    .line 38
    .line 39
    const/16 v8, 0x1c

    .line 40
    .line 41
    move-object v7, p2

    .line 42
    invoke-direct/range {v3 .. v8}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 43
    .line 44
    .line 45
    return-object v3

    .line 46
    :pswitch_1
    move-object v8, p2

    .line 47
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 48
    .line 49
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 52
    .line 53
    check-cast v1, Landroidx/paging/PageFetcherSnapshot;

    .line 54
    .line 55
    const/16 v0, 0x1b

    .line 56
    .line 57
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    return-object p2

    .line 63
    :pswitch_2
    move-object v8, p2

    .line 64
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lkotlin/jvm/functions/Function3;

    .line 69
    .line 70
    check-cast v1, Landroidx/paging/ChannelFlowCollector;

    .line 71
    .line 72
    const/16 v0, 0x1a

    .line 73
    .line 74
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    return-object p2

    .line 80
    :pswitch_3
    move-object v8, p2

    .line 81
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 82
    .line 83
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Lkotlinx/coroutines/JobImpl;

    .line 86
    .line 87
    check-cast v1, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 88
    .line 89
    const/16 v0, 0x19

    .line 90
    .line 91
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    return-object p2

    .line 97
    :pswitch_4
    move-object v8, p2

    .line 98
    new-instance p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 99
    .line 100
    check-cast v1, Lokhttp3/Request$Builder;

    .line 101
    .line 102
    const/16 p2, 0x18

    .line 103
    .line 104
    invoke-direct {p0, p2, v1, v8}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_5
    move-object v8, p2

    .line 111
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 112
    .line 113
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 116
    .line 117
    check-cast v1, Landroidx/paging/AsyncPagingDataDiffer;

    .line 118
    .line 119
    invoke-direct {p2, p0, v8, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Landroidx/paging/AsyncPagingDataDiffer;)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    return-object p2

    .line 125
    :pswitch_6
    move-object v8, p2

    .line 126
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 127
    .line 128
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    move-object v5, p1

    .line 131
    check-cast v5, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 132
    .line 133
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 134
    .line 135
    move-object v6, p0

    .line 136
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 137
    .line 138
    move-object v7, v1

    .line 139
    check-cast v7, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 140
    .line 141
    const/16 v9, 0x16

    .line 142
    .line 143
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 144
    .line 145
    .line 146
    return-object v4

    .line 147
    :pswitch_7
    move-object v8, p2

    .line 148
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 149
    .line 150
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    move-object v5, p1

    .line 153
    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    .line 154
    .line 155
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 156
    .line 157
    move-object v6, p0

    .line 158
    check-cast v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 159
    .line 160
    move-object v7, v1

    .line 161
    check-cast v7, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 162
    .line 163
    const/16 v9, 0x15

    .line 164
    .line 165
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 166
    .line 167
    .line 168
    return-object v4

    .line 169
    :pswitch_8
    move-object v8, p2

    .line 170
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 171
    .line 172
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 175
    .line 176
    check-cast v1, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    const/16 v0, 0x14

    .line 179
    .line 180
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 181
    .line 182
    .line 183
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 184
    .line 185
    return-object p2

    .line 186
    :pswitch_9
    move-object v8, p2

    .line 187
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 188
    .line 189
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 190
    .line 191
    move-object v5, p1

    .line 192
    check-cast v5, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 193
    .line 194
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 195
    .line 196
    move-object v6, p0

    .line 197
    check-cast v6, Landroid/content/Context;

    .line 198
    .line 199
    move-object v7, v1

    .line 200
    check-cast v7, Landroidx/glance/appwidget/AppWidgetId;

    .line 201
    .line 202
    const/16 v9, 0x13

    .line 203
    .line 204
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 205
    .line 206
    .line 207
    return-object v4

    .line 208
    :pswitch_a
    move-object v8, p2

    .line 209
    new-instance p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 210
    .line 211
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 212
    .line 213
    const/16 p1, 0x12

    .line 214
    .line 215
    invoke-direct {p0, p1, v1, v8}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 216
    .line 217
    .line 218
    return-object p0

    .line 219
    :pswitch_b
    move-object v8, p2

    .line 220
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 221
    .line 222
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    .line 225
    .line 226
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 227
    .line 228
    const/16 v0, 0x11

    .line 229
    .line 230
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 231
    .line 232
    .line 233
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 234
    .line 235
    return-object p2

    .line 236
    :pswitch_c
    move-object v8, p2

    .line 237
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 238
    .line 239
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    .line 242
    .line 243
    check-cast v1, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 244
    .line 245
    const/16 v0, 0x10

    .line 246
    .line 247
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 248
    .line 249
    .line 250
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 251
    .line 252
    return-object p2

    .line 253
    :pswitch_d
    move-object v8, p2

    .line 254
    new-instance p1, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 255
    .line 256
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 259
    .line 260
    check-cast v1, Landroidx/compose/material3/TooltipStateImpl;

    .line 261
    .line 262
    const/16 p2, 0xf

    .line 263
    .line 264
    invoke-direct {p1, p0, v1, v8, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 265
    .line 266
    .line 267
    return-object p1

    .line 268
    :pswitch_e
    move-object v8, p2

    .line 269
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 270
    .line 271
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast p0, Landroidx/compose/runtime/State;

    .line 274
    .line 275
    check-cast v1, Landroidx/compose/animation/core/Animatable;

    .line 276
    .line 277
    const/16 v0, 0xe

    .line 278
    .line 279
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 280
    .line 281
    .line 282
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 283
    .line 284
    return-object p2

    .line 285
    :pswitch_f
    move-object v8, p2

    .line 286
    new-instance p1, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 287
    .line 288
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 291
    .line 292
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    .line 293
    .line 294
    const/16 p2, 0xd

    .line 295
    .line 296
    invoke-direct {p1, p0, v1, v8, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 297
    .line 298
    .line 299
    return-object p1

    .line 300
    :pswitch_10
    move-object v8, p2

    .line 301
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 302
    .line 303
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 304
    .line 305
    move-object v5, p1

    .line 306
    check-cast v5, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 307
    .line 308
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 309
    .line 310
    move-object v6, p0

    .line 311
    check-cast v6, Landroidx/compose/ui/node/NodeCoordinator;

    .line 312
    .line 313
    move-object v7, v1

    .line 314
    check-cast v7, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 315
    .line 316
    const/16 v9, 0xc

    .line 317
    .line 318
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 319
    .line 320
    .line 321
    return-object v4

    .line 322
    :pswitch_11
    move-object v8, p2

    .line 323
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 324
    .line 325
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 326
    .line 327
    move-object v5, p1

    .line 328
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 329
    .line 330
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 331
    .line 332
    move-object v6, p0

    .line 333
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 334
    .line 335
    move-object v7, v1

    .line 336
    check-cast v7, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 337
    .line 338
    const/16 v9, 0xb

    .line 339
    .line 340
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 341
    .line 342
    .line 343
    return-object v4

    .line 344
    :pswitch_12
    move-object v8, p2

    .line 345
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 346
    .line 347
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 350
    .line 351
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 352
    .line 353
    const/16 v0, 0xa

    .line 354
    .line 355
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 356
    .line 357
    .line 358
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 359
    .line 360
    return-object p2

    .line 361
    :pswitch_13
    move-object v8, p2

    .line 362
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 363
    .line 364
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 365
    .line 366
    move-object v5, p1

    .line 367
    check-cast v5, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;

    .line 368
    .line 369
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 370
    .line 371
    move-object v6, p0

    .line 372
    check-cast v6, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 373
    .line 374
    move-object v7, v1

    .line 375
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 376
    .line 377
    const/16 v9, 0x9

    .line 378
    .line 379
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 380
    .line 381
    .line 382
    return-object v4

    .line 383
    :pswitch_14
    move-object v8, p2

    .line 384
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 385
    .line 386
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 389
    .line 390
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 391
    .line 392
    const/16 v0, 0x8

    .line 393
    .line 394
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 395
    .line 396
    .line 397
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 398
    .line 399
    return-object p2

    .line 400
    :pswitch_15
    move-object v8, p2

    .line 401
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 402
    .line 403
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast p0, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    .line 406
    .line 407
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 408
    .line 409
    const/4 v0, 0x7

    .line 410
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 411
    .line 412
    .line 413
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 414
    .line 415
    return-object p2

    .line 416
    :pswitch_16
    move-object v8, p2

    .line 417
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 418
    .line 419
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 420
    .line 421
    move-object v5, p1

    .line 422
    check-cast v5, Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 423
    .line 424
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 425
    .line 426
    move-object v6, p0

    .line 427
    check-cast v6, Landroidx/compose/foundation/MutatePriority;

    .line 428
    .line 429
    move-object v7, v1

    .line 430
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 431
    .line 432
    const/4 v9, 0x6

    .line 433
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 434
    .line 435
    .line 436
    return-object v4

    .line 437
    :pswitch_17
    move-object v8, p2

    .line 438
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 439
    .line 440
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast p0, Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 443
    .line 444
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 445
    .line 446
    const/4 v0, 0x5

    .line 447
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 448
    .line 449
    .line 450
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 451
    .line 452
    return-object p2

    .line 453
    :pswitch_18
    move-object v8, p2

    .line 454
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 455
    .line 456
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 457
    .line 458
    move-object v5, p1

    .line 459
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 460
    .line 461
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 462
    .line 463
    move-object v6, p0

    .line 464
    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    .line 465
    .line 466
    move-object v7, v1

    .line 467
    check-cast v7, Lkotlinx/coroutines/DisposableHandle;

    .line 468
    .line 469
    const/4 v9, 0x4

    .line 470
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 471
    .line 472
    .line 473
    return-object v4

    .line 474
    :pswitch_19
    move-object v8, p2

    .line 475
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 476
    .line 477
    iget-object p1, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 478
    .line 479
    move-object v5, p1

    .line 480
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 481
    .line 482
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 483
    .line 484
    move-object v6, p0

    .line 485
    check-cast v6, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 486
    .line 487
    move-object v7, v1

    .line 488
    check-cast v7, Lkotlinx/coroutines/DisposableHandle;

    .line 489
    .line 490
    const/4 v9, 0x3

    .line 491
    invoke-direct/range {v4 .. v9}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 492
    .line 493
    .line 494
    return-object v4

    .line 495
    :pswitch_1a
    move-object v8, p2

    .line 496
    new-instance p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 497
    .line 498
    check-cast v1, Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 499
    .line 500
    const/4 p1, 0x2

    .line 501
    invoke-direct {p0, p1, v1, v8}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 502
    .line 503
    .line 504
    return-object p0

    .line 505
    :pswitch_1b
    move-object v8, p2

    .line 506
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 507
    .line 508
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 511
    .line 512
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 513
    .line 514
    const/4 v0, 0x1

    .line 515
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 516
    .line 517
    .line 518
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 519
    .line 520
    return-object p2

    .line 521
    :pswitch_1c
    move-object v8, p2

    .line 522
    new-instance p2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 523
    .line 524
    iget-object p0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast p0, Landroidx/paging/HintHandler;

    .line 527
    .line 528
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 529
    .line 530
    const/4 v0, 0x0

    .line 531
    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 532
    .line 533
    .line 534
    iput-object p1, p2, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 535
    .line 536
    return-object p2

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/paging/SingleRunner$runInIsolation$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_3
    check-cast p1, Landroidx/paging/SimpleProducerScopeImpl;

    .line 67
    .line 68
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 82
    .line 83
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 97
    .line 98
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 99
    .line 100
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 112
    .line 113
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 127
    .line 128
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 129
    .line 130
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 142
    .line 143
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 157
    .line 158
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 159
    .line 160
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 172
    .line 173
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 174
    .line 175
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    return-object p0

    .line 186
    :pswitch_b
    check-cast p1, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 187
    .line 188
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 189
    .line 190
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 195
    .line 196
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 202
    .line 203
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 204
    .line 205
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 210
    .line 211
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0

    .line 216
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 217
    .line 218
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 219
    .line 220
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 225
    .line 226
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 232
    .line 233
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 234
    .line 235
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 240
    .line 241
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 247
    .line 248
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 249
    .line 250
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 255
    .line 256
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    return-object p0

    .line 261
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 262
    .line 263
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 264
    .line 265
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 270
    .line 271
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    return-object p0

    .line 276
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 277
    .line 278
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 279
    .line 280
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 285
    .line 286
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 292
    .line 293
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 294
    .line 295
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 300
    .line 301
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    return-object p0

    .line 306
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 307
    .line 308
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 309
    .line 310
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 315
    .line 316
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    return-object p0

    .line 321
    :pswitch_14
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 322
    .line 323
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 324
    .line 325
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 330
    .line 331
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    return-object p0

    .line 336
    :pswitch_15
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 337
    .line 338
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 339
    .line 340
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 345
    .line 346
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    return-object p0

    .line 351
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 352
    .line 353
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 354
    .line 355
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 360
    .line 361
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    return-object p0

    .line 366
    :pswitch_17
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 367
    .line 368
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 369
    .line 370
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 375
    .line 376
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    return-object p0

    .line 381
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 382
    .line 383
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 384
    .line 385
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 390
    .line 391
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    return-object p0

    .line 396
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 397
    .line 398
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 399
    .line 400
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 405
    .line 406
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    return-object p0

    .line 411
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 412
    .line 413
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 414
    .line 415
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 420
    .line 421
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    return-object p0

    .line 426
    :pswitch_1b
    check-cast p1, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 427
    .line 428
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 429
    .line 430
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 435
    .line 436
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    return-object p0

    .line 441
    :pswitch_1c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 442
    .line 443
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 444
    .line 445
    invoke-virtual {p0, p1, p2}, Landroidx/paging/SingleRunner$runInIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    check-cast p0, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 450
    .line 451
    invoke-virtual {p0, v1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object p0

    .line 455
    return-object p0

    .line 456
    nop

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x7

    .line 7
    const/16 v3, 0xf

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x1

    .line 13
    const/4 v9, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    if-ne v1, v8, :cond_0

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 41
    .line 42
    new-instance v2, Landroidx/paging/SimpleProducerScopeImpl;

    .line 43
    .line 44
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 47
    .line 48
    invoke-direct {v2, v1, v3}, Landroidx/paging/SimpleProducerScopeImpl;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 54
    .line 55
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 56
    .line 57
    invoke-interface {v1, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-ne v1, v0, :cond_2

    .line 62
    .line 63
    move-object v9, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 66
    .line 67
    :goto_1
    return-object v9

    .line 68
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/paging/SingleRunner$runInIsolation$2;->invokeSuspend$androidx$paging$PagingDataPresenter$collectFrom$2$1$2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 74
    .line 75
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    if-ne v1, v8, :cond_3

    .line 80
    .line 81
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 86
    .line 87
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 97
    .line 98
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 101
    .line 102
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->consumeAsFlow(Lkotlinx/coroutines/channels/BufferedChannel;)Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    new-instance v3, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 107
    .line 108
    iget-object v5, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v5, Landroidx/paging/PageFetcherSnapshot;

    .line 111
    .line 112
    const/16 v6, 0x9

    .line 113
    .line 114
    invoke-direct {v3, v6, v5, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 118
    .line 119
    invoke-virtual {v2, v3, v4}, Lkotlinx/coroutines/flow/ChannelAsFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-ne v1, v0, :cond_5

    .line 124
    .line 125
    move-object v9, v0

    .line 126
    goto :goto_3

    .line 127
    :cond_5
    :goto_2
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 128
    .line 129
    :goto_3
    return-object v9

    .line 130
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 131
    .line 132
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 133
    .line 134
    if-eqz v1, :cond_7

    .line 135
    .line 136
    if-ne v1, v8, :cond_6

    .line 137
    .line 138
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 143
    .line 144
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 156
    .line 157
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v3, Landroidx/paging/ChannelFlowCollector;

    .line 160
    .line 161
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 162
    .line 163
    invoke-interface {v2, v3, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-ne v1, v0, :cond_8

    .line 168
    .line 169
    move-object v9, v0

    .line 170
    goto :goto_5

    .line 171
    :cond_8
    :goto_4
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 172
    .line 173
    :goto_5
    return-object v9

    .line 174
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 175
    .line 176
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 177
    .line 178
    if-eqz v1, :cond_a

    .line 179
    .line 180
    if-ne v1, v8, :cond_9

    .line 181
    .line 182
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_9
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 187
    .line 188
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v1, Landroidx/paging/SimpleProducerScopeImpl;

    .line 198
    .line 199
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v2, Lkotlinx/coroutines/JobImpl;

    .line 202
    .line 203
    new-instance v5, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    invoke-direct {v5, v3, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v5}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 209
    .line 210
    .line 211
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v2, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 214
    .line 215
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 216
    .line 217
    invoke-virtual {v2, v1, v4}, Landroidx/paging/FlowExtKt$simpleScan$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-ne v1, v0, :cond_b

    .line 222
    .line 223
    move-object v9, v0

    .line 224
    goto :goto_7

    .line 225
    :cond_b
    :goto_6
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 226
    .line 227
    :goto_7
    return-object v9

    .line 228
    :pswitch_4
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v0, Lokhttp3/Request$Builder;

    .line 231
    .line 232
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 233
    .line 234
    iget v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 235
    .line 236
    if-eqz v2, :cond_e

    .line 237
    .line 238
    if-eq v2, v8, :cond_d

    .line 239
    .line 240
    if-ne v2, v7, :cond_c

    .line 241
    .line 242
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v0, Ljava/util/Iterator;

    .line 245
    .line 246
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 249
    .line 250
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 255
    .line 256
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_b

    .line 260
    :cond_d
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 263
    .line 264
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    move-object/from16 v3, p1

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 276
    .line 277
    iget-object v3, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v3, Lokhttp3/internal/http/StatusLine;

    .line 280
    .line 281
    iput-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 282
    .line 283
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Lokhttp3/internal/http/StatusLine;->getStateAsEvents(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    if-ne v3, v1, :cond_f

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_f
    :goto_8
    check-cast v3, Ljava/util/List;

    .line 293
    .line 294
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v0, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 297
    .line 298
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->start()Z

    .line 299
    .line 300
    .line 301
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    :cond_10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_11

    .line 310
    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Lkotlin/collections/IndexedValue;

    .line 316
    .line 317
    iput-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 318
    .line 319
    iput-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 320
    .line 321
    iput v7, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 322
    .line 323
    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    if-ne v3, v1, :cond_10

    .line 328
    .line 329
    :goto_a
    move-object v9, v1

    .line 330
    goto :goto_b

    .line 331
    :cond_11
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 332
    .line 333
    :goto_b
    return-object v9

    .line 334
    :pswitch_5
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 335
    .line 336
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 337
    .line 338
    if-eqz v1, :cond_13

    .line 339
    .line 340
    if-ne v1, v8, :cond_12

    .line 341
    .line 342
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_12
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 347
    .line 348
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto :goto_d

    .line 352
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 358
    .line 359
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    .line 362
    .line 363
    new-instance v5, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 364
    .line 365
    iget-object v6, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v6, Landroidx/paging/AsyncPagingDataDiffer;

    .line 368
    .line 369
    invoke-direct {v5, v2, v1, v6}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 373
    .line 374
    invoke-interface {v3, v5, v4}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    if-ne v1, v0, :cond_14

    .line 379
    .line 380
    move-object v9, v0

    .line 381
    goto :goto_d

    .line 382
    :cond_14
    :goto_c
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 383
    .line 384
    :goto_d
    return-object v9

    .line 385
    :pswitch_6
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 388
    .line 389
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 390
    .line 391
    iget v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 392
    .line 393
    if-eqz v2, :cond_16

    .line 394
    .line 395
    if-ne v2, v8, :cond_15

    .line 396
    .line 397
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    goto :goto_e

    .line 401
    :cond_15
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 402
    .line 403
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_f

    .line 407
    :cond_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Ljava/util/List;

    .line 415
    .line 416
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-le v2, v8, :cond_17

    .line 421
    .line 422
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    check-cast v2, Ljava/util/List;

    .line 427
    .line 428
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    check-cast v0, Ljava/util/List;

    .line 433
    .line 434
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    sub-int/2addr v0, v7

    .line 439
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 444
    .line 445
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v2, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 448
    .line 449
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v3, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 452
    .line 453
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 458
    .line 459
    invoke-virtual {v2, v3, v0, v4}, Landroidx/compose/animation/core/SeekableTransitionState;->seekTo(FLjava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    if-ne v0, v1, :cond_17

    .line 464
    .line 465
    move-object v9, v1

    .line 466
    goto :goto_f

    .line 467
    :cond_17
    :goto_e
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 468
    .line 469
    :goto_f
    return-object v9

    .line 470
    :pswitch_7
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast v0, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 473
    .line 474
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 477
    .line 478
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    .line 481
    .line 482
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 483
    .line 484
    iget v10, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 485
    .line 486
    if-eqz v10, :cond_1a

    .line 487
    .line 488
    if-eq v10, v8, :cond_19

    .line 489
    .line 490
    if-ne v10, v7, :cond_18

    .line 491
    .line 492
    goto :goto_10

    .line 493
    :cond_18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 494
    .line 495
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    goto :goto_13

    .line 499
    :cond_19
    :goto_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    goto :goto_12

    .line 503
    :cond_1a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    sget-object v10, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 507
    .line 508
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v10

    .line 512
    if-eqz v10, :cond_1b

    .line 513
    .line 514
    new-instance v2, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;

    .line 515
    .line 516
    invoke-direct {v2, v0, v5}, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;-><init>(Landroidx/compose/runtime/ProduceStateScopeImpl;I)V

    .line 517
    .line 518
    .line 519
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 520
    .line 521
    iget-object v0, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 522
    .line 523
    invoke-virtual {v0, v2, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    if-ne v0, v6, :cond_1c

    .line 528
    .line 529
    goto :goto_11

    .line 530
    :cond_1b
    new-instance v5, Landroidx/paging/PageFetcher$flow$1;

    .line 531
    .line 532
    invoke-direct {v5, v1, v0, v9, v2}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 533
    .line 534
    .line 535
    iput v7, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 536
    .line 537
    invoke-static {v3, v5, v4}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    if-ne v0, v6, :cond_1c

    .line 542
    .line 543
    :goto_11
    move-object v9, v6

    .line 544
    goto :goto_13

    .line 545
    :cond_1c
    :goto_12
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 546
    .line 547
    :goto_13
    return-object v9

    .line 548
    :pswitch_8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 549
    .line 550
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 551
    .line 552
    if-eqz v1, :cond_1e

    .line 553
    .line 554
    if-ne v1, v8, :cond_1d

    .line 555
    .line 556
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 559
    .line 560
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    move-object/from16 v1, p1

    .line 564
    .line 565
    goto :goto_14

    .line 566
    :cond_1d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 567
    .line 568
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    goto :goto_15

    .line 572
    :cond_1e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 576
    .line 577
    move-object v13, v1

    .line 578
    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    .line 579
    .line 580
    new-instance v14, Ljava/util/concurrent/atomic/AtomicReference;

    .line 581
    .line 582
    invoke-direct {v14, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    new-instance v10, Lcoil3/RealImageLoader$execute$result$1;

    .line 586
    .line 587
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 588
    .line 589
    move-object v11, v1

    .line 590
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 591
    .line 592
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 593
    .line 594
    move-object v12, v1

    .line 595
    check-cast v12, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;

    .line 596
    .line 597
    const/4 v15, 0x0

    .line 598
    const/16 v16, 0xa

    .line 599
    .line 600
    invoke-direct/range {v10 .. v16}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 601
    .line 602
    .line 603
    iput-object v14, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 604
    .line 605
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 606
    .line 607
    invoke-static {v10, v4}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    if-ne v1, v0, :cond_1f

    .line 612
    .line 613
    move-object v9, v0

    .line 614
    goto :goto_15

    .line 615
    :cond_1f
    move-object v0, v14

    .line 616
    :goto_14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 621
    .line 622
    if-eqz v0, :cond_20

    .line 623
    .line 624
    invoke-interface {v0, v9}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 625
    .line 626
    .line 627
    :cond_20
    move-object v9, v1

    .line 628
    :goto_15
    return-object v9

    .line 629
    :pswitch_9
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 630
    .line 631
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 632
    .line 633
    if-eqz v1, :cond_22

    .line 634
    .line 635
    if-ne v1, v8, :cond_21

    .line 636
    .line 637
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    goto :goto_16

    .line 641
    :cond_21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 642
    .line 643
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    goto :goto_17

    .line 647
    :cond_22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 653
    .line 654
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v2, Landroid/content/Context;

    .line 657
    .line 658
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 659
    .line 660
    invoke-virtual {v1, v2, v4}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;->provideGlance(Landroid/content/Context;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    if-ne v1, v0, :cond_23

    .line 665
    .line 666
    move-object v9, v0

    .line 667
    goto :goto_17

    .line 668
    :cond_23
    :goto_16
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 669
    .line 670
    :goto_17
    return-object v9

    .line 671
    :pswitch_a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 672
    .line 673
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 674
    .line 675
    if-eqz v1, :cond_25

    .line 676
    .line 677
    if-ne v1, v8, :cond_24

    .line 678
    .line 679
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 682
    .line 683
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 684
    .line 685
    check-cast v2, Lkotlinx/coroutines/channels/Channel;

    .line 686
    .line 687
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    .line 689
    .line 690
    move-object/from16 v3, p1

    .line 691
    .line 692
    goto :goto_19

    .line 693
    :catchall_0
    move-exception v0

    .line 694
    move-object v1, v0

    .line 695
    goto :goto_1c

    .line 696
    :cond_24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 697
    .line 698
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    goto :goto_1b

    .line 702
    :cond_25
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 706
    .line 707
    move-object v2, v1

    .line 708
    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 709
    .line 710
    :try_start_1
    new-instance v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 711
    .line 712
    invoke-direct {v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 713
    .line 714
    .line 715
    :cond_26
    :goto_18
    iput-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 716
    .line 717
    iput-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 718
    .line 719
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 720
    .line 721
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    if-ne v3, v0, :cond_27

    .line 726
    .line 727
    move-object v9, v0

    .line 728
    goto :goto_1b

    .line 729
    :cond_27
    :goto_19
    check-cast v3, Ljava/lang/Boolean;

    .line 730
    .line 731
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 732
    .line 733
    .line 734
    move-result v3

    .line 735
    if-eqz v3, :cond_29

    .line 736
    .line 737
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v3

    .line 741
    check-cast v3, Lkotlin/Unit;

    .line 742
    .line 743
    sget-object v3, Landroidx/compose/ui/platform/GlobalSnapshotManager;->sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 744
    .line 745
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 746
    .line 747
    .line 748
    sget-object v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 749
    .line 750
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    :try_start_2
    sget-object v6, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalSnapshot:Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 752
    .line 753
    iget-object v6, v6, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Landroidx/collection/MutableScatterSet;

    .line 754
    .line 755
    if-eqz v6, :cond_28

    .line 756
    .line 757
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    .line 758
    .line 759
    .line 760
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 761
    if-ne v6, v8, :cond_28

    .line 762
    .line 763
    move v6, v8

    .line 764
    goto :goto_1a

    .line 765
    :cond_28
    move v6, v5

    .line 766
    :goto_1a
    :try_start_3
    monitor-exit v3

    .line 767
    if-eqz v6, :cond_26

    .line 768
    .line 769
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot()V

    .line 770
    .line 771
    .line 772
    goto :goto_18

    .line 773
    :catchall_1
    move-exception v0

    .line 774
    monitor-exit v3

    .line 775
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 776
    :cond_29
    invoke-interface {v2, v9}, Lkotlinx/coroutines/channels/Channel;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 777
    .line 778
    .line 779
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 780
    .line 781
    :goto_1b
    return-object v9

    .line 782
    :goto_1c
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 783
    :catchall_2
    move-exception v0

    .line 784
    invoke-static {v2, v1}, Landroidx/work/Operation$State;->cancelConsumed(Lkotlinx/coroutines/channels/Channel;Ljava/lang/Throwable;)V

    .line 785
    .line 786
    .line 787
    throw v0

    .line 788
    :pswitch_b
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 789
    .line 790
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 791
    .line 792
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 793
    .line 794
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 795
    .line 796
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 797
    .line 798
    iget v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 799
    .line 800
    if-eqz v3, :cond_2c

    .line 801
    .line 802
    if-eq v3, v8, :cond_2b

    .line 803
    .line 804
    if-ne v3, v7, :cond_2a

    .line 805
    .line 806
    goto :goto_1d

    .line 807
    :cond_2a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 808
    .line 809
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    goto :goto_20

    .line 813
    :cond_2b
    :goto_1d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    goto :goto_1f

    .line 817
    :cond_2c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 818
    .line 819
    .line 820
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 821
    .line 822
    check-cast v3, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 823
    .line 824
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 825
    .line 826
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v5

    .line 830
    if-eqz v5, :cond_2d

    .line 831
    .line 832
    new-instance v1, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;

    .line 833
    .line 834
    invoke-direct {v1, v3, v8}, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;-><init>(Landroidx/compose/runtime/ProduceStateScopeImpl;I)V

    .line 835
    .line 836
    .line 837
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 838
    .line 839
    invoke-interface {v0, v1, v4}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    if-ne v0, v2, :cond_2e

    .line 844
    .line 845
    goto :goto_1e

    .line 846
    :cond_2d
    new-instance v5, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 847
    .line 848
    const/16 v6, 0x16

    .line 849
    .line 850
    invoke-direct {v5, v0, v3, v9, v6}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 851
    .line 852
    .line 853
    iput v7, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 854
    .line 855
    invoke-static {v1, v5, v4}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    if-ne v0, v2, :cond_2e

    .line 860
    .line 861
    :goto_1e
    move-object v9, v2

    .line 862
    goto :goto_20

    .line 863
    :cond_2e
    :goto_1f
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 864
    .line 865
    :goto_20
    return-object v9

    .line 866
    :pswitch_c
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 867
    .line 868
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 869
    .line 870
    if-eqz v1, :cond_30

    .line 871
    .line 872
    if-ne v1, v8, :cond_2f

    .line 873
    .line 874
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 875
    .line 876
    .line 877
    goto :goto_21

    .line 878
    :cond_2f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 879
    .line 880
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    goto :goto_22

    .line 884
    :cond_30
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 888
    .line 889
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 890
    .line 891
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 892
    .line 893
    check-cast v2, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    .line 894
    .line 895
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 896
    .line 897
    check-cast v3, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 898
    .line 899
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 900
    .line 901
    invoke-virtual {v2, v1, v3, v4}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    if-ne v1, v0, :cond_31

    .line 906
    .line 907
    move-object v9, v0

    .line 908
    goto :goto_22

    .line 909
    :cond_31
    :goto_21
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 910
    .line 911
    :goto_22
    return-object v9

    .line 912
    :pswitch_d
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 913
    .line 914
    move-object v1, v0

    .line 915
    check-cast v1, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 916
    .line 917
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 918
    .line 919
    move-object v2, v0

    .line 920
    check-cast v2, Landroidx/compose/material3/TooltipStateImpl;

    .line 921
    .line 922
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 923
    .line 924
    iget v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 925
    .line 926
    if-eqz v0, :cond_35

    .line 927
    .line 928
    if-eq v0, v8, :cond_34

    .line 929
    .line 930
    if-eq v0, v7, :cond_33

    .line 931
    .line 932
    if-eq v0, v6, :cond_32

    .line 933
    .line 934
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 935
    .line 936
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    goto :goto_27

    .line 940
    :cond_32
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 941
    .line 942
    check-cast v0, Ljava/lang/Throwable;

    .line 943
    .line 944
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 945
    .line 946
    .line 947
    goto :goto_28

    .line 948
    :cond_33
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 949
    .line 950
    .line 951
    goto :goto_24

    .line 952
    :cond_34
    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 953
    .line 954
    .line 955
    goto :goto_23

    .line 956
    :catchall_3
    move-exception v0

    .line 957
    goto :goto_25

    .line 958
    :cond_35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 959
    .line 960
    .line 961
    :try_start_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 962
    .line 963
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 964
    .line 965
    .line 966
    invoke-virtual {v1, v9, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    sget-object v0, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    .line 970
    .line 971
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 972
    .line 973
    invoke-virtual {v2, v0, v4}, Landroidx/compose/material3/TooltipStateImpl;->show(Landroidx/compose/foundation/MutatePriority;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 977
    if-ne v0, v3, :cond_36

    .line 978
    .line 979
    goto :goto_26

    .line 980
    :cond_36
    :goto_23
    invoke-virtual {v2}, Landroidx/compose/material3/TooltipStateImpl;->isVisible()Z

    .line 981
    .line 982
    .line 983
    move-result v0

    .line 984
    if-eqz v0, :cond_37

    .line 985
    .line 986
    new-instance v0, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 987
    .line 988
    invoke-direct {v0, v8, v2, v9}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 989
    .line 990
    .line 991
    iput v7, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 992
    .line 993
    invoke-static {v1, v0, v4}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    if-ne v0, v3, :cond_37

    .line 998
    .line 999
    goto :goto_26

    .line 1000
    :cond_37
    :goto_24
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1001
    .line 1002
    goto :goto_27

    .line 1003
    :goto_25
    invoke-virtual {v2}, Landroidx/compose/material3/TooltipStateImpl;->isVisible()Z

    .line 1004
    .line 1005
    .line 1006
    move-result v5

    .line 1007
    if-eqz v5, :cond_38

    .line 1008
    .line 1009
    new-instance v5, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;

    .line 1010
    .line 1011
    invoke-direct {v5, v8, v2, v9}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$2$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1012
    .line 1013
    .line 1014
    iput-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1015
    .line 1016
    iput v6, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1017
    .line 1018
    invoke-static {v1, v5, v4}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    if-ne v1, v3, :cond_38

    .line 1023
    .line 1024
    :goto_26
    move-object v9, v3

    .line 1025
    :goto_27
    return-object v9

    .line 1026
    :cond_38
    :goto_28
    throw v0

    .line 1027
    :pswitch_e
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1028
    .line 1029
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1030
    .line 1031
    if-eqz v1, :cond_3a

    .line 1032
    .line 1033
    if-ne v1, v8, :cond_39

    .line 1034
    .line 1035
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_29

    .line 1039
    :cond_39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1040
    .line 1041
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    goto :goto_2a

    .line 1045
    :cond_3a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1046
    .line 1047
    .line 1048
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1049
    .line 1050
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1051
    .line 1052
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1053
    .line 1054
    check-cast v2, Landroidx/compose/runtime/State;

    .line 1055
    .line 1056
    new-instance v3, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;

    .line 1057
    .line 1058
    invoke-direct {v3, v2, v7}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/runtime/State;I)V

    .line 1059
    .line 1060
    .line 1061
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v2

    .line 1065
    new-instance v3, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 1066
    .line 1067
    iget-object v5, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1068
    .line 1069
    check-cast v5, Landroidx/compose/animation/core/Animatable;

    .line 1070
    .line 1071
    invoke-direct {v3, v6, v5, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1075
    .line 1076
    invoke-virtual {v2, v3, v4}, Lkotlinx/coroutines/flow/SafeFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    if-ne v1, v0, :cond_3b

    .line 1081
    .line 1082
    move-object v9, v0

    .line 1083
    goto :goto_2a

    .line 1084
    :cond_3b
    :goto_29
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1085
    .line 1086
    :goto_2a
    return-object v9

    .line 1087
    :pswitch_f
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1088
    .line 1089
    move-object v2, v0

    .line 1090
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 1091
    .line 1092
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1093
    .line 1094
    iget v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1095
    .line 1096
    if-eqz v0, :cond_40

    .line 1097
    .line 1098
    if-eq v0, v8, :cond_3f

    .line 1099
    .line 1100
    if-eq v0, v7, :cond_3e

    .line 1101
    .line 1102
    if-eq v0, v6, :cond_3d

    .line 1103
    .line 1104
    if-eq v0, v1, :cond_3c

    .line 1105
    .line 1106
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1107
    .line 1108
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    goto :goto_30

    .line 1112
    :cond_3c
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1113
    .line 1114
    check-cast v0, Ljava/lang/Throwable;

    .line 1115
    .line 1116
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1117
    .line 1118
    .line 1119
    goto :goto_31

    .line 1120
    :cond_3d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1121
    .line 1122
    .line 1123
    goto :goto_2d

    .line 1124
    :cond_3e
    :try_start_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_2c

    .line 1128
    :catchall_4
    move-exception v0

    .line 1129
    goto :goto_2e

    .line 1130
    :cond_3f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1131
    .line 1132
    .line 1133
    goto :goto_2b

    .line 1134
    :cond_40
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1135
    .line 1136
    .line 1137
    :try_start_8
    iget-object v0, v2, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->onShow:Lkotlin/jvm/functions/Function1;

    .line 1138
    .line 1139
    if-eqz v0, :cond_41

    .line 1140
    .line 1141
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1142
    .line 1143
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    if-ne v0, v3, :cond_41

    .line 1148
    .line 1149
    goto :goto_2f

    .line 1150
    :cond_41
    :goto_2b
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1151
    .line 1152
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    .line 1153
    .line 1154
    iput v7, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1155
    .line 1156
    invoke-interface {v0, v2, v4}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;->showTextContextMenu(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1160
    if-ne v0, v3, :cond_42

    .line 1161
    .line 1162
    goto :goto_2f

    .line 1163
    :cond_42
    :goto_2c
    iget-object v0, v2, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->onHide:Lkotlin/jvm/functions/Function1;

    .line 1164
    .line 1165
    if-eqz v0, :cond_43

    .line 1166
    .line 1167
    iput v6, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1168
    .line 1169
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    if-ne v0, v3, :cond_43

    .line 1174
    .line 1175
    goto :goto_2f

    .line 1176
    :cond_43
    :goto_2d
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1177
    .line 1178
    goto :goto_30

    .line 1179
    :goto_2e
    iget-object v2, v2, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->onHide:Lkotlin/jvm/functions/Function1;

    .line 1180
    .line 1181
    if-eqz v2, :cond_44

    .line 1182
    .line 1183
    iput-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1184
    .line 1185
    iput v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1186
    .line 1187
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v1

    .line 1191
    if-ne v1, v3, :cond_44

    .line 1192
    .line 1193
    :goto_2f
    move-object v9, v3

    .line 1194
    :goto_30
    return-object v9

    .line 1195
    :cond_44
    :goto_31
    throw v0

    .line 1196
    :pswitch_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1197
    .line 1198
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1199
    .line 1200
    check-cast v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 1201
    .line 1202
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1203
    .line 1204
    iget v6, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1205
    .line 1206
    if-eqz v6, :cond_47

    .line 1207
    .line 1208
    if-ne v6, v8, :cond_46

    .line 1209
    .line 1210
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1211
    .line 1212
    .line 1213
    :cond_45
    move-object v9, v0

    .line 1214
    goto/16 :goto_38

    .line 1215
    .line 1216
    :cond_46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1217
    .line 1218
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    goto/16 :goto_38

    .line 1222
    .line 1223
    :cond_47
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1224
    .line 1225
    .line 1226
    iget-object v10, v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 1227
    .line 1228
    new-instance v6, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    .line 1229
    .line 1230
    iget-object v7, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1231
    .line 1232
    check-cast v7, Landroidx/compose/ui/node/NodeCoordinator;

    .line 1233
    .line 1234
    iget-object v9, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1235
    .line 1236
    check-cast v9, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 1237
    .line 1238
    invoke-direct {v6, v1, v7, v9}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;)V

    .line 1239
    .line 1240
    .line 1241
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1242
    .line 1243
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v6}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v1

    .line 1250
    move-object v11, v1

    .line 1251
    check-cast v11, Landroidx/compose/ui/geometry/Rect;

    .line 1252
    .line 1253
    if-eqz v11, :cond_4e

    .line 1254
    .line 1255
    const-wide/16 v14, 0x0

    .line 1256
    .line 1257
    const/16 v16, 0x3

    .line 1258
    .line 1259
    const-wide/16 v12, 0x0

    .line 1260
    .line 1261
    invoke-static/range {v10 .. v16}, Landroidx/compose/foundation/gestures/ContentInViewNode;->isMaxVisible--EQwtKw$default(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v1

    .line 1265
    if-nez v1, :cond_4e

    .line 1266
    .line 1267
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 1268
    .line 1269
    invoke-static {v4}, Lkotlin/ExceptionsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v4

    .line 1273
    invoke-direct {v1, v8, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 1277
    .line 1278
    .line 1279
    new-instance v4, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 1280
    .line 1281
    invoke-direct {v4, v6, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 1282
    .line 1283
    .line 1284
    iget-object v7, v10, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewRequests:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 1285
    .line 1286
    iget-object v9, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 1287
    .line 1288
    invoke-virtual {v6}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v6

    .line 1292
    check-cast v6, Landroidx/compose/ui/geometry/Rect;

    .line 1293
    .line 1294
    if-nez v6, :cond_48

    .line 1295
    .line 1296
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 1297
    .line 1298
    .line 1299
    goto :goto_36

    .line 1300
    :cond_48
    new-instance v11, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 1301
    .line 1302
    invoke-direct {v11, v3, v7, v4}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v1, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 1306
    .line 1307
    .line 1308
    iget v3, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1309
    .line 1310
    invoke-static {v5, v3}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v3

    .line 1314
    iget v7, v3, Lkotlin/ranges/IntProgression;->first:I

    .line 1315
    .line 1316
    iget v3, v3, Lkotlin/ranges/IntProgression;->last:I

    .line 1317
    .line 1318
    if-gt v7, v3, :cond_4c

    .line 1319
    .line 1320
    :goto_32
    iget-object v11, v9, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1321
    .line 1322
    aget-object v11, v11, v3

    .line 1323
    .line 1324
    check-cast v11, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 1325
    .line 1326
    iget-object v11, v11, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->currentBounds:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    .line 1327
    .line 1328
    invoke-virtual {v11}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->invoke()Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v11

    .line 1332
    check-cast v11, Landroidx/compose/ui/geometry/Rect;

    .line 1333
    .line 1334
    if-nez v11, :cond_49

    .line 1335
    .line 1336
    goto :goto_34

    .line 1337
    :cond_49
    invoke-virtual {v6, v11}, Landroidx/compose/ui/geometry/Rect;->intersect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v12

    .line 1341
    invoke-virtual {v12, v6}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    .line 1342
    .line 1343
    .line 1344
    move-result v13

    .line 1345
    if-eqz v13, :cond_4a

    .line 1346
    .line 1347
    add-int/2addr v3, v8

    .line 1348
    invoke-virtual {v9, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(ILjava/lang/Object;)V

    .line 1349
    .line 1350
    .line 1351
    goto :goto_35

    .line 1352
    :cond_4a
    invoke-virtual {v12, v11}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v11

    .line 1356
    if-nez v11, :cond_4b

    .line 1357
    .line 1358
    new-instance v11, Ljava/util/concurrent/CancellationException;

    .line 1359
    .line 1360
    const-string v12, "bringIntoView call interrupted by a newer, non-overlapping call"

    .line 1361
    .line 1362
    invoke-direct {v11, v12}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    iget v12, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1366
    .line 1367
    sub-int/2addr v12, v8

    .line 1368
    if-gt v12, v3, :cond_4b

    .line 1369
    .line 1370
    :goto_33
    iget-object v13, v9, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1371
    .line 1372
    aget-object v13, v13, v3

    .line 1373
    .line 1374
    check-cast v13, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 1375
    .line 1376
    iget-object v13, v13, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 1377
    .line 1378
    invoke-virtual {v13, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 1379
    .line 1380
    .line 1381
    if-eq v12, v3, :cond_4b

    .line 1382
    .line 1383
    add-int/lit8 v12, v12, 0x1

    .line 1384
    .line 1385
    goto :goto_33

    .line 1386
    :cond_4b
    :goto_34
    if-eq v3, v7, :cond_4c

    .line 1387
    .line 1388
    add-int/lit8 v3, v3, -0x1

    .line 1389
    .line 1390
    goto :goto_32

    .line 1391
    :cond_4c
    invoke-virtual {v9, v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(ILjava/lang/Object;)V

    .line 1392
    .line 1393
    .line 1394
    :goto_35
    iget-boolean v3, v10, Landroidx/compose/foundation/gestures/ContentInViewNode;->isAnimationRunning:Z

    .line 1395
    .line 1396
    if-nez v3, :cond_4d

    .line 1397
    .line 1398
    const-wide/16 v3, 0x0

    .line 1399
    .line 1400
    invoke-virtual {v10, v3, v4}, Landroidx/compose/foundation/gestures/ContentInViewNode;->launchAnimation--gyyYBs(J)V

    .line 1401
    .line 1402
    .line 1403
    :cond_4d
    :goto_36
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v1

    .line 1407
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1408
    .line 1409
    if-ne v1, v3, :cond_4e

    .line 1410
    .line 1411
    goto :goto_37

    .line 1412
    :cond_4e
    move-object v1, v0

    .line 1413
    :goto_37
    if-ne v1, v2, :cond_45

    .line 1414
    .line 1415
    move-object v9, v2

    .line 1416
    :goto_38
    return-object v9

    .line 1417
    :pswitch_11
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1418
    .line 1419
    move-object v6, v0

    .line 1420
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 1421
    .line 1422
    iget-object v7, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1423
    .line 1424
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1425
    .line 1426
    iget v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1427
    .line 1428
    if-eqz v0, :cond_50

    .line 1429
    .line 1430
    if-ne v0, v8, :cond_4f

    .line 1431
    .line 1432
    :try_start_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1433
    .line 1434
    .line 1435
    goto :goto_39

    .line 1436
    :catchall_5
    move-exception v0

    .line 1437
    goto :goto_3b

    .line 1438
    :cond_4f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1439
    .line 1440
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    goto :goto_3a

    .line 1444
    :cond_50
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1445
    .line 1446
    .line 1447
    :try_start_a
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->visibilityAnimation:Landroidx/compose/animation/core/Animatable;

    .line 1448
    .line 1449
    new-instance v1, Ljava/lang/Float;

    .line 1450
    .line 1451
    const/4 v2, 0x0

    .line 1452
    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 1453
    .line 1454
    .line 1455
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1456
    .line 1457
    check-cast v2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1458
    .line 1459
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1460
    .line 1461
    check-cast v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 1462
    .line 1463
    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$$ExternalSyntheticLambda0;

    .line 1464
    .line 1465
    invoke-direct {v5, v3, v6, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;I)V

    .line 1466
    .line 1467
    .line 1468
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1469
    .line 1470
    move-object v3, v5

    .line 1471
    const/4 v5, 0x4

    .line 1472
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    if-ne v0, v10, :cond_51

    .line 1477
    .line 1478
    move-object v9, v10

    .line 1479
    goto :goto_3a

    .line 1480
    :cond_51
    :goto_39
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1481
    .line 1482
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1483
    .line 1484
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1485
    .line 1486
    .line 1487
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1488
    .line 1489
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1490
    .line 1491
    .line 1492
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1493
    .line 1494
    :goto_3a
    return-object v9

    .line 1495
    :goto_3b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1496
    .line 1497
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1498
    .line 1499
    .line 1500
    throw v0

    .line 1501
    :pswitch_12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1502
    .line 1503
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1504
    .line 1505
    if-eqz v1, :cond_54

    .line 1506
    .line 1507
    if-eq v1, v8, :cond_53

    .line 1508
    .line 1509
    if-ne v1, v7, :cond_52

    .line 1510
    .line 1511
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1512
    .line 1513
    .line 1514
    goto :goto_3e

    .line 1515
    :cond_52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1516
    .line 1517
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1518
    .line 1519
    .line 1520
    goto :goto_3f

    .line 1521
    :cond_53
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1522
    .line 1523
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1524
    .line 1525
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1526
    .line 1527
    .line 1528
    goto :goto_3c

    .line 1529
    :cond_54
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1530
    .line 1531
    .line 1532
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1533
    .line 1534
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1535
    .line 1536
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1537
    .line 1538
    check-cast v2, Lkotlinx/coroutines/Job;

    .line 1539
    .line 1540
    iput-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1541
    .line 1542
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1543
    .line 1544
    invoke-interface {v2, v4}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v2

    .line 1548
    if-ne v2, v0, :cond_55

    .line 1549
    .line 1550
    goto :goto_3d

    .line 1551
    :cond_55
    :goto_3c
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1552
    .line 1553
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1554
    .line 1555
    iput-object v9, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1556
    .line 1557
    iput v7, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1558
    .line 1559
    invoke-interface {v2, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v1

    .line 1563
    if-ne v1, v0, :cond_56

    .line 1564
    .line 1565
    :goto_3d
    move-object v9, v0

    .line 1566
    goto :goto_3f

    .line 1567
    :cond_56
    :goto_3e
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1568
    .line 1569
    :goto_3f
    return-object v9

    .line 1570
    :pswitch_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1571
    .line 1572
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1573
    .line 1574
    iget v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1575
    .line 1576
    if-eqz v2, :cond_58

    .line 1577
    .line 1578
    if-ne v2, v8, :cond_57

    .line 1579
    .line 1580
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1581
    .line 1582
    .line 1583
    goto :goto_40

    .line 1584
    :cond_57
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1585
    .line 1586
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1587
    .line 1588
    .line 1589
    goto :goto_41

    .line 1590
    :cond_58
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1591
    .line 1592
    .line 1593
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1594
    .line 1595
    check-cast v2, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;

    .line 1596
    .line 1597
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1598
    .line 1599
    check-cast v3, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 1600
    .line 1601
    iget-object v5, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1602
    .line 1603
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1604
    .line 1605
    iget-wide v5, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 1606
    .line 1607
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1608
    .line 1609
    new-instance v7, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;

    .line 1610
    .line 1611
    iget-object v8, v2, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    .line 1612
    .line 1613
    iget-object v9, v2, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 1614
    .line 1615
    iget-object v2, v2, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1616
    .line 1617
    invoke-direct {v7, v8, v9, v2, v4}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/coroutines/Continuation;)V

    .line 1618
    .line 1619
    .line 1620
    iput-object v3, v7, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;->L$0:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 1621
    .line 1622
    iput-wide v5, v7, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;->J$0:J

    .line 1623
    .line 1624
    invoke-virtual {v7, v0}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v2

    .line 1628
    if-ne v2, v1, :cond_59

    .line 1629
    .line 1630
    move-object v9, v1

    .line 1631
    goto :goto_41

    .line 1632
    :cond_59
    :goto_40
    move-object v9, v0

    .line 1633
    :goto_41
    return-object v9

    .line 1634
    :pswitch_14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1635
    .line 1636
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1637
    .line 1638
    if-eqz v1, :cond_5b

    .line 1639
    .line 1640
    if-ne v1, v8, :cond_5a

    .line 1641
    .line 1642
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1643
    .line 1644
    .line 1645
    goto :goto_42

    .line 1646
    :cond_5a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1647
    .line 1648
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1649
    .line 1650
    .line 1651
    goto :goto_43

    .line 1652
    :cond_5b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1653
    .line 1654
    .line 1655
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1656
    .line 1657
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 1658
    .line 1659
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1660
    .line 1661
    check-cast v2, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1662
    .line 1663
    iput-object v1, v2, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 1664
    .line 1665
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1666
    .line 1667
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 1668
    .line 1669
    iget-object v2, v2, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollScope:Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 1670
    .line 1671
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1672
    .line 1673
    invoke-interface {v1, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v1

    .line 1677
    if-ne v1, v0, :cond_5c

    .line 1678
    .line 1679
    move-object v9, v0

    .line 1680
    goto :goto_43

    .line 1681
    :cond_5c
    :goto_42
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1682
    .line 1683
    :goto_43
    return-object v9

    .line 1684
    :pswitch_15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1685
    .line 1686
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1687
    .line 1688
    if-eqz v1, :cond_5e

    .line 1689
    .line 1690
    if-ne v1, v8, :cond_5d

    .line 1691
    .line 1692
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1693
    .line 1694
    .line 1695
    goto :goto_44

    .line 1696
    :cond_5d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1697
    .line 1698
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1699
    .line 1700
    .line 1701
    goto :goto_45

    .line 1702
    :cond_5e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1703
    .line 1704
    .line 1705
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1706
    .line 1707
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 1708
    .line 1709
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1710
    .line 1711
    check-cast v2, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    .line 1712
    .line 1713
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1714
    .line 1715
    check-cast v3, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1716
    .line 1717
    new-instance v5, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 1718
    .line 1719
    const/16 v6, 0x10

    .line 1720
    .line 1721
    invoke-direct {v5, v6, v1, v3}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1722
    .line 1723
    .line 1724
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1725
    .line 1726
    invoke-virtual {v2, v5, v4}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v1

    .line 1730
    if-ne v1, v0, :cond_5f

    .line 1731
    .line 1732
    move-object v9, v0

    .line 1733
    goto :goto_45

    .line 1734
    :cond_5f
    :goto_44
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1735
    .line 1736
    :goto_45
    return-object v9

    .line 1737
    :pswitch_16
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1738
    .line 1739
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1740
    .line 1741
    if-eqz v1, :cond_61

    .line 1742
    .line 1743
    if-ne v1, v8, :cond_60

    .line 1744
    .line 1745
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1746
    .line 1747
    .line 1748
    goto :goto_46

    .line 1749
    :cond_60
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1750
    .line 1751
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1752
    .line 1753
    .line 1754
    goto :goto_47

    .line 1755
    :cond_61
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1756
    .line 1757
    .line 1758
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1759
    .line 1760
    check-cast v1, Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 1761
    .line 1762
    iget-object v12, v1, Landroidx/compose/foundation/gestures/DefaultScrollableState;->scrollMutex:Landroidx/compose/foundation/MutatorMutex;

    .line 1763
    .line 1764
    iget-object v14, v1, Landroidx/compose/foundation/gestures/DefaultScrollableState;->scrollScope:Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;

    .line 1765
    .line 1766
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1767
    .line 1768
    move-object v11, v2

    .line 1769
    check-cast v11, Landroidx/compose/foundation/MutatePriority;

    .line 1770
    .line 1771
    new-instance v13, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 1772
    .line 1773
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1774
    .line 1775
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 1776
    .line 1777
    const/4 v3, 0x5

    .line 1778
    invoke-direct {v13, v1, v2, v9, v3}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1779
    .line 1780
    .line 1781
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1782
    .line 1783
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1784
    .line 1785
    .line 1786
    new-instance v10, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 1787
    .line 1788
    const/4 v15, 0x0

    .line 1789
    invoke-direct/range {v10 .. v15}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1790
    .line 1791
    .line 1792
    invoke-static {v10, v4}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v1

    .line 1796
    if-ne v1, v0, :cond_62

    .line 1797
    .line 1798
    move-object v9, v0

    .line 1799
    goto :goto_47

    .line 1800
    :cond_62
    :goto_46
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1801
    .line 1802
    :goto_47
    return-object v9

    .line 1803
    :pswitch_17
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1804
    .line 1805
    check-cast v0, Landroidx/compose/foundation/gestures/DefaultScrollableState;

    .line 1806
    .line 1807
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DefaultScrollableState;->isScrollingState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1808
    .line 1809
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1810
    .line 1811
    iget v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1812
    .line 1813
    if-eqz v2, :cond_64

    .line 1814
    .line 1815
    if-ne v2, v8, :cond_63

    .line 1816
    .line 1817
    :try_start_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1818
    .line 1819
    .line 1820
    goto :goto_48

    .line 1821
    :catchall_6
    move-exception v0

    .line 1822
    goto :goto_4a

    .line 1823
    :cond_63
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1824
    .line 1825
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1826
    .line 1827
    .line 1828
    goto :goto_49

    .line 1829
    :cond_64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1830
    .line 1831
    .line 1832
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1833
    .line 1834
    check-cast v2, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 1835
    .line 1836
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1837
    .line 1838
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1839
    .line 1840
    .line 1841
    :try_start_c
    iget-object v3, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1842
    .line 1843
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 1844
    .line 1845
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1846
    .line 1847
    invoke-interface {v3, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1851
    if-ne v2, v0, :cond_65

    .line 1852
    .line 1853
    move-object v9, v0

    .line 1854
    goto :goto_49

    .line 1855
    :cond_65
    :goto_48
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1856
    .line 1857
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1858
    .line 1859
    .line 1860
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1861
    .line 1862
    :goto_49
    return-object v9

    .line 1863
    :goto_4a
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1864
    .line 1865
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1866
    .line 1867
    .line 1868
    throw v0

    .line 1869
    :pswitch_18
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1870
    .line 1871
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1872
    .line 1873
    if-eqz v1, :cond_67

    .line 1874
    .line 1875
    if-ne v1, v8, :cond_66

    .line 1876
    .line 1877
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1878
    .line 1879
    .line 1880
    goto :goto_4b

    .line 1881
    :cond_66
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1882
    .line 1883
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1884
    .line 1885
    .line 1886
    goto :goto_4c

    .line 1887
    :cond_67
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1888
    .line 1889
    .line 1890
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1891
    .line 1892
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1893
    .line 1894
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1895
    .line 1896
    check-cast v2, Landroidx/compose/foundation/interaction/Interaction;

    .line 1897
    .line 1898
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1899
    .line 1900
    invoke-virtual {v1, v2, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v1

    .line 1904
    if-ne v1, v0, :cond_68

    .line 1905
    .line 1906
    move-object v9, v0

    .line 1907
    goto :goto_4c

    .line 1908
    :cond_68
    :goto_4b
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1909
    .line 1910
    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    .line 1911
    .line 1912
    if-eqz v0, :cond_69

    .line 1913
    .line 1914
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 1915
    .line 1916
    .line 1917
    :cond_69
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1918
    .line 1919
    :goto_4c
    return-object v9

    .line 1920
    :pswitch_19
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1921
    .line 1922
    iget v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1923
    .line 1924
    if-eqz v1, :cond_6b

    .line 1925
    .line 1926
    if-ne v1, v8, :cond_6a

    .line 1927
    .line 1928
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1929
    .line 1930
    .line 1931
    goto :goto_4d

    .line 1932
    :cond_6a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1933
    .line 1934
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1935
    .line 1936
    .line 1937
    goto :goto_4e

    .line 1938
    :cond_6b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1939
    .line 1940
    .line 1941
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1942
    .line 1943
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1944
    .line 1945
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1946
    .line 1947
    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1948
    .line 1949
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1950
    .line 1951
    invoke-virtual {v1, v2, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v1

    .line 1955
    if-ne v1, v0, :cond_6c

    .line 1956
    .line 1957
    move-object v9, v0

    .line 1958
    goto :goto_4e

    .line 1959
    :cond_6c
    :goto_4d
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1960
    .line 1961
    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    .line 1962
    .line 1963
    if-eqz v0, :cond_6d

    .line 1964
    .line 1965
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 1966
    .line 1967
    .line 1968
    :cond_6d
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1969
    .line 1970
    :goto_4e
    return-object v9

    .line 1971
    :pswitch_1a
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 1972
    .line 1973
    check-cast v0, Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 1974
    .line 1975
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1976
    .line 1977
    iget v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 1978
    .line 1979
    if-eqz v2, :cond_6f

    .line 1980
    .line 1981
    if-ne v2, v8, :cond_6e

    .line 1982
    .line 1983
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 1984
    .line 1985
    check-cast v0, Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 1986
    .line 1987
    iget-object v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 1988
    .line 1989
    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 1990
    .line 1991
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1992
    .line 1993
    .line 1994
    goto :goto_4f

    .line 1995
    :cond_6e
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1996
    .line 1997
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1998
    .line 1999
    .line 2000
    goto :goto_51

    .line 2001
    :cond_6f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2002
    .line 2003
    .line 2004
    move-object v2, v0

    .line 2005
    check-cast v2, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2006
    .line 2007
    iget-object v3, v2, Landroidx/compose/animation/core/SeekableTransitionState;->snapshotStateObserver:Landroidx/preference/PreferenceManager;

    .line 2008
    .line 2009
    if-eqz v3, :cond_70

    .line 2010
    .line 2011
    sget-object v5, Landroidx/compose/animation/core/ArcSplineKt;->SeekableTransitionStateTotalDurationChanged:Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 2012
    .line 2013
    iget-object v6, v2, Landroidx/compose/animation/core/SeekableTransitionState;->recalculateTotalDurationNanos:Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 2014
    .line 2015
    invoke-virtual {v3, v2, v5, v6}, Landroidx/preference/PreferenceManager;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 2016
    .line 2017
    .line 2018
    :cond_70
    iget-object v2, v2, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuationMutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 2019
    .line 2020
    iput-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2021
    .line 2022
    iput-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 2023
    .line 2024
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 2025
    .line 2026
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v3

    .line 2030
    if-ne v3, v1, :cond_71

    .line 2031
    .line 2032
    move-object v9, v1

    .line 2033
    goto :goto_51

    .line 2034
    :cond_71
    move-object v1, v2

    .line 2035
    :goto_4f
    :try_start_d
    move-object v2, v0

    .line 2036
    check-cast v2, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2037
    .line 2038
    move-object v3, v0

    .line 2039
    check-cast v3, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2040
    .line 2041
    iget-object v3, v3, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2042
    .line 2043
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v3

    .line 2047
    iput-object v3, v2, Landroidx/compose/animation/core/SeekableTransitionState;->composedTargetState:Ljava/lang/Object;

    .line 2048
    .line 2049
    move-object v2, v0

    .line 2050
    check-cast v2, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2051
    .line 2052
    iget-object v2, v2, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2053
    .line 2054
    if-eqz v2, :cond_72

    .line 2055
    .line 2056
    move-object v3, v0

    .line 2057
    check-cast v3, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2058
    .line 2059
    iget-object v3, v3, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2060
    .line 2061
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v3

    .line 2065
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 2066
    .line 2067
    .line 2068
    goto :goto_50

    .line 2069
    :catchall_7
    move-exception v0

    .line 2070
    goto :goto_52

    .line 2071
    :cond_72
    :goto_50
    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2072
    .line 2073
    iput-object v9, v0, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuation:Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 2074
    .line 2075
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2076
    .line 2077
    .line 2078
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2079
    .line 2080
    :goto_51
    return-object v9

    .line 2081
    :goto_52
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2082
    .line 2083
    .line 2084
    throw v0

    .line 2085
    :pswitch_1b
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 2086
    .line 2087
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 2088
    .line 2089
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2090
    .line 2091
    iget v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 2092
    .line 2093
    if-eqz v2, :cond_74

    .line 2094
    .line 2095
    if-ne v2, v8, :cond_73

    .line 2096
    .line 2097
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2098
    .line 2099
    .line 2100
    goto :goto_53

    .line 2101
    :cond_73
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2102
    .line 2103
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2104
    .line 2105
    .line 2106
    goto :goto_54

    .line 2107
    :cond_74
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2108
    .line 2109
    .line 2110
    iget-object v2, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2111
    .line 2112
    check-cast v2, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 2113
    .line 2114
    new-instance v3, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 2115
    .line 2116
    invoke-direct {v3, v8, v0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 2117
    .line 2118
    .line 2119
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 2120
    .line 2121
    .line 2122
    move-result-object v3

    .line 2123
    new-instance v5, Landroidx/paging/FlowExtKt$simpleScan$1$1;

    .line 2124
    .line 2125
    iget-object v6, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 2126
    .line 2127
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 2128
    .line 2129
    invoke-direct {v5, v2, v0, v6, v8}, Landroidx/paging/FlowExtKt$simpleScan$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2130
    .line 2131
    .line 2132
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 2133
    .line 2134
    invoke-virtual {v3, v5, v4}, Lkotlinx/coroutines/flow/SafeFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v0

    .line 2138
    if-ne v0, v1, :cond_75

    .line 2139
    .line 2140
    move-object v9, v1

    .line 2141
    goto :goto_54

    .line 2142
    :cond_75
    :goto_53
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2143
    .line 2144
    :goto_54
    return-object v9

    .line 2145
    :pswitch_1c
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->this$0:Ljava/lang/Object;

    .line 2146
    .line 2147
    check-cast v0, Landroidx/paging/HintHandler;

    .line 2148
    .line 2149
    iget-object v0, v0, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 2150
    .line 2151
    move-object v2, v0

    .line 2152
    check-cast v2, Lcom/caverock/androidsvg/SVG;

    .line 2153
    .line 2154
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2155
    .line 2156
    iget v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 2157
    .line 2158
    if-eqz v0, :cond_7b

    .line 2159
    .line 2160
    if-eq v0, v8, :cond_79

    .line 2161
    .line 2162
    if-eq v0, v7, :cond_78

    .line 2163
    .line 2164
    if-eq v0, v6, :cond_77

    .line 2165
    .line 2166
    if-eq v0, v1, :cond_76

    .line 2167
    .line 2168
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2169
    .line 2170
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2171
    .line 2172
    .line 2173
    goto/16 :goto_5b

    .line 2174
    .line 2175
    :cond_76
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2176
    .line 2177
    check-cast v0, Ljava/lang/Throwable;

    .line 2178
    .line 2179
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2180
    .line 2181
    .line 2182
    goto/16 :goto_59

    .line 2183
    .line 2184
    :cond_77
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2185
    .line 2186
    .line 2187
    goto/16 :goto_5a

    .line 2188
    .line 2189
    :cond_78
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2190
    .line 2191
    move-object v5, v0

    .line 2192
    check-cast v5, Lkotlinx/coroutines/Job;

    .line 2193
    .line 2194
    :try_start_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 2195
    .line 2196
    .line 2197
    goto :goto_56

    .line 2198
    :catchall_8
    move-exception v0

    .line 2199
    goto :goto_57

    .line 2200
    :cond_79
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2201
    .line 2202
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 2203
    .line 2204
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2205
    .line 2206
    .line 2207
    move-object/from16 v5, p1

    .line 2208
    .line 2209
    :cond_7a
    move-object v8, v0

    .line 2210
    goto :goto_55

    .line 2211
    :cond_7b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2212
    .line 2213
    .line 2214
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2215
    .line 2216
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 2217
    .line 2218
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v0

    .line 2222
    sget-object v5, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 2223
    .line 2224
    invoke-interface {v0, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v0

    .line 2228
    if-eqz v0, :cond_7f

    .line 2229
    .line 2230
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 2231
    .line 2232
    iput-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2233
    .line 2234
    iput v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 2235
    .line 2236
    invoke-virtual {v2, v0, v4}, Lcom/caverock/androidsvg/SVG;->tryEnqueue(Lkotlinx/coroutines/Job;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v5

    .line 2240
    if-ne v5, v3, :cond_7a

    .line 2241
    .line 2242
    goto :goto_58

    .line 2243
    :goto_55
    check-cast v5, Ljava/lang/Boolean;

    .line 2244
    .line 2245
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2246
    .line 2247
    .line 2248
    move-result v0

    .line 2249
    if-eqz v0, :cond_7e

    .line 2250
    .line 2251
    :try_start_f
    iget-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->$block:Ljava/lang/Object;

    .line 2252
    .line 2253
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 2254
    .line 2255
    iput-object v8, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2256
    .line 2257
    iput v7, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 2258
    .line 2259
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    .line 2261
    .line 2262
    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 2263
    if-ne v0, v3, :cond_7c

    .line 2264
    .line 2265
    goto :goto_58

    .line 2266
    :cond_7c
    move-object v5, v8

    .line 2267
    :goto_56
    iput-object v9, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2268
    .line 2269
    iput v6, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 2270
    .line 2271
    invoke-virtual {v2, v5, v4}, Lcom/caverock/androidsvg/SVG;->onFinish(Lkotlinx/coroutines/Job;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v0

    .line 2275
    if-ne v0, v3, :cond_7e

    .line 2276
    .line 2277
    goto :goto_58

    .line 2278
    :catchall_9
    move-exception v0

    .line 2279
    move-object v5, v8

    .line 2280
    :goto_57
    iput-object v0, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->L$0:Ljava/lang/Object;

    .line 2281
    .line 2282
    iput v1, v4, Landroidx/paging/SingleRunner$runInIsolation$2;->label:I

    .line 2283
    .line 2284
    invoke-virtual {v2, v5, v4}, Lcom/caverock/androidsvg/SVG;->onFinish(Lkotlinx/coroutines/Job;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2285
    .line 2286
    .line 2287
    move-result-object v1

    .line 2288
    if-ne v1, v3, :cond_7d

    .line 2289
    .line 2290
    :goto_58
    move-object v9, v3

    .line 2291
    goto :goto_5b

    .line 2292
    :cond_7d
    :goto_59
    throw v0

    .line 2293
    :cond_7e
    :goto_5a
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2294
    .line 2295
    goto :goto_5b

    .line 2296
    :cond_7f
    const-string v0, "Internal error. coroutineScope should\'ve created a job."

    .line 2297
    .line 2298
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2299
    .line 2300
    .line 2301
    :goto_5b
    return-object v9

    .line 2302
    nop

    .line 2303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
