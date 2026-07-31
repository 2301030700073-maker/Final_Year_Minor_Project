.class public final synthetic Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    iget p0, p0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    check-cast p1, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-object v3

    .line 24
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 25
    .line 26
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 27
    .line 28
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "android.software.leanback"

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_0

    .line 50
    .line 51
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->Companion:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->DefaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->PivotBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    .line 60
    .line 61
    :goto_0
    return-object p0

    .line 62
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    new-instance p1, Landroidx/compose/foundation/ScrollState;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 75
    .line 76
    sget-object p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 77
    .line 78
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 79
    .line 80
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 81
    .line 82
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 83
    .line 84
    aget-object v1, v2, v1

    .line 85
    .line 86
    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object v3

    .line 90
    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 91
    .line 92
    sget p0, Landroidx/compose/foundation/AndroidOverscroll_androidKt;->$r8$clinit:I

    .line 93
    .line 94
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 95
    .line 96
    move-object v1, p1

    .line 97
    check-cast v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    move-object v2, p0

    .line 107
    check-cast v2, Landroid/content/Context;

    .line 108
    .line 109
    sget-object p0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 110
    .line 111
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 112
    .line 113
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    move-object v3, p0

    .line 118
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 119
    .line 120
    sget-object p0, Landroidx/compose/foundation/OverscrollConfiguration_androidKt;->LocalOverscrollConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 121
    .line 122
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 127
    .line 128
    if-nez p0, :cond_1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    new-instance v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    .line 132
    .line 133
    iget-wide v4, p0, Landroidx/compose/foundation/OverscrollConfiguration;->glowColor:J

    .line 134
    .line 135
    iget-object v6, p0, Landroidx/compose/foundation/OverscrollConfiguration;->drawPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 136
    .line 137
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValuesImpl;)V

    .line 138
    .line 139
    .line 140
    move-object v0, v1

    .line 141
    :goto_1
    return-object v0

    .line 142
    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    return-object v3

    .line 148
    :pswitch_5
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 149
    .line 150
    return-object v3

    .line 151
    :pswitch_6
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 152
    .line 153
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 154
    .line 155
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    :pswitch_7
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 161
    .line 162
    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    .line 163
    .line 164
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    .line 165
    .line 166
    iget v1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    .line 167
    .line 168
    iget v2, p1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    .line 169
    .line 170
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    .line 171
    .line 172
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :pswitch_8
    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    .line 177
    .line 178
    new-instance p0, Landroidx/compose/animation/core/AnimationVector4D;

    .line 179
    .line 180
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 181
    .line 182
    iget v1, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 183
    .line 184
    iget v2, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 185
    .line 186
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 187
    .line 188
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    .line 189
    .line 190
    .line 191
    return-object p0

    .line 192
    :pswitch_9
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 193
    .line 194
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 195
    .line 196
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-gez p0, :cond_2

    .line 201
    .line 202
    move p0, v2

    .line 203
    :cond_2
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 204
    .line 205
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-gez p1, :cond_3

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_3
    move v2, p1

    .line 213
    :goto_2
    int-to-long p0, p0

    .line 214
    shl-long/2addr p0, v6

    .line 215
    int-to-long v0, v2

    .line 216
    and-long/2addr v0, v4

    .line 217
    or-long/2addr p0, v0

    .line 218
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 219
    .line 220
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 221
    .line 222
    .line 223
    return-object v0

    .line 224
    :pswitch_a
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 225
    .line 226
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 227
    .line 228
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 229
    .line 230
    shr-long v2, v0, v6

    .line 231
    .line 232
    long-to-int p1, v2

    .line 233
    int-to-float p1, p1

    .line 234
    and-long/2addr v0, v4

    .line 235
    long-to-int v0, v0

    .line 236
    int-to-float v0, v0

    .line 237
    invoke-direct {p0, p1, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 238
    .line 239
    .line 240
    return-object p0

    .line 241
    :pswitch_b
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 242
    .line 243
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 244
    .line 245
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 250
    .line 251
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    int-to-long v0, p0

    .line 256
    shl-long/2addr v0, v6

    .line 257
    int-to-long p0, p1

    .line 258
    and-long/2addr p0, v4

    .line 259
    or-long/2addr p0, v0

    .line 260
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 261
    .line 262
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 263
    .line 264
    .line 265
    return-object v0

    .line 266
    :pswitch_c
    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    .line 267
    .line 268
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 269
    .line 270
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 271
    .line 272
    shr-long v2, v0, v6

    .line 273
    .line 274
    long-to-int p1, v2

    .line 275
    int-to-float p1, p1

    .line 276
    and-long/2addr v0, v4

    .line 277
    long-to-int v0, v0

    .line 278
    int-to-float v0, v0

    .line 279
    invoke-direct {p0, p1, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 280
    .line 281
    .line 282
    return-object p0

    .line 283
    :pswitch_d
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 284
    .line 285
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 286
    .line 287
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 288
    .line 289
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    int-to-long v0, p0

    .line 294
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    int-to-long p0, p0

    .line 299
    shl-long/2addr v0, v6

    .line 300
    and-long/2addr p0, v4

    .line 301
    or-long/2addr p0, v0

    .line 302
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 303
    .line 304
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 305
    .line 306
    .line 307
    return-object v0

    .line 308
    :pswitch_e
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 309
    .line 310
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 311
    .line 312
    iget-wide v0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 313
    .line 314
    shr-long/2addr v0, v6

    .line 315
    long-to-int v0, v0

    .line 316
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    iget-wide v1, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 321
    .line 322
    and-long/2addr v1, v4

    .line 323
    long-to-int p1, v1

    .line 324
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 329
    .line 330
    .line 331
    return-object p0

    .line 332
    :pswitch_f
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 333
    .line 334
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 335
    .line 336
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 337
    .line 338
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    int-to-long v0, p0

    .line 343
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    int-to-long p0, p0

    .line 348
    shl-long/2addr v0, v6

    .line 349
    and-long/2addr p0, v4

    .line 350
    or-long/2addr p0, v0

    .line 351
    new-instance v0, Landroidx/compose/ui/geometry/Size;

    .line 352
    .line 353
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 354
    .line 355
    .line 356
    return-object v0

    .line 357
    :pswitch_10
    check-cast p1, Landroidx/compose/ui/geometry/Size;

    .line 358
    .line 359
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 360
    .line 361
    iget-wide v0, p1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 362
    .line 363
    shr-long/2addr v0, v6

    .line 364
    long-to-int v0, v0

    .line 365
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    iget-wide v1, p1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 370
    .line 371
    and-long/2addr v1, v4

    .line 372
    long-to-int p1, v1

    .line 373
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 378
    .line 379
    .line 380
    return-object p0

    .line 381
    :pswitch_11
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 382
    .line 383
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 384
    .line 385
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 386
    .line 387
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    int-to-long v0, p0

    .line 392
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 393
    .line 394
    .line 395
    move-result p0

    .line 396
    int-to-long p0, p0

    .line 397
    shl-long/2addr v0, v6

    .line 398
    and-long/2addr p0, v4

    .line 399
    or-long/2addr p0, v0

    .line 400
    new-instance v0, Landroidx/compose/ui/unit/DpOffset;

    .line 401
    .line 402
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/DpOffset;-><init>(J)V

    .line 403
    .line 404
    .line 405
    return-object v0

    .line 406
    :pswitch_12
    check-cast p1, Landroidx/compose/ui/unit/DpOffset;

    .line 407
    .line 408
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 409
    .line 410
    iget-wide v0, p1, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    .line 411
    .line 412
    shr-long/2addr v0, v6

    .line 413
    long-to-int v0, v0

    .line 414
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    iget-wide v1, p1, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    .line 419
    .line 420
    and-long/2addr v1, v4

    .line 421
    long-to-int p1, v1

    .line 422
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 427
    .line 428
    .line 429
    return-object p0

    .line 430
    :pswitch_13
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 431
    .line 432
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 433
    .line 434
    new-instance p1, Landroidx/compose/ui/unit/Dp;

    .line 435
    .line 436
    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 437
    .line 438
    .line 439
    return-object p1

    .line 440
    :pswitch_14
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 441
    .line 442
    new-instance p0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 443
    .line 444
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 445
    .line 446
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 447
    .line 448
    .line 449
    return-object p0

    .line 450
    :pswitch_15
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 451
    .line 452
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 453
    .line 454
    float-to-int p0, p0

    .line 455
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    return-object p0

    .line 460
    :pswitch_16
    check-cast p1, Ljava/lang/Integer;

    .line 461
    .line 462
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 463
    .line 464
    .line 465
    move-result p0

    .line 466
    new-instance p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 467
    .line 468
    int-to-float p0, p0

    .line 469
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 470
    .line 471
    .line 472
    return-object p1

    .line 473
    :pswitch_17
    check-cast p1, Ljava/lang/Float;

    .line 474
    .line 475
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 476
    .line 477
    .line 478
    move-result p0

    .line 479
    new-instance p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 480
    .line 481
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 482
    .line 483
    .line 484
    return-object p1

    .line 485
    :pswitch_18
    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 486
    .line 487
    iget-wide v0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 488
    .line 489
    iget-object p0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->snapshotStateObserver:Landroidx/preference/PreferenceManager;

    .line 490
    .line 491
    if-eqz p0, :cond_4

    .line 492
    .line 493
    sget-object v4, Landroidx/compose/animation/core/ArcSplineKt;->SeekableTransitionStateTotalDurationChanged:Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 494
    .line 495
    iget-object v5, p1, Landroidx/compose/animation/core/SeekableTransitionState;->recalculateTotalDurationNanos:Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 496
    .line 497
    invoke-virtual {p0, p1, v4, v5}, Landroidx/preference/PreferenceManager;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 498
    .line 499
    .line 500
    :cond_4
    iget-wide v4, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 501
    .line 502
    cmp-long p0, v0, v4

    .line 503
    .line 504
    if-eqz p0, :cond_7

    .line 505
    .line 506
    iget-object p0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 507
    .line 508
    if-eqz p0, :cond_6

    .line 509
    .line 510
    iget-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->progressNanos:J

    .line 511
    .line 512
    cmp-long v0, v0, v4

    .line 513
    .line 514
    if-lez v0, :cond_5

    .line 515
    .line 516
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState;->endAllAnimations()V

    .line 517
    .line 518
    .line 519
    goto :goto_3

    .line 520
    :cond_5
    iput-wide v4, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->durationNanos:J

    .line 521
    .line 522
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 523
    .line 524
    if-nez v0, :cond_7

    .line 525
    .line 526
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->start:Landroidx/compose/animation/core/AnimationVector1D;

    .line 527
    .line 528
    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/AnimationVector1D;->get$animation_core(I)F

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    float-to-double v0, v0

    .line 533
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 534
    .line 535
    sub-double/2addr v4, v0

    .line 536
    iget-wide v0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 537
    .line 538
    long-to-double v0, v0

    .line 539
    mul-double/2addr v4, v0

    .line 540
    invoke-static {v4, v5}, Lkotlin/UnsignedKt;->roundToLong(D)J

    .line 541
    .line 542
    .line 543
    move-result-wide v0

    .line 544
    iput-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpecDuration:J

    .line 545
    .line 546
    goto :goto_3

    .line 547
    :cond_6
    const-wide/16 v0, 0x0

    .line 548
    .line 549
    cmp-long p0, v4, v0

    .line 550
    .line 551
    if-eqz p0, :cond_7

    .line 552
    .line 553
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    .line 554
    .line 555
    .line 556
    :cond_7
    :goto_3
    return-object v3

    .line 557
    :pswitch_19
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 558
    .line 559
    return-object v3

    .line 560
    :pswitch_1a
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 561
    .line 562
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 563
    .line 564
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 565
    .line 566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object p0

    .line 573
    check-cast p0, Landroid/content/Context;

    .line 574
    .line 575
    :goto_4
    instance-of p1, p0, Landroid/content/ContextWrapper;

    .line 576
    .line 577
    if-eqz p1, :cond_9

    .line 578
    .line 579
    instance-of p1, p0, Landroid/app/Activity;

    .line 580
    .line 581
    if-eqz p1, :cond_8

    .line 582
    .line 583
    move-object v0, p0

    .line 584
    goto :goto_5

    .line 585
    :cond_8
    check-cast p0, Landroid/content/ContextWrapper;

    .line 586
    .line 587
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 588
    .line 589
    .line 590
    move-result-object p0

    .line 591
    goto :goto_4

    .line 592
    :cond_9
    :goto_5
    check-cast v0, Landroid/app/Activity;

    .line 593
    .line 594
    return-object v0

    .line 595
    :pswitch_1b
    check-cast p1, Landroid/content/res/Resources;

    .line 596
    .line 597
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 601
    .line 602
    .line 603
    move-result-object p0

    .line 604
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 605
    .line 606
    and-int/lit8 p0, p0, 0x30

    .line 607
    .line 608
    if-ne p0, v6, :cond_a

    .line 609
    .line 610
    goto :goto_6

    .line 611
    :cond_a
    move v1, v2

    .line 612
    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 613
    .line 614
    .line 615
    move-result-object p0

    .line 616
    return-object p0

    .line 617
    :pswitch_1c
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 618
    .line 619
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 620
    .line 621
    .line 622
    return-object v3

    .line 623
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
