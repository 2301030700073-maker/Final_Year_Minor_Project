.class public final Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public I$0:I

.field public I$1:I

.field public J$0:J

.field public J$1:J

.field public J$2:J

.field public J$3:J

.field public J$4:J

.field public L$0:Ljava/util/List;

.field public L$1:Ljava/io/Serializable;

.field public L$2:Ljava/util/List;

.field public L$3:Lj$/time/LocalDateTime;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/activitytab/ActivityTabViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->this$0:Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->this$0:Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->this$0:Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 4
    .line 5
    iget-object v1, v1, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_readingHistoryState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    packed-switch v3, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v10

    .line 21
    :pswitch_0
    iget v2, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$1:I

    .line 22
    .line 23
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 24
    .line 25
    iget-wide v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 26
    .line 27
    iget-object v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$3:Lj$/time/LocalDateTime;

    .line 28
    .line 29
    iget-object v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$2:Ljava/util/List;

    .line 30
    .line 31
    iget-object v9, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 32
    .line 33
    check-cast v9, Lj$/time/LocalDateTime;

    .line 34
    .line 35
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v18, v1

    .line 41
    .line 42
    move v7, v2

    .line 43
    move-object/from16 v30, v0

    .line 44
    .line 45
    move-object/from16 v0, p1

    .line 46
    .line 47
    move-object/from16 v31, v6

    .line 48
    .line 49
    move-object/from16 v6, v30

    .line 50
    .line 51
    move-wide/from16 v32, v4

    .line 52
    .line 53
    move v4, v3

    .line 54
    move-wide/from16 v2, v32

    .line 55
    .line 56
    move-object v5, v9

    .line 57
    move-object v9, v8

    .line 58
    move-object/from16 v8, v31

    .line 59
    .line 60
    goto/16 :goto_13

    .line 61
    .line 62
    :pswitch_1
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$1:I

    .line 63
    .line 64
    iget v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 65
    .line 66
    iget-wide v11, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 67
    .line 68
    iget-wide v13, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 69
    .line 70
    iget-wide v5, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 71
    .line 72
    iget-wide v7, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 73
    .line 74
    iget-wide v9, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 75
    .line 76
    iget-object v15, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$2:Ljava/util/List;

    .line 77
    .line 78
    move/from16 v17, v3

    .line 79
    .line 80
    iget-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 81
    .line 82
    check-cast v3, Lj$/time/LocalDateTime;

    .line 83
    .line 84
    move-object/from16 v18, v3

    .line 85
    .line 86
    iget-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 87
    .line 88
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    move-object/from16 v16, p1

    .line 92
    .line 93
    move-object/from16 p1, v2

    .line 94
    .line 95
    move-object/from16 v30, v18

    .line 96
    .line 97
    move-object/from16 v18, v1

    .line 98
    .line 99
    move-wide v1, v11

    .line 100
    move-wide/from16 v31, v5

    .line 101
    .line 102
    move v5, v4

    .line 103
    move-wide/from16 v33, v7

    .line 104
    .line 105
    move-object v8, v15

    .line 106
    move-wide/from16 v6, v31

    .line 107
    .line 108
    move-wide/from16 v31, v9

    .line 109
    .line 110
    move-object/from16 v9, v30

    .line 111
    .line 112
    move-wide v10, v13

    .line 113
    move-wide/from16 v12, v33

    .line 114
    .line 115
    move-wide/from16 v14, v31

    .line 116
    .line 117
    goto/16 :goto_10

    .line 118
    .line 119
    :pswitch_2
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$1:I

    .line 120
    .line 121
    iget v5, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 122
    .line 123
    iget-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 124
    .line 125
    iget-wide v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 126
    .line 127
    iget-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 128
    .line 129
    iget-wide v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 130
    .line 131
    iget-wide v14, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 132
    .line 133
    iget-object v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 134
    .line 135
    check-cast v4, Lj$/time/LocalDateTime;

    .line 136
    .line 137
    move/from16 v18, v3

    .line 138
    .line 139
    iget-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 140
    .line 141
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    move-wide/from16 v19, v14

    .line 145
    .line 146
    move-wide v14, v6

    .line 147
    move-object v7, v2

    .line 148
    move/from16 v2, v18

    .line 149
    .line 150
    move-object/from16 v18, v1

    .line 151
    .line 152
    move-object/from16 v1, p1

    .line 153
    .line 154
    move-wide/from16 v30, v8

    .line 155
    .line 156
    move v8, v5

    .line 157
    move-wide v5, v10

    .line 158
    move-wide/from16 v10, v30

    .line 159
    .line 160
    goto/16 :goto_e

    .line 161
    .line 162
    :pswitch_3
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 163
    .line 164
    iget-wide v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 165
    .line 166
    iget-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 167
    .line 168
    iget-wide v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 169
    .line 170
    iget-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 171
    .line 172
    iget-wide v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 173
    .line 174
    iget-object v14, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 175
    .line 176
    check-cast v14, Lj$/time/LocalDateTime;

    .line 177
    .line 178
    iget-object v15, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 179
    .line 180
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    move-object/from16 v18, v1

    .line 184
    .line 185
    move-wide/from16 v30, v6

    .line 186
    .line 187
    move-object v7, v2

    .line 188
    move v6, v3

    .line 189
    move-wide v1, v12

    .line 190
    move-object v3, v15

    .line 191
    move-wide v12, v10

    .line 192
    move-wide/from16 v10, v30

    .line 193
    .line 194
    goto/16 :goto_c

    .line 195
    .line 196
    :pswitch_4
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 197
    .line 198
    iget-wide v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 199
    .line 200
    iget-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 201
    .line 202
    iget-wide v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 203
    .line 204
    iget-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 205
    .line 206
    iget-wide v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 207
    .line 208
    iget-object v14, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 209
    .line 210
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    move-wide/from16 v30, v8

    .line 214
    .line 215
    move-object v8, v14

    .line 216
    move-wide v14, v10

    .line 217
    move-wide v10, v6

    .line 218
    move-wide v6, v4

    .line 219
    move-wide v4, v12

    .line 220
    move-wide/from16 v12, v30

    .line 221
    .line 222
    move-object/from16 v18, v1

    .line 223
    .line 224
    move v1, v3

    .line 225
    move-object/from16 v3, p1

    .line 226
    .line 227
    goto/16 :goto_a

    .line 228
    .line 229
    :pswitch_5
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$1:I

    .line 230
    .line 231
    iget v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 232
    .line 233
    iget-wide v7, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 234
    .line 235
    iget-wide v9, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 236
    .line 237
    iget-wide v11, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 238
    .line 239
    iget-wide v13, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 240
    .line 241
    move-wide/from16 v18, v7

    .line 242
    .line 243
    iget-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 244
    .line 245
    iget-object v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 246
    .line 247
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    move-wide/from16 v21, v11

    .line 251
    .line 252
    const/4 v12, 0x1

    .line 253
    move-object v11, v8

    .line 254
    move-wide v7, v6

    .line 255
    move-wide/from16 v5, v18

    .line 256
    .line 257
    move-object/from16 v18, v1

    .line 258
    .line 259
    move-object/from16 v1, p1

    .line 260
    .line 261
    goto/16 :goto_9

    .line 262
    .line 263
    :pswitch_6
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 264
    .line 265
    iget-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 266
    .line 267
    iget-wide v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 268
    .line 269
    iget-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 270
    .line 271
    iget-wide v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 272
    .line 273
    iget-wide v14, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 274
    .line 275
    iget-object v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 276
    .line 277
    check-cast v4, Ljava/util/List;

    .line 278
    .line 279
    iget-object v5, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 280
    .line 281
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    move/from16 v19, v3

    .line 285
    .line 286
    move-object/from16 v3, p1

    .line 287
    .line 288
    goto/16 :goto_5

    .line 289
    .line 290
    :pswitch_7
    iget-wide v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 291
    .line 292
    iget-wide v5, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 293
    .line 294
    iget-wide v7, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 295
    .line 296
    iget-wide v9, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 297
    .line 298
    iget-wide v11, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 299
    .line 300
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    move-wide v14, v11

    .line 304
    move-wide v12, v9

    .line 305
    move-wide v10, v7

    .line 306
    move-wide v8, v5

    .line 307
    move-wide v6, v3

    .line 308
    move-object/from16 v4, p1

    .line 309
    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :pswitch_8
    iget-wide v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 313
    .line 314
    iget-wide v5, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 315
    .line 316
    iget-wide v7, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 317
    .line 318
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    move-wide v11, v3

    .line 322
    move-object/from16 v3, p1

    .line 323
    .line 324
    :cond_0
    move-wide v8, v7

    .line 325
    move-wide v6, v5

    .line 326
    goto :goto_2

    .line 327
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    goto :goto_1

    .line 331
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    sget-object v3, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 338
    .line 339
    const/4 v4, 0x0

    .line 340
    invoke-virtual {v1, v4, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    const/4 v3, 0x1

    .line 344
    iput v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 345
    .line 346
    const-wide/16 v3, 0x1f4

    .line 347
    .line 348
    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    if-ne v3, v2, :cond_1

    .line 353
    .line 354
    :goto_0
    move-object v7, v2

    .line 355
    goto/16 :goto_12

    .line 356
    .line 357
    :cond_1
    :goto_1
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v3, v4}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-interface {v3}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v3}, Lj$/time/Instant;->toEpochMilli()J

    .line 374
    .line 375
    .line 376
    move-result-wide v7

    .line 377
    const-wide/32 v5, 0x240c8400

    .line 378
    .line 379
    .line 380
    sub-long v11, v7, v5

    .line 381
    .line 382
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 383
    .line 384
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    iput-wide v7, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 393
    .line 394
    iput-wide v5, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 395
    .line 396
    iput-wide v11, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 397
    .line 398
    const/4 v4, 0x2

    .line 399
    iput v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 400
    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 402
    .line 403
    .line 404
    move-result-wide v13

    .line 405
    iget-object v3, v3, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 406
    .line 407
    new-instance v9, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 408
    .line 409
    const/4 v10, 0x5

    .line 410
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 411
    .line 412
    .line 413
    const/4 v4, 0x0

    .line 414
    const/4 v10, 0x1

    .line 415
    invoke-static {v3, v10, v4, v9, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    if-ne v3, v2, :cond_0

    .line 420
    .line 421
    goto :goto_0

    .line 422
    :goto_2
    check-cast v3, Ljava/lang/Number;

    .line 423
    .line 424
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 425
    .line 426
    .line 427
    move-result-wide v3

    .line 428
    const-wide v13, 0x9a7ec800L

    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    sub-long v13, v8, v13

    .line 434
    .line 435
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 436
    .line 437
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    iput-wide v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 446
    .line 447
    iput-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 448
    .line 449
    iput-wide v11, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 450
    .line 451
    iput-wide v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 452
    .line 453
    iput-wide v13, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 454
    .line 455
    const/4 v10, 0x3

    .line 456
    iput v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 457
    .line 458
    iget-object v10, v5, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 459
    .line 460
    new-instance v15, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 461
    .line 462
    const/4 v5, 0x4

    .line 463
    invoke-direct {v15, v13, v14, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JI)V

    .line 464
    .line 465
    .line 466
    move-wide/from16 v19, v3

    .line 467
    .line 468
    const/4 v3, 0x1

    .line 469
    const/4 v5, 0x0

    .line 470
    invoke-static {v10, v3, v5, v15, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    if-ne v4, v2, :cond_2

    .line 475
    .line 476
    goto :goto_0

    .line 477
    :cond_2
    move-wide v10, v11

    .line 478
    move-wide/from16 v30, v13

    .line 479
    .line 480
    move-wide v12, v6

    .line 481
    move-wide v14, v8

    .line 482
    move-wide/from16 v6, v30

    .line 483
    .line 484
    move-wide/from16 v8, v19

    .line 485
    .line 486
    :goto_3
    check-cast v4, Ljava/lang/Integer;

    .line 487
    .line 488
    if-eqz v4, :cond_3

    .line 489
    .line 490
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    goto :goto_4

    .line 495
    :cond_3
    const/4 v3, 0x0

    .line 496
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .line 500
    .line 501
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 502
    .line 503
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    iput-object v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 512
    .line 513
    iput-object v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 514
    .line 515
    iput-wide v14, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 516
    .line 517
    iput-wide v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 518
    .line 519
    iput-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 520
    .line 521
    iput-wide v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 522
    .line 523
    iput-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 524
    .line 525
    iput v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 526
    .line 527
    move/from16 v19, v3

    .line 528
    .line 529
    const/4 v3, 0x4

    .line 530
    iput v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 531
    .line 532
    iget-object v5, v5, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 533
    .line 534
    move-object/from16 p1, v4

    .line 535
    .line 536
    new-instance v4, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 537
    .line 538
    invoke-direct {v4, v10, v11, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JI)V

    .line 539
    .line 540
    .line 541
    move-object v3, v5

    .line 542
    move-wide/from16 v20, v6

    .line 543
    .line 544
    const/4 v5, 0x0

    .line 545
    const/4 v6, 0x1

    .line 546
    invoke-static {v3, v6, v5, v4, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    if-ne v3, v2, :cond_4

    .line 551
    .line 552
    goto/16 :goto_0

    .line 553
    .line 554
    :cond_4
    move-object/from16 v4, p1

    .line 555
    .line 556
    move-object v5, v4

    .line 557
    move-wide/from16 v6, v20

    .line 558
    .line 559
    :goto_5
    check-cast v3, Ljava/lang/Integer;

    .line 560
    .line 561
    if-eqz v3, :cond_5

    .line 562
    .line 563
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    :goto_6
    move-object/from16 p1, v5

    .line 568
    .line 569
    goto :goto_7

    .line 570
    :cond_5
    const/4 v3, 0x0

    .line 571
    goto :goto_6

    .line 572
    :goto_7
    new-instance v5, Ljava/lang/Integer;

    .line 573
    .line 574
    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 575
    .line 576
    .line 577
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-object/from16 v18, v1

    .line 581
    .line 582
    move-wide v4, v6

    .line 583
    move-wide v6, v14

    .line 584
    move/from16 v3, v19

    .line 585
    .line 586
    const/4 v15, 0x1

    .line 587
    move-wide v13, v12

    .line 588
    move-object/from16 v12, p1

    .line 589
    .line 590
    :goto_8
    const/4 v1, 0x4

    .line 591
    if-ge v15, v1, :cond_7

    .line 592
    .line 593
    sub-long/2addr v10, v13

    .line 594
    sget-object v19, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 595
    .line 596
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 597
    .line 598
    .line 599
    move-result-object v19

    .line 600
    invoke-virtual/range {v19 .. v19}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    add-long v23, v10, v13

    .line 605
    .line 606
    iput-object v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 607
    .line 608
    move-object/from16 v25, v12

    .line 609
    .line 610
    const/4 v12, 0x0

    .line 611
    iput-object v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 612
    .line 613
    iput-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 614
    .line 615
    iput-wide v13, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 616
    .line 617
    iput-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 618
    .line 619
    iput-wide v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 620
    .line 621
    iput-wide v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 622
    .line 623
    iput v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 624
    .line 625
    iput v15, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$1:I

    .line 626
    .line 627
    const/4 v12, 0x5

    .line 628
    iput v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 629
    .line 630
    iget-object v1, v1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 631
    .line 632
    new-instance v19, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 633
    .line 634
    const/16 v20, 0x4

    .line 635
    .line 636
    move-wide/from16 v21, v10

    .line 637
    .line 638
    invoke-direct/range {v19 .. v24}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 639
    .line 640
    .line 641
    move-object/from16 v10, v19

    .line 642
    .line 643
    const/4 v11, 0x0

    .line 644
    const/4 v12, 0x1

    .line 645
    invoke-static {v1, v12, v11, v10, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    if-ne v1, v2, :cond_6

    .line 650
    .line 651
    goto/16 :goto_0

    .line 652
    .line 653
    :cond_6
    move-wide v9, v8

    .line 654
    move-object/from16 v11, v25

    .line 655
    .line 656
    move-wide v7, v6

    .line 657
    move-wide v5, v4

    .line 658
    move v4, v3

    .line 659
    move v3, v15

    .line 660
    :goto_9
    check-cast v1, Ljava/lang/Number;

    .line 661
    .line 662
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    new-instance v15, Ljava/lang/Integer;

    .line 667
    .line 668
    invoke-direct {v15, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 669
    .line 670
    .line 671
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    add-int/lit8 v15, v3, 0x1

    .line 675
    .line 676
    move v3, v4

    .line 677
    move-wide v4, v5

    .line 678
    move-wide v6, v7

    .line 679
    move-wide v8, v9

    .line 680
    move-object v12, v11

    .line 681
    move-wide/from16 v10, v21

    .line 682
    .line 683
    goto :goto_8

    .line 684
    :cond_7
    move-object/from16 v25, v12

    .line 685
    .line 686
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 687
    .line 688
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    iput-object v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 697
    .line 698
    const/4 v15, 0x0

    .line 699
    iput-object v15, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 700
    .line 701
    iput-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 702
    .line 703
    iput-wide v13, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 704
    .line 705
    iput-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 706
    .line 707
    iput-wide v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 708
    .line 709
    iput-wide v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 710
    .line 711
    iput v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 712
    .line 713
    const/4 v15, 0x6

    .line 714
    iput v15, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 715
    .line 716
    iget-object v15, v1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 717
    .line 718
    move/from16 v19, v3

    .line 719
    .line 720
    new-instance v3, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 721
    .line 722
    move-wide/from16 v20, v4

    .line 723
    .line 724
    const/16 v4, 0x18

    .line 725
    .line 726
    invoke-direct {v3, v4, v1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    const/4 v1, 0x1

    .line 730
    const/4 v5, 0x0

    .line 731
    invoke-static {v15, v1, v5, v3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    if-ne v3, v2, :cond_8

    .line 736
    .line 737
    goto/16 :goto_0

    .line 738
    .line 739
    :cond_8
    move-wide v4, v6

    .line 740
    move-wide v14, v13

    .line 741
    move/from16 v1, v19

    .line 742
    .line 743
    move-wide/from16 v6, v20

    .line 744
    .line 745
    move-wide/from16 v30, v8

    .line 746
    .line 747
    move-object v8, v12

    .line 748
    move-wide v12, v10

    .line 749
    move-wide/from16 v10, v30

    .line 750
    .line 751
    :goto_a
    check-cast v3, Lorg/wikipedia/history/HistoryEntry;

    .line 752
    .line 753
    if-eqz v3, :cond_9

    .line 754
    .line 755
    iget-object v3, v3, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 756
    .line 757
    if-eqz v3, :cond_9

    .line 758
    .line 759
    invoke-static {v3}, Lj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    .line 760
    .line 761
    .line 762
    move-result-object v3

    .line 763
    if-eqz v3, :cond_9

    .line 764
    .line 765
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 766
    .line 767
    .line 768
    move-result-object v9

    .line 769
    invoke-virtual {v3, v9}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    if-eqz v3, :cond_9

    .line 774
    .line 775
    invoke-virtual {v3}, Lj$/time/ZonedDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    goto :goto_b

    .line 780
    :cond_9
    const/4 v3, 0x0

    .line 781
    :goto_b
    sget-object v9, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 782
    .line 783
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 784
    .line 785
    .line 786
    move-result-object v9

    .line 787
    invoke-virtual {v9}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 788
    .line 789
    .line 790
    move-result-object v9

    .line 791
    iput-object v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 792
    .line 793
    iput-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 794
    .line 795
    iput-wide v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 796
    .line 797
    iput-wide v14, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 798
    .line 799
    iput-wide v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 800
    .line 801
    iput-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 802
    .line 803
    iput-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 804
    .line 805
    iput v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 806
    .line 807
    move/from16 v19, v1

    .line 808
    .line 809
    const/4 v1, 0x7

    .line 810
    iput v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 811
    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 813
    .line 814
    .line 815
    move-result-wide v20

    .line 816
    iget-object v1, v9, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 817
    .line 818
    move-wide/from16 v22, v4

    .line 819
    .line 820
    new-instance v4, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;

    .line 821
    .line 822
    const/4 v5, 0x7

    .line 823
    move-wide/from16 v30, v20

    .line 824
    .line 825
    move-object/from16 v20, v8

    .line 826
    .line 827
    move-wide/from16 v8, v30

    .line 828
    .line 829
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 830
    .line 831
    .line 832
    const/4 v5, 0x0

    .line 833
    const/4 v8, 0x1

    .line 834
    invoke-static {v1, v8, v5, v4, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    if-ne v1, v2, :cond_a

    .line 839
    .line 840
    goto/16 :goto_0

    .line 841
    .line 842
    :cond_a
    move-object/from16 p1, v1

    .line 843
    .line 844
    move-wide v4, v6

    .line 845
    move-wide v8, v12

    .line 846
    move-wide v12, v14

    .line 847
    move/from16 v6, v19

    .line 848
    .line 849
    move-object v7, v2

    .line 850
    move-object v14, v3

    .line 851
    move-object/from16 v3, v20

    .line 852
    .line 853
    move-wide/from16 v1, v22

    .line 854
    .line 855
    :goto_c
    move-object/from16 v15, p1

    .line 856
    .line 857
    check-cast v15, Ljava/lang/Integer;

    .line 858
    .line 859
    if-eqz v15, :cond_b

    .line 860
    .line 861
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 862
    .line 863
    .line 864
    move-result v15

    .line 865
    goto :goto_d

    .line 866
    :cond_b
    const/4 v15, 0x0

    .line 867
    :goto_d
    sget-object v19, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 868
    .line 869
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 870
    .line 871
    .line 872
    move-result-object v19

    .line 873
    move-object/from16 p1, v7

    .line 874
    .line 875
    invoke-virtual/range {v19 .. v19}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 876
    .line 877
    .line 878
    move-result-object v7

    .line 879
    iput-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 880
    .line 881
    iput-object v14, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 882
    .line 883
    iput-wide v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 884
    .line 885
    iput-wide v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 886
    .line 887
    iput-wide v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 888
    .line 889
    iput-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 890
    .line 891
    iput-wide v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 892
    .line 893
    iput v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 894
    .line 895
    iput v15, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$1:I

    .line 896
    .line 897
    move-wide/from16 v19, v1

    .line 898
    .line 899
    const/16 v1, 0x8

    .line 900
    .line 901
    iput v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 902
    .line 903
    iget-object v1, v7, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 904
    .line 905
    new-instance v2, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 906
    .line 907
    move-object/from16 v21, v3

    .line 908
    .line 909
    const/16 v3, 0x9

    .line 910
    .line 911
    invoke-direct {v2, v4, v5, v7, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JLorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;I)V

    .line 912
    .line 913
    .line 914
    const/4 v3, 0x0

    .line 915
    const/4 v7, 0x1

    .line 916
    invoke-static {v1, v7, v3, v2, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    move-object/from16 v7, p1

    .line 921
    .line 922
    if-ne v1, v7, :cond_c

    .line 923
    .line 924
    goto/16 :goto_12

    .line 925
    .line 926
    :cond_c
    move v2, v15

    .line 927
    move-object/from16 v3, v21

    .line 928
    .line 929
    move-wide/from16 v30, v8

    .line 930
    .line 931
    move v8, v6

    .line 932
    move-wide/from16 v32, v4

    .line 933
    .line 934
    move-object v4, v14

    .line 935
    move-wide/from16 v14, v32

    .line 936
    .line 937
    move-wide/from16 v5, v30

    .line 938
    .line 939
    :goto_e
    check-cast v1, Ljava/lang/Iterable;

    .line 940
    .line 941
    new-instance v9, Ljava/util/ArrayList;

    .line 942
    .line 943
    move/from16 v16, v2

    .line 944
    .line 945
    move-object/from16 p1, v7

    .line 946
    .line 947
    const/16 v7, 0xa

    .line 948
    .line 949
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 950
    .line 951
    .line 952
    move-result v2

    .line 953
    move/from16 v21, v8

    .line 954
    .line 955
    move-wide/from16 v7, v19

    .line 956
    .line 957
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 958
    .line 959
    .line 960
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 965
    .line 966
    .line 967
    move-result v2

    .line 968
    if-eqz v2, :cond_d

    .line 969
    .line 970
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 975
    .line 976
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 977
    .line 978
    .line 979
    move-object/from16 v20, v1

    .line 980
    .line 981
    iget-object v1, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 982
    .line 983
    move-wide/from16 v28, v14

    .line 984
    .line 985
    iget-object v14, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 986
    .line 987
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 988
    .line 989
    .line 990
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    .line 992
    .line 993
    iput-object v14, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 994
    .line 995
    new-instance v22, Lorg/wikipedia/page/PageTitle;

    .line 996
    .line 997
    iget-object v14, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 998
    .line 999
    iget-object v15, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 1000
    .line 1001
    move-object/from16 v24, v1

    .line 1002
    .line 1003
    iget-object v1, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 1004
    .line 1005
    iget-object v2, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 1006
    .line 1007
    move-object/from16 v26, v1

    .line 1008
    .line 1009
    move-object/from16 v27, v2

    .line 1010
    .line 1011
    move-object/from16 v23, v14

    .line 1012
    .line 1013
    move-object/from16 v25, v15

    .line 1014
    .line 1015
    invoke-direct/range {v22 .. v27}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    move-object/from16 v1, v22

    .line 1019
    .line 1020
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-object/from16 v1, v20

    .line 1024
    .line 1025
    move-wide/from16 v14, v28

    .line 1026
    .line 1027
    goto :goto_f

    .line 1028
    :cond_d
    move-wide/from16 v28, v14

    .line 1029
    .line 1030
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1031
    .line 1032
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1

    .line 1036
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v1

    .line 1040
    iput-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 1041
    .line 1042
    iput-object v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 1043
    .line 1044
    iput-object v9, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$2:Ljava/util/List;

    .line 1045
    .line 1046
    iput-wide v7, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 1047
    .line 1048
    iput-wide v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 1049
    .line 1050
    iput-wide v5, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 1051
    .line 1052
    iput-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 1053
    .line 1054
    iput-wide v14, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 1055
    .line 1056
    move/from16 v2, v21

    .line 1057
    .line 1058
    iput v2, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 1059
    .line 1060
    move/from16 v2, v16

    .line 1061
    .line 1062
    iput v2, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$1:I

    .line 1063
    .line 1064
    const/16 v2, 0x9

    .line 1065
    .line 1066
    iput v2, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 1067
    .line 1068
    iget-object v2, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1069
    .line 1070
    move-object/from16 v17, v3

    .line 1071
    .line 1072
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 1073
    .line 1074
    move-object/from16 v20, v4

    .line 1075
    .line 1076
    const/16 v4, 0xb

    .line 1077
    .line 1078
    invoke-direct {v3, v4, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1079
    .line 1080
    .line 1081
    const/4 v1, 0x1

    .line 1082
    const/4 v4, 0x0

    .line 1083
    invoke-static {v2, v1, v4, v3, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v2

    .line 1087
    move-object/from16 v1, p1

    .line 1088
    .line 1089
    if-ne v2, v1, :cond_e

    .line 1090
    .line 1091
    move-object v7, v1

    .line 1092
    goto/16 :goto_12

    .line 1093
    .line 1094
    :cond_e
    move-object/from16 p1, v1

    .line 1095
    .line 1096
    move-object/from16 v3, v17

    .line 1097
    .line 1098
    move/from16 v17, v16

    .line 1099
    .line 1100
    move-object/from16 v16, v2

    .line 1101
    .line 1102
    move-wide v1, v14

    .line 1103
    move-wide v14, v7

    .line 1104
    move-object v8, v9

    .line 1105
    move-object/from16 v9, v20

    .line 1106
    .line 1107
    move-wide v6, v5

    .line 1108
    move/from16 v5, v21

    .line 1109
    .line 1110
    :goto_10
    move-object/from16 v4, v16

    .line 1111
    .line 1112
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 1113
    .line 1114
    move/from16 v16, v5

    .line 1115
    .line 1116
    if-eqz v4, :cond_f

    .line 1117
    .line 1118
    iget-wide v4, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 1119
    .line 1120
    invoke-static {v4, v5}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v4

    .line 1124
    if-eqz v4, :cond_f

    .line 1125
    .line 1126
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v5

    .line 1130
    invoke-virtual {v4, v5}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v4

    .line 1134
    if-eqz v4, :cond_f

    .line 1135
    .line 1136
    invoke-virtual {v4}, Lj$/time/ZonedDateTime;->toLocalDateTime()Lj$/time/LocalDateTime;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v4

    .line 1140
    goto :goto_11

    .line 1141
    :cond_f
    const/4 v4, 0x0

    .line 1142
    :goto_11
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v5

    .line 1146
    sget-object v20, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1147
    .line 1148
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v20

    .line 1152
    move-object/from16 v21, v5

    .line 1153
    .line 1154
    invoke-virtual/range {v20 .. v20}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v5

    .line 1158
    move-object/from16 v20, v5

    .line 1159
    .line 1160
    invoke-virtual/range {v21 .. v21}, Lj$/time/LocalDate;->getYear()I

    .line 1161
    .line 1162
    .line 1163
    move-result v5

    .line 1164
    move/from16 v22, v5

    .line 1165
    .line 1166
    invoke-virtual/range {v21 .. v21}, Lj$/time/LocalDate;->getMonthValue()I

    .line 1167
    .line 1168
    .line 1169
    move-result v5

    .line 1170
    iput-object v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$0:Ljava/util/List;

    .line 1171
    .line 1172
    iput-object v9, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$1:Ljava/io/Serializable;

    .line 1173
    .line 1174
    iput-object v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$2:Ljava/util/List;

    .line 1175
    .line 1176
    iput-object v4, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->L$3:Lj$/time/LocalDateTime;

    .line 1177
    .line 1178
    iput-wide v14, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$0:J

    .line 1179
    .line 1180
    iput-wide v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$1:J

    .line 1181
    .line 1182
    iput-wide v6, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$2:J

    .line 1183
    .line 1184
    iput-wide v10, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$3:J

    .line 1185
    .line 1186
    iput-wide v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->J$4:J

    .line 1187
    .line 1188
    move/from16 v1, v16

    .line 1189
    .line 1190
    iput v1, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$0:I

    .line 1191
    .line 1192
    move/from16 v2, v17

    .line 1193
    .line 1194
    iput v2, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->I$1:I

    .line 1195
    .line 1196
    const/16 v15, 0xa

    .line 1197
    .line 1198
    iput v15, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadReadingHistory$2;->label:I

    .line 1199
    .line 1200
    move-object/from16 v6, v20

    .line 1201
    .line 1202
    iget-object v6, v6, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1203
    .line 1204
    new-instance v7, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;

    .line 1205
    .line 1206
    move/from16 v12, v22

    .line 1207
    .line 1208
    const/4 v13, 0x0

    .line 1209
    invoke-direct {v7, v12, v5, v13}, Lorg/wikipedia/categories/db/CategoryDao_Impl$$ExternalSyntheticLambda3;-><init>(III)V

    .line 1210
    .line 1211
    .line 1212
    const/4 v12, 0x1

    .line 1213
    invoke-static {v6, v12, v13, v7, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    move-object/from16 v7, p1

    .line 1218
    .line 1219
    if-ne v0, v7, :cond_10

    .line 1220
    .line 1221
    :goto_12
    return-object v7

    .line 1222
    :cond_10
    move v7, v2

    .line 1223
    move-object v6, v3

    .line 1224
    move-object v5, v9

    .line 1225
    move-wide v2, v10

    .line 1226
    move-object v9, v8

    .line 1227
    move-object v8, v4

    .line 1228
    move v4, v1

    .line 1229
    :goto_13
    check-cast v0, Ljava/util/List;

    .line 1230
    .line 1231
    new-instance v11, Lorg/wikipedia/util/UiState$Success;

    .line 1232
    .line 1233
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;

    .line 1234
    .line 1235
    const/4 v10, 0x3

    .line 1236
    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v10

    .line 1240
    invoke-direct/range {v1 .. v10}, Lorg/wikipedia/activitytab/ActivityTabViewModel$ReadingHistory;-><init>(JILj$/time/LocalDateTime;Ljava/util/List;ILj$/time/LocalDateTime;Ljava/util/List;Ljava/util/List;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-direct {v11, v1}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1247
    .line 1248
    .line 1249
    move-object/from16 v0, v18

    .line 1250
    .line 1251
    const/4 v15, 0x0

    .line 1252
    invoke-virtual {v0, v15, v11}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1253
    .line 1254
    .line 1255
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1256
    .line 1257
    return-object v0

    .line 1258
    nop

    .line 1259
    :pswitch_data_0
    .packed-switch 0x0
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
