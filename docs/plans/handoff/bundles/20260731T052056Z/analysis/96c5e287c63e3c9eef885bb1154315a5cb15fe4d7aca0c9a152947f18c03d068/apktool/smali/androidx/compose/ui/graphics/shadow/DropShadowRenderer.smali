.class public final Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public cornerRadius:J

.field public generatedDensity:F

.field public generatedLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public generatedSize:J

.field public final outline:Landroidx/compose/ui/graphics/ColorKt;

.field public final paint:Landroidx/compose/ui/graphics/AndroidPaint;

.field public path:Landroidx/compose/ui/graphics/AndroidPath;

.field public final shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

.field public shadowBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public shadowTint:Landroidx/compose/ui/graphics/BlendModeColorFilter;

.field public shadowTintColor:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/shadow/Shadow;Landroidx/compose/ui/graphics/ColorKt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->outline:Landroidx/compose/ui/graphics/ColorKt;

    .line 5
    .line 6
    sget p2, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 7
    .line 8
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 9
    .line 10
    iput-wide v0, p0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadowTintColor:J

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->cornerRadius:J

    .line 15
    .line 16
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->generatedSize:J

    .line 22
    .line 23
    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    .line 25
    iput-object p2, p0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->generatedLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 26
    .line 27
    const/high16 p2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    iput p2, p0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->generatedDensity:F

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/ui/graphics/ColorKt;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->paint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final drawShadow-erFMhIw(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/BlendModeColorFilter;JJF)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v4, p5

    .line 8
    .line 9
    iget-object v6, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->outline:Landroidx/compose/ui/graphics/ColorKt;

    .line 10
    .line 11
    instance-of v7, v6, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    const-wide/16 v9, 0x0

    .line 15
    .line 16
    if-eqz v7, :cond_0

    .line 17
    .line 18
    check-cast v6, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 19
    .line 20
    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 21
    .line 22
    iput-object v6, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 23
    .line 24
    iput-wide v9, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->cornerRadius:J

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    instance-of v7, v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 28
    .line 29
    if-eqz v7, :cond_2

    .line 30
    .line 31
    check-cast v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 32
    .line 33
    iget-object v7, v6, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 34
    .line 35
    invoke-static {v7}, Lkotlin/text/RegexKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    if-eqz v11, :cond_1

    .line 40
    .line 41
    iput-object v8, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 42
    .line 43
    iget-wide v6, v7, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    .line 44
    .line 45
    iput-wide v6, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->cornerRadius:J

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRectPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 49
    .line 50
    iput-object v6, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 51
    .line 52
    iput-wide v9, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->cornerRadius:J

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    instance-of v6, v6, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 56
    .line 57
    if-eqz v6, :cond_10

    .line 58
    .line 59
    iput-object v8, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 60
    .line 61
    iput-wide v9, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->cornerRadius:J

    .line 62
    .line 63
    :goto_0
    if-eqz p2, :cond_3

    .line 64
    .line 65
    move-object/from16 v5, p2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-wide/16 v6, 0x10

    .line 69
    .line 70
    cmp-long v6, v4, v6

    .line 71
    .line 72
    if-eqz v6, :cond_6

    .line 73
    .line 74
    iget-object v6, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadowTint:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 75
    .line 76
    if-eqz v6, :cond_4

    .line 77
    .line 78
    iget-wide v9, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadowTintColor:J

    .line 79
    .line 80
    sget v7, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 81
    .line 82
    invoke-static {v9, v10, v4, v5}, Lkotlin/ULong;->equals-impl0(JJ)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-nez v7, :cond_5

    .line 87
    .line 88
    :cond_4
    new-instance v6, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 89
    .line 90
    const/4 v7, 0x5

    .line 91
    invoke-direct {v6, v4, v5, v7}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    .line 92
    .line 93
    .line 94
    iput-wide v4, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadowTintColor:J

    .line 95
    .line 96
    iput-object v6, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadowTint:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 97
    .line 98
    :cond_5
    move-object v5, v6

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    move-object v5, v8

    .line 101
    :goto_1
    iget-wide v6, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->generatedSize:J

    .line 102
    .line 103
    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    cmp-long v4, v6, v9

    .line 109
    .line 110
    const/high16 v9, 0x41400000    # 12.0f

    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    if-nez v4, :cond_7

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_7
    invoke-static {v6, v7, v2, v3}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_8

    .line 121
    .line 122
    iget-object v4, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->generatedLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 123
    .line 124
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    if-ne v4, v6, :cond_8

    .line 129
    .line 130
    iget v4, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->generatedDensity:F

    .line 131
    .line 132
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    cmpg-float v4, v4, v6

    .line 137
    .line 138
    if-nez v4, :cond_8

    .line 139
    .line 140
    move/from16 v23, v10

    .line 141
    .line 142
    const/16 p2, 0x20

    .line 143
    .line 144
    const-wide p5, 0xffffffffL

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    goto/16 :goto_b

    .line 150
    .line 151
    :cond_8
    :goto_2
    iget-wide v6, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->cornerRadius:J

    .line 152
    .line 153
    iget-object v4, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 154
    .line 155
    iget-object v14, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 156
    .line 157
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-interface {v1, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    invoke-interface {v1, v10}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    const/4 v8, 0x1

    .line 169
    const/16 p2, 0x20

    .line 170
    .line 171
    const/high16 v17, 0x40000000    # 2.0f

    .line 172
    .line 173
    const-wide p5, 0xffffffffL

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    iget-object v12, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->paint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 179
    .line 180
    if-eqz v4, :cond_d

    .line 181
    .line 182
    mul-float v6, v14, v17

    .line 183
    .line 184
    mul-float v7, v15, v17

    .line 185
    .line 186
    add-float/2addr v6, v7

    .line 187
    move/from16 v23, v10

    .line 188
    .line 189
    shr-long v9, v2, p2

    .line 190
    .line 191
    long-to-int v9, v9

    .line 192
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    add-float/2addr v9, v6

    .line 197
    move-object/from16 v22, v12

    .line 198
    .line 199
    and-long v11, v2, p5

    .line 200
    .line 201
    long-to-int v11, v11

    .line 202
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    add-float/2addr v11, v6

    .line 207
    move v12, v14

    .line 208
    float-to-double v13, v9

    .line 209
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 210
    .line 211
    .line 212
    move-result-wide v13

    .line 213
    double-to-float v6, v13

    .line 214
    float-to-int v6, v6

    .line 215
    float-to-double v13, v11

    .line 216
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 217
    .line 218
    .line 219
    move-result-wide v13

    .line 220
    double-to-float v9, v13

    .line 221
    float-to-int v9, v9

    .line 222
    invoke-static {v6, v9, v8}, Landroidx/compose/ui/graphics/ColorKt;->ImageBitmap-x__-hDU$default(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v6}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->ActualCanvas(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    cmpl-float v9, v15, v23

    .line 231
    .line 232
    if-lez v9, :cond_b

    .line 233
    .line 234
    add-float v14, v12, v15

    .line 235
    .line 236
    invoke-virtual {v8, v14, v14}, Landroidx/compose/ui/graphics/AndroidCanvas;->translate(FF)V

    .line 237
    .line 238
    .line 239
    cmpl-float v9, v12, v23

    .line 240
    .line 241
    if-lez v9, :cond_9

    .line 242
    .line 243
    new-instance v11, Landroid/graphics/BlurMaskFilter;

    .line 244
    .line 245
    sget-object v13, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 246
    .line 247
    invoke-direct {v11, v12, v13}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 248
    .line 249
    .line 250
    :goto_3
    move-object/from16 v13, v22

    .line 251
    .line 252
    const/16 v10, 0xb

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_9
    const/4 v11, 0x0

    .line 256
    goto :goto_3

    .line 257
    :goto_4
    invoke-static {v13, v11, v10}, Landroidx/compose/ui/unit/DpKt;->configureShadow-FoewPVk$default(Landroidx/compose/ui/graphics/AndroidPaint;Landroid/graphics/BlurMaskFilter;I)Landroidx/compose/ui/graphics/AndroidPaint;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v4, v13}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawPath(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 261
    .line 262
    .line 263
    if-lez v9, :cond_a

    .line 264
    .line 265
    new-instance v9, Landroid/graphics/BlurMaskFilter;

    .line 266
    .line 267
    sget-object v10, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 268
    .line 269
    invoke-direct {v9, v12, v10}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_a
    const/4 v9, 0x0

    .line 274
    :goto_5
    const/4 v10, 0x3

    .line 275
    invoke-static {v13, v9, v10}, Landroidx/compose/ui/unit/DpKt;->configureShadow-FoewPVk$default(Landroidx/compose/ui/graphics/AndroidPaint;Landroid/graphics/BlurMaskFilter;I)Landroidx/compose/ui/graphics/AndroidPaint;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v13, v7}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeWidth(F)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v4, v13}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawPath(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_a

    .line 285
    .line 286
    :cond_b
    move-object/from16 v13, v22

    .line 287
    .line 288
    cmpl-float v7, v12, v23

    .line 289
    .line 290
    if-lez v7, :cond_c

    .line 291
    .line 292
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    .line 293
    .line 294
    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 295
    .line 296
    invoke-direct {v7, v12, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 297
    .line 298
    .line 299
    :goto_6
    const/16 v10, 0xb

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_c
    const/4 v7, 0x0

    .line 303
    goto :goto_6

    .line 304
    :goto_7
    invoke-static {v13, v7, v10}, Landroidx/compose/ui/unit/DpKt;->configureShadow-FoewPVk$default(Landroidx/compose/ui/graphics/AndroidPaint;Landroid/graphics/BlurMaskFilter;I)Landroidx/compose/ui/graphics/AndroidPaint;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v8, v12, v12}, Landroidx/compose/ui/graphics/AndroidCanvas;->translate(FF)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v4, v13}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawPath(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 311
    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_d
    move/from16 v23, v10

    .line 315
    .line 316
    move-object v13, v12

    .line 317
    move v12, v14

    .line 318
    mul-float v14, v12, v17

    .line 319
    .line 320
    mul-float v15, v15, v17

    .line 321
    .line 322
    add-float/2addr v15, v14

    .line 323
    shr-long v10, v2, p2

    .line 324
    .line 325
    long-to-int v9, v10

    .line 326
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 327
    .line 328
    .line 329
    move-result v9

    .line 330
    add-float/2addr v9, v15

    .line 331
    and-long v10, v2, p5

    .line 332
    .line 333
    long-to-int v10, v10

    .line 334
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 335
    .line 336
    .line 337
    move-result v10

    .line 338
    add-float/2addr v10, v15

    .line 339
    float-to-double v14, v9

    .line 340
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 341
    .line 342
    .line 343
    move-result-wide v14

    .line 344
    double-to-float v11, v14

    .line 345
    float-to-int v11, v11

    .line 346
    float-to-double v14, v10

    .line 347
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 348
    .line 349
    .line 350
    move-result-wide v14

    .line 351
    double-to-float v14, v14

    .line 352
    float-to-int v14, v14

    .line 353
    invoke-static {v11, v14, v8}, Landroidx/compose/ui/graphics/ColorKt;->ImageBitmap-x__-hDU$default(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-static {v8}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->ActualCanvas(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 358
    .line 359
    .line 360
    move-result-object v15

    .line 361
    sub-float v18, v9, v12

    .line 362
    .line 363
    sub-float v19, v10, v12

    .line 364
    .line 365
    shr-long v9, v6, p2

    .line 366
    .line 367
    long-to-int v9, v9

    .line 368
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 369
    .line 370
    .line 371
    move-result v20

    .line 372
    and-long v6, v6, p5

    .line 373
    .line 374
    long-to-int v6, v6

    .line 375
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 376
    .line 377
    .line 378
    move-result v21

    .line 379
    cmpl-float v6, v12, v23

    .line 380
    .line 381
    if-lez v6, :cond_e

    .line 382
    .line 383
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    .line 384
    .line 385
    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 386
    .line 387
    invoke-direct {v6, v12, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 388
    .line 389
    .line 390
    :goto_8
    const/16 v10, 0xb

    .line 391
    .line 392
    goto :goto_9

    .line 393
    :cond_e
    const/4 v6, 0x0

    .line 394
    goto :goto_8

    .line 395
    :goto_9
    invoke-static {v13, v6, v10}, Landroidx/compose/ui/unit/DpKt;->configureShadow-FoewPVk$default(Landroidx/compose/ui/graphics/AndroidPaint;Landroid/graphics/BlurMaskFilter;I)Landroidx/compose/ui/graphics/AndroidPaint;

    .line 396
    .line 397
    .line 398
    move/from16 v17, v12

    .line 399
    .line 400
    move/from16 v16, v12

    .line 401
    .line 402
    move-object/from16 v22, v13

    .line 403
    .line 404
    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawRoundRect(FFFFFFLandroidx/compose/ui/graphics/AndroidPaint;)V

    .line 405
    .line 406
    .line 407
    move-object v6, v8

    .line 408
    :goto_a
    iput-object v6, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadowBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 409
    .line 410
    iput-wide v2, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->generatedSize:J

    .line 411
    .line 412
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    iput-object v2, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->generatedLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 417
    .line 418
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    iput v2, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->generatedDensity:F

    .line 423
    .line 424
    :goto_b
    iget-object v2, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadowBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 425
    .line 426
    if-eqz v2, :cond_f

    .line 427
    .line 428
    iget-object v0, v0, Landroidx/compose/ui/graphics/shadow/DropShadowRenderer;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    const/high16 v13, 0x41400000    # 12.0f

    .line 434
    .line 435
    invoke-interface {v1, v13}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    move/from16 v3, v23

    .line 440
    .line 441
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    add-float/2addr v3, v0

    .line 446
    neg-float v0, v3

    .line 447
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    int-to-long v3, v3

    .line 452
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    int-to-long v6, v0

    .line 457
    shl-long v3, v3, p2

    .line 458
    .line 459
    and-long v6, v6, p5

    .line 460
    .line 461
    or-long/2addr v3, v6

    .line 462
    const/16 v6, 0x8

    .line 463
    .line 464
    move-object v0, v1

    .line 465
    move-object v1, v2

    .line 466
    move-wide v2, v3

    .line 467
    move/from16 v4, p7

    .line 468
    .line 469
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/Modifier$-CC;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;JFLandroidx/compose/ui/graphics/BlendModeColorFilter;I)V

    .line 470
    .line 471
    .line 472
    :cond_f
    return-void

    .line 473
    :cond_10
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 474
    .line 475
    .line 476
    return-void
.end method
