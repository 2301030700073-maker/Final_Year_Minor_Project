.class public final Lkotlinx/coroutines/JobSupport$children$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lkotlinx/coroutines/JobSupport$children$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/JobSupport$children$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lkotlinx/coroutines/JobSupport$children$1;

    .line 9
    .line 10
    check-cast p0, Ljava/util/Iterator;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, p2, v1}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Lkotlinx/coroutines/JobSupport$children$1;

    .line 20
    .line 21
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, p0, p2, v1}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/JobSupport$children$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport$children$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lkotlinx/coroutines/JobSupport$children$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport$children$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport$children$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lkotlinx/coroutines/JobSupport$children$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport$children$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkotlinx/coroutines/JobSupport$children$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x0

    .line 14
    iget-object v8, v0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v8, Ljava/util/Iterator;

    .line 21
    .line 22
    iget-object v1, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 25
    .line 26
    iget v10, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    .line 27
    .line 28
    const/16 v11, 0x1f4

    .line 29
    .line 30
    if-eqz v10, :cond_c

    .line 31
    .line 32
    if-eq v10, v5, :cond_b

    .line 33
    .line 34
    if-eq v10, v6, :cond_a

    .line 35
    .line 36
    const/4 v6, 0x5

    .line 37
    const/4 v7, 0x4

    .line 38
    const/4 v8, 0x3

    .line 39
    if-eq v10, v8, :cond_2

    .line 40
    .line 41
    if-eq v10, v7, :cond_1

    .line 42
    .line 43
    if-ne v10, v6, :cond_0

    .line 44
    .line 45
    iget-object v0, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lkotlin/collections/RingBuffer;

    .line 48
    .line 49
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_8

    .line 53
    .line 54
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    move-object v2, v9

    .line 58
    goto/16 :goto_8

    .line 59
    .line 60
    :cond_1
    iget v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 61
    .line 62
    iget v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 63
    .line 64
    iget-object v8, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v8, Lkotlin/collections/RingBuffer;

    .line 67
    .line 68
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Lkotlin/collections/RingBuffer;->removeFirst()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_2
    iget v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 77
    .line 78
    iget v10, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 79
    .line 80
    iget-object v12, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v12, Ljava/util/Iterator;

    .line 83
    .line 84
    iget-object v13, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v13, Lkotlin/collections/RingBuffer;

    .line 87
    .line 88
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v13}, Lkotlin/collections/RingBuffer;->removeFirst()V

    .line 92
    .line 93
    .line 94
    :goto_2
    iget v14, v13, Lkotlin/collections/RingBuffer;->capacity:I

    .line 95
    .line 96
    iget-object v15, v13, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    .line 97
    .line 98
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v16

    .line 102
    if-eqz v16, :cond_8

    .line 103
    .line 104
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v16

    .line 108
    move/from16 v17, v5

    .line 109
    .line 110
    invoke-virtual {v13}, Lkotlin/collections/RingBuffer;->getSize()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eq v5, v14, :cond_7

    .line 115
    .line 116
    iget v5, v13, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 117
    .line 118
    iget v6, v13, Lkotlin/collections/RingBuffer;->size:I

    .line 119
    .line 120
    add-int/2addr v5, v6

    .line 121
    rem-int/2addr v5, v14

    .line 122
    aput-object v16, v15, v5

    .line 123
    .line 124
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    iput v6, v13, Lkotlin/collections/RingBuffer;->size:I

    .line 127
    .line 128
    invoke-virtual {v13}, Lkotlin/collections/RingBuffer;->getSize()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-ne v5, v14, :cond_5

    .line 133
    .line 134
    iget v5, v13, Lkotlin/collections/RingBuffer;->size:I

    .line 135
    .line 136
    if-ge v5, v11, :cond_6

    .line 137
    .line 138
    shr-int/lit8 v5, v14, 0x1

    .line 139
    .line 140
    add-int/2addr v14, v5

    .line 141
    add-int/lit8 v14, v14, 0x1

    .line 142
    .line 143
    if-le v14, v11, :cond_3

    .line 144
    .line 145
    move v14, v11

    .line 146
    :cond_3
    iget v5, v13, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 147
    .line 148
    if-nez v5, :cond_4

    .line 149
    .line 150
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    goto :goto_3

    .line 155
    :cond_4
    new-array v5, v14, [Ljava/lang/Object;

    .line 156
    .line 157
    invoke-virtual {v13, v5}, Lkotlin/collections/RingBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    :goto_3
    new-instance v6, Lkotlin/collections/RingBuffer;

    .line 162
    .line 163
    iget v13, v13, Lkotlin/collections/RingBuffer;->size:I

    .line 164
    .line 165
    invoke-direct {v6, v13, v5}, Lkotlin/collections/RingBuffer;-><init>(I[Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    move-object v13, v6

    .line 169
    :cond_5
    move/from16 v5, v17

    .line 170
    .line 171
    const/4 v6, 0x5

    .line 172
    goto :goto_2

    .line 173
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    .line 177
    .line 178
    iput-object v1, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v13, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object v12, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    .line 183
    .line 184
    iput v10, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 185
    .line 186
    iput v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 187
    .line 188
    iput v8, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    .line 189
    .line 190
    invoke-virtual {v1, v2, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    move-object v2, v4

    .line 194
    goto/16 :goto_8

    .line 195
    .line 196
    :cond_7
    const-string v0, "ring buffer is full"

    .line 197
    .line 198
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_8
    move v5, v10

    .line 204
    move-object v8, v13

    .line 205
    :goto_5
    iget v6, v8, Lkotlin/collections/RingBuffer;->size:I

    .line 206
    .line 207
    if-le v6, v11, :cond_9

    .line 208
    .line 209
    new-instance v2, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .line 213
    .line 214
    iput-object v1, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    .line 215
    .line 216
    iput-object v8, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 217
    .line 218
    iput-object v9, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    .line 219
    .line 220
    iput v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 221
    .line 222
    iput v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 223
    .line 224
    iput v7, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    .line 225
    .line 226
    invoke-virtual {v1, v2, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_9
    invoke-virtual {v8}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-nez v6, :cond_10

    .line 235
    .line 236
    iput-object v9, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v9, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 239
    .line 240
    iput-object v9, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    .line 241
    .line 242
    iput v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 243
    .line 244
    iput v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 245
    .line 246
    const/4 v2, 0x5

    .line 247
    iput v2, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    .line 248
    .line 249
    invoke-virtual {v1, v8, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_a
    iget-object v0, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Ljava/util/ArrayList;

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_b
    move/from16 v17, v5

    .line 260
    .line 261
    iget v7, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 262
    .line 263
    iget v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 264
    .line 265
    iget-object v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    .line 266
    .line 267
    move-object v8, v5

    .line 268
    check-cast v8, Ljava/util/Iterator;

    .line 269
    .line 270
    iget-object v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v5, Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    new-instance v5, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    .line 281
    .line 282
    move-object v10, v8

    .line 283
    :goto_6
    move v8, v7

    .line 284
    goto :goto_7

    .line 285
    :cond_c
    move/from16 v17, v5

    .line 286
    .line 287
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    new-instance v5, Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .line 294
    .line 295
    move-object v10, v8

    .line 296
    move v3, v11

    .line 297
    goto :goto_6

    .line 298
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    if-eqz v12, :cond_f

    .line 303
    .line 304
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    if-lez v7, :cond_d

    .line 309
    .line 310
    add-int/lit8 v7, v7, -0x1

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_d
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    if-ne v12, v11, :cond_e

    .line 321
    .line 322
    iput-object v1, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    .line 323
    .line 324
    iput-object v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 325
    .line 326
    iput-object v10, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    .line 327
    .line 328
    iput v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 329
    .line 330
    iput v8, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 331
    .line 332
    move/from16 v2, v17

    .line 333
    .line 334
    iput v2, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    .line 335
    .line 336
    invoke-virtual {v1, v5, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_4

    .line 340
    .line 341
    :cond_e
    const/16 v17, 0x1

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_f
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    if-nez v7, :cond_10

    .line 349
    .line 350
    iput-object v9, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    .line 351
    .line 352
    iput-object v9, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 353
    .line 354
    iput-object v9, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    .line 355
    .line 356
    iput v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 357
    .line 358
    iput v8, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 359
    .line 360
    iput v6, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    .line 361
    .line 362
    invoke-virtual {v1, v5, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_4

    .line 366
    .line 367
    :cond_10
    :goto_8
    return-object v2

    .line 368
    :pswitch_0
    iget-object v1, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 371
    .line 372
    iget v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    .line 373
    .line 374
    if-eqz v5, :cond_13

    .line 375
    .line 376
    const/4 v10, 0x1

    .line 377
    if-eq v5, v10, :cond_12

    .line 378
    .line 379
    if-ne v5, v6, :cond_11

    .line 380
    .line 381
    iget v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 382
    .line 383
    iget v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 384
    .line 385
    iget-object v7, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v7, Lkotlinx/coroutines/ChildHandleNode;

    .line 388
    .line 389
    iget-object v8, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v8, Lkotlinx/coroutines/NodeList;

    .line 392
    .line 393
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    move/from16 v18, v5

    .line 397
    .line 398
    move v5, v3

    .line 399
    move/from16 v3, v18

    .line 400
    .line 401
    goto :goto_b

    .line 402
    :cond_11
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    move-object v2, v9

    .line 406
    goto :goto_c

    .line 407
    :cond_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    check-cast v8, Lkotlinx/coroutines/JobSupport;

    .line 415
    .line 416
    invoke-virtual {v8}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    instance-of v5, v3, Lkotlinx/coroutines/ChildHandleNode;

    .line 421
    .line 422
    if-eqz v5, :cond_14

    .line 423
    .line 424
    check-cast v3, Lkotlinx/coroutines/ChildHandleNode;

    .line 425
    .line 426
    iget-object v2, v3, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/JobSupport;

    .line 427
    .line 428
    iput-object v9, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 429
    .line 430
    const/4 v10, 0x1

    .line 431
    iput v10, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    .line 432
    .line 433
    invoke-virtual {v1, v2, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 434
    .line 435
    .line 436
    :goto_9
    move-object v2, v4

    .line 437
    goto :goto_c

    .line 438
    :cond_14
    instance-of v5, v3, Lkotlinx/coroutines/Incomplete;

    .line 439
    .line 440
    if-eqz v5, :cond_16

    .line 441
    .line 442
    check-cast v3, Lkotlinx/coroutines/Incomplete;

    .line 443
    .line 444
    invoke-interface {v3}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    if-eqz v3, :cond_16

    .line 449
    .line 450
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    check-cast v5, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 458
    .line 459
    move-object v8, v3

    .line 460
    move v3, v7

    .line 461
    move-object v7, v5

    .line 462
    move v5, v3

    .line 463
    :goto_a
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v9

    .line 467
    if-nez v9, :cond_16

    .line 468
    .line 469
    instance-of v9, v7, Lkotlinx/coroutines/ChildHandleNode;

    .line 470
    .line 471
    if-eqz v9, :cond_15

    .line 472
    .line 473
    check-cast v7, Lkotlinx/coroutines/ChildHandleNode;

    .line 474
    .line 475
    iget-object v2, v7, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/JobSupport;

    .line 476
    .line 477
    iput-object v1, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    .line 478
    .line 479
    iput-object v8, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    .line 480
    .line 481
    iput-object v7, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    .line 482
    .line 483
    iput v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$0:I

    .line 484
    .line 485
    iput v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->I$1:I

    .line 486
    .line 487
    iput v6, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    .line 488
    .line 489
    invoke-virtual {v1, v2, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 490
    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_15
    :goto_b
    invoke-virtual {v7}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    goto :goto_a

    .line 498
    :cond_16
    :goto_c
    return-object v2

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
