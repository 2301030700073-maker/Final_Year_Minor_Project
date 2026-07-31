.class public final synthetic Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    const-wide v4, 0xffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/16 v6, 0x20

    .line 14
    .line 15
    packed-switch p0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/util/List;

    .line 19
    .line 20
    new-instance p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 21
    .line 22
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    return-object v3

    .line 58
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerType;

    .line 59
    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget p0, p1, Landroidx/compose/ui/input/pointer/PointerType;->value:I

    .line 64
    .line 65
    const/4 p1, 0x2

    .line 66
    if-ne p0, p1, :cond_1

    .line 67
    .line 68
    move v2, v1

    .line 69
    :cond_1
    :goto_0
    xor-int/lit8 p0, v2, 0x1

    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    return-object v3

    .line 82
    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 83
    .line 84
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 85
    .line 86
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "android.software.leanback"

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_2

    .line 108
    .line 109
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->PivotBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    .line 118
    .line 119
    :goto_1
    return-object p0

    .line 120
    :pswitch_5
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 121
    .line 122
    sget p0, Landroidx/compose/foundation/AndroidOverscroll_androidKt;->$r8$clinit:I

    .line 123
    .line 124
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 125
    .line 126
    move-object v1, p1

    .line 127
    check-cast v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {v1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    move-object v2, p0

    .line 137
    check-cast v2, Landroid/content/Context;

    .line 138
    .line 139
    sget-object p0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 140
    .line 141
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 142
    .line 143
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    move-object v3, p0

    .line 148
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 149
    .line 150
    sget-object p0, Landroidx/compose/foundation/OverscrollConfiguration_androidKt;->LocalOverscrollConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 151
    .line 152
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast p0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 157
    .line 158
    if-nez p0, :cond_3

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    new-instance v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    .line 162
    .line 163
    iget-wide v4, p0, Landroidx/compose/foundation/OverscrollConfiguration;->glowColor:J

    .line 164
    .line 165
    iget-object v6, p0, Landroidx/compose/foundation/OverscrollConfiguration;->drawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 166
    .line 167
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 168
    .line 169
    .line 170
    move-object v0, v1

    .line 171
    :goto_2
    return-object v0

    .line 172
    :pswitch_6
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 173
    .line 174
    return-object v3

    .line 175
    :pswitch_7
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 176
    .line 177
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 178
    .line 179
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    return-object p0

    .line 184
    :pswitch_8
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 185
    .line 186
    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    .line 187
    .line 188
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    .line 189
    .line 190
    iget v1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    .line 191
    .line 192
    iget v2, p1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    .line 193
    .line 194
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    .line 195
    .line 196
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 197
    .line 198
    .line 199
    return-object p0

    .line 200
    :pswitch_9
    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    .line 201
    .line 202
    new-instance p0, Landroidx/compose/animation/core/AnimationVector4D;

    .line 203
    .line 204
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 205
    .line 206
    iget v1, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 207
    .line 208
    iget v2, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 209
    .line 210
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 211
    .line 212
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :pswitch_a
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 217
    .line 218
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 219
    .line 220
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-gez p0, :cond_4

    .line 225
    .line 226
    move p0, v2

    .line 227
    :cond_4
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 228
    .line 229
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-gez p1, :cond_5

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_5
    move v2, p1

    .line 237
    :goto_3
    int-to-long p0, p0

    .line 238
    shl-long/2addr p0, v6

    .line 239
    int-to-long v0, v2

    .line 240
    and-long/2addr v0, v4

    .line 241
    or-long/2addr p0, v0

    .line 242
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 243
    .line 244
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 245
    .line 246
    .line 247
    return-object v0

    .line 248
    :pswitch_b
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 249
    .line 250
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 251
    .line 252
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 253
    .line 254
    shr-long v2, v0, v6

    .line 255
    .line 256
    long-to-int p1, v2

    .line 257
    int-to-float p1, p1

    .line 258
    and-long/2addr v0, v4

    .line 259
    long-to-int v0, v0

    .line 260
    int-to-float v0, v0

    .line 261
    invoke-direct {p0, p1, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 262
    .line 263
    .line 264
    return-object p0

    .line 265
    :pswitch_c
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 266
    .line 267
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 268
    .line 269
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 270
    .line 271
    .line 272
    move-result p0

    .line 273
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 274
    .line 275
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    int-to-long v0, p0

    .line 280
    shl-long/2addr v0, v6

    .line 281
    int-to-long p0, p1

    .line 282
    and-long/2addr p0, v4

    .line 283
    or-long/2addr p0, v0

    .line 284
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 285
    .line 286
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 287
    .line 288
    .line 289
    return-object v0

    .line 290
    :pswitch_d
    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    .line 291
    .line 292
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 293
    .line 294
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 295
    .line 296
    shr-long v2, v0, v6

    .line 297
    .line 298
    long-to-int p1, v2

    .line 299
    int-to-float p1, p1

    .line 300
    and-long/2addr v0, v4

    .line 301
    long-to-int v0, v0

    .line 302
    int-to-float v0, v0

    .line 303
    invoke-direct {p0, p1, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 304
    .line 305
    .line 306
    return-object p0

    .line 307
    :pswitch_e
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 308
    .line 309
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 310
    .line 311
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 312
    .line 313
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    int-to-long v0, p0

    .line 318
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 319
    .line 320
    .line 321
    move-result p0

    .line 322
    int-to-long p0, p0

    .line 323
    shl-long/2addr v0, v6

    .line 324
    and-long/2addr p0, v4

    .line 325
    or-long/2addr p0, v0

    .line 326
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 327
    .line 328
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 329
    .line 330
    .line 331
    return-object v0

    .line 332
    :pswitch_f
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 333
    .line 334
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 335
    .line 336
    iget-wide v0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 337
    .line 338
    shr-long/2addr v0, v6

    .line 339
    long-to-int v0, v0

    .line 340
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    iget-wide v1, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 345
    .line 346
    and-long/2addr v1, v4

    .line 347
    long-to-int p1, v1

    .line 348
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 353
    .line 354
    .line 355
    return-object p0

    .line 356
    :pswitch_10
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 357
    .line 358
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 359
    .line 360
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 361
    .line 362
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 363
    .line 364
    .line 365
    move-result p0

    .line 366
    int-to-long v0, p0

    .line 367
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 368
    .line 369
    .line 370
    move-result p0

    .line 371
    int-to-long p0, p0

    .line 372
    shl-long/2addr v0, v6

    .line 373
    and-long/2addr p0, v4

    .line 374
    or-long/2addr p0, v0

    .line 375
    new-instance v0, Landroidx/compose/ui/geometry/Size;

    .line 376
    .line 377
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 378
    .line 379
    .line 380
    return-object v0

    .line 381
    :pswitch_11
    check-cast p1, Landroidx/compose/ui/geometry/Size;

    .line 382
    .line 383
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 384
    .line 385
    iget-wide v0, p1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 386
    .line 387
    shr-long/2addr v0, v6

    .line 388
    long-to-int v0, v0

    .line 389
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    iget-wide v1, p1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 394
    .line 395
    and-long/2addr v1, v4

    .line 396
    long-to-int p1, v1

    .line 397
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 402
    .line 403
    .line 404
    return-object p0

    .line 405
    :pswitch_12
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 406
    .line 407
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 408
    .line 409
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 410
    .line 411
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 412
    .line 413
    .line 414
    move-result p0

    .line 415
    int-to-long v0, p0

    .line 416
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 417
    .line 418
    .line 419
    move-result p0

    .line 420
    int-to-long p0, p0

    .line 421
    shl-long/2addr v0, v6

    .line 422
    and-long/2addr p0, v4

    .line 423
    or-long/2addr p0, v0

    .line 424
    new-instance v0, Landroidx/compose/ui/unit/DpOffset;

    .line 425
    .line 426
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/DpOffset;-><init>(J)V

    .line 427
    .line 428
    .line 429
    return-object v0

    .line 430
    :pswitch_13
    check-cast p1, Landroidx/compose/ui/unit/DpOffset;

    .line 431
    .line 432
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 433
    .line 434
    iget-wide v0, p1, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    .line 435
    .line 436
    shr-long/2addr v0, v6

    .line 437
    long-to-int v0, v0

    .line 438
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    iget-wide v1, p1, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    .line 443
    .line 444
    and-long/2addr v1, v4

    .line 445
    long-to-int p1, v1

    .line 446
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 451
    .line 452
    .line 453
    return-object p0

    .line 454
    :pswitch_14
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 455
    .line 456
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 457
    .line 458
    new-instance p1, Landroidx/compose/ui/unit/Dp;

    .line 459
    .line 460
    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 461
    .line 462
    .line 463
    return-object p1

    .line 464
    :pswitch_15
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 465
    .line 466
    new-instance p0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 467
    .line 468
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 469
    .line 470
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 471
    .line 472
    .line 473
    return-object p0

    .line 474
    :pswitch_16
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 475
    .line 476
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 477
    .line 478
    float-to-int p0, p0

    .line 479
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object p0

    .line 483
    return-object p0

    .line 484
    :pswitch_17
    check-cast p1, Ljava/lang/Integer;

    .line 485
    .line 486
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 487
    .line 488
    .line 489
    move-result p0

    .line 490
    new-instance p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 491
    .line 492
    int-to-float p0, p0

    .line 493
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 494
    .line 495
    .line 496
    return-object p1

    .line 497
    :pswitch_18
    check-cast p1, Ljava/lang/Float;

    .line 498
    .line 499
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 500
    .line 501
    .line 502
    move-result p0

    .line 503
    new-instance p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 504
    .line 505
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 506
    .line 507
    .line 508
    return-object p1

    .line 509
    :pswitch_19
    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 510
    .line 511
    iget-wide v0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 512
    .line 513
    iget-object p0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->snapshotStateObserver:Landroidx/preference/PreferenceManager;

    .line 514
    .line 515
    if-eqz p0, :cond_6

    .line 516
    .line 517
    sget-object v4, Landroidx/compose/animation/core/ArcSplineKt;->SeekableTransitionStateTotalDurationChanged:Landroidx/compose/foundation/ImageKt$$ExternalSyntheticLambda0;

    .line 518
    .line 519
    iget-object v5, p1, Landroidx/compose/animation/core/SeekableTransitionState;->recalculateTotalDurationNanos:Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 520
    .line 521
    invoke-virtual {p0, p1, v4, v5}, Landroidx/preference/PreferenceManager;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 522
    .line 523
    .line 524
    :cond_6
    iget-wide v4, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 525
    .line 526
    cmp-long p0, v0, v4

    .line 527
    .line 528
    if-eqz p0, :cond_9

    .line 529
    .line 530
    iget-object p0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 531
    .line 532
    if-eqz p0, :cond_8

    .line 533
    .line 534
    iget-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->progressNanos:J

    .line 535
    .line 536
    cmp-long v0, v0, v4

    .line 537
    .line 538
    if-lez v0, :cond_7

    .line 539
    .line 540
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState;->endAllAnimations()V

    .line 541
    .line 542
    .line 543
    goto :goto_4

    .line 544
    :cond_7
    iput-wide v4, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->durationNanos:J

    .line 545
    .line 546
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 547
    .line 548
    if-nez v0, :cond_9

    .line 549
    .line 550
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->start:Landroidx/compose/animation/core/AnimationVector1D;

    .line 551
    .line 552
    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/AnimationVector1D;->get$animation_core(I)F

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    float-to-double v0, v0

    .line 557
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 558
    .line 559
    sub-double/2addr v4, v0

    .line 560
    iget-wide v0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 561
    .line 562
    long-to-double v0, v0

    .line 563
    mul-double/2addr v4, v0

    .line 564
    invoke-static {v4, v5}, Lkotlin/math/MathKt;->roundToLong(D)J

    .line 565
    .line 566
    .line 567
    move-result-wide v0

    .line 568
    iput-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpecDuration:J

    .line 569
    .line 570
    goto :goto_4

    .line 571
    :cond_8
    const-wide/16 v0, 0x0

    .line 572
    .line 573
    cmp-long p0, v4, v0

    .line 574
    .line 575
    if-eqz p0, :cond_9

    .line 576
    .line 577
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    .line 578
    .line 579
    .line 580
    :cond_9
    :goto_4
    return-object v3

    .line 581
    :pswitch_1a
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 582
    .line 583
    return-object v3

    .line 584
    :pswitch_1b
    check-cast p1, Landroid/content/res/Resources;

    .line 585
    .line 586
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 590
    .line 591
    .line 592
    move-result-object p0

    .line 593
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 594
    .line 595
    and-int/lit8 p0, p0, 0x30

    .line 596
    .line 597
    if-ne p0, v6, :cond_a

    .line 598
    .line 599
    goto :goto_5

    .line 600
    :cond_a
    move v1, v2

    .line 601
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 602
    .line 603
    .line 604
    move-result-object p0

    .line 605
    return-object p0

    .line 606
    :pswitch_1c
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 607
    .line 608
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 609
    .line 610
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 611
    .line 612
    const-string v0, "NewPipe"

    .line 613
    .line 614
    invoke-static {v0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    const/4 p0, 0x5

    .line 622
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 623
    .line 624
    .line 625
    return-object v3

    .line 626
    nop

    .line 627
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
