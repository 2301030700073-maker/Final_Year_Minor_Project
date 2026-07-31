.class public final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $iterator:Ljava/util/Iterator;

.field public final synthetic $size:I

.field public final synthetic $step:I

.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/util/Iterator;

.field public label:I


# direct methods
.method public constructor <init>(IILjava/util/Iterator;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 2
    .line 3
    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    .line 4
    .line 5
    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    .line 2
    .line 3
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    .line 4
    .line 5
    iget-object v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    .line 6
    .line 7
    iget p0, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
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
    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x3

    .line 14
    const/4 v7, 0x2

    .line 15
    iget v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    iget v10, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    if-eqz v3, :cond_6

    .line 22
    .line 23
    if-eq v3, v9, :cond_4

    .line 24
    .line 25
    if-eq v3, v7, :cond_3

    .line 26
    .line 27
    if-eq v3, v6, :cond_2

    .line 28
    .line 29
    if-eq v3, v5, :cond_1

    .line 30
    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    iget-object v0, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lkotlin/collections/RingBuffer;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v11

    .line 44
    :cond_1
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .line 45
    .line 46
    iget v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 47
    .line 48
    iget-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v7, Lkotlin/collections/RingBuffer;

    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_9

    .line 56
    .line 57
    :cond_2
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .line 58
    .line 59
    iget v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 60
    .line 61
    iget-object v12, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/util/Iterator;

    .line 62
    .line 63
    iget-object v13, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v13, Lkotlin/collections/RingBuffer;

    .line 66
    .line 67
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move/from16 v17, v9

    .line 71
    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_3
    iget-object v0, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_b

    .line 82
    .line 83
    :cond_4
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .line 84
    .line 85
    iget v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 86
    .line 87
    iget-object v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/util/Iterator;

    .line 88
    .line 89
    iget-object v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v6, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v13, v5

    .line 97
    move v5, v4

    .line 98
    :cond_5
    move v14, v3

    .line 99
    goto :goto_3

    .line 100
    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    const/16 v3, 0x400

    .line 104
    .line 105
    if-le v10, v3, :cond_7

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_7
    move v3, v10

    .line 109
    :goto_1
    sub-int v12, v8, v10

    .line 110
    .line 111
    iget-object v13, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    .line 112
    .line 113
    const/4 v14, 0x0

    .line 114
    if-ltz v12, :cond_b

    .line 115
    .line 116
    new-instance v4, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    move v5, v3

    .line 122
    move v3, v12

    .line 123
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_a

    .line 128
    .line 129
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    if-lez v14, :cond_9

    .line 134
    .line 135
    add-int/lit8 v14, v14, -0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_9
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-ne v6, v10, :cond_8

    .line 146
    .line 147
    iput-object v1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object v13, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/util/Iterator;

    .line 152
    .line 153
    iput v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 154
    .line 155
    iput v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .line 156
    .line 157
    iput v9, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 158
    .line 159
    invoke-virtual {v1, v4, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-ne v4, v2, :cond_5

    .line 164
    .line 165
    goto/16 :goto_a

    .line 166
    .line 167
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .line 171
    .line 172
    move v3, v14

    .line 173
    goto :goto_2

    .line 174
    :cond_a
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_15

    .line 179
    .line 180
    iput-object v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/util/Iterator;

    .line 185
    .line 186
    iput v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 187
    .line 188
    iput v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .line 189
    .line 190
    iput v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 191
    .line 192
    invoke-virtual {v1, v4, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-ne v0, v2, :cond_15

    .line 197
    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :cond_b
    new-instance v7, Lkotlin/collections/RingBuffer;

    .line 201
    .line 202
    new-array v15, v3, [Ljava/lang/Object;

    .line 203
    .line 204
    invoke-direct {v7, v14, v15}, Lkotlin/collections/RingBuffer;-><init>(I[Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    move-object/from16 v18, v7

    .line 208
    .line 209
    move v7, v3

    .line 210
    move v3, v12

    .line 211
    move-object v12, v13

    .line 212
    move-object/from16 v13, v18

    .line 213
    .line 214
    :goto_4
    iget v14, v13, Lkotlin/collections/RingBuffer;->capacity:I

    .line 215
    .line 216
    iget-object v15, v13, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    .line 217
    .line 218
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v16

    .line 222
    if-eqz v16, :cond_12

    .line 223
    .line 224
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v16

    .line 228
    move/from16 v17, v9

    .line 229
    .line 230
    invoke-virtual {v13}, Lkotlin/collections/RingBuffer;->getSize()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-eq v9, v14, :cond_11

    .line 235
    .line 236
    iget v9, v13, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 237
    .line 238
    iget v4, v13, Lkotlin/collections/RingBuffer;->size:I

    .line 239
    .line 240
    add-int/2addr v9, v4

    .line 241
    rem-int/2addr v9, v14

    .line 242
    aput-object v16, v15, v9

    .line 243
    .line 244
    add-int/lit8 v4, v4, 0x1

    .line 245
    .line 246
    iput v4, v13, Lkotlin/collections/RingBuffer;->size:I

    .line 247
    .line 248
    invoke-virtual {v13}, Lkotlin/collections/RingBuffer;->getSize()I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-ne v4, v14, :cond_e

    .line 253
    .line 254
    iget v4, v13, Lkotlin/collections/RingBuffer;->size:I

    .line 255
    .line 256
    if-ge v4, v10, :cond_f

    .line 257
    .line 258
    shr-int/lit8 v4, v14, 0x1

    .line 259
    .line 260
    add-int/2addr v14, v4

    .line 261
    add-int/lit8 v14, v14, 0x1

    .line 262
    .line 263
    if-le v14, v10, :cond_c

    .line 264
    .line 265
    move v14, v10

    .line 266
    :cond_c
    iget v4, v13, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 267
    .line 268
    if-nez v4, :cond_d

    .line 269
    .line 270
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    goto :goto_5

    .line 275
    :cond_d
    new-array v4, v14, [Ljava/lang/Object;

    .line 276
    .line 277
    invoke-virtual {v13, v4}, Lkotlin/collections/RingBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    :goto_5
    new-instance v9, Lkotlin/collections/RingBuffer;

    .line 282
    .line 283
    iget v13, v13, Lkotlin/collections/RingBuffer;->size:I

    .line 284
    .line 285
    invoke-direct {v9, v13, v4}, Lkotlin/collections/RingBuffer;-><init>(I[Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    move-object v13, v9

    .line 289
    :cond_e
    :goto_6
    move/from16 v9, v17

    .line 290
    .line 291
    const/4 v4, 0x5

    .line 292
    goto :goto_4

    .line 293
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    .line 297
    .line 298
    iput-object v1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 299
    .line 300
    iput-object v13, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 301
    .line 302
    iput-object v12, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/util/Iterator;

    .line 303
    .line 304
    iput v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 305
    .line 306
    iput v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .line 307
    .line 308
    iput v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 309
    .line 310
    invoke-virtual {v1, v4, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    if-ne v4, v2, :cond_10

    .line 315
    .line 316
    goto :goto_a

    .line 317
    :cond_10
    :goto_7
    invoke-virtual {v13, v8}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_11
    const-string v0, "ring buffer is full"

    .line 322
    .line 323
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return-object v11

    .line 327
    :cond_12
    move v6, v7

    .line 328
    move-object v7, v13

    .line 329
    :goto_8
    iget v4, v7, Lkotlin/collections/RingBuffer;->size:I

    .line 330
    .line 331
    if-le v4, v8, :cond_14

    .line 332
    .line 333
    new-instance v4, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 336
    .line 337
    .line 338
    iput-object v1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 339
    .line 340
    iput-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 341
    .line 342
    iput-object v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/util/Iterator;

    .line 343
    .line 344
    iput v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 345
    .line 346
    iput v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .line 347
    .line 348
    iput v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 349
    .line 350
    invoke-virtual {v1, v4, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    if-ne v4, v2, :cond_13

    .line 355
    .line 356
    goto :goto_a

    .line 357
    :cond_13
    :goto_9
    invoke-virtual {v7, v8}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 358
    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_14
    invoke-virtual {v7}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    if-nez v4, :cond_15

    .line 366
    .line 367
    iput-object v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    .line 368
    .line 369
    iput-object v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    .line 370
    .line 371
    iput-object v11, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/util/Iterator;

    .line 372
    .line 373
    iput v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .line 374
    .line 375
    iput v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .line 376
    .line 377
    const/4 v3, 0x5

    .line 378
    iput v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    .line 379
    .line 380
    invoke-virtual {v1, v7, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-ne v0, v2, :cond_15

    .line 385
    .line 386
    :goto_a
    return-object v2

    .line 387
    :cond_15
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 388
    .line 389
    return-object v0
.end method
