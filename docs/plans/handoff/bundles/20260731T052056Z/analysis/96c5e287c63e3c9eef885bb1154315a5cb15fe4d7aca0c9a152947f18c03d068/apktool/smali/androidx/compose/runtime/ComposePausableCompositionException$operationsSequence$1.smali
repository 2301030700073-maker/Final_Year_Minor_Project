.class public final Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/runtime/ComposePausableCompositionException;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ComposePausableCompositionException;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->this$0:Landroidx/compose/runtime/ComposePausableCompositionException;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->this$0:Landroidx/compose/runtime/ComposePausableCompositionException;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;-><init>(Landroidx/compose/runtime/ComposePausableCompositionException;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->this$0:Landroidx/compose/runtime/ComposePausableCompositionException;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/runtime/ComposePausableCompositionException;->instances:Landroidx/collection/MutableObjectList;

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/compose/runtime/ComposePausableCompositionException;->operations:Landroidx/collection/MutableIntList;

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    iget v5, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->label:I

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    if-ne v5, v6, :cond_0

    .line 17
    .line 18
    iget v5, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->I$2:I

    .line 19
    .line 20
    iget v7, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->I$1:I

    .line 21
    .line 22
    iget v8, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->I$0:I

    .line 23
    .line 24
    iget-object v9, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v9, Lkotlin/sequences/SequenceBuilderIterator;

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    move/from16 v16, v6

    .line 32
    .line 33
    move v6, v5

    .line 34
    move v5, v7

    .line 35
    move/from16 v7, v16

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    return-object v0

    .line 46
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v5, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Lkotlin/sequences/SequenceBuilderIterator;

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v9, v5

    .line 55
    move v5, v7

    .line 56
    move v8, v5

    .line 57
    :goto_0
    iget v10, v1, Landroidx/compose/runtime/ComposePausableCompositionException;->lastOperation:I

    .line 58
    .line 59
    add-int/lit8 v10, v10, 0xa

    .line 60
    .line 61
    iget v11, v3, Landroidx/collection/MutableIntList;->_size:I

    .line 62
    .line 63
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-ge v7, v10, :cond_3

    .line 68
    .line 69
    add-int/lit8 v10, v7, 0x1

    .line 70
    .line 71
    invoke-virtual {v3, v7}, Landroidx/collection/MutableIntList;->get(I)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    const/16 v12, 0x20

    .line 76
    .line 77
    packed-switch v11, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    const-string/jumbo v12, "unknown op: "

    .line 81
    .line 82
    .line 83
    invoke-static {v11, v12}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    :goto_1
    move v13, v5

    .line 88
    :goto_2
    move v5, v8

    .line 89
    move v8, v10

    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :pswitch_0
    const-string v11, "recompose pending"

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v12, "reuse "

    .line 98
    .line 99
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v12, v1, Landroidx/compose/runtime/ComposePausableCompositionException;->reused:Landroidx/collection/MutableObjectList;

    .line 103
    .line 104
    add-int/lit8 v13, v8, 0x1

    .line 105
    .line 106
    invoke-virtual {v12, v8}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    move v8, v13

    .line 118
    goto :goto_1

    .line 119
    :pswitch_2
    invoke-virtual {v2, v5}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const/4 v12, 0x2

    .line 127
    invoke-static {v12, v11}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 131
    .line 132
    add-int/lit8 v5, v5, 0x2

    .line 133
    .line 134
    new-instance v12, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v13, "apply "

    .line 137
    .line 138
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    goto :goto_1

    .line 149
    :pswitch_3
    add-int/lit8 v11, v7, 0x2

    .line 150
    .line 151
    invoke-virtual {v3, v10}, Landroidx/collection/MutableIntList;->get(I)I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    add-int/lit8 v13, v5, 0x1

    .line 156
    .line 157
    invoke-virtual {v2, v5}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    new-instance v14, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v15, "insertTopDown "

    .line 164
    .line 165
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    :goto_3
    move/from16 v16, v11

    .line 182
    .line 183
    move-object v11, v5

    .line 184
    move v5, v8

    .line 185
    move/from16 v8, v16

    .line 186
    .line 187
    goto/16 :goto_4

    .line 188
    .line 189
    :pswitch_4
    add-int/lit8 v11, v7, 0x2

    .line 190
    .line 191
    invoke-virtual {v3, v10}, Landroidx/collection/MutableIntList;->get(I)I

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    add-int/lit8 v13, v5, 0x1

    .line 196
    .line 197
    invoke-virtual {v2, v5}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    new-instance v14, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v15, "insertBottomUp "

    .line 204
    .line 205
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    goto :goto_3

    .line 222
    :pswitch_5
    const-string v11, "clear"

    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :pswitch_6
    add-int/lit8 v11, v7, 0x2

    .line 227
    .line 228
    invoke-virtual {v3, v10}, Landroidx/collection/MutableIntList;->get(I)I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    add-int/lit8 v13, v7, 0x3

    .line 233
    .line 234
    invoke-virtual {v3, v11}, Landroidx/collection/MutableIntList;->get(I)I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    add-int/lit8 v14, v7, 0x4

    .line 239
    .line 240
    invoke-virtual {v3, v13}, Landroidx/collection/MutableIntList;->get(I)I

    .line 241
    .line 242
    .line 243
    move-result v13

    .line 244
    new-instance v15, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v6, "move "

    .line 247
    .line 248
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    move v13, v5

    .line 271
    move v5, v8

    .line 272
    move v8, v14

    .line 273
    goto :goto_4

    .line 274
    :pswitch_7
    add-int/lit8 v6, v7, 0x2

    .line 275
    .line 276
    invoke-virtual {v3, v10}, Landroidx/collection/MutableIntList;->get(I)I

    .line 277
    .line 278
    .line 279
    move-result v10

    .line 280
    add-int/lit8 v11, v7, 0x3

    .line 281
    .line 282
    invoke-virtual {v3, v6}, Landroidx/collection/MutableIntList;->get(I)I

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    new-instance v13, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v14, "remove "

    .line 289
    .line 290
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    move v13, v5

    .line 307
    move v5, v8

    .line 308
    move v8, v11

    .line 309
    move-object v11, v6

    .line 310
    goto :goto_4

    .line 311
    :pswitch_8
    add-int/lit8 v6, v5, 0x1

    .line 312
    .line 313
    invoke-virtual {v2, v5}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    new-instance v11, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v12, "down "

    .line 320
    .line 321
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    move v13, v6

    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :pswitch_9
    const-string/jumbo v11, "up"

    .line 335
    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v7, ": "

    .line 348
    .line 349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    iput-object v9, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->L$0:Ljava/lang/Object;

    .line 360
    .line 361
    iput v8, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->I$0:I

    .line 362
    .line 363
    iput v13, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->I$1:I

    .line 364
    .line 365
    iput v5, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->I$2:I

    .line 366
    .line 367
    const/4 v7, 0x1

    .line 368
    iput v7, v0, Landroidx/compose/runtime/ComposePausableCompositionException$operationsSequence$1;->label:I

    .line 369
    .line 370
    invoke-virtual {v9, v6, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    if-ne v6, v4, :cond_2

    .line 375
    .line 376
    return-object v4

    .line 377
    :cond_2
    move v6, v5

    .line 378
    move v5, v13

    .line 379
    :goto_5
    move/from16 v16, v8

    .line 380
    .line 381
    move v8, v6

    .line 382
    move v6, v7

    .line 383
    move/from16 v7, v16

    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 388
    .line 389
    return-object v0

    .line 390
    nop

    .line 391
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
