.class public final synthetic Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/animation/core/InfiniteTransition;

.field public final synthetic f$3:Landroidx/compose/animation/core/Easing;

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/animation/core/Easing;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/animation/core/InfiniteTransition;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/animation/core/Easing;

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;->f$4:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    move-object/from16 v6, p2

    .line 8
    .line 9
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const v2, -0x586c1f09

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v8, 0x0

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const v2, 0x121f8686

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 37
    .line 38
    .line 39
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 40
    .line 41
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 51
    .line 52
    iget-boolean v7, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->isDarkTheme:Z

    .line 53
    .line 54
    const/4 v9, 0x1

    .line 55
    const/4 v10, 0x3

    .line 56
    if-eqz v7, :cond_0

    .line 57
    .line 58
    const v7, 0x3e99999a    # 0.3f

    .line 59
    .line 60
    .line 61
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v11

    .line 65
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    .line 66
    .line 67
    invoke-direct {v13, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 68
    .line 69
    .line 70
    iget-wide v11, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 71
    .line 72
    const/high16 v2, 0x3f000000    # 0.5f

    .line 73
    .line 74
    invoke-static {v2, v11, v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v11

    .line 78
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 79
    .line 80
    invoke-direct {v2, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 88
    .line 89
    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 90
    .line 91
    .line 92
    new-array v4, v10, [Landroidx/compose/ui/graphics/Color;

    .line 93
    .line 94
    aput-object v13, v4, v8

    .line 95
    .line 96
    aput-object v2, v4, v9

    .line 97
    .line 98
    aput-object v7, v4, v3

    .line 99
    .line 100
    invoke-static {v4}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const v7, 0x3f19999a    # 0.6f

    .line 106
    .line 107
    .line 108
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide v11

    .line 112
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    .line 113
    .line 114
    invoke-direct {v13, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 115
    .line 116
    .line 117
    iget-wide v11, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 118
    .line 119
    const v2, 0x3f4ccccd    # 0.8f

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v11, v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 123
    .line 124
    .line 125
    move-result-wide v11

    .line 126
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 127
    .line 128
    invoke-direct {v2, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 129
    .line 130
    .line 131
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 136
    .line 137
    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 138
    .line 139
    .line 140
    new-array v4, v10, [Landroidx/compose/ui/graphics/Color;

    .line 141
    .line 142
    aput-object v13, v4, v8

    .line 143
    .line 144
    aput-object v2, v4, v9

    .line 145
    .line 146
    aput-object v7, v4, v3

    .line 147
    .line 148
    invoke-static {v4}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    :goto_0
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 153
    .line 154
    .line 155
    move-object v10, v2

    .line 156
    goto :goto_1

    .line 157
    :cond_1
    const v4, 0x121f81cd

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :goto_1
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 169
    .line 170
    if-ne v2, v9, :cond_2

    .line 171
    .line 172
    new-instance v2, Landroidx/compose/ui/unit/IntSize;

    .line 173
    .line 174
    const-wide/16 v4, 0x0

    .line 175
    .line 176
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 177
    .line 178
    .line 179
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_2
    move-object v11, v2

    .line 187
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 188
    .line 189
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    .line 194
    .line 195
    iget-wide v4, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 196
    .line 197
    const/16 v12, 0x20

    .line 198
    .line 199
    shr-long/2addr v4, v12

    .line 200
    long-to-int v2, v4

    .line 201
    int-to-float v2, v2

    .line 202
    const/high16 v4, -0x40000000    # -2.0f

    .line 203
    .line 204
    mul-float/2addr v4, v2

    .line 205
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    .line 210
    .line 211
    iget-wide v13, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 212
    .line 213
    shr-long/2addr v13, v12

    .line 214
    long-to-int v2, v13

    .line 215
    int-to-float v2, v2

    .line 216
    const/high16 v5, 0x40000000    # 2.0f

    .line 217
    .line 218
    mul-float/2addr v5, v2

    .line 219
    const/16 v2, 0x4b0

    .line 220
    .line 221
    iget-object v7, v0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/animation/core/Easing;

    .line 222
    .line 223
    invoke-static {v2, v3, v7}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    sget-object v3, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 228
    .line 229
    const/4 v7, 0x4

    .line 230
    invoke-static {v2, v3, v7}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    const/16 v7, 0x1008

    .line 235
    .line 236
    move v3, v4

    .line 237
    move v4, v5

    .line 238
    move-object v5, v2

    .line 239
    iget-object v2, v0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/animation/core/InfiniteTransition;

    .line 240
    .line 241
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iget-object v3, v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 246
    .line 247
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    check-cast v3, Ljava/lang/Number;

    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    int-to-long v3, v3

    .line 262
    const/4 v5, 0x0

    .line 263
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    int-to-long v13, v5

    .line 268
    shl-long/2addr v3, v12

    .line 269
    const-wide v15, 0xffffffffL

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    and-long/2addr v13, v15

    .line 275
    or-long/2addr v3, v13

    .line 276
    iget-object v2, v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 277
    .line 278
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Ljava/lang/Number;

    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    check-cast v5, Landroidx/compose/ui/unit/IntSize;

    .line 293
    .line 294
    iget-wide v13, v5, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 295
    .line 296
    shr-long/2addr v13, v12

    .line 297
    long-to-int v5, v13

    .line 298
    int-to-float v5, v5

    .line 299
    add-float/2addr v2, v5

    .line 300
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    check-cast v5, Landroidx/compose/ui/unit/IntSize;

    .line 305
    .line 306
    iget-wide v13, v5, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 307
    .line 308
    and-long/2addr v13, v15

    .line 309
    long-to-int v5, v13

    .line 310
    int-to-float v5, v5

    .line 311
    iget v0, v0, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda0;->f$4:F

    .line 312
    .line 313
    mul-float/2addr v5, v0

    .line 314
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    int-to-long v13, v0

    .line 319
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    move/from16 p1, v12

    .line 324
    .line 325
    move-wide/from16 p2, v13

    .line 326
    .line 327
    int-to-long v12, v0

    .line 328
    shl-long v17, p2, p1

    .line 329
    .line 330
    and-long/2addr v12, v15

    .line 331
    or-long v14, v17, v12

    .line 332
    .line 333
    move-object v0, v9

    .line 334
    new-instance v9, Landroidx/compose/ui/graphics/LinearGradient;

    .line 335
    .line 336
    move-object v2, v11

    .line 337
    const/4 v11, 0x0

    .line 338
    move-wide v12, v3

    .line 339
    invoke-direct/range {v9 .. v15}, Landroidx/compose/ui/graphics/LinearGradient;-><init>(Ljava/util/List;Ljava/util/ArrayList;JJ)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    if-ne v3, v0, :cond_3

    .line 347
    .line 348
    new-instance v3, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 349
    .line 350
    const/16 v0, 0xb

    .line 351
    .line 352
    invoke-direct {v3, v2, v0}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    :cond_3
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 359
    .line 360
    invoke-static {v1, v3}, Landroidx/compose/ui/layout/RulerKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    const/4 v1, 0x0

    .line 365
    const/4 v2, 0x6

    .line 366
    invoke-static {v0, v9, v1, v2}, Landroidx/compose/foundation/ImageKt;->background$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/LinearGradient;Landroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 371
    .line 372
    .line 373
    return-object v0
.end method
