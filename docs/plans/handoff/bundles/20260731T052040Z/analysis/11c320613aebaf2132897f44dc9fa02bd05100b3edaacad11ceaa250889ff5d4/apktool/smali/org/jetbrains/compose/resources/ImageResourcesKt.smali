.class public abstract Lorg/jetbrains/compose/resources/ImageResourcesKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final emptyImageBitmap$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final emptyImageVector$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final emptySvgPainter$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final imageCache:Lorg/jetbrains/compose/resources/AsyncCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptyImageBitmap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 14
    .line 15
    new-instance v0, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/16 v1, 0x1a

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptyImageVector$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 28
    .line 29
    new-instance v0, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/16 v1, 0x1b

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lorg/jetbrains/compose/resources/ImageResourcesKt;->emptySvgPainter$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 42
    .line 43
    new-instance v0, Lorg/jetbrains/compose/resources/AsyncCache;

    .line 44
    .line 45
    invoke-direct {v0}, Lorg/jetbrains/compose/resources/AsyncCache;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lorg/jetbrains/compose/resources/ImageResourcesKt;->imageCache:Lorg/jetbrains/compose/resources/AsyncCache;

    .line 49
    .line 50
    return-void
.end method

.method public static final painterResource(Lorg/jetbrains/compose/resources/DrawableResource;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v5, p1

    .line 7
    .line 8
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v1, -0x59f05fb7

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->LocalComposeEnvironment:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 17
    .line 18
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v5}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;->rememberEnvironment(Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    or-int/2addr v3, v4

    .line 40
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 45
    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    if-ne v4, v6, :cond_1

    .line 49
    .line 50
    :cond_0
    invoke-static {v0, v2}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceItemByEnvironment(Lorg/jetbrains/compose/resources/Resource;Lorg/jetbrains/compose/resources/ResourceEnvironment;)Lorg/jetbrains/compose/resources/ResourceItem;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v4, v2, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, ".xml"

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-static {v4, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    if-eqz v2, :cond_a

    .line 71
    .line 72
    const v1, -0x4b8e104d

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 79
    .line 80
    invoke-static {v1, v5}, Lorg/jetbrains/compose/resources/StringResourcesKt;->getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceReader;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 85
    .line 86
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 91
    .line 92
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-ne v3, v6, :cond_2

    .line 97
    .line 98
    new-instance v3, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/16 v4, 0x1d

    .line 101
    .line 102
    invoke-direct {v3, v4}, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 109
    .line 110
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    or-int/2addr v4, v10

    .line 119
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    or-int/2addr v4, v10

    .line 124
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    if-nez v4, :cond_3

    .line 129
    .line 130
    if-ne v10, v6, :cond_4

    .line 131
    .line 132
    :cond_3
    new-instance v10, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;

    .line 133
    .line 134
    invoke-direct {v10, v0, v1, v2, v7}, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceReader;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    move-object v4, v10

    .line 141
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 142
    .line 143
    invoke-static/range {v0 .. v5}, Lorg/jetbrains/compose/resources/StringResourcesKt;->rememberResourceState(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceReader;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 152
    .line 153
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 158
    .line 159
    iget v2, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->genId:I

    .line 160
    .line 161
    int-to-float v2, v2

    .line 162
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    int-to-long v9, v2

    .line 171
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    int-to-long v2, v2

    .line 176
    const/16 v4, 0x20

    .line 177
    .line 178
    shl-long/2addr v9, v4

    .line 179
    const-wide v11, 0xffffffffL

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    and-long/2addr v2, v11

    .line 185
    or-long/2addr v2, v9

    .line 186
    invoke-virtual {v5, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    if-nez v2, :cond_5

    .line 195
    .line 196
    if-ne v3, v6, :cond_9

    .line 197
    .line 198
    :cond_5
    new-instance v2, Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 199
    .line 200
    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    .line 201
    .line 202
    .line 203
    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 204
    .line 205
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/vector/PathParserKt;->createGroupComponent(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)V

    .line 206
    .line 207
    .line 208
    iget v3, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    .line 209
    .line 210
    iget v6, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    .line 211
    .line 212
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    int-to-long v9, v3

    .line 225
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    int-to-long v13, v1

    .line 230
    shl-long/2addr v9, v4

    .line 231
    and-long/2addr v13, v11

    .line 232
    or-long/2addr v9, v13

    .line 233
    iget v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    .line 234
    .line 235
    iget v3, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    .line 236
    .line 237
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-eqz v6, :cond_6

    .line 242
    .line 243
    shr-long v13, v9, v4

    .line 244
    .line 245
    long-to-int v1, v13

    .line 246
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    :cond_6
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_7

    .line 255
    .line 256
    and-long v13, v9, v11

    .line 257
    .line 258
    long-to-int v3, v13

    .line 259
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    :cond_7
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    int-to-long v13, v1

    .line 268
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    move-wide/from16 p0, v11

    .line 273
    .line 274
    int-to-long v11, v1

    .line 275
    shl-long v3, v13, v4

    .line 276
    .line 277
    and-long v11, v11, p0

    .line 278
    .line 279
    or-long/2addr v3, v11

    .line 280
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 281
    .line 282
    invoke-direct {v1, v2}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    .line 286
    .line 287
    iget-wide v11, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    .line 288
    .line 289
    iget v6, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    .line 290
    .line 291
    const-wide/16 v13, 0x10

    .line 292
    .line 293
    cmp-long v13, v11, v13

    .line 294
    .line 295
    if-eqz v13, :cond_8

    .line 296
    .line 297
    new-instance v7, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 298
    .line 299
    invoke-direct {v7, v11, v12, v6}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    .line 300
    .line 301
    .line 302
    :cond_8
    iget-boolean v0, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    .line 303
    .line 304
    new-instance v6, Landroidx/compose/ui/geometry/Size;

    .line 305
    .line 306
    invoke-direct {v6, v9, v10}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 307
    .line 308
    .line 309
    iget-object v9, v1, Landroidx/compose/ui/graphics/vector/VectorPainter;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 310
    .line 311
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    iget-object v6, v1, Landroidx/compose/ui/graphics/vector/VectorPainter;->autoMirror$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 315
    .line 316
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, v1, Landroidx/compose/ui/graphics/vector/VectorPainter;->vector:Landroidx/compose/ui/graphics/vector/VectorComponent;

    .line 324
    .line 325
    iget-object v6, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 326
    .line 327
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    iget-object v6, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 331
    .line 332
    new-instance v7, Landroidx/compose/ui/geometry/Size;

    .line 333
    .line 334
    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->name:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    move-object v3, v1

    .line 346
    :cond_9
    check-cast v3, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 347
    .line 348
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 352
    .line 353
    .line 354
    return-object v3

    .line 355
    :cond_a
    const-string v2, ".svg"

    .line 356
    .line 357
    invoke-static {v4, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_e

    .line 362
    .line 363
    const v1, -0x4b8c5db2

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 367
    .line 368
    .line 369
    sget-object v1, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 370
    .line 371
    invoke-static {v1, v5}, Lorg/jetbrains/compose/resources/StringResourcesKt;->getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceReader;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 376
    .line 377
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 382
    .line 383
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    if-ne v3, v6, :cond_b

    .line 388
    .line 389
    new-instance v3, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;

    .line 390
    .line 391
    const/16 v4, 0x1c

    .line 392
    .line 393
    invoke-direct {v3, v4}, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    :cond_b
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 400
    .line 401
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    or-int/2addr v4, v9

    .line 410
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v9

    .line 414
    or-int/2addr v4, v9

    .line 415
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    if-nez v4, :cond_c

    .line 420
    .line 421
    if-ne v9, v6, :cond_d

    .line 422
    .line 423
    :cond_c
    new-instance v9, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;

    .line 424
    .line 425
    invoke-direct {v9, v0, v1, v2, v7}, Lorg/jetbrains/compose/resources/ImageResourcesKt$svgPainter$svgPainter$3$1;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceReader;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    :cond_d
    move-object v4, v9

    .line 432
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 433
    .line 434
    invoke-static/range {v0 .. v5}, Lorg/jetbrains/compose/resources/StringResourcesKt;->rememberResourceState(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceReader;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    check-cast v0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 443
    .line 444
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 448
    .line 449
    .line 450
    return-object v0

    .line 451
    :cond_e
    const v2, -0x4b8b9da4

    .line 452
    .line 453
    .line 454
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 455
    .line 456
    .line 457
    new-instance v9, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 458
    .line 459
    sget-object v2, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 460
    .line 461
    invoke-static {v2, v5}, Lorg/jetbrains/compose/resources/StringResourcesKt;->getCurrentOrPreview(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceReader;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    check-cast v1, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;

    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    invoke-static {v5}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;->rememberEnvironment(Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    if-ne v3, v6, :cond_f

    .line 483
    .line 484
    new-instance v3, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;

    .line 485
    .line 486
    invoke-direct {v3, v8}, Lorg/jetbrains/compose/resources/ImageResourcesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    :cond_f
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 493
    .line 494
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v10

    .line 502
    or-int/2addr v4, v10

    .line 503
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v10

    .line 507
    or-int/2addr v4, v10

    .line 508
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v10

    .line 512
    if-nez v4, :cond_10

    .line 513
    .line 514
    if-ne v10, v6, :cond_11

    .line 515
    .line 516
    :cond_10
    new-instance v10, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;

    .line 517
    .line 518
    invoke-direct {v10, v0, v1, v2, v7}, Lorg/jetbrains/compose/resources/ImageResourcesKt$imageResource$imageBitmap$3$1;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lorg/jetbrains/compose/resources/ResourceReader;Lkotlin/coroutines/Continuation;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    :cond_11
    move-object v4, v10

    .line 525
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 526
    .line 527
    move-object v15, v2

    .line 528
    move-object v2, v1

    .line 529
    move-object v1, v15

    .line 530
    invoke-static/range {v0 .. v5}, Lorg/jetbrains/compose/resources/StringResourcesKt;->rememberResourceState(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceReader;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    check-cast v0, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 539
    .line 540
    invoke-direct {v9, v0}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 547
    .line 548
    .line 549
    return-object v9
.end method
