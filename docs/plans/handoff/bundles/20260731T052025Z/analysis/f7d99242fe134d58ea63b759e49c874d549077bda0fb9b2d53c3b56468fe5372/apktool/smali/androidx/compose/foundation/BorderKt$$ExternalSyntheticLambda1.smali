.class public final synthetic Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
    .locals 6

    .line 1
    iget p0, p0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/16 v4, 0x20

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_0
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 20
    .line 21
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_1
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 29
    .line 30
    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    .line 31
    .line 32
    iget v0, p1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    .line 33
    .line 34
    iget v1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    .line 35
    .line 36
    iget v2, p1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    .line 37
    .line 38
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    .line 39
    .line 40
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/geometry/Rect;

    .line 45
    .line 46
    new-instance p0, Landroidx/compose/animation/core/AnimationVector4D;

    .line 47
    .line 48
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 49
    .line 50
    iget v1, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 51
    .line 52
    iget v2, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 53
    .line 54
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 55
    .line 56
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_3
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 61
    .line 62
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 63
    .line 64
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-gez p0, :cond_0

    .line 69
    .line 70
    move p0, v0

    .line 71
    :cond_0
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-gez p1, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move v0, p1

    .line 81
    :goto_0
    int-to-long p0, p0

    .line 82
    shl-long/2addr p0, v4

    .line 83
    int-to-long v0, v0

    .line 84
    and-long/2addr v0, v2

    .line 85
    or-long/2addr p0, v0

    .line 86
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 87
    .line 88
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :pswitch_4
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 93
    .line 94
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 95
    .line 96
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 97
    .line 98
    shr-long v4, v0, v4

    .line 99
    .line 100
    long-to-int p1, v4

    .line 101
    int-to-float p1, p1

    .line 102
    and-long/2addr v0, v2

    .line 103
    long-to-int v0, v0

    .line 104
    int-to-float v0, v0

    .line 105
    invoke-direct {p0, p1, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_5
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 110
    .line 111
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 112
    .line 113
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 118
    .line 119
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    int-to-long v0, p0

    .line 124
    shl-long/2addr v0, v4

    .line 125
    int-to-long p0, p1

    .line 126
    and-long/2addr p0, v2

    .line 127
    or-long/2addr p0, v0

    .line 128
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 129
    .line 130
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :pswitch_6
    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    .line 135
    .line 136
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 137
    .line 138
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 139
    .line 140
    shr-long v4, v0, v4

    .line 141
    .line 142
    long-to-int p1, v4

    .line 143
    int-to-float p1, p1

    .line 144
    and-long/2addr v0, v2

    .line 145
    long-to-int v0, v0

    .line 146
    int-to-float v0, v0

    .line 147
    invoke-direct {p0, p1, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 148
    .line 149
    .line 150
    return-object p0

    .line 151
    :pswitch_7
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 152
    .line 153
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 154
    .line 155
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 156
    .line 157
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    int-to-long v0, p0

    .line 162
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    int-to-long p0, p0

    .line 167
    shl-long/2addr v0, v4

    .line 168
    and-long/2addr p0, v2

    .line 169
    or-long/2addr p0, v0

    .line 170
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 171
    .line 172
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 173
    .line 174
    .line 175
    return-object v0

    .line 176
    :pswitch_8
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 177
    .line 178
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 179
    .line 180
    iget-wide v0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 181
    .line 182
    shr-long/2addr v0, v4

    .line 183
    long-to-int v0, v0

    .line 184
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    iget-wide v4, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 189
    .line 190
    and-long/2addr v2, v4

    .line 191
    long-to-int p1, v2

    .line 192
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 197
    .line 198
    .line 199
    return-object p0

    .line 200
    :pswitch_9
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 201
    .line 202
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 203
    .line 204
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 205
    .line 206
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    int-to-long v0, p0

    .line 211
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    int-to-long p0, p0

    .line 216
    shl-long/2addr v0, v4

    .line 217
    and-long/2addr p0, v2

    .line 218
    or-long/2addr p0, v0

    .line 219
    new-instance v0, Landroidx/compose/ui/geometry/Size;

    .line 220
    .line 221
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 222
    .line 223
    .line 224
    return-object v0

    .line 225
    :pswitch_a
    check-cast p1, Landroidx/compose/ui/geometry/Size;

    .line 226
    .line 227
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 228
    .line 229
    iget-wide v0, p1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 230
    .line 231
    shr-long/2addr v0, v4

    .line 232
    long-to-int v0, v0

    .line 233
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    iget-wide v4, p1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 238
    .line 239
    and-long/2addr v2, v4

    .line 240
    long-to-int p1, v2

    .line 241
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 246
    .line 247
    .line 248
    return-object p0

    .line 249
    :pswitch_b
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 250
    .line 251
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 252
    .line 253
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 254
    .line 255
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    int-to-long v0, p0

    .line 260
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    int-to-long p0, p0

    .line 265
    shl-long/2addr v0, v4

    .line 266
    and-long/2addr p0, v2

    .line 267
    or-long/2addr p0, v0

    .line 268
    new-instance v0, Landroidx/compose/ui/unit/DpOffset;

    .line 269
    .line 270
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/DpOffset;-><init>(J)V

    .line 271
    .line 272
    .line 273
    return-object v0

    .line 274
    :pswitch_c
    check-cast p1, Landroidx/compose/ui/unit/DpOffset;

    .line 275
    .line 276
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 277
    .line 278
    iget-wide v0, p1, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    .line 279
    .line 280
    shr-long/2addr v0, v4

    .line 281
    long-to-int v0, v0

    .line 282
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    iget-wide v4, p1, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    .line 287
    .line 288
    and-long/2addr v2, v4

    .line 289
    long-to-int p1, v2

    .line 290
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 295
    .line 296
    .line 297
    return-object p0

    .line 298
    :pswitch_d
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 299
    .line 300
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 301
    .line 302
    new-instance p1, Landroidx/compose/ui/unit/Dp;

    .line 303
    .line 304
    invoke-direct {p1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 305
    .line 306
    .line 307
    return-object p1

    .line 308
    :pswitch_e
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 309
    .line 310
    new-instance p0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 311
    .line 312
    iget p1, p1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 313
    .line 314
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 315
    .line 316
    .line 317
    return-object p0

    .line 318
    :pswitch_f
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 319
    .line 320
    iget p0, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 321
    .line 322
    float-to-int p0, p0

    .line 323
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    return-object p0

    .line 328
    :pswitch_10
    check-cast p1, Ljava/lang/Integer;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    new-instance p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 335
    .line 336
    int-to-float p0, p0

    .line 337
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 338
    .line 339
    .line 340
    return-object p1

    .line 341
    :pswitch_11
    check-cast p1, Ljava/lang/Float;

    .line 342
    .line 343
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    new-instance p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 348
    .line 349
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 350
    .line 351
    .line 352
    return-object p1

    .line 353
    :pswitch_12
    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 354
    .line 355
    iget-wide v2, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 356
    .line 357
    iget-object p0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 358
    .line 359
    if-eqz p0, :cond_2

    .line 360
    .line 361
    sget-object v4, Landroidx/compose/animation/core/ArcSplineKt;->SeekableTransitionStateTotalDurationChanged:Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 362
    .line 363
    iget-object v5, p1, Landroidx/compose/animation/core/SeekableTransitionState;->recalculateTotalDurationNanos:Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 364
    .line 365
    invoke-virtual {p0, p1, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 366
    .line 367
    .line 368
    :cond_2
    iget-wide v4, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 369
    .line 370
    cmp-long p0, v2, v4

    .line 371
    .line 372
    if-eqz p0, :cond_5

    .line 373
    .line 374
    iget-object p0, p1, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 375
    .line 376
    if-eqz p0, :cond_4

    .line 377
    .line 378
    iget-wide v2, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->progressNanos:J

    .line 379
    .line 380
    cmp-long v2, v2, v4

    .line 381
    .line 382
    if-lez v2, :cond_3

    .line 383
    .line 384
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState;->endAllAnimations()V

    .line 385
    .line 386
    .line 387
    goto :goto_1

    .line 388
    :cond_3
    iput-wide v4, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->durationNanos:J

    .line 389
    .line 390
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 391
    .line 392
    if-nez v2, :cond_5

    .line 393
    .line 394
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->start:Landroidx/compose/animation/core/AnimationVector1D;

    .line 395
    .line 396
    invoke-virtual {v2, v0}, Landroidx/compose/animation/core/AnimationVector1D;->get$animation_core(I)F

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    float-to-double v2, v0

    .line 401
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 402
    .line 403
    sub-double/2addr v4, v2

    .line 404
    iget-wide v2, p1, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 405
    .line 406
    long-to-double v2, v2

    .line 407
    mul-double/2addr v4, v2

    .line 408
    invoke-static {v4, v5}, Lkotlin/math/MathKt;->roundToLong(D)J

    .line 409
    .line 410
    .line 411
    move-result-wide v2

    .line 412
    iput-wide v2, p0, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpecDuration:J

    .line 413
    .line 414
    goto :goto_1

    .line 415
    :cond_4
    const-wide/16 v2, 0x0

    .line 416
    .line 417
    cmp-long p0, v4, v2

    .line 418
    .line 419
    if-eqz p0, :cond_5

    .line 420
    .line 421
    invoke-virtual {p1}, Landroidx/compose/animation/core/SeekableTransitionState;->seekToFraction()V

    .line 422
    .line 423
    .line 424
    :cond_5
    :goto_1
    return-object v1

    .line 425
    :pswitch_13
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 426
    .line 427
    return-object v1

    .line 428
    :pswitch_14
    check-cast p1, Ljava/lang/Void;

    .line 429
    .line 430
    sget-object p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 431
    .line 432
    return-object p0

    .line 433
    :pswitch_15
    check-cast p1, Landroidx/camera/core/UseCase;

    .line 434
    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    iget-object p0, p1, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 439
    .line 440
    return-object p0

    .line 441
    :pswitch_16
    check-cast p1, Ljava/util/List;

    .line 442
    .line 443
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    return-object v1

    .line 447
    :pswitch_17
    instance-of p0, p1, [Ljava/lang/Object;

    .line 448
    .line 449
    if-eqz p0, :cond_6

    .line 450
    .line 451
    move-object v0, p1

    .line 452
    check-cast v0, [Ljava/lang/Object;

    .line 453
    .line 454
    new-instance v4, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 455
    .line 456
    const/4 p0, 0x5

    .line 457
    invoke-direct {v4, p0}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 458
    .line 459
    .line 460
    const/16 v5, 0x19

    .line 461
    .line 462
    const/4 v1, 0x0

    .line 463
    const-string v2, "["

    .line 464
    .line 465
    const-string v3, "]"

    .line 466
    .line 467
    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object p0

    .line 471
    goto :goto_2

    .line 472
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p0

    .line 476
    :goto_2
    return-object p0

    .line 477
    :pswitch_18
    check-cast p1, Lkotlin/Unit;

    .line 478
    .line 479
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 483
    .line 484
    return-object p0

    .line 485
    :pswitch_19
    check-cast p1, Landroidx/camera/camera2/pipe/Result3A;

    .line 486
    .line 487
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    return-object v1

    .line 491
    :pswitch_1a
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 492
    .line 493
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 494
    .line 495
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 496
    .line 497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    invoke-static {p1, p0}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    check-cast p0, Landroid/content/Context;

    .line 505
    .line 506
    :goto_3
    instance-of p1, p0, Landroid/content/ContextWrapper;

    .line 507
    .line 508
    if-eqz p1, :cond_8

    .line 509
    .line 510
    instance-of p1, p0, Landroid/app/Activity;

    .line 511
    .line 512
    if-eqz p1, :cond_7

    .line 513
    .line 514
    goto :goto_4

    .line 515
    :cond_7
    check-cast p0, Landroid/content/ContextWrapper;

    .line 516
    .line 517
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    goto :goto_3

    .line 522
    :cond_8
    const/4 p0, 0x0

    .line 523
    :goto_4
    check-cast p0, Landroid/app/Activity;

    .line 524
    .line 525
    return-object p0

    .line 526
    :pswitch_1b
    check-cast p1, Landroid/content/res/Resources;

    .line 527
    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 532
    .line 533
    .line 534
    move-result-object p0

    .line 535
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 536
    .line 537
    and-int/lit8 p0, p0, 0x30

    .line 538
    .line 539
    if-ne p0, v4, :cond_9

    .line 540
    .line 541
    const/4 v0, 0x1

    .line 542
    :cond_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 543
    .line 544
    .line 545
    move-result-object p0

    .line 546
    return-object p0

    .line 547
    :pswitch_1c
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 548
    .line 549
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 550
    .line 551
    .line 552
    return-object v1

    .line 553
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
