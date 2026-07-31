.class public final synthetic Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 9
    iput p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    const/16 v4, 0xb

    .line 9
    .line 10
    const-string v5, "entered drag with non-zero pending scroll"

    .line 11
    .line 12
    const/high16 v6, 0x3f000000    # 0.5f

    .line 13
    .line 14
    const/16 v7, 0x20

    .line 15
    .line 16
    const-wide v8, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v13, 0x1

    .line 24
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 27
    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    check-cast v0, Landroidx/compose/material3/IndicatorLineNode;

    .line 32
    .line 33
    check-cast v1, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 34
    .line 35
    iget-object v2, v0, Landroidx/compose/material3/IndicatorLineNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroidx/compose/ui/unit/Dp;

    .line 42
    .line 43
    iget v2, v2, Landroidx/compose/ui/unit/Dp;->value:F

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    mul-float/2addr v3, v2

    .line 50
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v5, v0, Landroidx/compose/material3/IndicatorLineNode;->_shape:Landroidx/compose/ui/graphics/Shape;

    .line 55
    .line 56
    if-nez v5, :cond_0

    .line 57
    .line 58
    sget-object v5, Landroidx/compose/material3/ShapesKt;->LocalShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 59
    .line 60
    invoke-static {v0, v5}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Landroidx/compose/material3/Shapes;

    .line 65
    .line 66
    sget-object v6, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 67
    .line 68
    invoke-static {v5, v6}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    :cond_0
    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 73
    .line 74
    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 75
    .line 76
    .line 77
    move-result-wide v14

    .line 78
    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 79
    .line 80
    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-interface {v5, v14, v15, v6, v1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    instance-of v6, v5, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 89
    .line 90
    if-eqz v6, :cond_1

    .line 91
    .line 92
    check-cast v5, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 93
    .line 94
    iget-object v5, v5, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    .line 95
    .line 96
    invoke-static {v2, v5}, Landroidx/compose/ui/Modifier$-CC;->addRect$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/Rect;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    instance-of v6, v5, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 101
    .line 102
    if-eqz v6, :cond_2

    .line 103
    .line 104
    check-cast v5, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 105
    .line 106
    iget-object v5, v5, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 107
    .line 108
    invoke-static {v2, v5}, Landroidx/compose/ui/Modifier$-CC;->addRoundRect$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    instance-of v6, v5, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 113
    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    check-cast v5, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 117
    .line 118
    iget-object v5, v5, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 119
    .line 120
    invoke-static {v2, v5}, Landroidx/compose/ui/Modifier$-CC;->addPath-Uv8p0NA$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    new-instance v6, Landroidx/compose/ui/geometry/Rect;

    .line 128
    .line 129
    iget-object v10, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 130
    .line 131
    invoke-interface {v10}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 132
    .line 133
    .line 134
    move-result-wide v10

    .line 135
    and-long/2addr v10, v8

    .line 136
    long-to-int v10, v10

    .line 137
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    sub-float/2addr v10, v3

    .line 142
    iget-object v3, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 143
    .line 144
    invoke-interface {v3}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 145
    .line 146
    .line 147
    move-result-wide v14

    .line 148
    shr-long/2addr v14, v7

    .line 149
    long-to-int v3, v14

    .line 150
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    iget-object v7, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 155
    .line 156
    invoke-interface {v7}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 157
    .line 158
    .line 159
    move-result-wide v14

    .line 160
    and-long/2addr v8, v14

    .line 161
    long-to-int v7, v8

    .line 162
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-direct {v6, v12, v10, v3, v7}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 167
    .line 168
    .line 169
    invoke-static {v5, v6}, Landroidx/compose/ui/Modifier$-CC;->addRect$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/Rect;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v3, v5, v2, v13}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;I)Z

    .line 177
    .line 178
    .line 179
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 180
    .line 181
    invoke-direct {v2, v4, v3, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    goto :goto_1

    .line 189
    :cond_3
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 190
    .line 191
    .line 192
    const/4 v11, 0x0

    .line 193
    :goto_1
    return-object v11

    .line 194
    :pswitch_0
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 195
    .line 196
    check-cast v1, Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 197
    .line 198
    iget-object v1, v1, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 199
    .line 200
    iget-object v1, v1, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 201
    .line 202
    iget-object v1, v1, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 203
    .line 204
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-lez v1, :cond_4

    .line 211
    .line 212
    iput-boolean v10, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 213
    .line 214
    :cond_4
    return-object v14

    .line 215
    :pswitch_1
    check-cast v0, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 216
    .line 217
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 218
    .line 219
    iget-wide v2, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 220
    .line 221
    invoke-interface {v0, v2, v3}, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;->onExtendDrag-k-4lQ0M(J)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_5

    .line 226
    .line 227
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 228
    .line 229
    .line 230
    :cond_5
    return-object v14

    .line 231
    :pswitch_2
    check-cast v0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 232
    .line 233
    check-cast v1, Landroidx/compose/ui/text/input/EditCommand;

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 236
    .line 237
    .line 238
    return-object v14

    .line 239
    :pswitch_3
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 240
    .line 241
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 242
    .line 243
    new-instance v1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 244
    .line 245
    const/16 v2, 0x8

    .line 246
    .line 247
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    return-object v1

    .line 251
    :pswitch_4
    check-cast v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 252
    .line 253
    check-cast v1, Landroidx/compose/ui/node/TraversableNode;

    .line 254
    .line 255
    instance-of v2, v1, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;

    .line 256
    .line 257
    if-eqz v2, :cond_6

    .line 258
    .line 259
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;

    .line 260
    .line 261
    iget-object v1, v1, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;->builder:Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_6
    const-string v0, "TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode."

    .line 270
    .line 271
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const/4 v11, 0x0

    .line 275
    :goto_2
    return-object v11

    .line 276
    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 277
    .line 278
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 279
    .line 280
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    return-object v14

    .line 284
    :pswitch_6
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextNode;

    .line 285
    .line 286
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 287
    .line 288
    iget-object v2, v0, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextNode;->builder:Lkotlin/jvm/functions/Function2;

    .line 289
    .line 290
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 291
    .line 292
    invoke-static {v0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-interface {v2, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    return-object v14

    .line 300
    :pswitch_7
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 301
    .line 302
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 303
    .line 304
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 313
    .line 314
    .line 315
    move-result-wide v3

    .line 316
    shr-long/2addr v3, v7

    .line 317
    long-to-int v3, v3

    .line 318
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    float-to-int v3, v3

    .line 323
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 324
    .line 325
    .line 326
    move-result-wide v4

    .line 327
    and-long/2addr v4, v8

    .line 328
    long-to-int v1, v4

    .line 329
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    float-to-int v1, v1

    .line 334
    invoke-virtual {v0, v10, v10, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 335
    .line 336
    .line 337
    invoke-static {v2}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 342
    .line 343
    .line 344
    return-object v14

    .line 345
    :pswitch_8
    check-cast v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 346
    .line 347
    check-cast v1, Ljava/lang/Float;

    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    iget-object v2, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 354
    .line 355
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    add-float/2addr v3, v1

    .line 360
    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->maximum$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 361
    .line 362
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    cmpl-float v4, v3, v4

    .line 367
    .line 368
    if-lez v4, :cond_7

    .line 369
    .line 370
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    sub-float v1, v0, v1

    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_7
    cmpg-float v0, v3, v12

    .line 382
    .line 383
    if-gez v0, :cond_8

    .line 384
    .line 385
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    neg-float v1, v0

    .line 390
    :cond_8
    :goto_3
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    add-float/2addr v0, v1

    .line 395
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 396
    .line 397
    .line 398
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    return-object v0

    .line 403
    :pswitch_9
    check-cast v0, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 404
    .line 405
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 406
    .line 407
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 408
    .line 409
    new-instance v3, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;

    .line 410
    .line 411
    sget-object v4, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    .line 412
    .line 413
    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/OffsetProvider;->provide-F1C5BW0()J

    .line 414
    .line 415
    .line 416
    move-result-wide v5

    .line 417
    sget-object v7, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->Middle:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    .line 418
    .line 419
    const/4 v8, 0x1

    .line 420
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;-><init>(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;Z)V

    .line 421
    .line 422
    .line 423
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    return-object v14

    .line 427
    :pswitch_a
    check-cast v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    .line 428
    .line 429
    check-cast v1, Ljava/lang/Float;

    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->pagerState:Landroidx/compose/foundation/pager/PagerState;

    .line 436
    .line 437
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-eqz v2, :cond_9

    .line 442
    .line 443
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    int-to-float v2, v2

    .line 448
    div-float v12, v1, v2

    .line 449
    .line 450
    :cond_9
    invoke-static {v12}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    add-int/2addr v2, v1

    .line 459
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 464
    .line 465
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 466
    .line 467
    .line 468
    return-object v14

    .line 469
    :pswitch_b
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 470
    .line 471
    check-cast v1, Ljava/lang/Float;

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    neg-float v1, v1

    .line 478
    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 479
    .line 480
    cmpg-float v3, v1, v12

    .line 481
    .line 482
    if-gez v3, :cond_a

    .line 483
    .line 484
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getCanScrollForward()Z

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    if-eqz v3, :cond_13

    .line 489
    .line 490
    :cond_a
    cmpl-float v3, v1, v12

    .line 491
    .line 492
    if-lez v3, :cond_b

    .line 493
    .line 494
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getCanScrollBackward()Z

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    if-nez v3, :cond_b

    .line 499
    .line 500
    goto/16 :goto_9

    .line 501
    .line 502
    :cond_b
    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 503
    .line 504
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    cmpg-float v3, v3, v6

    .line 509
    .line 510
    if-gtz v3, :cond_c

    .line 511
    .line 512
    goto :goto_4

    .line 513
    :cond_c
    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    :goto_4
    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 517
    .line 518
    add-float/2addr v3, v1

    .line 519
    iput v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 520
    .line 521
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    cmpl-float v3, v3, v6

    .line 526
    .line 527
    if-lez v3, :cond_11

    .line 528
    .line 529
    iget v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 530
    .line 531
    invoke-static {v3}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 540
    .line 541
    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    .line 542
    .line 543
    xor-int/2addr v7, v13

    .line 544
    invoke-virtual {v5, v4, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    if-eqz v5, :cond_e

    .line 549
    .line 550
    iget-object v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 551
    .line 552
    if-eqz v7, :cond_e

    .line 553
    .line 554
    invoke-virtual {v7, v4, v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    if-eqz v4, :cond_d

    .line 559
    .line 560
    iput-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 561
    .line 562
    goto :goto_5

    .line 563
    :cond_d
    const/4 v11, 0x0

    .line 564
    goto :goto_6

    .line 565
    :cond_e
    :goto_5
    move-object v11, v5

    .line 566
    :goto_6
    if-eqz v11, :cond_f

    .line 567
    .line 568
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->hasLookaheadOccurred:Z

    .line 569
    .line 570
    invoke-virtual {v0, v11, v2, v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ZZ)V

    .line 571
    .line 572
    .line 573
    iget-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 574
    .line 575
    invoke-static {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->invalidateScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 576
    .line 577
    .line 578
    iget v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 579
    .line 580
    sub-float/2addr v3, v2

    .line 581
    invoke-virtual {v0, v3, v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->notifyPrefetch(FLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V

    .line 582
    .line 583
    .line 584
    goto :goto_7

    .line 585
    :cond_f
    iget-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    .line 586
    .line 587
    if-eqz v4, :cond_10

    .line 588
    .line 589
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 590
    .line 591
    .line 592
    :cond_10
    iget v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 593
    .line 594
    sub-float/2addr v3, v4

    .line 595
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    check-cast v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    .line 600
    .line 601
    invoke-virtual {v0, v3, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->notifyPrefetch(FLandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V

    .line 602
    .line 603
    .line 604
    :cond_11
    :goto_7
    iget v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 605
    .line 606
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    cmpg-float v2, v2, v6

    .line 611
    .line 612
    if-gtz v2, :cond_12

    .line 613
    .line 614
    :goto_8
    move v12, v1

    .line 615
    goto :goto_9

    .line 616
    :cond_12
    iget v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 617
    .line 618
    sub-float/2addr v1, v2

    .line 619
    iput v12, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollToBeConsumed:F

    .line 620
    .line 621
    goto :goto_8

    .line 622
    :cond_13
    :goto_9
    neg-float v0, v12

    .line 623
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    return-object v0

    .line 628
    :pswitch_c
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridItemSpan;

    .line 629
    .line 630
    check-cast v1, Ljava/lang/Integer;

    .line 631
    .line 632
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    return-object v0

    .line 636
    :pswitch_d
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 637
    .line 638
    if-eqz v0, :cond_14

    .line 639
    .line 640
    invoke-interface {v0, v1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v13

    .line 644
    :cond_14
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    return-object v0

    .line 649
    :pswitch_e
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 650
    .line 651
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 652
    .line 653
    new-instance v1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 654
    .line 655
    invoke-direct {v1, v3, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    return-object v1

    .line 659
    :pswitch_f
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 660
    .line 661
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 662
    .line 663
    new-instance v1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 664
    .line 665
    const/4 v2, 0x3

    .line 666
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    return-object v1

    .line 670
    :pswitch_10
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 671
    .line 672
    check-cast v1, Ljava/lang/Float;

    .line 673
    .line 674
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    neg-float v1, v1

    .line 679
    cmpg-float v2, v1, v12

    .line 680
    .line 681
    if-gez v2, :cond_15

    .line 682
    .line 683
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollForward()Z

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    if-eqz v2, :cond_1e

    .line 688
    .line 689
    :cond_15
    cmpl-float v2, v1, v12

    .line 690
    .line 691
    if-lez v2, :cond_16

    .line 692
    .line 693
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollBackward()Z

    .line 694
    .line 695
    .line 696
    move-result v2

    .line 697
    if-nez v2, :cond_16

    .line 698
    .line 699
    goto/16 :goto_f

    .line 700
    .line 701
    :cond_16
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 702
    .line 703
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    cmpg-float v2, v2, v6

    .line 708
    .line 709
    if-gtz v2, :cond_17

    .line 710
    .line 711
    goto :goto_a

    .line 712
    :cond_17
    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    :goto_a
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 716
    .line 717
    add-float/2addr v2, v1

    .line 718
    iput v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 719
    .line 720
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    cmpl-float v2, v2, v6

    .line 725
    .line 726
    if-lez v2, :cond_1c

    .line 727
    .line 728
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 729
    .line 730
    invoke-static {v2}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 731
    .line 732
    .line 733
    move-result v3

    .line 734
    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 735
    .line 736
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v4

    .line 740
    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 741
    .line 742
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    .line 743
    .line 744
    xor-int/2addr v5, v13

    .line 745
    invoke-virtual {v4, v3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    if-eqz v4, :cond_19

    .line 750
    .line 751
    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 752
    .line 753
    if-eqz v5, :cond_19

    .line 754
    .line 755
    invoke-virtual {v5, v3, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    if-eqz v3, :cond_18

    .line 760
    .line 761
    iput-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 762
    .line 763
    goto :goto_b

    .line 764
    :cond_18
    const/4 v11, 0x0

    .line 765
    goto :goto_c

    .line 766
    :cond_19
    :goto_b
    move-object v11, v4

    .line 767
    :goto_c
    if-eqz v11, :cond_1a

    .line 768
    .line 769
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->hasLookaheadOccurred:Z

    .line 770
    .line 771
    invoke-virtual {v0, v11, v3, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    .line 772
    .line 773
    .line 774
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 775
    .line 776
    invoke-static {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->invalidateScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 777
    .line 778
    .line 779
    iget v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 780
    .line 781
    sub-float/2addr v2, v3

    .line 782
    invoke-virtual {v0, v2, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 783
    .line 784
    .line 785
    goto :goto_d

    .line 786
    :cond_1a
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    .line 787
    .line 788
    if-eqz v3, :cond_1b

    .line 789
    .line 790
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 791
    .line 792
    .line 793
    :cond_1b
    iget v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 794
    .line 795
    sub-float/2addr v2, v3

    .line 796
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 801
    .line 802
    .line 803
    :cond_1c
    :goto_d
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 804
    .line 805
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    cmpg-float v2, v2, v6

    .line 810
    .line 811
    if-gtz v2, :cond_1d

    .line 812
    .line 813
    :goto_e
    move v12, v1

    .line 814
    goto :goto_f

    .line 815
    :cond_1d
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 816
    .line 817
    sub-float/2addr v1, v2

    .line 818
    iput v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 819
    .line 820
    goto :goto_e

    .line 821
    :cond_1e
    :goto_f
    neg-float v0, v12

    .line 822
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    return-object v0

    .line 827
    :pswitch_11
    check-cast v0, Lokhttp3/Dispatcher;

    .line 828
    .line 829
    check-cast v1, Ljava/lang/Integer;

    .line 830
    .line 831
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 832
    .line 833
    .line 834
    move-result v1

    .line 835
    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->getLineIndexOfItem(I)I

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    return-object v0

    .line 844
    :pswitch_12
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 845
    .line 846
    check-cast v1, Ljava/lang/Float;

    .line 847
    .line 848
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    neg-float v1, v1

    .line 853
    cmpg-float v2, v1, v12

    .line 854
    .line 855
    if-gez v2, :cond_1f

    .line 856
    .line 857
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollForward()Z

    .line 858
    .line 859
    .line 860
    move-result v2

    .line 861
    if-eqz v2, :cond_28

    .line 862
    .line 863
    :cond_1f
    cmpl-float v2, v1, v12

    .line 864
    .line 865
    if-lez v2, :cond_20

    .line 866
    .line 867
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollBackward()Z

    .line 868
    .line 869
    .line 870
    move-result v2

    .line 871
    if-nez v2, :cond_20

    .line 872
    .line 873
    goto/16 :goto_15

    .line 874
    .line 875
    :cond_20
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 876
    .line 877
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    cmpg-float v2, v2, v6

    .line 882
    .line 883
    if-gtz v2, :cond_21

    .line 884
    .line 885
    goto :goto_10

    .line 886
    :cond_21
    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    :goto_10
    iput-boolean v13, v0, Landroidx/compose/foundation/lazy/LazyListState;->executeRequestsInHighPriorityMode:Z

    .line 890
    .line 891
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 892
    .line 893
    add-float/2addr v2, v1

    .line 894
    iput v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 895
    .line 896
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 897
    .line 898
    .line 899
    move-result v2

    .line 900
    cmpl-float v2, v2, v6

    .line 901
    .line 902
    if-lez v2, :cond_26

    .line 903
    .line 904
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 905
    .line 906
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 907
    .line 908
    .line 909
    move-result v3

    .line 910
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 911
    .line 912
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v4

    .line 916
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 917
    .line 918
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    .line 919
    .line 920
    xor-int/2addr v5, v13

    .line 921
    invoke-virtual {v4, v3, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 922
    .line 923
    .line 924
    move-result-object v4

    .line 925
    if-eqz v4, :cond_23

    .line 926
    .line 927
    iget-object v5, v0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 928
    .line 929
    if-eqz v5, :cond_23

    .line 930
    .line 931
    invoke-virtual {v5, v3, v13}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->copyWithScrollDeltaWithoutRemeasure(IZ)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    if-eqz v3, :cond_22

    .line 936
    .line 937
    iput-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->approachLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 938
    .line 939
    goto :goto_11

    .line 940
    :cond_22
    const/4 v11, 0x0

    .line 941
    goto :goto_12

    .line 942
    :cond_23
    :goto_11
    move-object v11, v4

    .line 943
    :goto_12
    if-eqz v11, :cond_24

    .line 944
    .line 945
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadOccurred:Z

    .line 946
    .line 947
    invoke-virtual {v0, v11, v3, v13}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    .line 948
    .line 949
    .line 950
    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 951
    .line 952
    invoke-static {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->invalidateScope-impl(Landroidx/compose/runtime/MutableState;)V

    .line 953
    .line 954
    .line 955
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 956
    .line 957
    sub-float/2addr v2, v3

    .line 958
    invoke-virtual {v0, v2, v11}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 959
    .line 960
    .line 961
    goto :goto_13

    .line 962
    :cond_24
    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    .line 963
    .line 964
    if-eqz v3, :cond_25

    .line 965
    .line 966
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 967
    .line 968
    .line 969
    :cond_25
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 970
    .line 971
    sub-float/2addr v2, v3

    .line 972
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 977
    .line 978
    .line 979
    :cond_26
    :goto_13
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 980
    .line 981
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 982
    .line 983
    .line 984
    move-result v2

    .line 985
    cmpg-float v2, v2, v6

    .line 986
    .line 987
    if-gtz v2, :cond_27

    .line 988
    .line 989
    :goto_14
    move v12, v1

    .line 990
    goto :goto_15

    .line 991
    :cond_27
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 992
    .line 993
    sub-float/2addr v1, v2

    .line 994
    iput v12, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 995
    .line 996
    goto :goto_14

    .line 997
    :cond_28
    :goto_15
    neg-float v0, v12

    .line 998
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    return-object v0

    .line 1003
    :pswitch_13
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    .line 1004
    .line 1005
    check-cast v1, Ljava/lang/Integer;

    .line 1006
    .line 1007
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1008
    .line 1009
    .line 1010
    move-result v1

    .line 1011
    iget-wide v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    .line 1012
    .line 1013
    invoke-virtual {v0, v2, v3, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(JI)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    return-object v0

    .line 1018
    :pswitch_14
    check-cast v1, Ljava/lang/Integer;

    .line 1019
    .line 1020
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    return-object v0

    .line 1024
    :pswitch_15
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 1025
    .line 1026
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 1027
    .line 1028
    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1029
    .line 1030
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1031
    .line 1032
    :goto_16
    if-ge v10, v0, :cond_29

    .line 1033
    .line 1034
    aget-object v2, v1, v10

    .line 1035
    .line 1036
    check-cast v2, Landroidx/compose/ui/layout/MeasureResult;

    .line 1037
    .line 1038
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    .line 1039
    .line 1040
    .line 1041
    add-int/lit8 v10, v10, 0x1

    .line 1042
    .line 1043
    goto :goto_16

    .line 1044
    :cond_29
    return-object v14

    .line 1045
    :pswitch_16
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1046
    .line 1047
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 1048
    .line 1049
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 1050
    .line 1051
    iget-wide v3, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1052
    .line 1053
    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    .line 1054
    .line 1055
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 1056
    .line 1057
    .line 1058
    move-result-wide v0

    .line 1059
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 1060
    .line 1061
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1062
    .line 1063
    .line 1064
    return-object v2

    .line 1065
    :pswitch_17
    check-cast v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$$ExternalSyntheticLambda1;

    .line 1066
    .line 1067
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1068
    .line 1069
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    return-object v14

    .line 1073
    :pswitch_18
    check-cast v0, Landroidx/compose/foundation/ScrollState;

    .line 1074
    .line 1075
    check-cast v1, Ljava/lang/Float;

    .line 1076
    .line 1077
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 1078
    .line 1079
    .line 1080
    move-result v1

    .line 1081
    iget-object v2, v0, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 1082
    .line 1083
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1084
    .line 1085
    .line 1086
    move-result v3

    .line 1087
    int-to-float v3, v3

    .line 1088
    add-float/2addr v3, v1

    .line 1089
    iget v4, v0, Landroidx/compose/foundation/ScrollState;->accumulator:F

    .line 1090
    .line 1091
    add-float/2addr v3, v4

    .line 1092
    iget-object v4, v0, Landroidx/compose/foundation/ScrollState;->_maxValueState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 1093
    .line 1094
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1095
    .line 1096
    .line 1097
    move-result v4

    .line 1098
    int-to-float v4, v4

    .line 1099
    invoke-static {v3, v12, v4}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 1100
    .line 1101
    .line 1102
    move-result v4

    .line 1103
    cmpg-float v3, v3, v4

    .line 1104
    .line 1105
    if-nez v3, :cond_2a

    .line 1106
    .line 1107
    move v10, v13

    .line 1108
    :cond_2a
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    int-to-float v3, v3

    .line 1113
    sub-float/2addr v4, v3

    .line 1114
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 1115
    .line 1116
    .line 1117
    move-result v3

    .line 1118
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1119
    .line 1120
    .line 1121
    move-result v5

    .line 1122
    add-int/2addr v5, v3

    .line 1123
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 1124
    .line 1125
    .line 1126
    int-to-float v2, v3

    .line 1127
    sub-float v2, v4, v2

    .line 1128
    .line 1129
    iput v2, v0, Landroidx/compose/foundation/ScrollState;->accumulator:F

    .line 1130
    .line 1131
    if-nez v10, :cond_2b

    .line 1132
    .line 1133
    move v1, v4

    .line 1134
    :cond_2b
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    return-object v0

    .line 1139
    :pswitch_19
    check-cast v0, Landroidx/compose/foundation/BorderModifierNode;

    .line 1140
    .line 1141
    check-cast v1, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 1142
    .line 1143
    iget v2, v0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    .line 1144
    .line 1145
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    .line 1146
    .line 1147
    .line 1148
    move-result v5

    .line 1149
    mul-float/2addr v5, v2

    .line 1150
    cmpl-float v2, v5, v12

    .line 1151
    .line 1152
    if-ltz v2, :cond_46

    .line 1153
    .line 1154
    iget-object v2, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1155
    .line 1156
    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1157
    .line 1158
    .line 1159
    move-result-wide v5

    .line 1160
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    .line 1161
    .line 1162
    .line 1163
    move-result v2

    .line 1164
    cmpl-float v2, v2, v12

    .line 1165
    .line 1166
    if-lez v2, :cond_46

    .line 1167
    .line 1168
    iget v2, v0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    .line 1169
    .line 1170
    invoke-static {v2, v12}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 1171
    .line 1172
    .line 1173
    move-result v2

    .line 1174
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1175
    .line 1176
    if-eqz v2, :cond_2c

    .line 1177
    .line 1178
    move v2, v5

    .line 1179
    goto :goto_17

    .line 1180
    :cond_2c
    iget v2, v0, Landroidx/compose/foundation/BorderModifierNode;->width:F

    .line 1181
    .line 1182
    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    .line 1183
    .line 1184
    .line 1185
    move-result v6

    .line 1186
    mul-float/2addr v6, v2

    .line 1187
    float-to-double v14, v6

    .line 1188
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 1189
    .line 1190
    .line 1191
    move-result-wide v14

    .line 1192
    double-to-float v2, v14

    .line 1193
    :goto_17
    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1194
    .line 1195
    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1196
    .line 1197
    .line 1198
    move-result-wide v14

    .line 1199
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    .line 1200
    .line 1201
    .line 1202
    move-result v6

    .line 1203
    const/high16 v12, 0x40000000    # 2.0f

    .line 1204
    .line 1205
    div-float/2addr v6, v12

    .line 1206
    float-to-double v14, v6

    .line 1207
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 1208
    .line 1209
    .line 1210
    move-result-wide v14

    .line 1211
    double-to-float v6, v14

    .line 1212
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    .line 1213
    .line 1214
    .line 1215
    move-result v15

    .line 1216
    div-float v2, v15, v12

    .line 1217
    .line 1218
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1219
    .line 1220
    .line 1221
    move-result v6

    .line 1222
    move/from16 v16, v7

    .line 1223
    .line 1224
    move-wide/from16 v17, v8

    .line 1225
    .line 1226
    int-to-long v7, v6

    .line 1227
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1228
    .line 1229
    .line 1230
    move-result v6

    .line 1231
    move/from16 p0, v12

    .line 1232
    .line 1233
    int-to-long v11, v6

    .line 1234
    shl-long v6, v7, v16

    .line 1235
    .line 1236
    and-long v11, v11, v17

    .line 1237
    .line 1238
    or-long v21, v6, v11

    .line 1239
    .line 1240
    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1241
    .line 1242
    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1243
    .line 1244
    .line 1245
    move-result-wide v6

    .line 1246
    shr-long v6, v6, v16

    .line 1247
    .line 1248
    long-to-int v6, v6

    .line 1249
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1250
    .line 1251
    .line 1252
    move-result v6

    .line 1253
    sub-float/2addr v6, v15

    .line 1254
    iget-object v7, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1255
    .line 1256
    invoke-interface {v7}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1257
    .line 1258
    .line 1259
    move-result-wide v7

    .line 1260
    and-long v7, v7, v17

    .line 1261
    .line 1262
    long-to-int v7, v7

    .line 1263
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1264
    .line 1265
    .line 1266
    move-result v7

    .line 1267
    sub-float/2addr v7, v15

    .line 1268
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1269
    .line 1270
    .line 1271
    move-result v6

    .line 1272
    int-to-long v11, v6

    .line 1273
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1274
    .line 1275
    .line 1276
    move-result v6

    .line 1277
    int-to-long v6, v6

    .line 1278
    shl-long v11, v11, v16

    .line 1279
    .line 1280
    and-long v6, v6, v17

    .line 1281
    .line 1282
    or-long v23, v11, v6

    .line 1283
    .line 1284
    mul-float v26, v15, p0

    .line 1285
    .line 1286
    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1287
    .line 1288
    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1289
    .line 1290
    .line 1291
    move-result-wide v6

    .line 1292
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->getMinDimension-impl(J)F

    .line 1293
    .line 1294
    .line 1295
    move-result v6

    .line 1296
    cmpl-float v6, v26, v6

    .line 1297
    .line 1298
    if-lez v6, :cond_2d

    .line 1299
    .line 1300
    move v6, v13

    .line 1301
    goto :goto_18

    .line 1302
    :cond_2d
    move v6, v10

    .line 1303
    :goto_18
    iget-object v7, v0, Landroidx/compose/foundation/BorderModifierNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 1304
    .line 1305
    iget-object v8, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1306
    .line 1307
    invoke-interface {v8}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1308
    .line 1309
    .line 1310
    move-result-wide v11

    .line 1311
    iget-object v8, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1312
    .line 1313
    invoke-interface {v8}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v8

    .line 1317
    invoke-interface {v7, v11, v12, v8, v1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v7

    .line 1321
    instance-of v8, v7, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 1322
    .line 1323
    if-eqz v8, :cond_3c

    .line 1324
    .line 1325
    iget-object v2, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/SolidColor;

    .line 1326
    .line 1327
    check-cast v7, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 1328
    .line 1329
    iget-object v8, v7, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 1330
    .line 1331
    if-eqz v6, :cond_2e

    .line 1332
    .line 1333
    new-instance v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 1334
    .line 1335
    invoke-direct {v0, v4, v7, v2}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v11

    .line 1342
    goto/16 :goto_22

    .line 1343
    .line 1344
    :cond_2e
    invoke-static {v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Z

    .line 1345
    .line 1346
    .line 1347
    move-result v4

    .line 1348
    if-eqz v4, :cond_2f

    .line 1349
    .line 1350
    iget-wide v11, v2, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 1351
    .line 1352
    invoke-static {v5, v11, v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 1353
    .line 1354
    .line 1355
    move-result-wide v11

    .line 1356
    new-instance v4, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 1357
    .line 1358
    invoke-direct {v4, v11, v12, v3}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    .line 1359
    .line 1360
    .line 1361
    move-object/from16 v24, v4

    .line 1362
    .line 1363
    move v3, v13

    .line 1364
    goto :goto_19

    .line 1365
    :cond_2f
    move v3, v10

    .line 1366
    const/16 v24, 0x0

    .line 1367
    .line 1368
    :goto_19
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/AndroidPath;->getBounds()Landroidx/compose/ui/geometry/Rect;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v4

    .line 1372
    iget v6, v4, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 1373
    .line 1374
    iget v11, v4, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 1375
    .line 1376
    iget-object v12, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 1377
    .line 1378
    if-nez v12, :cond_30

    .line 1379
    .line 1380
    new-instance v12, Landroidx/compose/foundation/BorderCache;

    .line 1381
    .line 1382
    invoke-direct {v12}, Landroidx/compose/foundation/BorderCache;-><init>()V

    .line 1383
    .line 1384
    .line 1385
    iput-object v12, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 1386
    .line 1387
    :cond_30
    iget-object v14, v12, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 1388
    .line 1389
    if-nez v14, :cond_31

    .line 1390
    .line 1391
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v14

    .line 1395
    iput-object v14, v12, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 1396
    .line 1397
    :cond_31
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    .line 1398
    .line 1399
    .line 1400
    invoke-static {v14, v4}, Landroidx/compose/ui/Modifier$-CC;->addRect$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/Rect;)V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v14, v14, v8, v10}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;I)Z

    .line 1404
    .line 1405
    .line 1406
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1407
    .line 1408
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1409
    .line 1410
    .line 1411
    iget v12, v4, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 1412
    .line 1413
    sub-float/2addr v12, v11

    .line 1414
    move-object/from16 p0, v14

    .line 1415
    .line 1416
    float-to-double v13, v12

    .line 1417
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 1418
    .line 1419
    .line 1420
    move-result-wide v12

    .line 1421
    double-to-float v12, v12

    .line 1422
    float-to-int v12, v12

    .line 1423
    iget v13, v4, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 1424
    .line 1425
    sub-float/2addr v13, v6

    .line 1426
    float-to-double v13, v13

    .line 1427
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 1428
    .line 1429
    .line 1430
    move-result-wide v13

    .line 1431
    double-to-float v13, v13

    .line 1432
    float-to-int v13, v13

    .line 1433
    int-to-long v14, v12

    .line 1434
    shl-long v14, v14, v16

    .line 1435
    .line 1436
    int-to-long v12, v13

    .line 1437
    and-long v12, v12, v17

    .line 1438
    .line 1439
    or-long v22, v14, v12

    .line 1440
    .line 1441
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 1442
    .line 1443
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1444
    .line 1445
    .line 1446
    iget-object v12, v0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 1447
    .line 1448
    iget-object v13, v0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 1449
    .line 1450
    if-eqz v12, :cond_32

    .line 1451
    .line 1452
    iget-object v14, v12, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 1453
    .line 1454
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v14

    .line 1458
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1459
    .line 1460
    .line 1461
    invoke-static {v14}, Landroidx/compose/ui/graphics/Api26Bitmap;->toImageConfig(Landroid/graphics/Bitmap$Config;)I

    .line 1462
    .line 1463
    .line 1464
    move-result v14

    .line 1465
    new-instance v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 1466
    .line 1467
    invoke-direct {v15, v14}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    .line 1468
    .line 1469
    .line 1470
    goto :goto_1a

    .line 1471
    :cond_32
    const/4 v15, 0x0

    .line 1472
    :goto_1a
    if-nez v15, :cond_33

    .line 1473
    .line 1474
    goto :goto_1b

    .line 1475
    :cond_33
    iget v14, v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    .line 1476
    .line 1477
    if-nez v14, :cond_34

    .line 1478
    .line 1479
    goto :goto_1d

    .line 1480
    :cond_34
    :goto_1b
    if-eqz v12, :cond_35

    .line 1481
    .line 1482
    iget-object v9, v12, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 1483
    .line 1484
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v9

    .line 1488
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1489
    .line 1490
    .line 1491
    invoke-static {v9}, Landroidx/compose/ui/graphics/Api26Bitmap;->toImageConfig(Landroid/graphics/Bitmap$Config;)I

    .line 1492
    .line 1493
    .line 1494
    move-result v9

    .line 1495
    new-instance v14, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 1496
    .line 1497
    invoke-direct {v14, v9}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    .line 1498
    .line 1499
    .line 1500
    goto :goto_1c

    .line 1501
    :cond_35
    const/4 v14, 0x0

    .line 1502
    :goto_1c
    invoke-static {v14}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v9

    .line 1506
    if-nez v9, :cond_36

    .line 1507
    .line 1508
    goto :goto_1e

    .line 1509
    :cond_36
    iget v9, v14, Landroidx/compose/ui/graphics/ImageBitmapConfig;->value:I

    .line 1510
    .line 1511
    if-eq v3, v9, :cond_37

    .line 1512
    .line 1513
    goto :goto_1e

    .line 1514
    :cond_37
    :goto_1d
    const/4 v10, 0x1

    .line 1515
    :goto_1e
    if-eqz v12, :cond_38

    .line 1516
    .line 1517
    if-eqz v13, :cond_38

    .line 1518
    .line 1519
    iget-object v9, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1520
    .line 1521
    invoke-interface {v9}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1522
    .line 1523
    .line 1524
    move-result-wide v14

    .line 1525
    shr-long v14, v14, v16

    .line 1526
    .line 1527
    long-to-int v9, v14

    .line 1528
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1529
    .line 1530
    .line 1531
    move-result v9

    .line 1532
    iget-object v14, v12, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 1533
    .line 1534
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1535
    .line 1536
    .line 1537
    move-result v15

    .line 1538
    int-to-float v15, v15

    .line 1539
    cmpl-float v9, v9, v15

    .line 1540
    .line 1541
    if-gtz v9, :cond_38

    .line 1542
    .line 1543
    iget-object v9, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1544
    .line 1545
    invoke-interface {v9}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 1546
    .line 1547
    .line 1548
    move-result-wide v19

    .line 1549
    move/from16 p1, v5

    .line 1550
    .line 1551
    move v15, v6

    .line 1552
    and-long v5, v19, v17

    .line 1553
    .line 1554
    long-to-int v5, v5

    .line 1555
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1556
    .line 1557
    .line 1558
    move-result v5

    .line 1559
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1560
    .line 1561
    .line 1562
    move-result v6

    .line 1563
    int-to-float v6, v6

    .line 1564
    cmpl-float v5, v5, v6

    .line 1565
    .line 1566
    if-gtz v5, :cond_39

    .line 1567
    .line 1568
    if-nez v10, :cond_3a

    .line 1569
    .line 1570
    goto :goto_1f

    .line 1571
    :cond_38
    move/from16 p1, v5

    .line 1572
    .line 1573
    move v15, v6

    .line 1574
    :cond_39
    :goto_1f
    shr-long v5, v22, v16

    .line 1575
    .line 1576
    long-to-int v5, v5

    .line 1577
    and-long v9, v22, v17

    .line 1578
    .line 1579
    long-to-int v6, v9

    .line 1580
    invoke-static {v5, v6, v3}, Landroidx/compose/ui/graphics/ColorKt;->ImageBitmap-x__-hDU$default(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v12

    .line 1584
    iput-object v12, v0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 1585
    .line 1586
    invoke-static {v12}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->ActualCanvas(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v13

    .line 1590
    iput-object v13, v0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 1591
    .line 1592
    :cond_3a
    iget-object v3, v0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 1593
    .line 1594
    if-nez v3, :cond_3b

    .line 1595
    .line 1596
    new-instance v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 1597
    .line 1598
    invoke-direct {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 1599
    .line 1600
    .line 1601
    iput-object v3, v0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 1602
    .line 1603
    :cond_3b
    iget-object v5, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 1604
    .line 1605
    iget-object v0, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 1606
    .line 1607
    invoke-static/range {v22 .. v23}, Lkotlin/ExceptionsKt;->toSize-ozmzZPI(J)J

    .line 1608
    .line 1609
    .line 1610
    move-result-wide v9

    .line 1611
    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 1612
    .line 1613
    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v6

    .line 1617
    iget-object v14, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 1618
    .line 1619
    move-object/from16 v20, v2

    .line 1620
    .line 1621
    iget-object v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1622
    .line 1623
    move-object/from16 v27, v3

    .line 1624
    .line 1625
    iget-object v3, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 1626
    .line 1627
    move-object/from16 v19, v3

    .line 1628
    .line 1629
    move-object/from16 v21, v4

    .line 1630
    .line 1631
    iget-wide v3, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 1632
    .line 1633
    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 1634
    .line 1635
    iput-object v6, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1636
    .line 1637
    iput-object v13, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 1638
    .line 1639
    iput-wide v9, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 1640
    .line 1641
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    .line 1642
    .line 1643
    .line 1644
    sget-wide v28, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 1645
    .line 1646
    const/16 v33, 0x0

    .line 1647
    .line 1648
    const/16 v34, 0x3a

    .line 1649
    .line 1650
    const/16 v32, 0x0

    .line 1651
    .line 1652
    move-wide/from16 v30, v9

    .line 1653
    .line 1654
    invoke-static/range {v27 .. v34}, Landroidx/compose/ui/Modifier$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/BlendModeColorFilter;I)V

    .line 1655
    .line 1656
    .line 1657
    move-object/from16 v6, v27

    .line 1658
    .line 1659
    neg-float v9, v11

    .line 1660
    neg-float v10, v15

    .line 1661
    iget-object v11, v5, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 1662
    .line 1663
    check-cast v11, Landroidx/appcompat/widget/PopupMenu$1;

    .line 1664
    .line 1665
    invoke-virtual {v11, v9, v10}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 1666
    .line 1667
    .line 1668
    :try_start_0
    iget-object v7, v7, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/AndroidPath;

    .line 1669
    .line 1670
    new-instance v31, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 1671
    .line 1672
    const/16 v29, 0x0

    .line 1673
    .line 1674
    const/16 v30, 0x1e

    .line 1675
    .line 1676
    const/16 v27, 0x0

    .line 1677
    .line 1678
    const/16 v28, 0x0

    .line 1679
    .line 1680
    move-object/from16 v25, v31

    .line 1681
    .line 1682
    invoke-direct/range {v25 .. v30}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 1683
    .line 1684
    .line 1685
    const/16 v32, 0x34

    .line 1686
    .line 1687
    const/16 v30, 0x0

    .line 1688
    .line 1689
    move-object/from16 v27, v6

    .line 1690
    .line 1691
    move-object/from16 v28, v7

    .line 1692
    .line 1693
    move-object/from16 v29, v20

    .line 1694
    .line 1695
    invoke-static/range {v27 .. v32}, Landroidx/compose/ui/Modifier$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 1699
    .line 1700
    .line 1701
    move-result-wide v6

    .line 1702
    shr-long v6, v6, v16

    .line 1703
    .line 1704
    long-to-int v6, v6

    .line 1705
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1706
    .line 1707
    .line 1708
    move-result v6

    .line 1709
    add-float v6, v6, p1

    .line 1710
    .line 1711
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 1712
    .line 1713
    .line 1714
    move-result-wide v25

    .line 1715
    move v11, v6

    .line 1716
    shr-long v6, v25, v16

    .line 1717
    .line 1718
    long-to-int v6, v6

    .line 1719
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1720
    .line 1721
    .line 1722
    move-result v6

    .line 1723
    div-float v6, v11, v6

    .line 1724
    .line 1725
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 1726
    .line 1727
    .line 1728
    move-result-wide v15

    .line 1729
    move-object v11, v8

    .line 1730
    and-long v7, v15, v17

    .line 1731
    .line 1732
    long-to-int v7, v7

    .line 1733
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1734
    .line 1735
    .line 1736
    move-result v7

    .line 1737
    add-float v7, v7, p1

    .line 1738
    .line 1739
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 1740
    .line 1741
    .line 1742
    move-result-wide v15

    .line 1743
    move/from16 p1, v7

    .line 1744
    .line 1745
    and-long v7, v15, v17

    .line 1746
    .line 1747
    long-to-int v7, v7

    .line 1748
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1749
    .line 1750
    .line 1751
    move-result v7

    .line 1752
    div-float v7, p1, v7

    .line 1753
    .line 1754
    move-object/from16 p1, v11

    .line 1755
    .line 1756
    move-object v8, v12

    .line 1757
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getCenter-F1C5BW0()J

    .line 1758
    .line 1759
    .line 1760
    move-result-wide v11

    .line 1761
    move-wide v15, v3

    .line 1762
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 1763
    .line 1764
    .line 1765
    move-result-wide v3

    .line 1766
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v17

    .line 1770
    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1771
    .line 1772
    .line 1773
    move-object/from16 v17, v8

    .line 1774
    .line 1775
    :try_start_1
    iget-object v8, v5, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 1776
    .line 1777
    check-cast v8, Landroidx/appcompat/widget/PopupMenu$1;

    .line 1778
    .line 1779
    invoke-virtual {v8, v6, v7, v11, v12}, Landroidx/appcompat/widget/PopupMenu$1;->scale-0AR0LA0(FFJ)V

    .line 1780
    .line 1781
    .line 1782
    const/16 v31, 0x0

    .line 1783
    .line 1784
    const/16 v32, 0x1c

    .line 1785
    .line 1786
    const/16 v30, 0x0

    .line 1787
    .line 1788
    move-object/from16 v28, p0

    .line 1789
    .line 1790
    invoke-static/range {v27 .. v32}, Landroidx/compose/ui/Modifier$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1791
    .line 1792
    .line 1793
    :try_start_2
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v6

    .line 1797
    invoke-interface {v6}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 1798
    .line 1799
    .line 1800
    invoke-virtual {v5, v3, v4}, Lcom/caverock/androidsvg/SVG;->setSize-uvyYCjk(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1801
    .line 1802
    .line 1803
    iget-object v3, v5, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 1804
    .line 1805
    check-cast v3, Landroidx/appcompat/widget/PopupMenu$1;

    .line 1806
    .line 1807
    neg-float v4, v9

    .line 1808
    neg-float v5, v10

    .line 1809
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 1813
    .line 1814
    .line 1815
    iput-object v14, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 1816
    .line 1817
    iput-object v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1818
    .line 1819
    move-object/from16 v2, v19

    .line 1820
    .line 1821
    iput-object v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 1822
    .line 1823
    move-wide v2, v15

    .line 1824
    iput-wide v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 1825
    .line 1826
    move-object/from16 v8, v17

    .line 1827
    .line 1828
    iget-object v0, v8, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 1829
    .line 1830
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1831
    .line 1832
    .line 1833
    move-object/from16 v11, p1

    .line 1834
    .line 1835
    iput-object v8, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1836
    .line 1837
    new-instance v19, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;

    .line 1838
    .line 1839
    const/16 v25, 0x1

    .line 1840
    .line 1841
    move-object/from16 v20, v21

    .line 1842
    .line 1843
    move-object/from16 v21, v11

    .line 1844
    .line 1845
    invoke-direct/range {v19 .. v25}, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;I)V

    .line 1846
    .line 1847
    .line 1848
    move-object/from16 v0, v19

    .line 1849
    .line 1850
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v11

    .line 1854
    goto/16 :goto_22

    .line 1855
    .line 1856
    :catchall_0
    move-exception v0

    .line 1857
    goto :goto_20

    .line 1858
    :catchall_1
    move-exception v0

    .line 1859
    :try_start_3
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v1

    .line 1863
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 1864
    .line 1865
    .line 1866
    invoke-virtual {v5, v3, v4}, Lcom/caverock/androidsvg/SVG;->setSize-uvyYCjk(J)V

    .line 1867
    .line 1868
    .line 1869
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1870
    :goto_20
    iget-object v1, v5, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 1871
    .line 1872
    check-cast v1, Landroidx/appcompat/widget/PopupMenu$1;

    .line 1873
    .line 1874
    neg-float v2, v9

    .line 1875
    neg-float v3, v10

    .line 1876
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/PopupMenu$1;->translate(FF)V

    .line 1877
    .line 1878
    .line 1879
    throw v0

    .line 1880
    :cond_3c
    instance-of v3, v7, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 1881
    .line 1882
    if-eqz v3, :cond_41

    .line 1883
    .line 1884
    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/SolidColor;

    .line 1885
    .line 1886
    check-cast v7, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 1887
    .line 1888
    iget-object v4, v7, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 1889
    .line 1890
    invoke-static {v4}, Lkotlin/text/RegexKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 1891
    .line 1892
    .line 1893
    move-result v5

    .line 1894
    if-eqz v5, :cond_3d

    .line 1895
    .line 1896
    iget-wide v4, v4, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    .line 1897
    .line 1898
    new-instance v14, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 1899
    .line 1900
    const/16 v18, 0x0

    .line 1901
    .line 1902
    const/16 v19, 0x1e

    .line 1903
    .line 1904
    const/16 v16, 0x0

    .line 1905
    .line 1906
    const/16 v17, 0x0

    .line 1907
    .line 1908
    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 1909
    .line 1910
    .line 1911
    new-instance v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;

    .line 1912
    .line 1913
    move/from16 v19, v2

    .line 1914
    .line 1915
    move-object/from16 v16, v3

    .line 1916
    .line 1917
    move-wide/from16 v17, v4

    .line 1918
    .line 1919
    move-object/from16 v25, v14

    .line 1920
    .line 1921
    move/from16 v20, v15

    .line 1922
    .line 1923
    move-object v14, v0

    .line 1924
    move v15, v6

    .line 1925
    invoke-direct/range {v14 .. v25}, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;-><init>(ZLandroidx/compose/ui/graphics/SolidColor;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 1926
    .line 1927
    .line 1928
    invoke-virtual {v1, v14}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v11

    .line 1932
    goto/16 :goto_22

    .line 1933
    .line 1934
    :cond_3d
    move-object v2, v3

    .line 1935
    move v13, v6

    .line 1936
    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 1937
    .line 1938
    if-nez v3, :cond_3e

    .line 1939
    .line 1940
    new-instance v3, Landroidx/compose/foundation/BorderCache;

    .line 1941
    .line 1942
    invoke-direct {v3}, Landroidx/compose/foundation/BorderCache;-><init>()V

    .line 1943
    .line 1944
    .line 1945
    iput-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->borderCache:Landroidx/compose/foundation/BorderCache;

    .line 1946
    .line 1947
    :cond_3e
    iget-object v0, v3, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 1948
    .line 1949
    if-nez v0, :cond_3f

    .line 1950
    .line 1951
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v0

    .line 1955
    iput-object v0, v3, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/AndroidPath;

    .line 1956
    .line 1957
    :cond_3f
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    .line 1958
    .line 1959
    .line 1960
    invoke-static {v0, v4}, Landroidx/compose/ui/Modifier$-CC;->addRoundRect$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 1961
    .line 1962
    .line 1963
    if-nez v13, :cond_40

    .line 1964
    .line 1965
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v3

    .line 1969
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    .line 1970
    .line 1971
    .line 1972
    move-result v5

    .line 1973
    sub-float v17, v5, v15

    .line 1974
    .line 1975
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    .line 1976
    .line 1977
    .line 1978
    move-result v5

    .line 1979
    sub-float v18, v5, v15

    .line 1980
    .line 1981
    iget-wide v5, v4, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    .line 1982
    .line 1983
    invoke-static {v15, v5, v6}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 1984
    .line 1985
    .line 1986
    move-result-wide v19

    .line 1987
    iget-wide v5, v4, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    .line 1988
    .line 1989
    invoke-static {v15, v5, v6}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 1990
    .line 1991
    .line 1992
    move-result-wide v21

    .line 1993
    iget-wide v5, v4, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    .line 1994
    .line 1995
    invoke-static {v15, v5, v6}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 1996
    .line 1997
    .line 1998
    move-result-wide v25

    .line 1999
    iget-wide v4, v4, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    .line 2000
    .line 2001
    invoke-static {v15, v4, v5}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 2002
    .line 2003
    .line 2004
    move-result-wide v23

    .line 2005
    new-instance v14, Landroidx/compose/ui/geometry/RoundRect;

    .line 2006
    .line 2007
    move/from16 v16, v15

    .line 2008
    .line 2009
    invoke-direct/range {v14 .. v26}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    .line 2010
    .line 2011
    .line 2012
    invoke-static {v3, v14}, Landroidx/compose/ui/Modifier$-CC;->addRoundRect$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v0, v0, v3, v10}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;I)Z

    .line 2016
    .line 2017
    .line 2018
    :cond_40
    new-instance v3, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 2019
    .line 2020
    const/16 v4, 0xa

    .line 2021
    .line 2022
    invoke-direct {v3, v4, v0, v2}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2023
    .line 2024
    .line 2025
    invoke-virtual {v1, v3}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v11

    .line 2029
    goto :goto_22

    .line 2030
    :cond_41
    move v13, v6

    .line 2031
    instance-of v2, v7, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 2032
    .line 2033
    if-eqz v2, :cond_45

    .line 2034
    .line 2035
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->brush:Landroidx/compose/ui/graphics/SolidColor;

    .line 2036
    .line 2037
    if-eqz v13, :cond_42

    .line 2038
    .line 2039
    const-wide/16 v21, 0x0

    .line 2040
    .line 2041
    :cond_42
    move-wide/from16 v27, v21

    .line 2042
    .line 2043
    if-eqz v13, :cond_43

    .line 2044
    .line 2045
    iget-object v2, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 2046
    .line 2047
    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 2048
    .line 2049
    .line 2050
    move-result-wide v23

    .line 2051
    :cond_43
    move-wide/from16 v29, v23

    .line 2052
    .line 2053
    if-eqz v13, :cond_44

    .line 2054
    .line 2055
    sget-object v2, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 2056
    .line 2057
    move-object/from16 v31, v2

    .line 2058
    .line 2059
    goto :goto_21

    .line 2060
    :cond_44
    new-instance v14, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 2061
    .line 2062
    const/16 v18, 0x0

    .line 2063
    .line 2064
    const/16 v19, 0x1e

    .line 2065
    .line 2066
    const/16 v16, 0x0

    .line 2067
    .line 2068
    const/16 v17, 0x0

    .line 2069
    .line 2070
    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 2071
    .line 2072
    .line 2073
    move-object/from16 v31, v14

    .line 2074
    .line 2075
    :goto_21
    new-instance v25, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda0;

    .line 2076
    .line 2077
    move-object/from16 v26, v0

    .line 2078
    .line 2079
    invoke-direct/range {v25 .. v31}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/graphics/SolidColor;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 2080
    .line 2081
    .line 2082
    move-object/from16 v0, v25

    .line 2083
    .line 2084
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 2085
    .line 2086
    .line 2087
    move-result-object v11

    .line 2088
    goto :goto_22

    .line 2089
    :cond_45
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2090
    .line 2091
    .line 2092
    const/4 v11, 0x0

    .line 2093
    goto :goto_22

    .line 2094
    :cond_46
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 2095
    .line 2096
    invoke-direct {v0, v10}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 2097
    .line 2098
    .line 2099
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 2100
    .line 2101
    .line 2102
    move-result-object v11

    .line 2103
    :goto_22
    return-object v11

    .line 2104
    :pswitch_1a
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 2105
    .line 2106
    sget-object v2, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 2107
    .line 2108
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 2109
    .line 2110
    iget-object v3, v1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2111
    .line 2112
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v3

    .line 2116
    iget-object v2, v2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    .line 2117
    .line 2118
    iget-object v1, v1, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 2119
    .line 2120
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v1

    .line 2124
    invoke-interface {v0, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    .line 2126
    .line 2127
    return-object v14

    .line 2128
    :pswitch_1b
    check-cast v0, Landroidx/activity/compose/ComposeBackHandler;

    .line 2129
    .line 2130
    check-cast v1, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 2131
    .line 2132
    iget-object v2, v0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Ljava/lang/Object;

    .line 2133
    .line 2134
    check-cast v2, Landroidx/fragment/app/FragmentManager$1;

    .line 2135
    .line 2136
    const/4 v3, 0x1

    .line 2137
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager$1;->setEnabled(Z)V

    .line 2138
    .line 2139
    .line 2140
    iget-object v2, v0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/lang/Object;

    .line 2141
    .line 2142
    check-cast v2, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;

    .line 2143
    .line 2144
    invoke-virtual {v2, v3}, Landroidx/navigationevent/NavigationEventHandler;->setBackEnabled(Z)V

    .line 2145
    .line 2146
    .line 2147
    new-instance v2, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;

    .line 2148
    .line 2149
    invoke-direct {v2, v1, v0, v10}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Landroidx/appcompat/view/menu/BaseMenuWrapper;I)V

    .line 2150
    .line 2151
    .line 2152
    return-object v2

    .line 2153
    :pswitch_1c
    move-wide/from16 v17, v8

    .line 2154
    .line 2155
    check-cast v0, Landroidx/compose/material3/TopAppBarState;

    .line 2156
    .line 2157
    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    .line 2158
    .line 2159
    iget-wide v1, v1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 2160
    .line 2161
    and-long v1, v1, v17

    .line 2162
    .line 2163
    long-to-int v1, v1

    .line 2164
    int-to-float v1, v1

    .line 2165
    iget-object v2, v0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 2166
    .line 2167
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 2168
    .line 2169
    .line 2170
    move-result v2

    .line 2171
    sub-float/2addr v1, v2

    .line 2172
    neg-float v1, v1

    .line 2173
    iput v1, v0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    .line 2174
    .line 2175
    return-object v14

    .line 2176
    nop

    .line 2177
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
