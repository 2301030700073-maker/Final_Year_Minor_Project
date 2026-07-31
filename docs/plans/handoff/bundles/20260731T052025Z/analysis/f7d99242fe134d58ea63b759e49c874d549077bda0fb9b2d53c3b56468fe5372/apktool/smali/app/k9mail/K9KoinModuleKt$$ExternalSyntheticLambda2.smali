.class public final synthetic Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v7, 0x4

    .line 9
    const/4 v8, 0x3

    .line 10
    const/4 v9, 0x2

    .line 11
    const/4 v10, 0x1

    .line 12
    const/4 v11, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p1

    .line 17
    .line 18
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 19
    .line 20
    move-object/from16 v1, p2

    .line 21
    .line 22
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lapp/k9mail/core/android/common/camera/io/CaptureImageFileWriter;

    .line 31
    .line 32
    const-class v2, Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2, v5, v5}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/content/Context;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lapp/k9mail/core/android/common/camera/io/CaptureImageFileWriter;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :pswitch_0
    move-object/from16 v0, p1

    .line 49
    .line 50
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 51
    .line 52
    move-object/from16 v1, p2

    .line 53
    .line 54
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_1
    move-object/from16 v0, p1

    .line 69
    .line 70
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 71
    .line 72
    move-object/from16 v1, p2

    .line 73
    .line 74
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v0, Lapp/k9mail/auth/K9OAuthConfigurationFactory;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :pswitch_2
    move-object/from16 v0, p1

    .line 89
    .line 90
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 91
    .line 92
    move-object/from16 v1, p2

    .line 93
    .line 94
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v0, Lapp/k9mail/K9KoinModuleKt;->appConfig:Lcom/fsck/k9/DefaultAppConfig;

    .line 103
    .line 104
    return-object v0

    .line 105
    :pswitch_3
    move-object/from16 v0, p1

    .line 106
    .line 107
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 108
    .line 109
    move-object/from16 v1, p2

    .line 110
    .line 111
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const-string v0, "21.0"

    .line 120
    .line 121
    return-object v0

    .line 122
    :pswitch_4
    move-object/from16 v0, p1

    .line 123
    .line 124
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 125
    .line 126
    move-object/from16 v0, p2

    .line 127
    .line 128
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroidx/navigation/NavHostController;->saveState()Landroid/os/Bundle;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    return-object v0

    .line 135
    :pswitch_5
    move-object/from16 v0, p1

    .line 136
    .line 137
    check-cast v0, Landroidx/datastore/core/Message$Update;

    .line 138
    .line 139
    move-object/from16 v1, p2

    .line 140
    .line 141
    check-cast v1, Ljava/lang/Throwable;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object v0, v0, Landroidx/datastore/core/Message$Update;->ack:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 147
    .line 148
    if-nez v1, :cond_0

    .line 149
    .line 150
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 151
    .line 152
    const-string v2, "DataStore scope was cancelled before updateData could complete"

    .line 153
    .line 154
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 158
    .line 159
    .line 160
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 161
    .line 162
    return-object v0

    .line 163
    :pswitch_6
    move-object/from16 v0, p1

    .line 164
    .line 165
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 166
    .line 167
    move-object/from16 v1, p2

    .line 168
    .line 169
    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 170
    .line 171
    iget-object v2, v1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 172
    .line 173
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->AnnotatedStringSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 174
    .line 175
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget-wide v3, v1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 180
    .line 181
    new-instance v1, Landroidx/compose/ui/text/TextRange;

    .line 182
    .line 183
    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 184
    .line 185
    .line 186
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextRangeSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 187
    .line 188
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-array v1, v9, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object v2, v1, v11

    .line 195
    .line 196
    aput-object v0, v1, v10

    .line 197
    .line 198
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0

    .line 203
    :pswitch_7
    move-object/from16 v0, p1

    .line 204
    .line 205
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 206
    .line 207
    move-object/from16 v0, p2

    .line 208
    .line 209
    check-cast v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 210
    .line 211
    iget v0, v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    .line 212
    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    return-object v0

    .line 218
    :pswitch_8
    move-object/from16 v0, p1

    .line 219
    .line 220
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 221
    .line 222
    move-object/from16 v1, p2

    .line 223
    .line 224
    check-cast v1, Landroidx/compose/ui/text/style/TextMotion;

    .line 225
    .line 226
    iget v2, v1, Landroidx/compose/ui/text/style/TextMotion;->linearity:I

    .line 227
    .line 228
    new-instance v3, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 229
    .line 230
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/TextMotion$Linearity;-><init>(I)V

    .line 231
    .line 232
    .line 233
    sget-object v2, Landroidx/compose/ui/text/ParagraphKt;->TextMotionLinearitySaver:Landroidx/compose/ui/platform/WeakCache;

    .line 234
    .line 235
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-boolean v1, v1, Landroidx/compose/ui/text/style/TextMotion;->subpixelTextPositioning:Z

    .line 240
    .line 241
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    new-array v2, v9, [Ljava/lang/Object;

    .line 246
    .line 247
    aput-object v0, v2, v11

    .line 248
    .line 249
    aput-object v1, v2, v10

    .line 250
    .line 251
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    return-object v0

    .line 256
    :pswitch_9
    move-object/from16 v0, p1

    .line 257
    .line 258
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 259
    .line 260
    move-object/from16 v0, p2

    .line 261
    .line 262
    check-cast v0, Landroidx/compose/ui/text/style/LineBreak;

    .line 263
    .line 264
    iget v0, v0, Landroidx/compose/ui/text/style/LineBreak;->mask:I

    .line 265
    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    return-object v0

    .line 271
    :pswitch_a
    move-object/from16 v0, p1

    .line 272
    .line 273
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 274
    .line 275
    move-object/from16 v0, p2

    .line 276
    .line 277
    check-cast v0, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 278
    .line 279
    iget v0, v0, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    .line 280
    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    return-object v0

    .line 286
    :pswitch_b
    move-object/from16 v0, p1

    .line 287
    .line 288
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 289
    .line 290
    move-object/from16 v1, p2

    .line 291
    .line 292
    check-cast v1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 293
    .line 294
    iget-boolean v2, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 295
    .line 296
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->AnnotatedStringSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 301
    .line 302
    iget v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    .line 303
    .line 304
    new-instance v3, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 305
    .line 306
    invoke-direct {v3, v1}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 307
    .line 308
    .line 309
    sget-object v1, Landroidx/compose/ui/text/ParagraphKt;->emojiSupportMatchSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 310
    .line 311
    invoke-static {v3, v1, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    new-array v1, v9, [Ljava/lang/Object;

    .line 316
    .line 317
    aput-object v2, v1, v11

    .line 318
    .line 319
    aput-object v0, v1, v10

    .line 320
    .line 321
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    return-object v0

    .line 326
    :pswitch_c
    move-object/from16 v0, p1

    .line 327
    .line 328
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 329
    .line 330
    move-object/from16 v1, p2

    .line 331
    .line 332
    check-cast v1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 333
    .line 334
    iget-object v2, v1, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 335
    .line 336
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 337
    .line 338
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    iget-object v4, v1, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 343
    .line 344
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    iget-object v5, v1, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 349
    .line 350
    invoke-static {v5, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    iget-object v1, v1, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 355
    .line 356
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    new-array v1, v7, [Ljava/lang/Object;

    .line 361
    .line 362
    aput-object v2, v1, v11

    .line 363
    .line 364
    aput-object v4, v1, v10

    .line 365
    .line 366
    aput-object v5, v1, v9

    .line 367
    .line 368
    aput-object v0, v1, v8

    .line 369
    .line 370
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    return-object v0

    .line 375
    :pswitch_d
    move-object/from16 v0, p1

    .line 376
    .line 377
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 378
    .line 379
    move-object/from16 v5, p2

    .line 380
    .line 381
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    .line 382
    .line 383
    iget-object v12, v5, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 384
    .line 385
    invoke-interface {v12}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 386
    .line 387
    .line 388
    move-result-wide v12

    .line 389
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    .line 390
    .line 391
    invoke-direct {v14, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 392
    .line 393
    .line 394
    sget-object v12, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 395
    .line 396
    invoke-static {v14, v12, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v13

    .line 400
    iget-wide v14, v5, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 401
    .line 402
    const/16 p0, 0x8

    .line 403
    .line 404
    new-instance v2, Landroidx/compose/ui/unit/TextUnit;

    .line 405
    .line 406
    invoke-direct {v2, v14, v15}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 407
    .line 408
    .line 409
    sget-object v14, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 410
    .line 411
    invoke-static {v2, v14, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    iget-object v15, v5, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 416
    .line 417
    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    .line 418
    .line 419
    const/16 v16, 0x7

    .line 420
    .line 421
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 422
    .line 423
    invoke-static {v15, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    iget-object v15, v5, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 428
    .line 429
    const/16 v17, 0x6

    .line 430
    .line 431
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->FontStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 432
    .line 433
    invoke-static {v15, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    iget-object v15, v5, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 438
    .line 439
    move/from16 v18, v7

    .line 440
    .line 441
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->FontSynthesisSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 442
    .line 443
    invoke-static {v15, v7, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    const/4 v15, -0x1

    .line 448
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v15

    .line 452
    move/from16 v19, v10

    .line 453
    .line 454
    iget-object v10, v5, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 455
    .line 456
    move/from16 v20, v9

    .line 457
    .line 458
    move-object/from16 p1, v10

    .line 459
    .line 460
    iget-wide v9, v5, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 461
    .line 462
    move/from16 v21, v11

    .line 463
    .line 464
    new-instance v11, Landroidx/compose/ui/unit/TextUnit;

    .line 465
    .line 466
    invoke-direct {v11, v9, v10}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 467
    .line 468
    .line 469
    invoke-static {v11, v14, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v9

    .line 473
    iget-object v10, v5, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 474
    .line 475
    sget-object v11, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 476
    .line 477
    invoke-static {v10, v11, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v10

    .line 481
    iget-object v11, v5, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 482
    .line 483
    sget-object v14, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 484
    .line 485
    invoke-static {v11, v14, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v11

    .line 489
    iget-object v14, v5, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 490
    .line 491
    sget-object v22, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    .line 492
    .line 493
    const/16 v22, 0x5

    .line 494
    .line 495
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 496
    .line 497
    invoke-static {v14, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    move v14, v8

    .line 502
    move-object/from16 p2, v9

    .line 503
    .line 504
    iget-wide v8, v5, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 505
    .line 506
    move/from16 v23, v14

    .line 507
    .line 508
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    .line 509
    .line 510
    invoke-direct {v14, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 511
    .line 512
    .line 513
    invoke-static {v14, v12, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    iget-object v9, v5, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 518
    .line 519
    sget-object v12, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 520
    .line 521
    invoke-static {v9, v12, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    iget-object v5, v5, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 526
    .line 527
    sget-object v12, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 528
    .line 529
    sget-object v12, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 530
    .line 531
    invoke-static {v5, v12, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    const/16 v5, 0xe

    .line 536
    .line 537
    new-array v5, v5, [Ljava/lang/Object;

    .line 538
    .line 539
    aput-object v13, v5, v21

    .line 540
    .line 541
    aput-object v2, v5, v19

    .line 542
    .line 543
    aput-object v3, v5, v20

    .line 544
    .line 545
    aput-object v4, v5, v23

    .line 546
    .line 547
    aput-object v7, v5, v18

    .line 548
    .line 549
    aput-object v15, v5, v22

    .line 550
    .line 551
    aput-object p1, v5, v17

    .line 552
    .line 553
    aput-object p2, v5, v16

    .line 554
    .line 555
    aput-object v10, v5, p0

    .line 556
    .line 557
    aput-object v11, v5, v1

    .line 558
    .line 559
    const/16 v1, 0xa

    .line 560
    .line 561
    aput-object v6, v5, v1

    .line 562
    .line 563
    const/16 v1, 0xb

    .line 564
    .line 565
    aput-object v8, v5, v1

    .line 566
    .line 567
    const/16 v1, 0xc

    .line 568
    .line 569
    aput-object v9, v5, v1

    .line 570
    .line 571
    const/16 v1, 0xd

    .line 572
    .line 573
    aput-object v0, v5, v1

    .line 574
    .line 575
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    return-object v0

    .line 580
    :pswitch_e
    move-object/from16 v0, p1

    .line 581
    .line 582
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 583
    .line 584
    move-object/from16 v0, p2

    .line 585
    .line 586
    check-cast v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 587
    .line 588
    iget-object v0, v0, Landroidx/compose/ui/text/UrlAnnotation;->url:Ljava/lang/String;

    .line 589
    .line 590
    return-object v0

    .line 591
    :pswitch_f
    move/from16 v18, v7

    .line 592
    .line 593
    move/from16 v23, v8

    .line 594
    .line 595
    move/from16 v20, v9

    .line 596
    .line 597
    move/from16 v19, v10

    .line 598
    .line 599
    move/from16 v21, v11

    .line 600
    .line 601
    const/16 p0, 0x8

    .line 602
    .line 603
    const/16 v16, 0x7

    .line 604
    .line 605
    const/16 v17, 0x6

    .line 606
    .line 607
    const/16 v22, 0x5

    .line 608
    .line 609
    move-object/from16 v0, p1

    .line 610
    .line 611
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 612
    .line 613
    move-object/from16 v2, p2

    .line 614
    .line 615
    check-cast v2, Landroidx/compose/ui/text/ParagraphStyle;

    .line 616
    .line 617
    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 618
    .line 619
    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    .line 620
    .line 621
    invoke-direct {v4, v3}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 622
    .line 623
    .line 624
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextAlignSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 625
    .line 626
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    iget v4, v2, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 631
    .line 632
    new-instance v5, Landroidx/compose/ui/text/style/TextDirection;

    .line 633
    .line 634
    invoke-direct {v5, v4}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 635
    .line 636
    .line 637
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->TextDirectionSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 638
    .line 639
    invoke-static {v5, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    iget-wide v5, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 644
    .line 645
    new-instance v7, Landroidx/compose/ui/unit/TextUnit;

    .line 646
    .line 647
    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 648
    .line 649
    .line 650
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 651
    .line 652
    invoke-static {v7, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    iget-object v6, v2, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 657
    .line 658
    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 659
    .line 660
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 661
    .line 662
    invoke-static {v6, v7, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v6

    .line 666
    iget-object v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 667
    .line 668
    sget-object v8, Landroidx/compose/ui/text/ParagraphKt;->PlatformParagraphStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 669
    .line 670
    invoke-static {v7, v8, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    iget-object v8, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 675
    .line 676
    sget-object v9, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 677
    .line 678
    sget-object v9, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 679
    .line 680
    invoke-static {v8, v9, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v8

    .line 684
    iget v9, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 685
    .line 686
    new-instance v10, Landroidx/compose/ui/text/style/LineBreak;

    .line 687
    .line 688
    invoke-direct {v10, v9}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 689
    .line 690
    .line 691
    sget-object v9, Landroidx/compose/ui/text/ParagraphKt;->LineBreakSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 692
    .line 693
    invoke-static {v10, v9, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v9

    .line 697
    iget v10, v2, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 698
    .line 699
    new-instance v11, Landroidx/compose/ui/text/style/Hyphens;

    .line 700
    .line 701
    invoke-direct {v11, v10}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 702
    .line 703
    .line 704
    sget-object v10, Landroidx/compose/ui/text/SaversKt;->HyphensSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 705
    .line 706
    invoke-static {v11, v10, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v10

    .line 710
    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 711
    .line 712
    sget-object v11, Landroidx/compose/ui/text/ParagraphKt;->TextMotionSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 713
    .line 714
    invoke-static {v2, v11, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    new-array v1, v1, [Ljava/lang/Object;

    .line 719
    .line 720
    aput-object v3, v1, v21

    .line 721
    .line 722
    aput-object v4, v1, v19

    .line 723
    .line 724
    aput-object v5, v1, v20

    .line 725
    .line 726
    aput-object v6, v1, v23

    .line 727
    .line 728
    aput-object v7, v1, v18

    .line 729
    .line 730
    aput-object v8, v1, v22

    .line 731
    .line 732
    aput-object v9, v1, v17

    .line 733
    .line 734
    aput-object v10, v1, v16

    .line 735
    .line 736
    aput-object v0, v1, p0

    .line 737
    .line 738
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    return-object v0

    .line 743
    :pswitch_10
    move-object/from16 v0, p1

    .line 744
    .line 745
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 746
    .line 747
    move-object/from16 v0, p2

    .line 748
    .line 749
    check-cast v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 750
    .line 751
    iget-object v0, v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->verbatim:Ljava/lang/String;

    .line 752
    .line 753
    return-object v0

    .line 754
    :pswitch_11
    move-object/from16 v0, p1

    .line 755
    .line 756
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 757
    .line 758
    move-object/from16 v0, p2

    .line 759
    .line 760
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 761
    .line 762
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->value:I

    .line 763
    .line 764
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    return-object v0

    .line 769
    :pswitch_12
    move-object/from16 v0, p1

    .line 770
    .line 771
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 772
    .line 773
    move-object/from16 v0, p2

    .line 774
    .line 775
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 776
    .line 777
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    .line 778
    .line 779
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    return-object v0

    .line 784
    :pswitch_13
    move-object/from16 v0, p1

    .line 785
    .line 786
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 787
    .line 788
    move-object/from16 v0, p2

    .line 789
    .line 790
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 791
    .line 792
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    .line 793
    .line 794
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    return-object v0

    .line 799
    :pswitch_14
    move/from16 v23, v8

    .line 800
    .line 801
    move/from16 v20, v9

    .line 802
    .line 803
    move/from16 v19, v10

    .line 804
    .line 805
    move/from16 v21, v11

    .line 806
    .line 807
    move-object/from16 v0, p1

    .line 808
    .line 809
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 810
    .line 811
    move-object/from16 v1, p2

    .line 812
    .line 813
    check-cast v1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 814
    .line 815
    iget v2, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    .line 816
    .line 817
    new-instance v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 818
    .line 819
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(F)V

    .line 820
    .line 821
    .line 822
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleAlignmentSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 823
    .line 824
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    iget v3, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    .line 829
    .line 830
    new-instance v4, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 831
    .line 832
    invoke-direct {v4, v3}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;-><init>(I)V

    .line 833
    .line 834
    .line 835
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleTrimSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 836
    .line 837
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v3

    .line 841
    iget v1, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    .line 842
    .line 843
    new-instance v4, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 844
    .line 845
    invoke-direct {v4, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;-><init>(I)V

    .line 846
    .line 847
    .line 848
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleModeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 849
    .line 850
    invoke-static {v4, v1, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    move/from16 v14, v23

    .line 855
    .line 856
    new-array v1, v14, [Ljava/lang/Object;

    .line 857
    .line 858
    aput-object v2, v1, v21

    .line 859
    .line 860
    aput-object v3, v1, v19

    .line 861
    .line 862
    aput-object v0, v1, v20

    .line 863
    .line 864
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    return-object v0

    .line 869
    :pswitch_15
    move-object/from16 v0, p1

    .line 870
    .line 871
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 872
    .line 873
    move-object/from16 v0, p2

    .line 874
    .line 875
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 876
    .line 877
    iget-object v0, v0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 878
    .line 879
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    return-object v0

    .line 884
    :pswitch_16
    move/from16 v21, v11

    .line 885
    .line 886
    move-object/from16 v0, p1

    .line 887
    .line 888
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 889
    .line 890
    move-object/from16 v1, p2

    .line 891
    .line 892
    check-cast v1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 893
    .line 894
    iget-object v1, v1, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    .line 895
    .line 896
    new-instance v2, Ljava/util/ArrayList;

    .line 897
    .line 898
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 899
    .line 900
    .line 901
    move-result v3

    .line 902
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 903
    .line 904
    .line 905
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 906
    .line 907
    .line 908
    move-result v3

    .line 909
    :goto_0
    if-ge v11, v3, :cond_1

    .line 910
    .line 911
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v4

    .line 915
    check-cast v4, Landroidx/compose/ui/text/intl/Locale;

    .line 916
    .line 917
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 918
    .line 919
    invoke-static {v4, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object v4

    .line 923
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    add-int/lit8 v11, v11, 0x1

    .line 927
    .line 928
    goto :goto_0

    .line 929
    :cond_1
    return-object v2

    .line 930
    :pswitch_17
    move/from16 v18, v7

    .line 931
    .line 932
    move/from16 v20, v9

    .line 933
    .line 934
    move/from16 v19, v10

    .line 935
    .line 936
    move/from16 v21, v11

    .line 937
    .line 938
    const/16 v22, 0x5

    .line 939
    .line 940
    move-object/from16 v0, p1

    .line 941
    .line 942
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 943
    .line 944
    move-object/from16 v1, p2

    .line 945
    .line 946
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 947
    .line 948
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 949
    .line 950
    instance-of v3, v2, Landroidx/compose/ui/text/ParagraphStyle;

    .line 951
    .line 952
    if-eqz v3, :cond_2

    .line 953
    .line 954
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Paragraph:Landroidx/compose/ui/text/AnnotationType;

    .line 955
    .line 956
    goto :goto_1

    .line 957
    :cond_2
    instance-of v3, v2, Landroidx/compose/ui/text/SpanStyle;

    .line 958
    .line 959
    if-eqz v3, :cond_3

    .line 960
    .line 961
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Span:Landroidx/compose/ui/text/AnnotationType;

    .line 962
    .line 963
    goto :goto_1

    .line 964
    :cond_3
    instance-of v3, v2, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 965
    .line 966
    if-eqz v3, :cond_4

    .line 967
    .line 968
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->VerbatimTts:Landroidx/compose/ui/text/AnnotationType;

    .line 969
    .line 970
    goto :goto_1

    .line 971
    :cond_4
    instance-of v3, v2, Landroidx/compose/ui/text/UrlAnnotation;

    .line 972
    .line 973
    if-eqz v3, :cond_5

    .line 974
    .line 975
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Url:Landroidx/compose/ui/text/AnnotationType;

    .line 976
    .line 977
    goto :goto_1

    .line 978
    :cond_5
    instance-of v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 979
    .line 980
    if-eqz v3, :cond_6

    .line 981
    .line 982
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Link:Landroidx/compose/ui/text/AnnotationType;

    .line 983
    .line 984
    goto :goto_1

    .line 985
    :cond_6
    instance-of v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 986
    .line 987
    if-eqz v3, :cond_7

    .line 988
    .line 989
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Clickable:Landroidx/compose/ui/text/AnnotationType;

    .line 990
    .line 991
    goto :goto_1

    .line 992
    :cond_7
    instance-of v3, v2, Landroidx/compose/ui/text/StringAnnotation;

    .line 993
    .line 994
    if-eqz v3, :cond_8

    .line 995
    .line 996
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->String:Landroidx/compose/ui/text/AnnotationType;

    .line 997
    .line 998
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 999
    .line 1000
    .line 1001
    move-result v4

    .line 1002
    packed-switch v4, :pswitch_data_1

    .line 1003
    .line 1004
    .line 1005
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1006
    .line 1007
    .line 1008
    goto/16 :goto_3

    .line 1009
    .line 1010
    :pswitch_18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    .line 1012
    .line 1013
    check-cast v2, Landroidx/compose/ui/text/StringAnnotation;

    .line 1014
    .line 1015
    iget-object v0, v2, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    .line 1016
    .line 1017
    goto :goto_2

    .line 1018
    :pswitch_19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1019
    .line 1020
    .line 1021
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1022
    .line 1023
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1024
    .line 1025
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    goto :goto_2

    .line 1030
    :pswitch_1a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1031
    .line 1032
    .line 1033
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1034
    .line 1035
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1036
    .line 1037
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    goto :goto_2

    .line 1042
    :pswitch_1b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1043
    .line 1044
    .line 1045
    check-cast v2, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1046
    .line 1047
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1048
    .line 1049
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v0

    .line 1053
    goto :goto_2

    .line 1054
    :pswitch_1c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1055
    .line 1056
    .line 1057
    check-cast v2, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 1058
    .line 1059
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1060
    .line 1061
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    goto :goto_2

    .line 1066
    :pswitch_1d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1067
    .line 1068
    .line 1069
    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    .line 1070
    .line 1071
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1072
    .line 1073
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v0

    .line 1077
    goto :goto_2

    .line 1078
    :pswitch_1e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1079
    .line 1080
    .line 1081
    check-cast v2, Landroidx/compose/ui/text/ParagraphStyle;

    .line 1082
    .line 1083
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1084
    .line 1085
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    :goto_2
    iget v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1090
    .line 1091
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    iget v4, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1096
    .line 1097
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v4

    .line 1101
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 1102
    .line 1103
    move/from16 v5, v22

    .line 1104
    .line 1105
    new-array v5, v5, [Ljava/lang/Object;

    .line 1106
    .line 1107
    aput-object v3, v5, v21

    .line 1108
    .line 1109
    aput-object v0, v5, v19

    .line 1110
    .line 1111
    aput-object v2, v5, v20

    .line 1112
    .line 1113
    const/4 v14, 0x3

    .line 1114
    aput-object v4, v5, v14

    .line 1115
    .line 1116
    aput-object v1, v5, v18

    .line 1117
    .line 1118
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v5

    .line 1122
    :goto_3
    return-object v5

    .line 1123
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1124
    .line 1125
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 1126
    .line 1127
    .line 1128
    throw v0

    .line 1129
    :pswitch_1f
    move/from16 v20, v9

    .line 1130
    .line 1131
    move/from16 v19, v10

    .line 1132
    .line 1133
    move/from16 v21, v11

    .line 1134
    .line 1135
    move-object/from16 v0, p1

    .line 1136
    .line 1137
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1138
    .line 1139
    move-object/from16 v0, p2

    .line 1140
    .line 1141
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 1142
    .line 1143
    if-nez v0, :cond_9

    .line 1144
    .line 1145
    move/from16 v1, v21

    .line 1146
    .line 1147
    goto :goto_4

    .line 1148
    :cond_9
    iget-wide v1, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1149
    .line 1150
    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v1

    .line 1159
    :goto_4
    if-eqz v1, :cond_a

    .line 1160
    .line 1161
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1162
    .line 1163
    goto :goto_5

    .line 1164
    :cond_a
    iget-wide v1, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1165
    .line 1166
    const/16 v3, 0x20

    .line 1167
    .line 1168
    shr-long/2addr v1, v3

    .line 1169
    long-to-int v1, v1

    .line 1170
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1171
    .line 1172
    .line 1173
    move-result v1

    .line 1174
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v1

    .line 1178
    iget-wide v2, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1179
    .line 1180
    const-wide v4, 0xffffffffL

    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    and-long/2addr v2, v4

    .line 1186
    long-to-int v0, v2

    .line 1187
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1188
    .line 1189
    .line 1190
    move-result v0

    .line 1191
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    move/from16 v2, v20

    .line 1196
    .line 1197
    new-array v2, v2, [Ljava/lang/Float;

    .line 1198
    .line 1199
    aput-object v1, v2, v21

    .line 1200
    .line 1201
    aput-object v0, v2, v19

    .line 1202
    .line 1203
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    :goto_5
    return-object v0

    .line 1208
    :pswitch_20
    move/from16 v19, v10

    .line 1209
    .line 1210
    move/from16 v21, v11

    .line 1211
    .line 1212
    move-object/from16 v0, p1

    .line 1213
    .line 1214
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1215
    .line 1216
    move-object/from16 v0, p2

    .line 1217
    .line 1218
    check-cast v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 1219
    .line 1220
    iget-wide v0, v0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    .line 1221
    .line 1222
    const-wide v2, 0x200000000L

    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v2

    .line 1231
    if-eqz v2, :cond_b

    .line 1232
    .line 1233
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    goto :goto_6

    .line 1238
    :cond_b
    const-wide v2, 0x100000000L

    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v0

    .line 1247
    if-eqz v0, :cond_c

    .line 1248
    .line 1249
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v0

    .line 1253
    goto :goto_6

    .line 1254
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1255
    .line 1256
    :goto_6
    return-object v0

    .line 1257
    :pswitch_21
    move/from16 v19, v10

    .line 1258
    .line 1259
    move/from16 v21, v11

    .line 1260
    .line 1261
    move-object/from16 v0, p1

    .line 1262
    .line 1263
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1264
    .line 1265
    move-object/from16 v1, p2

    .line 1266
    .line 1267
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1268
    .line 1269
    iget-object v2, v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->tag:Ljava/lang/String;

    .line 1270
    .line 1271
    iget-object v1, v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 1272
    .line 1273
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 1274
    .line 1275
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    const/4 v1, 0x2

    .line 1280
    new-array v1, v1, [Ljava/lang/Object;

    .line 1281
    .line 1282
    aput-object v2, v1, v21

    .line 1283
    .line 1284
    aput-object v0, v1, v19

    .line 1285
    .line 1286
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    return-object v0

    .line 1291
    :pswitch_22
    move/from16 v19, v10

    .line 1292
    .line 1293
    move/from16 v21, v11

    .line 1294
    .line 1295
    move-object/from16 v0, p1

    .line 1296
    .line 1297
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1298
    .line 1299
    move-object/from16 v1, p2

    .line 1300
    .line 1301
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 1302
    .line 1303
    sget-wide v2, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 1304
    .line 1305
    if-nez v1, :cond_d

    .line 1306
    .line 1307
    move/from16 v2, v21

    .line 1308
    .line 1309
    goto :goto_7

    .line 1310
    :cond_d
    iget-wide v4, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 1311
    .line 1312
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v2

    .line 1316
    :goto_7
    if-eqz v2, :cond_e

    .line 1317
    .line 1318
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1319
    .line 1320
    goto :goto_8

    .line 1321
    :cond_e
    iget-wide v2, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 1322
    .line 1323
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 1324
    .line 1325
    .line 1326
    move-result v2

    .line 1327
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v2

    .line 1331
    iget-wide v3, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 1332
    .line 1333
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 1334
    .line 1335
    .line 1336
    move-result-wide v3

    .line 1337
    new-instance v1, Landroidx/compose/ui/unit/TextUnitType;

    .line 1338
    .line 1339
    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 1340
    .line 1341
    .line 1342
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextUnitTypeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1343
    .line 1344
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    const/4 v1, 0x2

    .line 1349
    new-array v1, v1, [Ljava/lang/Object;

    .line 1350
    .line 1351
    aput-object v2, v1, v21

    .line 1352
    .line 1353
    aput-object v0, v1, v19

    .line 1354
    .line 1355
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v0

    .line 1359
    :goto_8
    return-object v0

    .line 1360
    :pswitch_23
    move-object/from16 v0, p1

    .line 1361
    .line 1362
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 1363
    .line 1364
    move-object/from16 v1, p2

    .line 1365
    .line 1366
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 1367
    .line 1368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1372
    .line 1373
    .line 1374
    const-string v0, "K-9 Mail"

    .line 1375
    .line 1376
    return-object v0

    .line 1377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
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

    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method
