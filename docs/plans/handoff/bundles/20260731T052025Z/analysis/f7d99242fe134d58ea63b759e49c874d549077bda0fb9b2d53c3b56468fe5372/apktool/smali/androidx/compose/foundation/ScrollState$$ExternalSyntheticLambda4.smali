.class public final synthetic Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 0

    .line 1
    const/16 p1, 0xc

    .line 2
    .line 3
    iput p1, p0, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;->$r8$classId:I

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
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, -0x1

    .line 7
    const-wide v3, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v0, p1

    .line 21
    .line 22
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    return-object v6

    .line 25
    :pswitch_0
    move-object/from16 v0, p1

    .line 26
    .line 27
    check-cast v0, Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "android.intent.action.PROCESS_TEXT"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "text/plain"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    :goto_0
    if-ge v8, v3, :cond_2

    .line 68
    .line 69
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    move-object v5, v4

    .line 74
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 81
    .line 82
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_0

    .line 89
    .line 90
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 91
    .line 92
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 93
    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v5, :cond_0

    .line 99
    .line 100
    invoke-virtual {v0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_1

    .line 105
    .line 106
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    return-object v2

    .line 113
    :pswitch_1
    move-object/from16 v0, p1

    .line 114
    .line 115
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 116
    .line 117
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 118
    .line 119
    invoke-interface {v0, v1, v6}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object v6

    .line 123
    :pswitch_2
    move-object/from16 v0, p1

    .line 124
    .line 125
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 126
    .line 127
    iget-object v2, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 128
    .line 129
    instance-of v3, v2, Landroidx/compose/ui/text/LinkAnnotation;

    .line 130
    .line 131
    if-eqz v3, :cond_6

    .line 132
    .line 133
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    iget-object v3, v2, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 142
    .line 143
    if-nez v3, :cond_3

    .line 144
    .line 145
    iget-object v3, v2, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 146
    .line 147
    if-nez v3, :cond_3

    .line 148
    .line 149
    iget-object v3, v2, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 150
    .line 151
    if-nez v3, :cond_3

    .line 152
    .line 153
    iget-object v2, v2, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 154
    .line 155
    if-nez v2, :cond_3

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 159
    .line 160
    iget-object v3, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    check-cast v3, Landroidx/compose/ui/text/LinkAnnotation;

    .line 166
    .line 167
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-eqz v3, :cond_4

    .line 172
    .line 173
    iget-object v3, v3, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 174
    .line 175
    if-nez v3, :cond_5

    .line 176
    .line 177
    :cond_4
    new-instance v9, Landroidx/compose/ui/text/SpanStyle;

    .line 178
    .line 179
    const/16 v27, 0x0

    .line 180
    .line 181
    const v28, 0xffff

    .line 182
    .line 183
    .line 184
    const-wide/16 v10, 0x0

    .line 185
    .line 186
    const-wide/16 v12, 0x0

    .line 187
    .line 188
    const/4 v14, 0x0

    .line 189
    const/4 v15, 0x0

    .line 190
    const/16 v16, 0x0

    .line 191
    .line 192
    const/16 v17, 0x0

    .line 193
    .line 194
    const/16 v18, 0x0

    .line 195
    .line 196
    const-wide/16 v19, 0x0

    .line 197
    .line 198
    const/16 v21, 0x0

    .line 199
    .line 200
    const/16 v22, 0x0

    .line 201
    .line 202
    const/16 v23, 0x0

    .line 203
    .line 204
    const-wide/16 v24, 0x0

    .line 205
    .line 206
    const/16 v26, 0x0

    .line 207
    .line 208
    invoke-direct/range {v9 .. v28}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 209
    .line 210
    .line 211
    move-object v3, v9

    .line 212
    :cond_5
    iget v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 213
    .line 214
    iget v5, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 215
    .line 216
    invoke-direct {v2, v4, v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    new-array v1, v1, [Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 220
    .line 221
    aput-object v0, v1, v8

    .line 222
    .line 223
    aput-object v2, v1, v7

    .line 224
    .line 225
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    goto :goto_2

    .line 230
    :cond_6
    :goto_1
    new-array v1, v7, [Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 231
    .line 232
    aput-object v0, v1, v8

    .line 233
    .line 234
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    :goto_2
    return-object v0

    .line 239
    :pswitch_3
    move-object/from16 v0, p1

    .line 240
    .line 241
    check-cast v0, Ljava/util/List;

    .line 242
    .line 243
    new-instance v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 244
    .line 245
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    check-cast v2, Ljava/lang/Boolean;

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_7

    .line 259
    .line 260
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_7
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 264
    .line 265
    :goto_3
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    check-cast v0, Ljava/lang/Float;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;F)V

    .line 279
    .line 280
    .line 281
    return-object v1

    .line 282
    :pswitch_4
    move-object/from16 v0, p1

    .line 283
    .line 284
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 285
    .line 286
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getLineEndByOffset()Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    if-eqz v1, :cond_8

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 297
    .line 298
    iget-wide v6, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 299
    .line 300
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 301
    .line 302
    and-long/2addr v3, v6

    .line 303
    long-to-int v0, v3

    .line 304
    sub-int/2addr v1, v0

    .line 305
    invoke-direct {v5, v8, v1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 306
    .line 307
    .line 308
    :cond_8
    return-object v5

    .line 309
    :pswitch_5
    move-object/from16 v0, p1

    .line 310
    .line 311
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 312
    .line 313
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getLineStartByOffset()Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    if-eqz v1, :cond_9

    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 324
    .line 325
    iget-wide v6, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 326
    .line 327
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 328
    .line 329
    and-long/2addr v3, v6

    .line 330
    long-to-int v0, v3

    .line 331
    sub-int/2addr v0, v1

    .line 332
    invoke-direct {v5, v0, v8}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 333
    .line 334
    .line 335
    :cond_9
    return-object v5

    .line 336
    :pswitch_6
    move-object/from16 v0, p1

    .line 337
    .line 338
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 339
    .line 340
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    if-eqz v1, :cond_a

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 351
    .line 352
    iget-wide v6, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 353
    .line 354
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 355
    .line 356
    and-long/2addr v3, v6

    .line 357
    long-to-int v0, v3

    .line 358
    sub-int/2addr v1, v0

    .line 359
    invoke-direct {v5, v8, v1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 360
    .line 361
    .line 362
    :cond_a
    return-object v5

    .line 363
    :pswitch_7
    move-object/from16 v0, p1

    .line 364
    .line 365
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 366
    .line 367
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    if-eqz v1, :cond_b

    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 378
    .line 379
    iget-wide v6, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 380
    .line 381
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 382
    .line 383
    and-long/2addr v3, v6

    .line 384
    long-to-int v0, v3

    .line 385
    sub-int/2addr v0, v1

    .line 386
    invoke-direct {v5, v0, v8}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 387
    .line 388
    .line 389
    :cond_b
    return-object v5

    .line 390
    :pswitch_8
    move-object/from16 v0, p1

    .line 391
    .line 392
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 393
    .line 394
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 395
    .line 396
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 397
    .line 398
    iget-wide v6, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 399
    .line 400
    sget v9, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 401
    .line 402
    and-long/2addr v6, v3

    .line 403
    long-to-int v6, v6

    .line 404
    invoke-static {v1, v6}, Landroidx/compose/foundation/text/BasicTextKt;->findFollowingBreak(Ljava/lang/String;I)I

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eq v1, v2, :cond_c

    .line 409
    .line 410
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 411
    .line 412
    iget-wide v6, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 413
    .line 414
    and-long/2addr v3, v6

    .line 415
    long-to-int v0, v3

    .line 416
    sub-int/2addr v1, v0

    .line 417
    invoke-direct {v5, v8, v1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 418
    .line 419
    .line 420
    :cond_c
    return-object v5

    .line 421
    :pswitch_9
    move-object/from16 v0, p1

    .line 422
    .line 423
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 424
    .line 425
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 426
    .line 427
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 428
    .line 429
    iget-wide v6, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 430
    .line 431
    sget v9, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 432
    .line 433
    and-long/2addr v6, v3

    .line 434
    long-to-int v6, v6

    .line 435
    if-gtz v6, :cond_d

    .line 436
    .line 437
    :goto_4
    move v1, v2

    .line 438
    goto :goto_5

    .line 439
    :cond_d
    invoke-static {}, Landroidx/compose/foundation/text/BasicTextKt;->getEmojiCompatIfLoaded()Landroidx/emoji2/text/EmojiCompat;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    if-nez v7, :cond_f

    .line 444
    .line 445
    if-gtz v6, :cond_e

    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_e
    invoke-static {v1, v6, v2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    goto :goto_5

    .line 453
    :cond_f
    add-int/lit8 v9, v6, -0x1

    .line 454
    .line 455
    invoke-virtual {v7, v9, v1}, Landroidx/emoji2/text/EmojiCompat;->getEmojiStart(ILjava/lang/CharSequence;)I

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    if-gez v7, :cond_11

    .line 460
    .line 461
    if-gtz v6, :cond_10

    .line 462
    .line 463
    goto :goto_4

    .line 464
    :cond_10
    invoke-static {v1, v6, v2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    goto :goto_5

    .line 469
    :cond_11
    move v1, v7

    .line 470
    :goto_5
    if-ne v1, v2, :cond_12

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :cond_12
    new-instance v5, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 474
    .line 475
    iget-wide v6, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 476
    .line 477
    and-long/2addr v3, v6

    .line 478
    long-to-int v0, v3

    .line 479
    sub-int/2addr v0, v1

    .line 480
    invoke-direct {v5, v0, v8}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 481
    .line 482
    .line 483
    :goto_6
    return-object v5

    .line 484
    :pswitch_a
    move-object/from16 v0, p1

    .line 485
    .line 486
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 487
    .line 488
    return-object v6

    .line 489
    :pswitch_b
    move-object/from16 v0, p1

    .line 490
    .line 491
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 492
    .line 493
    sget v0, Landroidx/compose/foundation/text/BasicTextFieldKt;->$r8$clinit:I

    .line 494
    .line 495
    return-object v6

    .line 496
    :pswitch_c
    move-object/from16 v0, p1

    .line 497
    .line 498
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 499
    .line 500
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 501
    .line 502
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 503
    .line 504
    invoke-interface {v0, v1, v6}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    return-object v6

    .line 508
    :pswitch_d
    move-object/from16 v0, p1

    .line 509
    .line 510
    check-cast v0, Ljava/lang/Integer;

    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->EmptyLazyGridLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 516
    .line 517
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    return-object v0

    .line 522
    :pswitch_e
    move-object/from16 v0, p1

    .line 523
    .line 524
    check-cast v0, Ljava/lang/Integer;

    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->EmptyLazyGridLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 530
    .line 531
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 532
    .line 533
    return-object v0

    .line 534
    :pswitch_f
    move-object/from16 v0, p1

    .line 535
    .line 536
    check-cast v0, Ljava/util/List;

    .line 537
    .line 538
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 539
    .line 540
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    check-cast v2, Ljava/lang/Number;

    .line 545
    .line 546
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    check-cast v0, Ljava/lang/Number;

    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    .line 561
    .line 562
    .line 563
    return-object v1

    .line 564
    :pswitch_10
    move-object/from16 v0, p1

    .line 565
    .line 566
    check-cast v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 567
    .line 568
    return-object v6

    .line 569
    :pswitch_11
    move-object/from16 v0, p1

    .line 570
    .line 571
    check-cast v0, Ljava/util/List;

    .line 572
    .line 573
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListState;

    .line 574
    .line 575
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    check-cast v2, Ljava/lang/Number;

    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    check-cast v0, Ljava/lang/Number;

    .line 590
    .line 591
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    .line 596
    .line 597
    .line 598
    return-object v1

    .line 599
    :pswitch_12
    move-object/from16 v0, p1

    .line 600
    .line 601
    check-cast v0, Ljava/lang/Integer;

    .line 602
    .line 603
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    .line 605
    .line 606
    return-object v5

    .line 607
    :pswitch_13
    move-object/from16 v0, p1

    .line 608
    .line 609
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 610
    .line 611
    iget-object v0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->ime:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 612
    .line 613
    return-object v0

    .line 614
    :pswitch_14
    move-object/from16 v0, p1

    .line 615
    .line 616
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 617
    .line 618
    iget-object v0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->safeContent:Landroidx/compose/foundation/layout/UnionInsets;

    .line 619
    .line 620
    return-object v0

    .line 621
    :pswitch_15
    move-object/from16 v0, p1

    .line 622
    .line 623
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 624
    .line 625
    iget-object v0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->safeDrawing:Landroidx/compose/foundation/layout/UnionInsets;

    .line 626
    .line 627
    return-object v0

    .line 628
    :pswitch_16
    move-object/from16 v0, p1

    .line 629
    .line 630
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerType;

    .line 631
    .line 632
    if-nez v0, :cond_13

    .line 633
    .line 634
    goto :goto_7

    .line 635
    :cond_13
    iget v0, v0, Landroidx/compose/ui/input/pointer/PointerType;->value:I

    .line 636
    .line 637
    if-ne v0, v1, :cond_14

    .line 638
    .line 639
    move v8, v7

    .line 640
    :cond_14
    :goto_7
    xor-int/lit8 v0, v8, 0x1

    .line 641
    .line 642
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    return-object v0

    .line 647
    :pswitch_17
    move-object/from16 v0, p1

    .line 648
    .line 649
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerType;

    .line 650
    .line 651
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 652
    .line 653
    return-object v0

    .line 654
    :pswitch_18
    move-object/from16 v0, p1

    .line 655
    .line 656
    check-cast v0, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 657
    .line 658
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 659
    .line 660
    check-cast v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    .line 664
    .line 665
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    check-cast v0, Landroid/content/Context;

    .line 670
    .line 671
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    const-string v1, "android.software.leanback"

    .line 676
    .line 677
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-nez v0, :cond_15

    .line 682
    .line 683
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    .line 689
    .line 690
    goto :goto_8

    .line 691
    :cond_15
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->PivotBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    .line 692
    .line 693
    :goto_8
    return-object v0

    .line 694
    :pswitch_19
    move-object/from16 v0, p1

    .line 695
    .line 696
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 697
    .line 698
    sget-object v1, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 699
    .line 700
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 701
    .line 702
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 703
    .line 704
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 705
    .line 706
    aget-object v3, v3, v7

    .line 707
    .line 708
    invoke-interface {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    return-object v6

    .line 712
    :pswitch_1a
    move-object/from16 v0, p1

    .line 713
    .line 714
    check-cast v0, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 715
    .line 716
    sget v1, Landroidx/compose/foundation/AndroidOverscroll_androidKt;->$r8$clinit:I

    .line 717
    .line 718
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 719
    .line 720
    move-object v2, v0

    .line 721
    check-cast v2, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 722
    .line 723
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    move-object v7, v1

    .line 731
    check-cast v7, Landroid/content/Context;

    .line 732
    .line 733
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 734
    .line 735
    check-cast v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 736
    .line 737
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    move-object v8, v1

    .line 742
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 743
    .line 744
    sget-object v1, Landroidx/compose/foundation/OverscrollConfiguration_androidKt;->LocalOverscrollConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 745
    .line 746
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    check-cast v0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 751
    .line 752
    if-nez v0, :cond_16

    .line 753
    .line 754
    goto :goto_9

    .line 755
    :cond_16
    new-instance v6, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    .line 756
    .line 757
    iget-wide v9, v0, Landroidx/compose/foundation/OverscrollConfiguration;->glowColor:J

    .line 758
    .line 759
    iget-object v11, v0, Landroidx/compose/foundation/OverscrollConfiguration;->drawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 760
    .line 761
    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 762
    .line 763
    .line 764
    move-object v5, v6

    .line 765
    :goto_9
    return-object v5

    .line 766
    :pswitch_1b
    move-object/from16 v0, p1

    .line 767
    .line 768
    check-cast v0, Ljava/lang/Long;

    .line 769
    .line 770
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    return-object v6

    .line 774
    :pswitch_1c
    move-object/from16 v0, p1

    .line 775
    .line 776
    check-cast v0, Ljava/lang/Integer;

    .line 777
    .line 778
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    new-instance v1, Landroidx/compose/foundation/ScrollState;

    .line 783
    .line 784
    invoke-direct {v1, v0}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    .line 785
    .line 786
    .line 787
    return-object v1

    .line 788
    nop

    .line 789
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
