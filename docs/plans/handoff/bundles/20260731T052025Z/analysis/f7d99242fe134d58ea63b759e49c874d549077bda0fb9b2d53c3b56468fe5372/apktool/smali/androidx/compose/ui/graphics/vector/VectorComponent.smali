.class public final Landroidx/compose/ui/graphics/vector/VectorComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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

    .line 445
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V

    return-void
.end method

.method public final draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V
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
    check-cast v3, Landroidx/compose/ui/graphics/ColorFilter;

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
    check-cast v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 37
    .line 38
    iget v3, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;->blendMode:I

    .line 39
    .line 40
    if-ne v3, v4, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-ne v3, v9, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-nez v3, :cond_4

    .line 47
    .line 48
    :goto_0
    instance-of v3, v1, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    move-object v3, v1

    .line 53
    check-cast v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 54
    .line 55
    iget v3, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;->blendMode:I

    .line 56
    .line 57
    if-ne v3, v4, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    if-ne v3, v9, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    if-nez v1, :cond_4

    .line 64
    .line 65
    :goto_1
    move v3, v6

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    const/4 v3, 0x0

    .line 68
    :goto_2
    iget-boolean v8, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    .line 69
    .line 70
    iget-object v9, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->cacheDrawScope:Landroidx/compose/ui/graphics/vector/DrawCache;

    .line 71
    .line 72
    if-nez v8, :cond_6

    .line 73
    .line 74
    iget-wide v10, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    .line 75
    .line 76
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 77
    .line 78
    .line 79
    move-result-wide v12

    .line 80
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_6

    .line 85
    .line 86
    iget-object v8, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 87
    .line 88
    if-eqz v8, :cond_5

    .line 89
    .line 90
    iget-object v8, v8, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 91
    .line 92
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v8}, Landroidx/compose/ui/graphics/Api26Bitmap;->toImageConfig(Landroid/graphics/Bitmap$Config;)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    const/4 v8, 0x0

    .line 105
    :goto_3
    if-ne v3, v8, :cond_6

    .line 106
    .line 107
    goto/16 :goto_7

    .line 108
    .line 109
    :cond_6
    if-ne v3, v6, :cond_8

    .line 110
    .line 111
    iget-wide v10, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->tintColor:J

    .line 112
    .line 113
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 114
    .line 115
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    const/high16 v6, 0x3f800000    # 1.0f

    .line 120
    .line 121
    cmpg-float v2, v2, v6

    .line 122
    .line 123
    if-nez v2, :cond_7

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    invoke-static {v6, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 127
    .line 128
    .line 129
    move-result-wide v10

    .line 130
    :goto_4
    new-instance v2, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 131
    .line 132
    invoke-direct {v2, v4, v10, v11}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(IJ)V

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_8
    const/4 v2, 0x0

    .line 137
    :goto_5
    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 138
    .line 139
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 140
    .line 141
    .line 142
    move-result-wide v10

    .line 143
    const/16 v2, 0x20

    .line 144
    .line 145
    shr-long/2addr v10, v2

    .line 146
    long-to-int v4, v10

    .line 147
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    iget-object v6, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 152
    .line 153
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    check-cast v8, Landroidx/compose/ui/geometry/Size;

    .line 158
    .line 159
    iget-wide v10, v8, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 160
    .line 161
    shr-long/2addr v10, v2

    .line 162
    long-to-int v8, v10

    .line 163
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    div-float/2addr v4, v8

    .line 168
    iput v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleX:F

    .line 169
    .line 170
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 171
    .line 172
    .line 173
    move-result-wide v10

    .line 174
    const-wide v12, 0xffffffffL

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    and-long/2addr v10, v12

    .line 180
    long-to-int v4, v10

    .line 181
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    check-cast v6, Landroidx/compose/ui/geometry/Size;

    .line 190
    .line 191
    iget-wide v10, v6, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 192
    .line 193
    and-long/2addr v10, v12

    .line 194
    long-to-int v6, v10

    .line 195
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    div-float/2addr v4, v6

    .line 200
    iput v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->rootScaleY:F

    .line 201
    .line 202
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 203
    .line 204
    .line 205
    move-result-wide v10

    .line 206
    shr-long/2addr v10, v2

    .line 207
    long-to-int v4, v10

    .line 208
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    float-to-double v10, v4

    .line 213
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 214
    .line 215
    .line 216
    move-result-wide v10

    .line 217
    double-to-float v4, v10

    .line 218
    float-to-int v4, v4

    .line 219
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 220
    .line 221
    .line 222
    move-result-wide v10

    .line 223
    and-long/2addr v10, v12

    .line 224
    long-to-int v6, v10

    .line 225
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    float-to-double v10, v6

    .line 230
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v10

    .line 234
    double-to-float v6, v10

    .line 235
    float-to-int v6, v6

    .line 236
    int-to-long v10, v4

    .line 237
    shl-long/2addr v10, v2

    .line 238
    int-to-long v14, v6

    .line 239
    and-long/2addr v14, v12

    .line 240
    or-long/2addr v10, v14

    .line 241
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    iget-object v6, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 246
    .line 247
    iget-object v8, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 248
    .line 249
    if-eqz v6, :cond_9

    .line 250
    .line 251
    if-eqz v8, :cond_9

    .line 252
    .line 253
    shr-long v14, v10, v2

    .line 254
    .line 255
    long-to-int v14, v14

    .line 256
    iget-object v15, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 257
    .line 258
    move/from16 v16, v2

    .line 259
    .line 260
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    move-wide/from16 v17, v12

    .line 265
    .line 266
    if-gt v14, v2, :cond_a

    .line 267
    .line 268
    and-long v12, v10, v17

    .line 269
    .line 270
    long-to-int v2, v12

    .line 271
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    if-gt v2, v12, :cond_a

    .line 276
    .line 277
    iget v2, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    .line 278
    .line 279
    if-ne v2, v3, :cond_a

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_9
    move/from16 v16, v2

    .line 283
    .line 284
    move-wide/from16 v17, v12

    .line 285
    .line 286
    :cond_a
    shr-long v12, v10, v16

    .line 287
    .line 288
    long-to-int v2, v12

    .line 289
    and-long v12, v10, v17

    .line 290
    .line 291
    long-to-int v6, v12

    .line 292
    const/16 v8, 0x18

    .line 293
    .line 294
    invoke-static {v2, v6, v3, v8}, Landroidx/compose/ui/graphics/ColorKt;->ImageBitmap-x__-hDU$default(IIII)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorKt;->Canvas(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    iput-object v6, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 303
    .line 304
    iput-object v8, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 305
    .line 306
    iput v3, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->config:I

    .line 307
    .line 308
    :goto_6
    iput-wide v10, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 309
    .line 310
    iget-object v12, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 311
    .line 312
    invoke-static {v10, v11}, Lorg/jsoup/helper/Validate;->toSize-ozmzZPI(J)J

    .line 313
    .line 314
    .line 315
    move-result-wide v2

    .line 316
    iget-object v10, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 317
    .line 318
    iget-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 319
    .line 320
    iget-object v13, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 321
    .line 322
    iget-object v14, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 323
    .line 324
    move-object/from16 v20, v8

    .line 325
    .line 326
    iget-wide v7, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 327
    .line 328
    move-object/from16 v15, p1

    .line 329
    .line 330
    iput-object v15, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 331
    .line 332
    iput-object v4, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 333
    .line 334
    move-object/from16 v4, v20

    .line 335
    .line 336
    iput-object v4, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 337
    .line 338
    iput-wide v2, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 339
    .line 340
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidCanvas;->save()V

    .line 341
    .line 342
    .line 343
    move-object v2, v13

    .line 344
    move-object v3, v14

    .line 345
    sget-wide v13, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 346
    .line 347
    const/16 v18, 0x0

    .line 348
    .line 349
    const/16 v19, 0x3e

    .line 350
    .line 351
    const-wide/16 v15, 0x0

    .line 352
    .line 353
    const/16 v17, 0x0

    .line 354
    .line 355
    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/Modifier$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 356
    .line 357
    .line 358
    iget-object v10, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->drawVectorBlock:Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    .line 359
    .line 360
    invoke-virtual {v10, v12}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidCanvas;->restore()V

    .line 364
    .line 365
    .line 366
    iget-object v4, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 367
    .line 368
    iput-object v11, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    .line 369
    .line 370
    iput-object v2, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 371
    .line 372
    iput-object v3, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 373
    .line 374
    iput-wide v7, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->size:J

    .line 375
    .line 376
    iget-object v2, v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 377
    .line 378
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 379
    .line 380
    .line 381
    const/4 v2, 0x0

    .line 382
    iput-boolean v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->isDirty:Z

    .line 383
    .line 384
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    iput-wide v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->previousDrawSize:J

    .line 389
    .line 390
    :goto_7
    if-eqz v1, :cond_b

    .line 391
    .line 392
    move-object/from16 v28, v1

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_b
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    check-cast v1, Landroidx/compose/ui/graphics/ColorFilter;

    .line 400
    .line 401
    if-eqz v1, :cond_c

    .line 402
    .line 403
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Landroidx/compose/ui/graphics/ColorFilter;

    .line 408
    .line 409
    :goto_8
    move-object/from16 v28, v0

    .line 410
    .line 411
    goto :goto_9

    .line 412
    :cond_c
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->tintFilter:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :goto_9
    iget-object v0, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 416
    .line 417
    if-eqz v0, :cond_d

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_d
    const-string v1, "drawCachedImage must be invoked first before attempting to draw the result into another destination"

    .line 421
    .line 422
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :goto_a
    iget-wide v1, v9, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 426
    .line 427
    const/16 v29, 0x0

    .line 428
    .line 429
    const/16 v30, 0x35a

    .line 430
    .line 431
    const-wide/16 v25, 0x0

    .line 432
    .line 433
    move-object/from16 v21, p1

    .line 434
    .line 435
    move/from16 v27, p2

    .line 436
    .line 437
    move-object/from16 v22, v0

    .line 438
    .line 439
    move-wide/from16 v23, v1

    .line 440
    .line 441
    invoke-static/range {v21 .. v30}, Landroidx/compose/ui/Modifier$-CC;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJFLandroidx/compose/ui/graphics/ColorFilter;II)V

    .line 442
    .line 443
    .line 444
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
