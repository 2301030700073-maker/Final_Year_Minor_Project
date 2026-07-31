.class public final Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $finalYear:I

.field public final synthetic $size:I

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public I$4:I

.field public L$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public L$1:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

.field public L$2:Ljava/util/ArrayList;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;


# direct methods
.method public constructor <init>(ILorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->$size:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->this$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 4
    .line 5
    iput p3, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->$finalYear:I

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->$context:Landroid/content/Context;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;

    .line 2
    .line 3
    iget v3, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->$finalYear:I

    .line 4
    .line 5
    iget-object v4, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iget v1, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->$size:I

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->this$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;-><init>(ILorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->label:I

    .line 6
    .line 7
    iget-object v3, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->this$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v7, :cond_1

    .line 16
    .line 17
    if-ne v0, v4, :cond_0

    .line 18
    .line 19
    iget-object v0, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Exception;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v5

    .line 34
    :cond_1
    iget v0, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$4:I

    .line 35
    .line 36
    iget v8, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$3:I

    .line 37
    .line 38
    iget v9, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$2:I

    .line 39
    .line 40
    iget v10, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$1:I

    .line 41
    .line 42
    iget v11, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$0:I

    .line 43
    .line 44
    iget-object v12, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$2:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v13, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$1:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 47
    .line 48
    iget-object v14, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 49
    .line 50
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    move-object/from16 v18, v3

    .line 54
    .line 55
    move/from16 v17, v6

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iget v8, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->$size:I

    .line 71
    .line 72
    div-int/lit16 v9, v8, 0xfa0

    .line 73
    .line 74
    rem-int/lit16 v10, v8, 0xfa0

    .line 75
    .line 76
    if-lez v10, :cond_3

    .line 77
    .line 78
    move v10, v7

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move v10, v6

    .line 81
    :goto_0
    add-int/2addr v9, v10

    .line 82
    iget v10, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->$finalYear:I

    .line 83
    .line 84
    const/16 v11, 0xfa0

    .line 85
    .line 86
    move-object v13, v0

    .line 87
    move v0, v6

    .line 88
    move v12, v10

    .line 89
    move v10, v9

    .line 90
    move v9, v8

    .line 91
    move v8, v11

    .line 92
    move-object v11, v3

    .line 93
    :goto_1
    if-ge v0, v10, :cond_7

    .line 94
    .line 95
    iget v14, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 96
    .line 97
    sub-int v14, v9, v14

    .line 98
    .line 99
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    if-lez v14, :cond_6

    .line 104
    .line 105
    invoke-static {v6, v14}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    new-instance v15, Ljava/util/ArrayList;

    .line 110
    .line 111
    const/16 v4, 0xa

    .line 112
    .line 113
    invoke-static {v14, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    :goto_2
    move-object v14, v4

    .line 125
    check-cast v14, Lkotlin/ranges/IntProgressionIterator;

    .line 126
    .line 127
    iget-boolean v14, v14, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 128
    .line 129
    if-eqz v14, :cond_4

    .line 130
    .line 131
    move-object v14, v4

    .line 132
    check-cast v14, Lkotlin/collections/IntIterator;

    .line 133
    .line 134
    invoke-virtual {v14}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 135
    .line 136
    .line 137
    iget-object v14, v11, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->categories:[Ljava/lang/String;

    .line 138
    .line 139
    iget-object v5, v11, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->languages:[Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    new-instance v6, Lkotlin/ranges/IntRange;

    .line 145
    .line 146
    array-length v14, v14

    .line 147
    sub-int/2addr v14, v7

    .line 148
    move-object/from16 v18, v3

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    invoke-direct {v6, v3, v14, v7}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 152
    .line 153
    .line 154
    sget-object v3, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .line 156
    :try_start_2
    invoke-static {v6}, Lcoil3/util/UtilsKt;->nextInt(Lkotlin/ranges/IntRange;)I

    .line 157
    .line 158
    .line 159
    move-result v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    new-instance v6, Lkotlin/ranges/IntRange;

    .line 164
    .line 165
    array-length v14, v5

    .line 166
    sub-int/2addr v14, v7

    .line 167
    move-object/from16 v16, v13

    .line 168
    .line 169
    const/4 v13, 0x0

    .line 170
    invoke-direct {v6, v13, v14, v7}, Lkotlin/ranges/IntProgression;-><init>(III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 171
    .line 172
    .line 173
    :try_start_4
    invoke-static {v6}, Lcoil3/util/UtilsKt;->nextInt(Lkotlin/ranges/IntRange;)I

    .line 174
    .line 175
    .line 176
    move-result v6
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 177
    :try_start_5
    iget-object v14, v11, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->categories:[Ljava/lang/String;

    .line 178
    .line 179
    aget-object v3, v14, v3

    .line 180
    .line 181
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    new-instance v13, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v7, "Category:"

    .line 191
    .line 192
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    aget-object v5, v5, v6

    .line 206
    .line 207
    move-object v6, v11

    .line 208
    new-instance v11, Lorg/wikipedia/categories/db/Category;

    .line 209
    .line 210
    const/4 v13, 0x1

    .line 211
    const/4 v14, 0x1

    .line 212
    move-object/from16 v17, v15

    .line 213
    .line 214
    move-object v15, v3

    .line 215
    move-object/from16 v3, v16

    .line 216
    .line 217
    move-object/from16 v16, v5

    .line 218
    .line 219
    move-object/from16 v5, v17

    .line 220
    .line 221
    const/16 v17, 0x0

    .line 222
    .line 223
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/categories/db/Category;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-object v13, v3

    .line 230
    move-object v15, v5

    .line 231
    move-object v11, v6

    .line 232
    move/from16 v6, v17

    .line 233
    .line 234
    move-object/from16 v3, v18

    .line 235
    .line 236
    const/4 v5, 0x0

    .line 237
    const/4 v7, 0x1

    .line 238
    goto :goto_2

    .line 239
    :catch_1
    move-exception v0

    .line 240
    new-instance v3, Ljava/util/NoSuchElementException;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-direct {v3, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v3

    .line 250
    :catch_2
    move-exception v0

    .line 251
    new-instance v3, Ljava/util/NoSuchElementException;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-direct {v3, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v3

    .line 261
    :cond_4
    move-object/from16 v18, v3

    .line 262
    .line 263
    move/from16 v17, v6

    .line 264
    .line 265
    move-object v6, v11

    .line 266
    move-object v3, v13

    .line 267
    move-object v5, v15

    .line 268
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 269
    .line 270
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    iput-object v3, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 279
    .line 280
    iput-object v6, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$1:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 281
    .line 282
    iput-object v5, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$2:Ljava/util/ArrayList;

    .line 283
    .line 284
    iput v8, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$0:I

    .line 285
    .line 286
    iput v10, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$1:I

    .line 287
    .line 288
    iput v9, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$2:I

    .line 289
    .line 290
    iput v12, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$3:I

    .line 291
    .line 292
    iput v0, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->I$4:I

    .line 293
    .line 294
    const/4 v7, 0x1

    .line 295
    iput v7, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->label:I

    .line 296
    .line 297
    invoke-virtual {v4, v5, v1}, Lorg/wikipedia/categories/db/CategoryDao_Impl;->upsertAll(Ljava/util/List;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    if-ne v4, v2, :cond_5

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_5
    move-object v14, v3

    .line 305
    move-object v13, v6

    .line 306
    move v11, v8

    .line 307
    move v8, v12

    .line 308
    move-object v12, v5

    .line 309
    :goto_3
    iget v3, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 310
    .line 311
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    add-int/2addr v3, v4

    .line 316
    iput v3, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 317
    .line 318
    move v12, v8

    .line 319
    move v8, v11

    .line 320
    move-object v11, v13

    .line 321
    move-object v13, v14

    .line 322
    const/16 v19, 0x1

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_6
    move-object/from16 v18, v3

    .line 326
    .line 327
    move/from16 v17, v6

    .line 328
    .line 329
    move-object v6, v11

    .line 330
    move-object v3, v13

    .line 331
    move/from16 v19, v7

    .line 332
    .line 333
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 334
    .line 335
    move/from16 v6, v17

    .line 336
    .line 337
    move-object/from16 v3, v18

    .line 338
    .line 339
    const/4 v4, 0x2

    .line 340
    const/4 v5, 0x0

    .line 341
    const/4 v7, 0x1

    .line 342
    goto/16 :goto_1

    .line 343
    .line 344
    :cond_7
    move-object/from16 v18, v3

    .line 345
    .line 346
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->loadCategories()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 347
    .line 348
    .line 349
    goto :goto_7

    .line 350
    :goto_5
    const-string v3, "Error generating sample data"

    .line 351
    .line 352
    sget-object v4, Lorg/wikipedia/util/log/L;->LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 353
    .line 354
    invoke-virtual {v4, v3, v0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    .line 356
    .line 357
    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 358
    .line 359
    sget-object v3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 360
    .line 361
    new-instance v4, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestData$2$1;

    .line 362
    .line 363
    iget-object v5, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->$context:Landroid/content/Context;

    .line 364
    .line 365
    const/4 v6, 0x0

    .line 366
    const/4 v7, 0x1

    .line 367
    invoke-direct {v4, v5, v0, v6, v7}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestData$2$1;-><init>(Landroid/content/Context;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;I)V

    .line 368
    .line 369
    .line 370
    iput-object v6, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    .line 371
    .line 372
    iput-object v6, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$1:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 373
    .line 374
    iput-object v6, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->L$2:Ljava/util/ArrayList;

    .line 375
    .line 376
    const/4 v5, 0x2

    .line 377
    iput v5, v1, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;->label:I

    .line 378
    .line 379
    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    if-ne v0, v2, :cond_8

    .line 384
    .line 385
    :goto_6
    return-object v2

    .line 386
    :cond_8
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 387
    .line 388
    return-object v0
.end method
