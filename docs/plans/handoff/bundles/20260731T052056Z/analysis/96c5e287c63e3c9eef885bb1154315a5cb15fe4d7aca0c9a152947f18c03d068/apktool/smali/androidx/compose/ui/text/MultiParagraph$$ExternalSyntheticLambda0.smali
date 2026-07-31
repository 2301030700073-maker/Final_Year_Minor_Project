.class public final synthetic Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(J[FLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V
    .locals 0

    .line 16
    iput p6, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    iput-object p5, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/wikipedia/history/db/HistoryEntryDao_Impl;)V
    .locals 0

    .line 17
    const/4 p6, 0x4

    iput p6, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-wide p4, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-wide v5, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    .line 9
    .line 10
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object v8, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v9, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v10, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v10, Ljava/lang/String;

    .line 22
    .line 23
    check-cast v9, Ljava/lang/String;

    .line 24
    .line 25
    check-cast v8, Ljava/lang/String;

    .line 26
    .line 27
    move-object/from16 v0, p1

    .line 28
    .line 29
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string v1, "SELECT * FROM HistoryEntry WHERE authority = ? AND lang = ? AND apiTitle = ? AND timestamp = ? LIMIT 1"

    .line 35
    .line 36
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :try_start_0
    invoke-interface {v1, v4, v10}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-interface {v1, v0, v9}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    invoke-interface {v1, v0, v8}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v5, v6, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 52
    .line 53
    .line 54
    const-string v0, "authority"

    .line 55
    .line 56
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const-string v2, "lang"

    .line 61
    .line 62
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const-string v3, "apiTitle"

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const-string v4, "displayTitle"

    .line 73
    .line 74
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const-string v5, "id"

    .line 79
    .line 80
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    const-string v6, "namespace"

    .line 85
    .line 86
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const-string v7, "timestamp"

    .line 91
    .line 92
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    const-string v8, "source"

    .line 97
    .line 98
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    const-string v9, "prevId"

    .line 103
    .line 104
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    const/4 v11, 0x0

    .line 113
    if-eqz v10, :cond_2

    .line 114
    .line 115
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v16

    .line 131
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v17

    .line 135
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v19

    .line 139
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 147
    .line 148
    .line 149
    move-result-wide v2

    .line 150
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    :goto_0
    invoke-static {v11}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 155
    .line 156
    .line 157
    move-result-object v20

    .line 158
    if-eqz v20, :cond_1

    .line 159
    .line 160
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 161
    .line 162
    .line 163
    move-result-wide v2

    .line 164
    long-to-int v0, v2

    .line 165
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 166
    .line 167
    .line 168
    move-result-wide v22

    .line 169
    new-instance v12, Lorg/wikipedia/history/HistoryEntry;

    .line 170
    .line 171
    move/from16 v21, v0

    .line 172
    .line 173
    invoke-direct/range {v12 .. v23}, Lorg/wikipedia/history/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;IJ)V

    .line 174
    .line 175
    .line 176
    move-object v11, v12

    .line 177
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    goto :goto_2

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 181
    .line 182
    const-string v2, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 183
    .line 184
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 189
    .line 190
    .line 191
    return-object v11

    .line 192
    :goto_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :pswitch_0
    check-cast v10, Landroidx/compose/material3/internal/FloatProducer;

    .line 197
    .line 198
    check-cast v9, Landroidx/compose/runtime/State;

    .line 199
    .line 200
    iget-wide v3, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    .line 201
    .line 202
    move-object v1, v8

    .line 203
    check-cast v1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 204
    .line 205
    move-object/from16 v0, p1

    .line 206
    .line 207
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 208
    .line 209
    invoke-interface {v10}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    const/high16 v5, 0x3f800000    # 1.0f

    .line 214
    .line 215
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    const v8, 0x3ecccccd    # 0.4f

    .line 220
    .line 221
    .line 222
    sub-float/2addr v6, v8

    .line 223
    const/4 v10, 0x0

    .line 224
    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    const/high16 v11, 0x40a00000    # 5.0f

    .line 229
    .line 230
    mul-float/2addr v6, v11

    .line 231
    const/high16 v11, 0x40400000    # 3.0f

    .line 232
    .line 233
    div-float/2addr v6, v11

    .line 234
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    sub-float/2addr v2, v5

    .line 239
    const/high16 v11, 0x40000000    # 2.0f

    .line 240
    .line 241
    invoke-static {v2, v10, v11}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    float-to-double v12, v2

    .line 246
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 247
    .line 248
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 249
    .line 250
    .line 251
    move-result-wide v12

    .line 252
    double-to-float v10, v12

    .line 253
    const/high16 v12, 0x40800000    # 4.0f

    .line 254
    .line 255
    div-float/2addr v10, v12

    .line 256
    sub-float/2addr v2, v10

    .line 257
    const v10, 0x3f4ccccd    # 0.8f

    .line 258
    .line 259
    .line 260
    mul-float/2addr v10, v6

    .line 261
    const/high16 v12, -0x41800000    # -0.25f

    .line 262
    .line 263
    mul-float/2addr v8, v6

    .line 264
    add-float/2addr v8, v12

    .line 265
    add-float/2addr v8, v2

    .line 266
    const/high16 v2, 0x3f000000    # 0.5f

    .line 267
    .line 268
    mul-float/2addr v8, v2

    .line 269
    const/high16 v2, 0x43b40000    # 360.0f

    .line 270
    .line 271
    mul-float v14, v8, v2

    .line 272
    .line 273
    add-float/2addr v10, v8

    .line 274
    mul-float/2addr v10, v2

    .line 275
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    new-instance v6, Landroidx/compose/animation/FlingCalculator;

    .line 280
    .line 281
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 282
    .line 283
    .line 284
    iput v10, v6, Landroidx/compose/animation/FlingCalculator;->friction:F

    .line 285
    .line 286
    iput v2, v6, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    .line 287
    .line 288
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Ljava/lang/Number;

    .line 293
    .line 294
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 295
    .line 296
    .line 297
    move-result v20

    .line 298
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    .line 299
    .line 300
    .line 301
    move-result-wide v12

    .line 302
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    move-object/from16 p0, v1

    .line 307
    .line 308
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 309
    .line 310
    .line 311
    move-result-wide v1

    .line 312
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 317
    .line 318
    .line 319
    :try_start_1
    iget-object v5, v9, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v5, Landroidx/appcompat/widget/PopupMenu$1;

    .line 322
    .line 323
    invoke-virtual {v5, v8, v12, v13}, Landroidx/appcompat/widget/PopupMenu$1;->rotate-Uv8p0NA(FJ)V

    .line 324
    .line 325
    .line 326
    const/high16 v5, 0x40b00000    # 5.5f

    .line 327
    .line 328
    invoke-interface {v0, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    const/high16 v8, 0x40200000    # 2.5f

    .line 333
    .line 334
    invoke-interface {v0, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 335
    .line 336
    .line 337
    move-result v12

    .line 338
    div-float/2addr v12, v11

    .line 339
    add-float/2addr v12, v5

    .line 340
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 341
    .line 342
    .line 343
    move-result-wide v15

    .line 344
    invoke-static/range {v15 .. v16}, Landroidx/room/Room;->getCenter-uvyYCjk(J)J

    .line 345
    .line 346
    .line 347
    move-result-wide v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 348
    move-wide/from16 v23, v1

    .line 349
    .line 350
    :try_start_2
    new-instance v2, Landroidx/compose/ui/geometry/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 351
    .line 352
    const/16 v1, 0x20

    .line 353
    .line 354
    move-object/from16 p1, v9

    .line 355
    .line 356
    shr-long v8, v15, v1

    .line 357
    .line 358
    long-to-int v1, v8

    .line 359
    :try_start_3
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 360
    .line 361
    .line 362
    move-result v8

    .line 363
    sub-float/2addr v8, v12

    .line 364
    const-wide v17, 0xffffffffL

    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    move-object v9, v6

    .line 370
    and-long v5, v15, v17

    .line 371
    .line 372
    long-to-int v5, v5

    .line 373
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    sub-float/2addr v6, v12

    .line 378
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    add-float/2addr v1, v12

    .line 383
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    add-float/2addr v5, v12

    .line 388
    invoke-direct {v2, v8, v6, v1, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 389
    .line 390
    .line 391
    sub-float v15, v10, v14

    .line 392
    .line 393
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    .line 394
    .line 395
    .line 396
    move-result-wide v16

    .line 397
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    .line 398
    .line 399
    .line 400
    move-result-wide v18

    .line 401
    new-instance v21, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 402
    .line 403
    const/high16 v5, 0x40200000    # 2.5f

    .line 404
    .line 405
    invoke-interface {v0, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 406
    .line 407
    .line 408
    move-result v26

    .line 409
    const/16 v29, 0x0

    .line 410
    .line 411
    const/16 v30, 0x1a

    .line 412
    .line 413
    const/16 v27, 0x0

    .line 414
    .line 415
    const/16 v28, 0x0

    .line 416
    .line 417
    move-object/from16 v25, v21

    .line 418
    .line 419
    invoke-direct/range {v25 .. v30}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 420
    .line 421
    .line 422
    const/16 v22, 0x300

    .line 423
    .line 424
    move-object v11, v0

    .line 425
    move-wide v12, v3

    .line 426
    invoke-static/range {v11 .. v22}, Landroidx/compose/ui/Modifier$-CC;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 427
    .line 428
    .line 429
    move-object/from16 v1, p0

    .line 430
    .line 431
    move-object v6, v9

    .line 432
    move/from16 v5, v20

    .line 433
    .line 434
    move-wide/from16 v8, v23

    .line 435
    .line 436
    :try_start_4
    invoke-static/range {v0 .. v6}, Lkotlin/text/RegexKt;->drawArrow-uDrxG_w(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/animation/FlingCalculator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 437
    .line 438
    .line 439
    move-object/from16 v1, p1

    .line 440
    .line 441
    invoke-static {v1, v8, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 442
    .line 443
    .line 444
    return-object v7

    .line 445
    :catchall_1
    move-exception v0

    .line 446
    move-object/from16 v1, p1

    .line 447
    .line 448
    goto :goto_4

    .line 449
    :catchall_2
    move-exception v0

    .line 450
    move-object/from16 v1, p1

    .line 451
    .line 452
    :goto_3
    move-wide/from16 v8, v23

    .line 453
    .line 454
    goto :goto_4

    .line 455
    :catchall_3
    move-exception v0

    .line 456
    move-object v1, v9

    .line 457
    goto :goto_3

    .line 458
    :catchall_4
    move-exception v0

    .line 459
    move-wide/from16 v31, v1

    .line 460
    .line 461
    move-object v1, v9

    .line 462
    move-wide/from16 v8, v31

    .line 463
    .line 464
    :goto_4
    invoke-static {v1, v8, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 465
    .line 466
    .line 467
    throw v0

    .line 468
    :pswitch_1
    check-cast v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    .line 469
    .line 470
    check-cast v9, Ljava/util/ArrayList;

    .line 471
    .line 472
    check-cast v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 473
    .line 474
    move-object/from16 v0, p1

    .line 475
    .line 476
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 477
    .line 478
    new-instance v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;

    .line 479
    .line 480
    invoke-direct {v1, v9, v5, v6, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;JLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;)V

    .line 481
    .line 482
    .line 483
    iput-boolean v4, v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 484
    .line 485
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    iput-boolean v2, v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 489
    .line 490
    iget-object v0, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 491
    .line 492
    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 493
    .line 494
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    return-object v7

    .line 498
    :pswitch_2
    check-cast v10, Landroidx/compose/ui/geometry/Rect;

    .line 499
    .line 500
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 501
    .line 502
    iget-wide v13, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;->f$0:J

    .line 503
    .line 504
    move-object/from16 v18, v8

    .line 505
    .line 506
    check-cast v18, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 507
    .line 508
    move-object/from16 v11, p1

    .line 509
    .line 510
    check-cast v11, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 511
    .line 512
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 513
    .line 514
    .line 515
    iget v1, v10, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 516
    .line 517
    iget v2, v10, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 518
    .line 519
    iget-object v3, v11, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 520
    .line 521
    iget-object v0, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 522
    .line 523
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 526
    .line 527
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 528
    .line 529
    .line 530
    :try_start_5
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 531
    .line 532
    move-object v12, v0

    .line 533
    check-cast v12, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 534
    .line 535
    const/16 v19, 0x0

    .line 536
    .line 537
    const/16 v20, 0x37a

    .line 538
    .line 539
    const-wide/16 v15, 0x0

    .line 540
    .line 541
    const/16 v17, 0x0

    .line 542
    .line 543
    invoke-static/range {v11 .. v20}, Landroidx/compose/ui/Modifier$-CC;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;JJFLandroidx/compose/ui/graphics/BlendModeColorFilter;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 544
    .line 545
    .line 546
    iget-object v0, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 547
    .line 548
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 551
    .line 552
    neg-float v1, v1

    .line 553
    neg-float v2, v2

    .line 554
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 555
    .line 556
    .line 557
    return-object v7

    .line 558
    :catchall_5
    move-exception v0

    .line 559
    iget-object v3, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 560
    .line 561
    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v3, Landroidx/appcompat/widget/PopupMenu$1;

    .line 564
    .line 565
    neg-float v1, v1

    .line 566
    neg-float v2, v2

    .line 567
    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 568
    .line 569
    .line 570
    throw v0

    .line 571
    :pswitch_3
    check-cast v10, [F

    .line 572
    .line 573
    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    .line 574
    .line 575
    check-cast v8, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 576
    .line 577
    move-object/from16 v0, p1

    .line 578
    .line 579
    check-cast v0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 580
    .line 581
    iget v1, v0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 582
    .line 583
    iget-object v11, v0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    .line 584
    .line 585
    iget v12, v0, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    .line 586
    .line 587
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 588
    .line 589
    .line 590
    move-result v13

    .line 591
    if-le v1, v13, :cond_3

    .line 592
    .line 593
    iget v1, v0, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    .line 594
    .line 595
    goto :goto_5

    .line 596
    :cond_3
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    :goto_5
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 601
    .line 602
    .line 603
    move-result v13

    .line 604
    if-ge v12, v13, :cond_4

    .line 605
    .line 606
    goto :goto_6

    .line 607
    :cond_4
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 608
    .line 609
    .line 610
    move-result v12

    .line 611
    :goto_6
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    invoke-virtual {v0, v12}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    invoke-static {v1, v0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 620
    .line 621
    .line 622
    move-result-wide v0

    .line 623
    iget v5, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 624
    .line 625
    iget-object v6, v11, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 626
    .line 627
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 628
    .line 629
    .line 630
    move-result v12

    .line 631
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 632
    .line 633
    .line 634
    move-result v13

    .line 635
    iget-object v14, v6, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 636
    .line 637
    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 638
    .line 639
    .line 640
    move-result-object v15

    .line 641
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    .line 642
    .line 643
    .line 644
    move-result v15

    .line 645
    if-ltz v12, :cond_5

    .line 646
    .line 647
    goto :goto_7

    .line 648
    :cond_5
    const-string v16, "startOffset must be > 0"

    .line 649
    .line 650
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    :goto_7
    if-ge v12, v15, :cond_6

    .line 654
    .line 655
    goto :goto_8

    .line 656
    :cond_6
    const-string v16, "startOffset must be less than text length"

    .line 657
    .line 658
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    :goto_8
    if-le v13, v12, :cond_7

    .line 662
    .line 663
    goto :goto_9

    .line 664
    :cond_7
    const-string v16, "endOffset must be greater than startOffset"

    .line 665
    .line 666
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    :goto_9
    if-gt v13, v15, :cond_8

    .line 670
    .line 671
    goto :goto_a

    .line 672
    :cond_8
    const-string v15, "endOffset must be smaller or equal to text length"

    .line 673
    .line 674
    invoke-static {v15}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    :goto_a
    sub-int v15, v13, v12

    .line 678
    .line 679
    mul-int/2addr v15, v3

    .line 680
    move/from16 v16, v3

    .line 681
    .line 682
    array-length v3, v10

    .line 683
    sub-int/2addr v3, v5

    .line 684
    if-lt v3, v15, :cond_9

    .line 685
    .line 686
    goto :goto_b

    .line 687
    :cond_9
    const-string v3, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4"

    .line 688
    .line 689
    invoke-static {v3}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    :goto_b
    invoke-virtual {v6, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    add-int/lit8 v15, v13, -0x1

    .line 697
    .line 698
    invoke-virtual {v6, v15}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    .line 699
    .line 700
    .line 701
    move-result v15

    .line 702
    new-instance v2, Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 703
    .line 704
    invoke-direct {v2, v6}, Landroidx/compose/ui/scrollcapture/RelativeScroller;-><init>(Landroidx/compose/ui/text/android/TextLayout;)V

    .line 705
    .line 706
    .line 707
    if-gt v3, v15, :cond_f

    .line 708
    .line 709
    :goto_c
    invoke-virtual {v14, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 710
    .line 711
    .line 712
    move-result v4

    .line 713
    move-wide/from16 p0, v0

    .line 714
    .line 715
    invoke-virtual {v6, v3}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    invoke-virtual {v6, v3}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 728
    .line 729
    .line 730
    move-result v4

    .line 731
    invoke-virtual {v6, v3}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 732
    .line 733
    .line 734
    move-result v19

    .line 735
    move/from16 v20, v1

    .line 736
    .line 737
    invoke-virtual {v14, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 738
    .line 739
    .line 740
    move-result v1

    .line 741
    move/from16 v21, v4

    .line 742
    .line 743
    const/4 v4, 0x1

    .line 744
    if-ne v1, v4, :cond_a

    .line 745
    .line 746
    move v1, v4

    .line 747
    goto :goto_d

    .line 748
    :cond_a
    const/4 v1, 0x0

    .line 749
    :goto_d
    move/from16 v18, v5

    .line 750
    .line 751
    move/from16 v5, v20

    .line 752
    .line 753
    :goto_e
    if-ge v5, v0, :cond_e

    .line 754
    .line 755
    invoke-virtual {v14, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 756
    .line 757
    .line 758
    move-result v20

    .line 759
    if-eqz v1, :cond_b

    .line 760
    .line 761
    if-nez v20, :cond_b

    .line 762
    .line 763
    move/from16 v22, v0

    .line 764
    .line 765
    const/4 v0, 0x0

    .line 766
    invoke-virtual {v2, v5, v0, v0, v4}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 767
    .line 768
    .line 769
    move-result v17

    .line 770
    add-int/lit8 v0, v5, 0x1

    .line 771
    .line 772
    invoke-virtual {v2, v0, v4, v4, v4}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 773
    .line 774
    .line 775
    move-result v0

    .line 776
    move/from16 v23, v1

    .line 777
    .line 778
    move v1, v0

    .line 779
    :goto_f
    const/4 v0, 0x0

    .line 780
    goto :goto_10

    .line 781
    :cond_b
    move/from16 v22, v0

    .line 782
    .line 783
    if-eqz v1, :cond_c

    .line 784
    .line 785
    if-eqz v20, :cond_c

    .line 786
    .line 787
    const/4 v0, 0x0

    .line 788
    invoke-virtual {v2, v5, v0, v0, v0}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 789
    .line 790
    .line 791
    move-result v17

    .line 792
    move/from16 v23, v1

    .line 793
    .line 794
    add-int/lit8 v1, v5, 0x1

    .line 795
    .line 796
    invoke-virtual {v2, v1, v4, v4, v0}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 797
    .line 798
    .line 799
    move-result v1

    .line 800
    move/from16 v31, v17

    .line 801
    .line 802
    move/from16 v17, v1

    .line 803
    .line 804
    move/from16 v1, v31

    .line 805
    .line 806
    goto :goto_10

    .line 807
    :cond_c
    move/from16 v23, v1

    .line 808
    .line 809
    const/4 v0, 0x0

    .line 810
    if-nez v23, :cond_d

    .line 811
    .line 812
    if-eqz v20, :cond_d

    .line 813
    .line 814
    invoke-virtual {v2, v5, v0, v0, v4}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    add-int/lit8 v0, v5, 0x1

    .line 819
    .line 820
    invoke-virtual {v2, v0, v4, v4, v4}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 821
    .line 822
    .line 823
    move-result v0

    .line 824
    move/from16 v17, v0

    .line 825
    .line 826
    goto :goto_f

    .line 827
    :cond_d
    invoke-virtual {v2, v5, v0, v0, v0}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 828
    .line 829
    .line 830
    move-result v17

    .line 831
    add-int/lit8 v1, v5, 0x1

    .line 832
    .line 833
    invoke-virtual {v2, v1, v4, v4, v0}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->get(IZZZ)F

    .line 834
    .line 835
    .line 836
    move-result v1

    .line 837
    :goto_10
    aput v17, v10, v18

    .line 838
    .line 839
    add-int/lit8 v17, v18, 0x1

    .line 840
    .line 841
    aput v21, v10, v17

    .line 842
    .line 843
    add-int/lit8 v17, v18, 0x2

    .line 844
    .line 845
    aput v1, v10, v17

    .line 846
    .line 847
    add-int/lit8 v1, v18, 0x3

    .line 848
    .line 849
    aput v19, v10, v1

    .line 850
    .line 851
    add-int/lit8 v18, v18, 0x4

    .line 852
    .line 853
    add-int/lit8 v5, v5, 0x1

    .line 854
    .line 855
    move/from16 v0, v22

    .line 856
    .line 857
    move/from16 v1, v23

    .line 858
    .line 859
    goto :goto_e

    .line 860
    :cond_e
    const/4 v0, 0x0

    .line 861
    if-eq v3, v15, :cond_10

    .line 862
    .line 863
    add-int/lit8 v3, v3, 0x1

    .line 864
    .line 865
    move-wide/from16 v0, p0

    .line 866
    .line 867
    move/from16 v5, v18

    .line 868
    .line 869
    goto/16 :goto_c

    .line 870
    .line 871
    :cond_f
    move-wide/from16 p0, v0

    .line 872
    .line 873
    :cond_10
    iget v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 874
    .line 875
    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 876
    .line 877
    .line 878
    move-result v1

    .line 879
    mul-int/lit8 v1, v1, 0x4

    .line 880
    .line 881
    add-int/2addr v1, v0

    .line 882
    iget v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 883
    .line 884
    :goto_11
    if-ge v0, v1, :cond_11

    .line 885
    .line 886
    add-int/lit8 v2, v0, 0x1

    .line 887
    .line 888
    aget v3, v10, v2

    .line 889
    .line 890
    iget v4, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 891
    .line 892
    add-float/2addr v3, v4

    .line 893
    aput v3, v10, v2

    .line 894
    .line 895
    add-int/lit8 v2, v0, 0x3

    .line 896
    .line 897
    aget v3, v10, v2

    .line 898
    .line 899
    add-float/2addr v3, v4

    .line 900
    aput v3, v10, v2

    .line 901
    .line 902
    add-int/lit8 v0, v0, 0x4

    .line 903
    .line 904
    goto :goto_11

    .line 905
    :cond_11
    iput v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 906
    .line 907
    iget v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 908
    .line 909
    invoke-virtual {v11}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    add-float/2addr v1, v0

    .line 914
    iput v1, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 915
    .line 916
    return-object v7

    .line 917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
