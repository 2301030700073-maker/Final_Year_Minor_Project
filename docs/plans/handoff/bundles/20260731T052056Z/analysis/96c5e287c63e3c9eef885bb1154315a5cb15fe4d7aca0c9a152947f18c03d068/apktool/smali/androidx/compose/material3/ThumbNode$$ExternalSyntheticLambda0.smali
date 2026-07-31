.class public final synthetic Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(FLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$2:F

    iput-object p2, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;FLkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$2:F

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/ThumbNode;F)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v4, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iget p0, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$2:F

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroidx/compose/ui/layout/RulerKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-interface {v0, p1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 35
    .line 36
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 37
    .line 38
    sub-float/2addr v0, p1

    .line 39
    cmpl-float p0, v0, p0

    .line 40
    .line 41
    if-lez p0, :cond_0

    .line 42
    .line 43
    move v1, v2

    .line 44
    :cond_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {v4, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object v3

    .line 69
    :pswitch_0
    move-object v6, v5

    .line 70
    check-cast v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 71
    .line 72
    move-object v10, v4

    .line 73
    check-cast v10, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 74
    .line 75
    move-object v5, p1

    .line 76
    check-cast v5, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 77
    .line 78
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 79
    .line 80
    .line 81
    iget-object p1, v5, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 82
    .line 83
    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 86
    .line 87
    .line 88
    move-result-wide v12

    .line 89
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 94
    .line 95
    .line 96
    :try_start_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Landroidx/appcompat/widget/PopupMenu$1;

    .line 99
    .line 100
    invoke-virtual {v0, p0, v2}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 101
    .line 102
    .line 103
    const/high16 p0, 0x42340000    # 45.0f

    .line 104
    .line 105
    const-wide/16 v1, 0x0

    .line 106
    .line 107
    invoke-virtual {v0, p0, v1, v2}, Landroidx/appcompat/widget/PopupMenu$1;->rotate-Uv8p0NA(FJ)V

    .line 108
    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    const/16 v11, 0x2e

    .line 112
    .line 113
    const-wide/16 v7, 0x0

    .line 114
    .line 115
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/Modifier$-CC;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;JFLandroidx/compose/ui/graphics/BlendModeColorFilter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    invoke-static {p1, v12, v13}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 119
    .line 120
    .line 121
    return-object v3

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    move-object p0, v0

    .line 124
    invoke-static {p1, v12, v13}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :pswitch_1
    check-cast v5, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 129
    .line 130
    check-cast v4, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;

    .line 131
    .line 132
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 133
    .line 134
    cmpl-float v0, p0, v2

    .line 135
    .line 136
    if-lez v0, :cond_3

    .line 137
    .line 138
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/lang/Number;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    cmpl-float v1, v0, p0

    .line 151
    .line 152
    if-lez v1, :cond_2

    .line 153
    .line 154
    :goto_0
    move v2, p0

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    move v2, v0

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    cmpg-float v0, p0, v2

    .line 159
    .line 160
    if-gez v0, :cond_4

    .line 161
    .line 162
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Ljava/lang/Number;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    cmpg-float v1, v0, p0

    .line 175
    .line 176
    if-gez v1, :cond_2

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_4
    :goto_1
    iget p0, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 180
    .line 181
    sub-float p0, v2, p0

    .line 182
    .line 183
    invoke-interface {v4, p0}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    cmpg-float v0, p0, v0

    .line 188
    .line 189
    if-nez v0, :cond_5

    .line 190
    .line 191
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Ljava/lang/Number;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    cmpg-float v0, v2, v0

    .line 204
    .line 205
    if-nez v0, :cond_5

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 209
    .line 210
    .line 211
    :goto_2
    iget p1, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 212
    .line 213
    add-float/2addr p1, p0

    .line 214
    iput p1, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 215
    .line 216
    return-object v3

    .line 217
    :pswitch_2
    check-cast v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 218
    .line 219
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 220
    .line 221
    check-cast p1, Ljava/lang/Long;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    iget-wide v6, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastFrameTime:J

    .line 228
    .line 229
    const-wide/high16 v8, -0x8000000000000000L

    .line 230
    .line 231
    cmp-long p1, v6, v8

    .line 232
    .line 233
    if-nez p1, :cond_6

    .line 234
    .line 235
    iput-wide v0, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastFrameTime:J

    .line 236
    .line 237
    move-wide v6, v0

    .line 238
    :cond_6
    new-instance v11, Landroidx/compose/animation/core/AnimationVector1D;

    .line 239
    .line 240
    iget p1, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 241
    .line 242
    invoke-direct {v11, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 243
    .line 244
    .line 245
    cmpg-float v2, p0, v2

    .line 246
    .line 247
    sget-object v12, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->ZeroVector:Landroidx/compose/animation/core/AnimationVector1D;

    .line 248
    .line 249
    if-nez v2, :cond_7

    .line 250
    .line 251
    iget-object p0, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->vectorizedSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 252
    .line 253
    new-instance v2, Landroidx/compose/animation/core/AnimationVector1D;

    .line 254
    .line 255
    invoke-direct {v2, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 256
    .line 257
    .line 258
    iget-object p1, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 259
    .line 260
    invoke-interface {p0, v2, v12, p1}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    .line 261
    .line 262
    .line 263
    move-result-wide p0

    .line 264
    :goto_3
    move-wide v9, p0

    .line 265
    goto :goto_4

    .line 266
    :cond_7
    sub-long v6, v0, v6

    .line 267
    .line 268
    long-to-float p1, v6

    .line 269
    div-float/2addr p1, p0

    .line 270
    float-to-double p0, p1

    .line 271
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->roundToLong(D)J

    .line 272
    .line 273
    .line 274
    move-result-wide p0

    .line 275
    goto :goto_3

    .line 276
    :goto_4
    iget-object v8, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->vectorizedSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 277
    .line 278
    iget-object v13, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 279
    .line 280
    invoke-interface/range {v8 .. v13}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    check-cast p0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 285
    .line 286
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 287
    .line 288
    iget-object v8, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->vectorizedSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 289
    .line 290
    iget-object v13, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 291
    .line 292
    invoke-interface/range {v8 .. v13}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 297
    .line 298
    iput-object p1, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 299
    .line 300
    iput-wide v0, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastFrameTime:J

    .line 301
    .line 302
    iget p1, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 303
    .line 304
    sub-float/2addr p1, p0

    .line 305
    iput p0, v5, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 306
    .line 307
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-interface {v4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    return-object v3

    .line 315
    :pswitch_3
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 316
    .line 317
    check-cast v4, Landroidx/compose/material3/ThumbNode;

    .line 318
    .line 319
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 320
    .line 321
    iget-object v0, v4, Landroidx/compose/material3/ThumbNode;->offsetAnim:Landroidx/compose/animation/core/Animatable;

    .line 322
    .line 323
    if-eqz v0, :cond_8

    .line 324
    .line 325
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    check-cast p0, Ljava/lang/Number;

    .line 330
    .line 331
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    :cond_8
    float-to-int p0, p0

    .line 336
    invoke-static {p1, v5, p0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 337
    .line 338
    .line 339
    return-object v3

    .line 340
    nop

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
