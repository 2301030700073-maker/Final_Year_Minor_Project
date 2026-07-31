.class public final synthetic Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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

.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/ThumbNode;F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

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
    iput-object p2, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$2:F

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;FLjava/lang/Object;I)V
    .locals 0

    .line 15
    iput p4, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$2:F

    iput-object p3, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    iget v4, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/material3/ThumbNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/runtime/State;

    .line 18
    .line 19
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->isDragged:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->draggedOffsetY:F

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTranslationY(F)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :pswitch_0
    check-cast p0, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 64
    .line 65
    check-cast v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 66
    .line 67
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 73
    .line 74
    iget-object v5, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 75
    .line 76
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 85
    .line 86
    .line 87
    :try_start_0
    iget-object v0, v5, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Landroidx/camera/view/PreviewView$1;

    .line 90
    .line 91
    invoke-virtual {v0, v4, v1}, Landroidx/camera/view/PreviewView$1;->translate(FF)V

    .line 92
    .line 93
    .line 94
    const/high16 v1, 0x42340000    # 45.0f

    .line 95
    .line 96
    const-wide/16 v8, 0x0

    .line 97
    .line 98
    invoke-virtual {v0, v1, v8, v9}, Landroidx/camera/view/PreviewView$1;->rotate-Uv8p0NA(FJ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawImage-gbVJVH8(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/BlendModeColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    invoke-static {v5, v6, v7}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    move-object p0, v0

    .line 110
    invoke-static {v5, v6, v7}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :pswitch_1
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 115
    .line 116
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;

    .line 117
    .line 118
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 119
    .line 120
    cmpl-float v0, v4, v1

    .line 121
    .line 122
    if-lez v0, :cond_2

    .line 123
    .line 124
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    cmpl-float v1, v0, v4

    .line 137
    .line 138
    if-lez v1, :cond_1

    .line 139
    .line 140
    :goto_0
    move v1, v4

    .line 141
    goto :goto_1

    .line 142
    :cond_1
    move v1, v0

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    cmpg-float v0, v4, v1

    .line 145
    .line 146
    if-gez v0, :cond_3

    .line 147
    .line 148
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    cmpg-float v1, v0, v4

    .line 161
    .line 162
    if-gez v1, :cond_1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    :goto_1
    iget v0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 166
    .line 167
    sub-float v0, v1, v0

    .line 168
    .line 169
    iget-object v3, v3, Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;->$$delegate_0:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v3, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 172
    .line 173
    invoke-interface {v3, v0}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    cmpg-float v3, v0, v3

    .line 178
    .line 179
    if-nez v3, :cond_4

    .line 180
    .line 181
    iget-object v3, p1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 182
    .line 183
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Ljava/lang/Number;

    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    cmpg-float v1, v1, v3

    .line 194
    .line 195
    if-nez v1, :cond_4

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 199
    .line 200
    .line 201
    :goto_2
    iget p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 202
    .line 203
    add-float/2addr p1, v0

    .line 204
    iput p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 205
    .line 206
    return-object v2

    .line 207
    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 208
    .line 209
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 210
    .line 211
    check-cast p1, Ljava/lang/Long;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 214
    .line 215
    .line 216
    move-result-wide v5

    .line 217
    iget-wide v7, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastFrameTime:J

    .line 218
    .line 219
    const-wide/high16 v9, -0x8000000000000000L

    .line 220
    .line 221
    cmp-long p1, v7, v9

    .line 222
    .line 223
    if-nez p1, :cond_5

    .line 224
    .line 225
    iput-wide v5, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastFrameTime:J

    .line 226
    .line 227
    :cond_5
    new-instance v10, Landroidx/compose/animation/core/AnimationVector1D;

    .line 228
    .line 229
    iget p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 230
    .line 231
    invoke-direct {v10, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 232
    .line 233
    .line 234
    cmpg-float v0, v4, v1

    .line 235
    .line 236
    sget-object v11, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->ZeroVector:Landroidx/compose/animation/core/AnimationVector1D;

    .line 237
    .line 238
    if-nez v0, :cond_6

    .line 239
    .line 240
    iget-object v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->vectorizedSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 241
    .line 242
    new-instance v1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 243
    .line 244
    invoke-direct {v1, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 248
    .line 249
    invoke-interface {v0, v1, v11, p1}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    .line 250
    .line 251
    .line 252
    move-result-wide v0

    .line 253
    :goto_3
    move-wide v8, v0

    .line 254
    goto :goto_4

    .line 255
    :cond_6
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastFrameTime:J

    .line 256
    .line 257
    sub-long v0, v5, v0

    .line 258
    .line 259
    long-to-float p1, v0

    .line 260
    div-float/2addr p1, v4

    .line 261
    float-to-double v0, p1

    .line 262
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToLong(D)J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    goto :goto_3

    .line 267
    :goto_4
    iget-object v7, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->vectorizedSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 268
    .line 269
    iget-object v12, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 270
    .line 271
    invoke-interface/range {v7 .. v12}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 276
    .line 277
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 278
    .line 279
    iget-object v7, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->vectorizedSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 280
    .line 281
    iget-object v12, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 282
    .line 283
    invoke-interface/range {v7 .. v12}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 288
    .line 289
    iput-object v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 290
    .line 291
    iput-wide v5, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->lastFrameTime:J

    .line 292
    .line 293
    iget v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 294
    .line 295
    sub-float/2addr v0, p1

    .line 296
    iput p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 297
    .line 298
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    return-object v2

    .line 306
    :pswitch_3
    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    .line 307
    .line 308
    check-cast v3, Landroidx/compose/material3/ThumbNode;

    .line 309
    .line 310
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 311
    .line 312
    iget-object v0, v3, Landroidx/compose/material3/ThumbNode;->offsetAnim:Landroidx/compose/animation/core/Animatable;

    .line 313
    .line 314
    if-eqz v0, :cond_7

    .line 315
    .line 316
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    check-cast v0, Ljava/lang/Number;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    float-to-int v0, v0

    .line 327
    goto :goto_5

    .line 328
    :cond_7
    float-to-int v0, v4

    .line 329
    :goto_5
    const/4 v1, 0x0

    .line 330
    invoke-static {p1, p0, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 331
    .line 332
    .line 333
    return-object v2

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
