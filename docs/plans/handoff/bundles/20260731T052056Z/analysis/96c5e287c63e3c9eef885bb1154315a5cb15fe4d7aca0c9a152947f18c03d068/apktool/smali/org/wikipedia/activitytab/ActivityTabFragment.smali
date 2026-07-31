.class public final Lorg/wikipedia/activitytab/ActivityTabFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\t\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0008\u001a\u00020\u00078\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lorg/wikipedia/activitytab/ActivityTabFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Callback",
        "",
        "gamesModuleOffsetInItem",
        "",
        "isRefreshing",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final menuProvider:Landroidx/fragment/app/FragmentManager$2;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;

    .line 5
    .line 6
    const/16 v1, 0x17

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;

    .line 14
    .line 15
    const/16 v3, 0x18

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 25
    .line 26
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 42
    .line 43
    .line 44
    new-instance v5, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 45
    .line 46
    const/16 v6, 0x1b

    .line 47
    .line 48
    invoke-direct {v5, v6, p0, v0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lokhttp3/Request$Builder;

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v5, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    new-instance v0, Landroidx/fragment/app/FragmentManager$2;

    .line 59
    .line 60
    invoke-direct {v0, v3, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment;->menuProvider:Landroidx/fragment/app/FragmentManager$2;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final ActivityTabScreen(ZLjava/lang/String;Ljava/lang/String;Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZLorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 32

    .line 1
    move-object/from16 v14, p13

    .line 2
    .line 3
    move-object/from16 v0, p15

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const v1, 0x4c1ee02e    # 4.164831E7f

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    .line 29
    move/from16 v2, p1

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x2

    .line 40
    :goto_0
    or-int v1, p16, v1

    .line 41
    .line 42
    move-object/from16 v5, p2

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    const/16 v6, 0x20

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/16 v6, 0x10

    .line 54
    .line 55
    :goto_1
    or-int/2addr v1, v6

    .line 56
    move-object/from16 v6, p3

    .line 57
    .line 58
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_2

    .line 63
    .line 64
    const/16 v9, 0x100

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/16 v9, 0x80

    .line 68
    .line 69
    :goto_2
    or-int/2addr v1, v9

    .line 70
    move-object/from16 v9, p4

    .line 71
    .line 72
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    if-eqz v12, :cond_3

    .line 77
    .line 78
    const/16 v12, 0x800

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    const/16 v12, 0x400

    .line 82
    .line 83
    :goto_3
    or-int/2addr v1, v12

    .line 84
    move/from16 v12, p5

    .line 85
    .line 86
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 87
    .line 88
    .line 89
    move-result v16

    .line 90
    const/16 v17, 0x4000

    .line 91
    .line 92
    const/16 v18, 0x2000

    .line 93
    .line 94
    if-eqz v16, :cond_4

    .line 95
    .line 96
    move/from16 v16, v17

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    move/from16 v16, v18

    .line 100
    .line 101
    :goto_4
    or-int v1, v1, v16

    .line 102
    .line 103
    move/from16 v3, p6

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 106
    .line 107
    .line 108
    move-result v19

    .line 109
    if-eqz v19, :cond_5

    .line 110
    .line 111
    const/high16 v19, 0x20000

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    const/high16 v19, 0x10000

    .line 115
    .line 116
    :goto_5
    or-int v1, v1, v19

    .line 117
    .line 118
    move/from16 v7, p7

    .line 119
    .line 120
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 121
    .line 122
    .line 123
    move-result v21

    .line 124
    if-eqz v21, :cond_6

    .line 125
    .line 126
    const/high16 v21, 0x100000

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_6
    const/high16 v21, 0x80000

    .line 130
    .line 131
    :goto_6
    or-int v1, v1, v21

    .line 132
    .line 133
    move/from16 v8, p8

    .line 134
    .line 135
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 136
    .line 137
    .line 138
    move-result v22

    .line 139
    if-eqz v22, :cond_7

    .line 140
    .line 141
    const/high16 v22, 0x800000

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_7
    const/high16 v22, 0x400000

    .line 145
    .line 146
    :goto_7
    or-int v1, v1, v22

    .line 147
    .line 148
    move-object/from16 v11, p9

    .line 149
    .line 150
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v24

    .line 154
    if-eqz v24, :cond_8

    .line 155
    .line 156
    const/high16 v24, 0x4000000

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_8
    const/high16 v24, 0x2000000

    .line 160
    .line 161
    :goto_8
    or-int v1, v1, v24

    .line 162
    .line 163
    move-object/from16 v13, p10

    .line 164
    .line 165
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v25

    .line 169
    if-eqz v25, :cond_9

    .line 170
    .line 171
    const/high16 v25, 0x20000000

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_9
    const/high16 v25, 0x10000000

    .line 175
    .line 176
    :goto_9
    or-int v1, v1, v25

    .line 177
    .line 178
    move-object/from16 v4, p11

    .line 179
    .line 180
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v26

    .line 184
    if-eqz v26, :cond_a

    .line 185
    .line 186
    const/16 v16, 0x4

    .line 187
    .line 188
    :goto_a
    move-object/from16 v15, p12

    .line 189
    .line 190
    goto :goto_b

    .line 191
    :cond_a
    const/16 v16, 0x2

    .line 192
    .line 193
    goto :goto_a

    .line 194
    :goto_b
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v26

    .line 198
    if-eqz v26, :cond_b

    .line 199
    .line 200
    const/16 v19, 0x20

    .line 201
    .line 202
    goto :goto_c

    .line 203
    :cond_b
    const/16 v19, 0x10

    .line 204
    .line 205
    :goto_c
    or-int v16, v16, v19

    .line 206
    .line 207
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v19

    .line 211
    if-eqz v19, :cond_c

    .line 212
    .line 213
    const/16 v22, 0x100

    .line 214
    .line 215
    goto :goto_d

    .line 216
    :cond_c
    const/16 v22, 0x80

    .line 217
    .line 218
    :goto_d
    or-int v16, v16, v22

    .line 219
    .line 220
    move-object/from16 v10, p14

    .line 221
    .line 222
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v21

    .line 226
    if-eqz v21, :cond_d

    .line 227
    .line 228
    const/16 v24, 0x800

    .line 229
    .line 230
    goto :goto_e

    .line 231
    :cond_d
    const/16 v24, 0x400

    .line 232
    .line 233
    :goto_e
    or-int v16, v16, v24

    .line 234
    .line 235
    move-object/from16 v2, p0

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v21

    .line 241
    if-eqz v21, :cond_e

    .line 242
    .line 243
    goto :goto_f

    .line 244
    :cond_e
    move/from16 v17, v18

    .line 245
    .line 246
    :goto_f
    or-int v2, v16, v17

    .line 247
    .line 248
    const v16, 0x12492493

    .line 249
    .line 250
    .line 251
    and-int v3, v1, v16

    .line 252
    .line 253
    const v4, 0x12492492

    .line 254
    .line 255
    .line 256
    const/16 v16, 0x1

    .line 257
    .line 258
    if-ne v3, v4, :cond_10

    .line 259
    .line 260
    and-int/lit16 v3, v2, 0x2493

    .line 261
    .line 262
    const/16 v4, 0x2492

    .line 263
    .line 264
    if-eq v3, v4, :cond_f

    .line 265
    .line 266
    goto :goto_10

    .line 267
    :cond_f
    const/4 v3, 0x0

    .line 268
    goto :goto_11

    .line 269
    :cond_10
    :goto_10
    move/from16 v3, v16

    .line 270
    .line 271
    :goto_11
    and-int/lit8 v4, v1, 0x1

    .line 272
    .line 273
    invoke-virtual {v0, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_18

    .line 278
    .line 279
    invoke-static {v14, v0}, Landroidx/paging/compose/LazyPagingItemsKt;->collectAsLazyPagingItems(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/GapComposer;)Landroidx/paging/compose/LazyPagingItems;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    move-object/from16 v23, v3

    .line 292
    .line 293
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 294
    .line 295
    if-ne v5, v3, :cond_11

    .line 296
    .line 297
    new-instance v5, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 298
    .line 299
    const/4 v6, 0x0

    .line 300
    invoke-direct {v5, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_12

    .line 307
    :cond_11
    const/4 v6, 0x0

    .line 308
    :goto_12
    move-object/from16 v21, v5

    .line 309
    .line 310
    check-cast v21, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 311
    .line 312
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    const/high16 v17, 0x1c00000

    .line 317
    .line 318
    and-int v6, v1, v17

    .line 319
    .line 320
    const/high16 v7, 0x800000

    .line 321
    .line 322
    if-ne v6, v7, :cond_12

    .line 323
    .line 324
    move/from16 v6, v16

    .line 325
    .line 326
    goto :goto_13

    .line 327
    :cond_12
    const/4 v6, 0x0

    .line 328
    :goto_13
    and-int/lit16 v7, v1, 0x1c00

    .line 329
    .line 330
    move/from16 v17, v1

    .line 331
    .line 332
    const/16 v1, 0x800

    .line 333
    .line 334
    if-ne v7, v1, :cond_13

    .line 335
    .line 336
    move/from16 v1, v16

    .line 337
    .line 338
    goto :goto_14

    .line 339
    :cond_13
    const/4 v1, 0x0

    .line 340
    :goto_14
    or-int/2addr v1, v6

    .line 341
    const/high16 v6, 0x70000

    .line 342
    .line 343
    and-int v6, v17, v6

    .line 344
    .line 345
    const/high16 v7, 0x20000

    .line 346
    .line 347
    if-ne v6, v7, :cond_14

    .line 348
    .line 349
    move/from16 v6, v16

    .line 350
    .line 351
    goto :goto_15

    .line 352
    :cond_14
    const/4 v6, 0x0

    .line 353
    :goto_15
    or-int/2addr v1, v6

    .line 354
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    or-int/2addr v1, v6

    .line 359
    and-int/lit16 v2, v2, 0x1c00

    .line 360
    .line 361
    const/16 v6, 0x800

    .line 362
    .line 363
    if-ne v2, v6, :cond_15

    .line 364
    .line 365
    goto :goto_16

    .line 366
    :cond_15
    const/16 v16, 0x0

    .line 367
    .line 368
    :goto_16
    or-int v1, v1, v16

    .line 369
    .line 370
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    if-nez v1, :cond_17

    .line 375
    .line 376
    if-ne v2, v3, :cond_16

    .line 377
    .line 378
    goto :goto_17

    .line 379
    :cond_16
    move-object/from16 v19, v4

    .line 380
    .line 381
    goto :goto_18

    .line 382
    :cond_17
    :goto_17
    new-instance v15, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;

    .line 383
    .line 384
    const/16 v22, 0x0

    .line 385
    .line 386
    move/from16 v18, p6

    .line 387
    .line 388
    move-object/from16 v19, v4

    .line 389
    .line 390
    move/from16 v16, v8

    .line 391
    .line 392
    move-object/from16 v17, v9

    .line 393
    .line 394
    move-object/from16 v20, v10

    .line 395
    .line 396
    invoke-direct/range {v15 .. v22}, Lorg/wikipedia/activitytab/ActivityTabFragment$ActivityTabScreen$2$1;-><init>(ZLorg/wikipedia/activitytab/ActivityTabModules;ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Lkotlin/coroutines/Continuation;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    move-object v2, v15

    .line 403
    :goto_18
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 404
    .line 405
    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 406
    .line 407
    .line 408
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 409
    .line 410
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 411
    .line 412
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 417
    .line 418
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 419
    .line 420
    sget-object v5, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 421
    .line 422
    invoke-static {v1, v3, v4, v5}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 431
    .line 432
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 433
    .line 434
    new-instance v15, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;

    .line 435
    .line 436
    move/from16 v17, p1

    .line 437
    .line 438
    move-object/from16 v24, p2

    .line 439
    .line 440
    move-object/from16 v25, p3

    .line 441
    .line 442
    move-object/from16 v18, p4

    .line 443
    .line 444
    move/from16 v20, p6

    .line 445
    .line 446
    move/from16 v29, p7

    .line 447
    .line 448
    move-object/from16 v27, p11

    .line 449
    .line 450
    move-object/from16 v26, p12

    .line 451
    .line 452
    move-object/from16 v16, v11

    .line 453
    .line 454
    move-object/from16 v28, v13

    .line 455
    .line 456
    move-object/from16 v30, v21

    .line 457
    .line 458
    move-object/from16 v22, v23

    .line 459
    .line 460
    move-object/from16 v21, p0

    .line 461
    .line 462
    move-object/from16 v23, v19

    .line 463
    .line 464
    move/from16 v19, v12

    .line 465
    .line 466
    invoke-direct/range {v15 .. v30}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda22;-><init>(Lorg/wikipedia/util/UiState;ZLorg/wikipedia/activitytab/ActivityTabModules;ZZLorg/wikipedia/activitytab/ActivityTabFragment;Landroidx/paging/compose/LazyPagingItems;Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;ZLandroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V

    .line 467
    .line 468
    .line 469
    const v4, -0x4493fe01

    .line 470
    .line 471
    .line 472
    invoke-static {v4, v15, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 473
    .line 474
    .line 475
    move-result-object v26

    .line 476
    const/high16 v28, 0x30000000

    .line 477
    .line 478
    const/16 v29, 0x1be

    .line 479
    .line 480
    const/16 v16, 0x0

    .line 481
    .line 482
    const/16 v17, 0x0

    .line 483
    .line 484
    const/16 v18, 0x0

    .line 485
    .line 486
    const/16 v19, 0x0

    .line 487
    .line 488
    const/16 v20, 0x0

    .line 489
    .line 490
    const-wide/16 v23, 0x0

    .line 491
    .line 492
    const/16 v25, 0x0

    .line 493
    .line 494
    move-object/from16 v27, v0

    .line 495
    .line 496
    move-object v15, v1

    .line 497
    move-wide/from16 v21, v2

    .line 498
    .line 499
    invoke-static/range {v15 .. v29}, Landroidx/compose/material3/CardKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 500
    .line 501
    .line 502
    goto :goto_19

    .line 503
    :cond_18
    invoke-virtual/range {p15 .. p15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 504
    .line 505
    .line 506
    :goto_19
    invoke-virtual/range {p15 .. p15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    if-eqz v0, :cond_19

    .line 511
    .line 512
    move-object v1, v0

    .line 513
    new-instance v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda23;

    .line 514
    .line 515
    move/from16 v2, p1

    .line 516
    .line 517
    move-object/from16 v3, p2

    .line 518
    .line 519
    move-object/from16 v4, p3

    .line 520
    .line 521
    move-object/from16 v5, p4

    .line 522
    .line 523
    move/from16 v6, p5

    .line 524
    .line 525
    move/from16 v7, p6

    .line 526
    .line 527
    move/from16 v8, p7

    .line 528
    .line 529
    move/from16 v9, p8

    .line 530
    .line 531
    move-object/from16 v10, p9

    .line 532
    .line 533
    move-object/from16 v11, p10

    .line 534
    .line 535
    move-object/from16 v12, p11

    .line 536
    .line 537
    move-object/from16 v13, p12

    .line 538
    .line 539
    move-object/from16 v15, p14

    .line 540
    .line 541
    move/from16 v16, p16

    .line 542
    .line 543
    move-object/from16 v31, v1

    .line 544
    .line 545
    move-object/from16 v1, p0

    .line 546
    .line 547
    invoke-direct/range {v0 .. v16}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda23;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;ZLjava/lang/String;Ljava/lang/String;Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZLorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;I)V

    .line 548
    .line 549
    .line 550
    move-object/from16 v1, v31

    .line 551
    .line 552
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 553
    .line 554
    :cond_19
    return-void
.end method

.method public final callback()Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-class v2, Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    :goto_0
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;

    .line 68
    .line 69
    return-object p0
.end method

.method public final getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p2, p0, p3, v0}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-static {p1, p3, p3, p2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 32
    .line 33
    invoke-direct {p2, p0, p3, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p3, p3, p2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;

    .line 48
    .line 49
    const/4 v2, 0x5

    .line 50
    invoke-direct {p2, p0, p3, v2}, Lorg/wikipedia/activitytab/ActivityTabFragment$onCreateView$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;Lkotlin/coroutines/Continuation;I)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p3, p3, p2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroidx/compose/ui/platform/ComposeView;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const/4 v1, 0x6

    .line 63
    invoke-direct {p1, p2, p3, v1}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    .line 65
    .line 66
    new-instance p2, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;

    .line 67
    .line 68
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 72
    .line 73
    const/4 p3, 0x1

    .line 74
    const v0, 0x56ec55fd

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 81
    .line 82
    .line 83
    return-object p1
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabFragment;->menuProvider:Landroidx/fragment/app/FragmentManager$2;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroidx/activity/ComponentActivity;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onResume()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment;->menuProvider:Landroidx/fragment/app/FragmentManager$2;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v1, v1, Landroidx/activity/ComponentActivity;->menuHostHelper:Lcom/caverock/androidsvg/SVG;

    .line 18
    .line 19
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Ljava/lang/Runnable;

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize$1()V

    .line 34
    .line 35
    .line 36
    iget-object v2, v2, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 37
    .line 38
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroidx/core/view/MenuHostHelper$LifecycleContainer;

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    iget-object v7, v5, Landroidx/core/view/MenuHostHelper$LifecycleContainer;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 52
    .line 53
    iget-object v8, v5, Landroidx/core/view/MenuHostHelper$LifecycleContainer;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 54
    .line 55
    invoke-virtual {v7, v8}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 56
    .line 57
    .line 58
    iput-object v6, v5, Landroidx/core/view/MenuHostHelper$LifecycleContainer;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 59
    .line 60
    :cond_0
    new-instance v5, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda1;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-direct {v5, v7, v1, v3}, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Landroidx/core/view/MenuHostHelper$LifecycleContainer;

    .line 67
    .line 68
    invoke-direct {v1, v2, v5}, Landroidx/core/view/MenuHostHelper$LifecycleContainer;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "scrollToGames"

    .line 83
    .line 84
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v1, v1, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_scrollToGames:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 95
    .line 96
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v6, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 116
    .line 117
    new-array v1, v7, [Ljava/lang/Object;

    .line 118
    .line 119
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 120
    .line 121
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const v3, 0x7f120607

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v7, v2, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2, v7, v1, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_2

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "snackbarMessage"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_2

    .line 161
    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-static {v4, v1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/view/View;Ljava/lang/String;)Lcom/google/android/material/snackbar/Snackbar;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v3, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 185
    .line 186
    .line 187
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    const-string v1, "reading_challenge_reward"

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_3

    .line 207
    .line 208
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_3

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    new-instance v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;

    .line 225
    .line 226
    invoke-direct {v1}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeRewardDialog;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 230
    .line 231
    .line 232
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->loadAll()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 244
    .line 245
    .line 246
    return-void
.end method
