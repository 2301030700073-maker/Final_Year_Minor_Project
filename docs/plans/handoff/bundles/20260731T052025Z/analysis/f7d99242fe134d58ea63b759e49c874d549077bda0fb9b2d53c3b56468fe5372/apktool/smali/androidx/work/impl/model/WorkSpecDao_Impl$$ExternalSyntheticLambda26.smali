.class public final synthetic Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->f$1:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 82

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    iget-wide v6, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->f$1:J

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v0, p1

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 26
    .line 27
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 28
    .line 29
    iget-object v4, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    const-wide v10, 0xffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v8, v10

    .line 41
    long-to-int v4, v8

    .line 42
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/high16 v8, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-virtual {v0, v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    sub-float/2addr v4, v9

    .line 53
    const/4 v9, 0x0

    .line 54
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    int-to-long v12, v9

    .line 59
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    int-to-long v14, v4

    .line 64
    shl-long/2addr v12, v2

    .line 65
    and-long/2addr v14, v10

    .line 66
    or-long/2addr v12, v14

    .line 67
    iget-object v3, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    shr-long/2addr v3, v2

    .line 74
    long-to-int v3, v3

    .line 75
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v0, v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    int-to-long v8, v3

    .line 88
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    int-to-long v3, v3

    .line 93
    shl-long/2addr v8, v2

    .line 94
    and-long/2addr v3, v10

    .line 95
    or-long/2addr v3, v8

    .line 96
    invoke-static {v12, v13, v3, v4}, Lorg/slf4j/helpers/Util;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-direct {v1, v2}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ColorKt;J)V

    .line 104
    .line 105
    .line 106
    return-object v5

    .line 107
    :pswitch_0
    move-object/from16 v0, p1

    .line 108
    .line 109
    check-cast v0, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v1, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 115
    .line 116
    const/16 v2, 0x8

    .line 117
    .line 118
    invoke-direct {v1, v2, v6, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(IJ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0

    .line 126
    :pswitch_1
    move-object/from16 v0, p1

    .line 127
    .line 128
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-wide v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 134
    .line 135
    cmp-long v0, v0, v6

    .line 136
    .line 137
    if-nez v0, :cond_0

    .line 138
    .line 139
    move v3, v4

    .line 140
    goto :goto_0

    .line 141
    :cond_0
    const/4 v3, 0x0

    .line 142
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0

    .line 147
    :pswitch_2
    move-object/from16 v0, p1

    .line 148
    .line 149
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-wide v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 155
    .line 156
    cmp-long v0, v0, v6

    .line 157
    .line 158
    if-nez v0, :cond_1

    .line 159
    .line 160
    move v3, v4

    .line 161
    goto :goto_1

    .line 162
    :cond_1
    const/4 v3, 0x0

    .line 163
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    return-object v0

    .line 168
    :pswitch_3
    move-object/from16 v0, p1

    .line 169
    .line 170
    check-cast v0, Ljava/util/List;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_3

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    move-object v3, v2

    .line 195
    check-cast v3, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 196
    .line 197
    iget-wide v3, v3, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 198
    .line 199
    cmp-long v3, v3, v6

    .line 200
    .line 201
    if-nez v3, :cond_2

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_3
    return-object v1

    .line 208
    :pswitch_4
    move-object/from16 v0, p1

    .line 209
    .line 210
    check-cast v0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    .line 211
    .line 212
    iget-object v1, v0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->onFrame:Lkotlin/jvm/functions/Function1;

    .line 213
    .line 214
    if-nez v1, :cond_4

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_4
    iget-object v2, v0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 218
    .line 219
    if-eqz v2, :cond_5

    .line 220
    .line 221
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    goto :goto_3

    .line 230
    :catchall_0
    move-exception v0

    .line 231
    new-instance v1, Lkotlin/Result$Failure;

    .line 232
    .line 233
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    move-object v0, v1

    .line 237
    :goto_3
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_5
    :goto_4
    return-object v5

    .line 241
    :pswitch_5
    move-object/from16 v1, p1

    .line 242
    .line 243
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 244
    .line 245
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 246
    .line 247
    new-instance v6, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;

    .line 248
    .line 249
    sget-object v10, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->Middle:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    .line 250
    .line 251
    const/4 v11, 0x1

    .line 252
    sget-object v7, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    .line 253
    .line 254
    iget-wide v8, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;->f$1:J

    .line 255
    .line 256
    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;-><init>(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;Z)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v1, v2, v6}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    return-object v5

    .line 263
    :pswitch_6
    move-object/from16 v0, p1

    .line 264
    .line 265
    check-cast v0, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 266
    .line 267
    iget-object v1, v0, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 268
    .line 269
    invoke-interface {v1}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 270
    .line 271
    .line 272
    move-result-wide v3

    .line 273
    shr-long v1, v3, v2

    .line 274
    .line 275
    long-to-int v1, v1

    .line 276
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    const/high16 v2, 0x40000000    # 2.0f

    .line 281
    .line 282
    div-float/2addr v1, v2

    .line 283
    invoke-static {v0, v1}, Lorg/slf4j/helpers/Util;->createHandleImage(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    new-instance v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 288
    .line 289
    const/4 v4, 0x5

    .line 290
    invoke-direct {v3, v4, v6, v7}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(IJ)V

    .line 291
    .line 292
    .line 293
    new-instance v4, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;

    .line 294
    .line 295
    const/4 v5, 0x3

    .line 296
    invoke-direct {v4, v1, v2, v3, v5}, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;-><init>(FLjava/lang/Object;Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v4}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    return-object v0

    .line 304
    :pswitch_7
    move-object/from16 v0, p1

    .line 305
    .line 306
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    const-string v1, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 312
    .line 313
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    :try_start_1
    invoke-interface {v1, v4, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 318
    .line 319
    .line 320
    const-string v0, "id"

    .line 321
    .line 322
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    const-string v2, "state"

    .line 327
    .line 328
    invoke-static {v1, v2}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    const-string/jumbo v5, "worker_class_name"

    .line 333
    .line 334
    .line 335
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    const-string v6, "input_merger_class_name"

    .line 340
    .line 341
    invoke-static {v1, v6}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    const-string v7, "input"

    .line 346
    .line 347
    invoke-static {v1, v7}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    const-string v8, "output"

    .line 352
    .line 353
    invoke-static {v1, v8}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    const-string v9, "initial_delay"

    .line 358
    .line 359
    invoke-static {v1, v9}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    const-string v10, "interval_duration"

    .line 364
    .line 365
    invoke-static {v1, v10}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    move-result v10

    .line 369
    const-string v11, "flex_duration"

    .line 370
    .line 371
    invoke-static {v1, v11}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    const-string v12, "run_attempt_count"

    .line 376
    .line 377
    invoke-static {v1, v12}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    const-string v13, "backoff_policy"

    .line 382
    .line 383
    invoke-static {v1, v13}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v13

    .line 387
    const-string v14, "backoff_delay_duration"

    .line 388
    .line 389
    invoke-static {v1, v14}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    move-result v14

    .line 393
    const-string v15, "last_enqueue_time"

    .line 394
    .line 395
    invoke-static {v1, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    move-result v15

    .line 399
    const-string v3, "minimum_retention_duration"

    .line 400
    .line 401
    invoke-static {v1, v3}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    const-string v4, "schedule_requested_at"

    .line 406
    .line 407
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    move/from16 p0, v4

    .line 412
    .line 413
    const-string v4, "run_in_foreground"

    .line 414
    .line 415
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    move/from16 p1, v4

    .line 420
    .line 421
    const-string v4, "out_of_quota_policy"

    .line 422
    .line 423
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    move/from16 v16, v4

    .line 428
    .line 429
    const-string v4, "period_count"

    .line 430
    .line 431
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    move/from16 v17, v4

    .line 436
    .line 437
    const-string v4, "generation"

    .line 438
    .line 439
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    move-result v4

    .line 443
    move/from16 v18, v4

    .line 444
    .line 445
    const-string v4, "next_schedule_time_override"

    .line 446
    .line 447
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    move/from16 v19, v4

    .line 452
    .line 453
    const-string v4, "next_schedule_time_override_generation"

    .line 454
    .line 455
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    move/from16 v20, v4

    .line 460
    .line 461
    const-string v4, "stop_reason"

    .line 462
    .line 463
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    move/from16 v21, v4

    .line 468
    .line 469
    const-string v4, "trace_tag"

    .line 470
    .line 471
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    move/from16 v22, v4

    .line 476
    .line 477
    const-string v4, "backoff_on_system_interruptions"

    .line 478
    .line 479
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    move/from16 v23, v4

    .line 484
    .line 485
    const-string v4, "required_network_type"

    .line 486
    .line 487
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    move/from16 v24, v4

    .line 492
    .line 493
    const-string v4, "required_network_request"

    .line 494
    .line 495
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    move/from16 v25, v4

    .line 500
    .line 501
    const-string v4, "requires_charging"

    .line 502
    .line 503
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    move/from16 v26, v4

    .line 508
    .line 509
    const-string v4, "requires_device_idle"

    .line 510
    .line 511
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    move/from16 v27, v4

    .line 516
    .line 517
    const-string v4, "requires_battery_not_low"

    .line 518
    .line 519
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    move/from16 v28, v4

    .line 524
    .line 525
    const-string v4, "requires_storage_not_low"

    .line 526
    .line 527
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    move/from16 v29, v4

    .line 532
    .line 533
    const-string v4, "trigger_content_update_delay"

    .line 534
    .line 535
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    move/from16 v30, v4

    .line 540
    .line 541
    const-string v4, "trigger_max_content_delay"

    .line 542
    .line 543
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    move/from16 v31, v4

    .line 548
    .line 549
    const-string v4, "content_uri_triggers"

    .line 550
    .line 551
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    move/from16 v32, v4

    .line 556
    .line 557
    new-instance v4, Ljava/util/ArrayList;

    .line 558
    .line 559
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .line 561
    .line 562
    :goto_5
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 563
    .line 564
    .line 565
    move-result v33

    .line 566
    if-eqz v33, :cond_f

    .line 567
    .line 568
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v35

    .line 572
    move/from16 v33, v3

    .line 573
    .line 574
    move-object/from16 v68, v4

    .line 575
    .line 576
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 577
    .line 578
    .line 579
    move-result-wide v3

    .line 580
    long-to-int v3, v3

    .line 581
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 582
    .line 583
    .line 584
    move-result-object v36

    .line 585
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v37

    .line 589
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v38

    .line 593
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 598
    .line 599
    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 600
    .line 601
    .line 602
    move-result-object v39

    .line 603
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 608
    .line 609
    .line 610
    move-result-object v40

    .line 611
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 612
    .line 613
    .line 614
    move-result-wide v41

    .line 615
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 616
    .line 617
    .line 618
    move-result-wide v43

    .line 619
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 620
    .line 621
    .line 622
    move-result-wide v45

    .line 623
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 624
    .line 625
    .line 626
    move-result-wide v3

    .line 627
    long-to-int v3, v3

    .line 628
    move v4, v2

    .line 629
    move/from16 v48, v3

    .line 630
    .line 631
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 632
    .line 633
    .line 634
    move-result-wide v2

    .line 635
    long-to-int v2, v2

    .line 636
    invoke-static {v2}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 637
    .line 638
    .line 639
    move-result-object v49

    .line 640
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 641
    .line 642
    .line 643
    move-result-wide v50

    .line 644
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 645
    .line 646
    .line 647
    move-result-wide v52

    .line 648
    move/from16 v2, v33

    .line 649
    .line 650
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 651
    .line 652
    .line 653
    move-result-wide v54

    .line 654
    move/from16 v3, p0

    .line 655
    .line 656
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 657
    .line 658
    .line 659
    move-result-wide v56

    .line 660
    move/from16 p0, v0

    .line 661
    .line 662
    move/from16 v33, v2

    .line 663
    .line 664
    move/from16 v0, p1

    .line 665
    .line 666
    move/from16 p1, v3

    .line 667
    .line 668
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 669
    .line 670
    .line 671
    move-result-wide v2

    .line 672
    long-to-int v2, v2

    .line 673
    if-eqz v2, :cond_6

    .line 674
    .line 675
    const/16 v58, 0x1

    .line 676
    .line 677
    :goto_6
    move/from16 v2, v16

    .line 678
    .line 679
    move/from16 v16, v4

    .line 680
    .line 681
    goto :goto_7

    .line 682
    :cond_6
    const/16 v58, 0x0

    .line 683
    .line 684
    goto :goto_6

    .line 685
    :goto_7
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 686
    .line 687
    .line 688
    move-result-wide v3

    .line 689
    long-to-int v3, v3

    .line 690
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 691
    .line 692
    .line 693
    move-result-object v59

    .line 694
    move/from16 v3, v17

    .line 695
    .line 696
    move/from16 v17, v5

    .line 697
    .line 698
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 699
    .line 700
    .line 701
    move-result-wide v4

    .line 702
    long-to-int v4, v4

    .line 703
    move/from16 v69, v3

    .line 704
    .line 705
    move/from16 v5, v18

    .line 706
    .line 707
    move/from16 v18, v2

    .line 708
    .line 709
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 710
    .line 711
    .line 712
    move-result-wide v2

    .line 713
    long-to-int v2, v2

    .line 714
    move/from16 v3, v19

    .line 715
    .line 716
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 717
    .line 718
    .line 719
    move-result-wide v62

    .line 720
    move/from16 v19, v0

    .line 721
    .line 722
    move/from16 v61, v2

    .line 723
    .line 724
    move/from16 v0, v20

    .line 725
    .line 726
    move/from16 v20, v3

    .line 727
    .line 728
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 729
    .line 730
    .line 731
    move-result-wide v2

    .line 732
    long-to-int v2, v2

    .line 733
    move/from16 v60, v4

    .line 734
    .line 735
    move/from16 v3, v21

    .line 736
    .line 737
    move/from16 v21, v5

    .line 738
    .line 739
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 740
    .line 741
    .line 742
    move-result-wide v4

    .line 743
    long-to-int v4, v4

    .line 744
    move/from16 v5, v22

    .line 745
    .line 746
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 747
    .line 748
    .line 749
    move-result v22

    .line 750
    const/16 v34, 0x0

    .line 751
    .line 752
    if-eqz v22, :cond_7

    .line 753
    .line 754
    move-object/from16 v66, v34

    .line 755
    .line 756
    :goto_8
    move/from16 v22, v0

    .line 757
    .line 758
    move/from16 v0, v23

    .line 759
    .line 760
    goto :goto_9

    .line 761
    :cond_7
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v22

    .line 765
    move-object/from16 v66, v22

    .line 766
    .line 767
    goto :goto_8

    .line 768
    :goto_9
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 769
    .line 770
    .line 771
    move-result v23

    .line 772
    if-eqz v23, :cond_8

    .line 773
    .line 774
    move/from16 v64, v2

    .line 775
    .line 776
    move/from16 v23, v3

    .line 777
    .line 778
    move-object/from16 v2, v34

    .line 779
    .line 780
    goto :goto_a

    .line 781
    :cond_8
    move/from16 v64, v2

    .line 782
    .line 783
    move/from16 v23, v3

    .line 784
    .line 785
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 786
    .line 787
    .line 788
    move-result-wide v2

    .line 789
    long-to-int v2, v2

    .line 790
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    :goto_a
    if-eqz v2, :cond_a

    .line 795
    .line 796
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    if-eqz v2, :cond_9

    .line 801
    .line 802
    const/4 v2, 0x1

    .line 803
    goto :goto_b

    .line 804
    :cond_9
    const/4 v2, 0x0

    .line 805
    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 806
    .line 807
    .line 808
    move-result-object v34

    .line 809
    :cond_a
    move/from16 v65, v4

    .line 810
    .line 811
    move/from16 v2, v24

    .line 812
    .line 813
    move-object/from16 v67, v34

    .line 814
    .line 815
    goto :goto_c

    .line 816
    :catchall_1
    move-exception v0

    .line 817
    move-object/from16 v30, v1

    .line 818
    .line 819
    goto/16 :goto_15

    .line 820
    .line 821
    :goto_c
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 822
    .line 823
    .line 824
    move-result-wide v3

    .line 825
    long-to-int v3, v3

    .line 826
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 827
    .line 828
    .line 829
    move-result-object v72

    .line 830
    move/from16 v3, v25

    .line 831
    .line 832
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 833
    .line 834
    .line 835
    move-result-object v4

    .line 836
    invoke-static {v4}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 837
    .line 838
    .line 839
    move-result-object v71

    .line 840
    move/from16 v24, v2

    .line 841
    .line 842
    move/from16 v25, v3

    .line 843
    .line 844
    move/from16 v4, v26

    .line 845
    .line 846
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 847
    .line 848
    .line 849
    move-result-wide v2

    .line 850
    long-to-int v2, v2

    .line 851
    if-eqz v2, :cond_b

    .line 852
    .line 853
    const/16 v73, 0x1

    .line 854
    .line 855
    :goto_d
    move/from16 v26, v4

    .line 856
    .line 857
    move/from16 v2, v27

    .line 858
    .line 859
    goto :goto_e

    .line 860
    :cond_b
    const/16 v73, 0x0

    .line 861
    .line 862
    goto :goto_d

    .line 863
    :goto_e
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 864
    .line 865
    .line 866
    move-result-wide v3

    .line 867
    long-to-int v3, v3

    .line 868
    if-eqz v3, :cond_c

    .line 869
    .line 870
    const/16 v74, 0x1

    .line 871
    .line 872
    :goto_f
    move/from16 v27, v5

    .line 873
    .line 874
    move/from16 v3, v28

    .line 875
    .line 876
    goto :goto_10

    .line 877
    :cond_c
    const/16 v74, 0x0

    .line 878
    .line 879
    goto :goto_f

    .line 880
    :goto_10
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 881
    .line 882
    .line 883
    move-result-wide v4

    .line 884
    long-to-int v4, v4

    .line 885
    if-eqz v4, :cond_d

    .line 886
    .line 887
    const/16 v75, 0x1

    .line 888
    .line 889
    :goto_11
    move v5, v2

    .line 890
    move/from16 v28, v3

    .line 891
    .line 892
    move/from16 v4, v29

    .line 893
    .line 894
    goto :goto_12

    .line 895
    :cond_d
    const/16 v75, 0x0

    .line 896
    .line 897
    goto :goto_11

    .line 898
    :goto_12
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 899
    .line 900
    .line 901
    move-result-wide v2

    .line 902
    long-to-int v2, v2

    .line 903
    if-eqz v2, :cond_e

    .line 904
    .line 905
    const/16 v76, 0x1

    .line 906
    .line 907
    :goto_13
    move/from16 v2, v30

    .line 908
    .line 909
    goto :goto_14

    .line 910
    :cond_e
    const/16 v76, 0x0

    .line 911
    .line 912
    goto :goto_13

    .line 913
    :goto_14
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 914
    .line 915
    .line 916
    move-result-wide v77

    .line 917
    move/from16 v3, v31

    .line 918
    .line 919
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 920
    .line 921
    .line 922
    move-result-wide v79

    .line 923
    move/from16 v29, v0

    .line 924
    .line 925
    move/from16 v0, v32

    .line 926
    .line 927
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 928
    .line 929
    .line 930
    move-result-object v30

    .line 931
    invoke-static/range {v30 .. v30}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 932
    .line 933
    .line 934
    move-result-object v81

    .line 935
    new-instance v47, Landroidx/work/Constraints;

    .line 936
    .line 937
    move-object/from16 v70, v47

    .line 938
    .line 939
    invoke-direct/range {v70 .. v81}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 940
    .line 941
    .line 942
    move-object/from16 v47, v70

    .line 943
    .line 944
    new-instance v34, Landroidx/work/impl/model/WorkSpec;

    .line 945
    .line 946
    invoke-direct/range {v34 .. v67}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 947
    .line 948
    .line 949
    move/from16 v32, v0

    .line 950
    .line 951
    move-object/from16 v0, v34

    .line 952
    .line 953
    move-object/from16 v30, v1

    .line 954
    .line 955
    move-object/from16 v1, v68

    .line 956
    .line 957
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 958
    .line 959
    .line 960
    move v0, v4

    .line 961
    move-object v4, v1

    .line 962
    move-object/from16 v1, v30

    .line 963
    .line 964
    move/from16 v30, v2

    .line 965
    .line 966
    move/from16 v2, v16

    .line 967
    .line 968
    move/from16 v16, v18

    .line 969
    .line 970
    move/from16 v18, v21

    .line 971
    .line 972
    move/from16 v21, v23

    .line 973
    .line 974
    move/from16 v23, v29

    .line 975
    .line 976
    move/from16 v29, v0

    .line 977
    .line 978
    move/from16 v0, p0

    .line 979
    .line 980
    move/from16 p0, p1

    .line 981
    .line 982
    move/from16 v31, v3

    .line 983
    .line 984
    move/from16 p1, v19

    .line 985
    .line 986
    move/from16 v19, v20

    .line 987
    .line 988
    move/from16 v20, v22

    .line 989
    .line 990
    move/from16 v22, v27

    .line 991
    .line 992
    move/from16 v3, v33

    .line 993
    .line 994
    move/from16 v27, v5

    .line 995
    .line 996
    move/from16 v5, v17

    .line 997
    .line 998
    move/from16 v17, v69

    .line 999
    .line 1000
    goto/16 :goto_5

    .line 1001
    .line 1002
    :catchall_2
    move-exception v0

    .line 1003
    goto :goto_15

    .line 1004
    :cond_f
    move-object/from16 v30, v1

    .line 1005
    .line 1006
    move-object v1, v4

    .line 1007
    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V

    .line 1008
    .line 1009
    .line 1010
    return-object v1

    .line 1011
    :goto_15
    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V

    .line 1012
    .line 1013
    .line 1014
    throw v0

    .line 1015
    :pswitch_data_0
    .packed-switch 0x0
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
