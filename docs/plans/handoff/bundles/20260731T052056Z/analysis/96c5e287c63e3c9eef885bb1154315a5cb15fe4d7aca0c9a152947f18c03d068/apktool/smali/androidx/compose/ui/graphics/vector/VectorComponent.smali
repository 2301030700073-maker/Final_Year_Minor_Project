.class public final Landroidx/compose/ui/graphics/vector/VectorComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

.field public final drawVectorBlock:Landroidx/compose/ui/graphics/vector/VectorComponent$1;

.field public final intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public invalidateCallback:Lkotlin/jvm/functions/Function0;

.field public isDirty:Z

.field public name:Ljava/lang/String;

.field public previousDrawSize:J

.field public final root:Landroidx/compose/ui/graphics/vector/GroupComponent;

.field public rootScaleX:F

.field public rootScaleY:F

.field public tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

.field public final viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->root:Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p1, Landroidx/compose/ui/graphics/vector/GroupComponent;->invalidateListener:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->name:Ljava/lang/String;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/ui/graphics/vector/DrawCache;

    .line 22
    .line 23
    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/DrawCache;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

    .line 27
    .line 28
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;->INSTANCE$1:Landroidx/compose/ui/graphics/vector/PathComponent$pathMeasure$2;

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 38
    .line 39
    new-instance v0, Landroidx/compose/ui/geometry/Size;

    .line 40
    .line 41
    const-wide/16 v1, 0x0

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 51
    .line 52
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    .line 58
    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    .line 61
    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleX:F

    .line 62
    .line 63
    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleY:F

    .line 64
    .line 65
    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    .line 66
    .line 67
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;I)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->drawVectorBlock:Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 436
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/BlendModeColorFilter;)V

    return-void
.end method

.method public final draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/BlendModeColorFilter;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->root:Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 6
    .line 7
    iget-boolean v3, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->isTintable:Z

    .line 8
    .line 9
    const/4 v4, 0x5

    .line 10
    iget-object v5, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v3, :cond_4

    .line 14
    .line 15
    iget-wide v8, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    .line 16
    .line 17
    const-wide/16 v10, 0x10

    .line 18
    .line 19
    cmp-long v3, v8, v10

    .line 20
    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 28
    .line 29
    sget v8, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 30
    .line 31
    instance-of v8, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 32
    .line 33
    const/4 v9, 0x3

    .line 34
    if-eqz v8, :cond_1

    .line 35
    .line 36
    iget v3, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;->blendMode:I

    .line 37
    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-ne v3, v9, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-nez v3, :cond_4

    .line 45
    .line 46
    :goto_0
    instance-of v3, v1, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    iget v3, v1, Landroidx/compose/ui/graphics/BlendModeColorFilter;->blendMode:I

    .line 51
    .line 52
    if-ne v3, v4, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-ne v3, v9, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    if-nez v1, :cond_4

    .line 59
    .line 60
    :goto_1
    move v3, v6

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const/4 v3, 0x0

    .line 63
    :goto_2
    iget-boolean v8, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    .line 64
    .line 65
    iget-object v9, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

    .line 66
    .line 67
    if-nez v8, :cond_6

    .line 68
    .line 69
    iget-wide v10, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    .line 70
    .line 71
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_6

    .line 80
    .line 81
    iget-object v8, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 82
    .line 83
    if-eqz v8, :cond_5

    .line 84
    .line 85
    iget-object v8, v8, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 86
    .line 87
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {v8}, Landroidx/compose/ui/graphics/Api26Bitmap;->toImageConfig(Landroid/graphics/Bitmap$Config;)I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    const/4 v8, 0x0

    .line 100
    :goto_3
    if-ne v3, v8, :cond_6

    .line 101
    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :cond_6
    if-ne v3, v6, :cond_8

    .line 105
    .line 106
    iget-wide v10, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    .line 107
    .line 108
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 109
    .line 110
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    const/high16 v6, 0x3f800000    # 1.0f

    .line 115
    .line 116
    cmpg-float v2, v2, v6

    .line 117
    .line 118
    if-nez v2, :cond_7

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    invoke-static {v6, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    :goto_4
    new-instance v2, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 126
    .line 127
    invoke-direct {v2, v10, v11, v4}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_8
    const/4 v2, 0x0

    .line 132
    :goto_5
    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 133
    .line 134
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 135
    .line 136
    .line 137
    move-result-wide v10

    .line 138
    const/16 v2, 0x20

    .line 139
    .line 140
    shr-long/2addr v10, v2

    .line 141
    long-to-int v4, v10

    .line 142
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    iget-object v6, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 147
    .line 148
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Landroidx/compose/ui/geometry/Size;

    .line 153
    .line 154
    iget-wide v10, v8, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 155
    .line 156
    shr-long/2addr v10, v2

    .line 157
    long-to-int v8, v10

    .line 158
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    div-float/2addr v4, v8

    .line 163
    iput v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleX:F

    .line 164
    .line 165
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 166
    .line 167
    .line 168
    move-result-wide v10

    .line 169
    const-wide v12, 0xffffffffL

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    and-long/2addr v10, v12

    .line 175
    long-to-int v4, v10

    .line 176
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    check-cast v6, Landroidx/compose/ui/geometry/Size;

    .line 185
    .line 186
    iget-wide v10, v6, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 187
    .line 188
    and-long/2addr v10, v12

    .line 189
    long-to-int v6, v10

    .line 190
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    div-float/2addr v4, v6

    .line 195
    iput v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleY:F

    .line 196
    .line 197
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 198
    .line 199
    .line 200
    move-result-wide v10

    .line 201
    shr-long/2addr v10, v2

    .line 202
    long-to-int v4, v10

    .line 203
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    float-to-double v10, v4

    .line 208
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v10

    .line 212
    double-to-float v4, v10

    .line 213
    float-to-int v4, v4

    .line 214
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 215
    .line 216
    .line 217
    move-result-wide v10

    .line 218
    and-long/2addr v10, v12

    .line 219
    long-to-int v6, v10

    .line 220
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    float-to-double v10, v6

    .line 225
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 226
    .line 227
    .line 228
    move-result-wide v10

    .line 229
    double-to-float v6, v10

    .line 230
    float-to-int v6, v6

    .line 231
    int-to-long v10, v4

    .line 232
    shl-long/2addr v10, v2

    .line 233
    int-to-long v14, v6

    .line 234
    and-long/2addr v14, v12

    .line 235
    or-long/2addr v10, v14

    .line 236
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iget-object v6, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 241
    .line 242
    iget-object v8, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 243
    .line 244
    if-eqz v6, :cond_9

    .line 245
    .line 246
    if-eqz v8, :cond_9

    .line 247
    .line 248
    shr-long v14, v10, v2

    .line 249
    .line 250
    long-to-int v14, v14

    .line 251
    iget-object v15, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 252
    .line 253
    move/from16 v16, v2

    .line 254
    .line 255
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    move-wide/from16 v17, v12

    .line 260
    .line 261
    if-gt v14, v2, :cond_a

    .line 262
    .line 263
    and-long v12, v10, v17

    .line 264
    .line 265
    long-to-int v2, v12

    .line 266
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    if-gt v2, v12, :cond_a

    .line 271
    .line 272
    iget v2, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    .line 273
    .line 274
    if-ne v2, v3, :cond_a

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_9
    move/from16 v16, v2

    .line 278
    .line 279
    move-wide/from16 v17, v12

    .line 280
    .line 281
    :cond_a
    shr-long v12, v10, v16

    .line 282
    .line 283
    long-to-int v2, v12

    .line 284
    and-long v12, v10, v17

    .line 285
    .line 286
    long-to-int v6, v12

    .line 287
    invoke-static {v2, v6, v3}, Landroidx/compose/ui/graphics/ColorKt;->ImageBitmap-x__-hDU$default(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-static {v6}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->ActualCanvas(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    iput-object v6, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 296
    .line 297
    iput-object v8, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 298
    .line 299
    iput v3, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    .line 300
    .line 301
    :goto_6
    iput-wide v10, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 302
    .line 303
    iget-object v12, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 304
    .line 305
    iget-object v2, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 306
    .line 307
    invoke-static {v10, v11}, Lkotlin/ExceptionsKt;->toSize-ozmzZPI(J)J

    .line 308
    .line 309
    .line 310
    move-result-wide v10

    .line 311
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 312
    .line 313
    iget-object v13, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 314
    .line 315
    iget-object v14, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 316
    .line 317
    move-object/from16 v20, v8

    .line 318
    .line 319
    iget-wide v7, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 320
    .line 321
    move-object/from16 v15, p1

    .line 322
    .line 323
    iput-object v15, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 324
    .line 325
    iput-object v4, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 326
    .line 327
    move-object/from16 v4, v20

    .line 328
    .line 329
    iput-object v4, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 330
    .line 331
    iput-wide v10, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 332
    .line 333
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    .line 334
    .line 335
    .line 336
    move-object v10, v13

    .line 337
    move-object v11, v14

    .line 338
    sget-wide v13, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 339
    .line 340
    const/16 v18, 0x0

    .line 341
    .line 342
    const/16 v19, 0x3e

    .line 343
    .line 344
    const-wide/16 v15, 0x0

    .line 345
    .line 346
    const/16 v17, 0x0

    .line 347
    .line 348
    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/Modifier$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/BlendModeColorFilter;I)V

    .line 349
    .line 350
    .line 351
    iget-object v13, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->drawVectorBlock:Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    .line 352
    .line 353
    invoke-virtual {v13, v12}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 357
    .line 358
    .line 359
    iput-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 360
    .line 361
    iput-object v10, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 362
    .line 363
    iput-object v11, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 364
    .line 365
    iput-wide v7, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 366
    .line 367
    iget-object v2, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 368
    .line 369
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 370
    .line 371
    .line 372
    const/4 v2, 0x0

    .line 373
    iput-boolean v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    .line 374
    .line 375
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 376
    .line 377
    .line 378
    move-result-wide v2

    .line 379
    iput-wide v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    .line 380
    .line 381
    :goto_7
    if-eqz v1, :cond_b

    .line 382
    .line 383
    move-object/from16 v28, v1

    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_b
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    check-cast v1, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 391
    .line 392
    if-eqz v1, :cond_c

    .line 393
    .line 394
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    check-cast v0, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 399
    .line 400
    :goto_8
    move-object/from16 v28, v0

    .line 401
    .line 402
    goto :goto_9

    .line 403
    :cond_c
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 404
    .line 405
    goto :goto_8

    .line 406
    :goto_9
    iget-object v0, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 407
    .line 408
    if-eqz v0, :cond_d

    .line 409
    .line 410
    goto :goto_a

    .line 411
    :cond_d
    const-string v1, "drawCachedImage must be invoked first before attempting to draw the result into another destination"

    .line 412
    .line 413
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :goto_a
    iget-wide v1, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 417
    .line 418
    const/16 v29, 0x0

    .line 419
    .line 420
    const/16 v30, 0x35a

    .line 421
    .line 422
    const-wide/16 v25, 0x0

    .line 423
    .line 424
    move-object/from16 v21, p1

    .line 425
    .line 426
    move/from16 v27, p2

    .line 427
    .line 428
    move-object/from16 v22, v0

    .line 429
    .line 430
    move-wide/from16 v23, v1

    .line 431
    .line 432
    invoke-static/range {v21 .. v30}, Landroidx/compose/ui/Modifier$-CC;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;JJFLandroidx/compose/ui/graphics/BlendModeColorFilter;II)V

    .line 433
    .line 434
    .line 435
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Params: \tname: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->name:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\n\tviewportWidth: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 25
    .line 26
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 27
    .line 28
    const/16 v3, 0x20

    .line 29
    .line 30
    shr-long/2addr v1, v3

    .line 31
    long-to-int v1, v1

    .line 32
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "\n\tviewportHeight: "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroidx/compose/ui/geometry/Size;

    .line 49
    .line 50
    iget-wide v1, p0, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 51
    .line 52
    const-wide v3, 0xffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long/2addr v1, v3

    .line 58
    long-to-int p0, v1

    .line 59
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "\n"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method
