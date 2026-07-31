.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final disappearingItems:Ljava/util/ArrayList;

.field public keyIndexMap:Lcom/grack/nanojson/JsonParser;

.field public final keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

.field public final modifier:Landroidx/compose/ui/Modifier;

.field public final movingAwayKeys:Landroidx/collection/MutableScatterSet;

.field public final movingAwayToEndBound:Ljava/util/ArrayList;

.field public final movingAwayToStartBound:Ljava/util/ArrayList;

.field public final movingInFromEndBound:Ljava/util/ArrayList;

.field public final movingInFromStartBound:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 5
    .line 6
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 12
    .line 13
    sget-object v0, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/ArrayList;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/ArrayList;

    .line 56
    .line 57
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    .line 63
    .line 64
    return-void
.end method

.method public static updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/LazyListMeasuredItem;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget v1, p0, v0

    .line 6
    .line 7
    iget p1, p1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 8
    .line 9
    add-int/2addr v1, p1

    .line 10
    aput v1, p0, v0

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method


# virtual methods
.method public final getMinSizeToFitDisappearingItems-YbymL2g()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->disappearingItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method

.method public final onMeasured(IILjava/util/ArrayList;Lcom/grack/nanojson/JsonParser;Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;ZZII)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Lcom/grack/nanojson/JsonParser;

    .line 8
    .line 9
    iput-object v4, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Lcom/grack/nanojson/JsonParser;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const/4 v8, 0x0

    .line 16
    :goto_0
    if-ge v8, v6, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 23
    .line 24
    iget-object v10, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    const/4 v11, 0x0

    .line 31
    :goto_1
    if-ge v11, v10, :cond_0

    .line 32
    .line 33
    iget-object v12, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    .line 40
    .line 41
    invoke-virtual {v12}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v11, v11, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v6, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 51
    .line 52
    invoke-virtual {v6}, Landroidx/collection/MutableScatterMap;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->releaseAnimations()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 67
    .line 68
    if-nez p6, :cond_4

    .line 69
    .line 70
    if-nez p7, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const/4 v9, 0x0

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    :goto_2
    const/4 v9, 0x1

    .line 76
    :goto_3
    iget-object v10, v6, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v11, v6, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 79
    .line 80
    array-length v12, v11

    .line 81
    const/4 v13, 0x2

    .line 82
    sub-int/2addr v12, v13

    .line 83
    const-wide/16 v16, 0xff

    .line 84
    .line 85
    const/16 v18, 0x7

    .line 86
    .line 87
    const-wide/16 p7, 0x80

    .line 88
    .line 89
    iget-object v14, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayKeys:Landroidx/collection/MutableScatterSet;

    .line 90
    .line 91
    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    const/16 v15, 0x8

    .line 97
    .line 98
    move/from16 v21, v9

    .line 99
    .line 100
    if-ltz v12, :cond_8

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    :goto_4
    aget-wide v8, v11, v7

    .line 104
    .line 105
    move-object/from16 v23, v14

    .line 106
    .line 107
    not-long v13, v8

    .line 108
    shl-long v13, v13, v18

    .line 109
    .line 110
    and-long/2addr v13, v8

    .line 111
    and-long v13, v13, v19

    .line 112
    .line 113
    cmp-long v13, v13, v19

    .line 114
    .line 115
    if-eqz v13, :cond_7

    .line 116
    .line 117
    sub-int v13, v7, v12

    .line 118
    .line 119
    not-int v13, v13

    .line 120
    ushr-int/lit8 v13, v13, 0x1f

    .line 121
    .line 122
    rsub-int/lit8 v13, v13, 0x8

    .line 123
    .line 124
    move-wide/from16 v24, v8

    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    :goto_5
    if-ge v8, v13, :cond_6

    .line 128
    .line 129
    and-long v26, v24, v16

    .line 130
    .line 131
    cmp-long v9, v26, p7

    .line 132
    .line 133
    if-gez v9, :cond_5

    .line 134
    .line 135
    shl-int/lit8 v9, v7, 0x3

    .line 136
    .line 137
    add-int/2addr v9, v8

    .line 138
    aget-object v9, v10, v9

    .line 139
    .line 140
    move-object/from16 v14, v23

    .line 141
    .line 142
    invoke-virtual {v14, v9}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_5
    move-object/from16 v14, v23

    .line 147
    .line 148
    :goto_6
    shr-long v24, v24, v15

    .line 149
    .line 150
    add-int/lit8 v8, v8, 0x1

    .line 151
    .line 152
    move-object/from16 v23, v14

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_6
    move-object/from16 v14, v23

    .line 156
    .line 157
    if-ne v13, v15, :cond_8

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_7
    move-object/from16 v14, v23

    .line 161
    .line 162
    :goto_7
    if-eq v7, v12, :cond_8

    .line 163
    .line 164
    add-int/lit8 v7, v7, 0x1

    .line 165
    .line 166
    const/4 v13, 0x2

    .line 167
    goto :goto_4

    .line 168
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    const/4 v8, 0x0

    .line 173
    :goto_8
    if-ge v8, v7, :cond_a

    .line 174
    .line 175
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 180
    .line 181
    iget-object v10, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    .line 182
    .line 183
    iget-object v11, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    .line 184
    .line 185
    invoke-virtual {v14, v10}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    const/4 v12, 0x0

    .line 193
    :goto_9
    if-ge v12, v10, :cond_9

    .line 194
    .line 195
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    check-cast v13, Landroidx/compose/ui/layout/Placeable;

    .line 200
    .line 201
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    add-int/lit8 v12, v12, 0x1

    .line 205
    .line 206
    goto :goto_9

    .line 207
    :cond_9
    iget-object v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    .line 208
    .line 209
    invoke-virtual {v6, v9}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    invoke-static {v9}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v8, v8, 0x1

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_a
    const/4 v8, 0x1

    .line 220
    new-array v7, v8, [I

    .line 221
    .line 222
    const/4 v9, 0x0

    .line 223
    iget-object v10, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromEndBound:Ljava/util/ArrayList;

    .line 224
    .line 225
    iget-object v11, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingInFromStartBound:Ljava/util/ArrayList;

    .line 226
    .line 227
    if-eqz v21, :cond_10

    .line 228
    .line 229
    if-eqz v5, :cond_10

    .line 230
    .line 231
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    if-nez v12, :cond_d

    .line 236
    .line 237
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v12

    .line 241
    if-le v12, v8, :cond_b

    .line 242
    .line 243
    new-instance v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 244
    .line 245
    const/4 v13, 0x2

    .line 246
    invoke-direct {v12, v5, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lcom/grack/nanojson/JsonParser;I)V

    .line 247
    .line 248
    .line 249
    invoke-static {v12, v11}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/Comparator;Ljava/util/List;)V

    .line 250
    .line 251
    .line 252
    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-gtz v12, :cond_c

    .line 257
    .line 258
    const/4 v12, 0x0

    .line 259
    invoke-static {v7, v12, v8, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 260
    .line 261
    .line 262
    goto :goto_a

    .line 263
    :cond_c
    const/4 v12, 0x0

    .line 264
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 269
    .line 270
    invoke-static {v7, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/LazyListMeasuredItem;)I

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    .line 274
    .line 275
    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-static {v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 286
    .line 287
    .line 288
    throw v9

    .line 289
    :cond_d
    const/4 v12, 0x0

    .line 290
    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    if-nez v8, :cond_10

    .line 295
    .line 296
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    const/4 v13, 0x1

    .line 301
    if-le v8, v13, :cond_e

    .line 302
    .line 303
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 304
    .line 305
    invoke-direct {v8, v5, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lcom/grack/nanojson/JsonParser;I)V

    .line 306
    .line 307
    .line 308
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/Comparator;Ljava/util/List;)V

    .line 309
    .line 310
    .line 311
    :cond_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-gtz v5, :cond_f

    .line 316
    .line 317
    invoke-static {v7, v12, v13, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 318
    .line 319
    .line 320
    goto :goto_b

    .line 321
    :cond_f
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 326
    .line 327
    invoke-static {v7, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/LazyListMeasuredItem;)I

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    .line 331
    .line 332
    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-static {v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 343
    .line 344
    .line 345
    throw v9

    .line 346
    :cond_10
    :goto_b
    iget-object v5, v14, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 347
    .line 348
    iget-object v8, v14, Landroidx/collection/ScatterSet;->metadata:[J

    .line 349
    .line 350
    array-length v12, v8

    .line 351
    const/16 v22, 0x2

    .line 352
    .line 353
    add-int/lit8 v12, v12, -0x2

    .line 354
    .line 355
    move-object/from16 v22, v9

    .line 356
    .line 357
    move-object/from16 v23, v10

    .line 358
    .line 359
    if-ltz v12, :cond_14

    .line 360
    .line 361
    const/4 v13, 0x0

    .line 362
    :goto_c
    aget-wide v9, v8, v13

    .line 363
    .line 364
    not-long v1, v9

    .line 365
    shl-long v1, v1, v18

    .line 366
    .line 367
    and-long/2addr v1, v9

    .line 368
    and-long v1, v1, v19

    .line 369
    .line 370
    cmp-long v1, v1, v19

    .line 371
    .line 372
    if-eqz v1, :cond_13

    .line 373
    .line 374
    sub-int v1, v13, v12

    .line 375
    .line 376
    not-int v1, v1

    .line 377
    ushr-int/lit8 v1, v1, 0x1f

    .line 378
    .line 379
    rsub-int/lit8 v1, v1, 0x8

    .line 380
    .line 381
    const/4 v2, 0x0

    .line 382
    :goto_d
    if-ge v2, v1, :cond_12

    .line 383
    .line 384
    and-long v24, v9, v16

    .line 385
    .line 386
    cmp-long v24, v24, p7

    .line 387
    .line 388
    if-gez v24, :cond_11

    .line 389
    .line 390
    shl-int/lit8 v24, v13, 0x3

    .line 391
    .line 392
    add-int v24, v24, v2

    .line 393
    .line 394
    move/from16 v25, v15

    .line 395
    .line 396
    aget-object v15, v5, v24

    .line 397
    .line 398
    invoke-virtual {v6, v15}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v15

    .line 402
    invoke-static {v15}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    goto :goto_e

    .line 406
    :cond_11
    move/from16 v25, v15

    .line 407
    .line 408
    :goto_e
    shr-long v9, v9, v25

    .line 409
    .line 410
    add-int/lit8 v2, v2, 0x1

    .line 411
    .line 412
    move/from16 v15, v25

    .line 413
    .line 414
    goto :goto_d

    .line 415
    :cond_12
    move v2, v15

    .line 416
    if-ne v1, v2, :cond_14

    .line 417
    .line 418
    goto :goto_f

    .line 419
    :cond_13
    move v2, v15

    .line 420
    :goto_f
    if-eq v13, v12, :cond_14

    .line 421
    .line 422
    add-int/lit8 v13, v13, 0x1

    .line 423
    .line 424
    move v15, v2

    .line 425
    goto :goto_c

    .line 426
    :cond_14
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToStartBound:Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-nez v2, :cond_19

    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    const/4 v8, 0x1

    .line 439
    if-le v2, v8, :cond_15

    .line 440
    .line 441
    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 442
    .line 443
    const/4 v5, 0x3

    .line 444
    invoke-direct {v2, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lcom/grack/nanojson/JsonParser;I)V

    .line 445
    .line 446
    .line 447
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/Comparator;Ljava/util/List;)V

    .line 448
    .line 449
    .line 450
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    const/4 v5, 0x0

    .line 455
    :goto_10
    if-ge v5, v2, :cond_18

    .line 456
    .line 457
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 462
    .line 463
    iget-object v9, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    .line 464
    .line 465
    invoke-virtual {v6, v9}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    invoke-static {v9}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    invoke-static {v7, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/LazyListMeasuredItem;)I

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    if-eqz p6, :cond_16

    .line 480
    .line 481
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v10

    .line 485
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 486
    .line 487
    const/4 v12, 0x0

    .line 488
    invoke-virtual {v10, v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    .line 489
    .line 490
    .line 491
    move-result-wide v15

    .line 492
    const-wide v12, 0xffffffffL

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    and-long/2addr v12, v15

    .line 498
    long-to-int v10, v12

    .line 499
    goto :goto_11

    .line 500
    :cond_16
    const/4 v10, 0x0

    .line 501
    :goto_11
    sub-int/2addr v10, v9

    .line 502
    move/from16 v9, p1

    .line 503
    .line 504
    move/from16 v12, p2

    .line 505
    .line 506
    invoke-virtual {v8, v10, v9, v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 507
    .line 508
    .line 509
    if-nez v21, :cond_17

    .line 510
    .line 511
    add-int/lit8 v5, v5, 0x1

    .line 512
    .line 513
    goto :goto_10

    .line 514
    :cond_17
    const/4 v13, 0x1

    .line 515
    invoke-virtual {v0, v8, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;Z)V

    .line 516
    .line 517
    .line 518
    throw v22

    .line 519
    :cond_18
    move/from16 v9, p1

    .line 520
    .line 521
    move/from16 v12, p2

    .line 522
    .line 523
    const/4 v2, 0x0

    .line 524
    const/4 v13, 0x1

    .line 525
    invoke-static {v7, v2, v13, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 526
    .line 527
    .line 528
    goto :goto_12

    .line 529
    :cond_19
    move/from16 v9, p1

    .line 530
    .line 531
    move/from16 v12, p2

    .line 532
    .line 533
    const/4 v13, 0x1

    .line 534
    :goto_12
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->movingAwayToEndBound:Ljava/util/ArrayList;

    .line 535
    .line 536
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 537
    .line 538
    .line 539
    move-result v5

    .line 540
    if-nez v5, :cond_1c

    .line 541
    .line 542
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    if-le v5, v13, :cond_1a

    .line 547
    .line 548
    new-instance v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;

    .line 549
    .line 550
    invoke-direct {v5, v4, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1;-><init>(Lcom/grack/nanojson/JsonParser;I)V

    .line 551
    .line 552
    .line 553
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/Comparator;Ljava/util/List;)V

    .line 554
    .line 555
    .line 556
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 557
    .line 558
    .line 559
    move-result v4

    .line 560
    const/4 v5, 0x0

    .line 561
    :goto_13
    if-ge v5, v4, :cond_1c

    .line 562
    .line 563
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 568
    .line 569
    iget-object v10, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    .line 570
    .line 571
    invoke-virtual {v6, v10}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v10

    .line 575
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    invoke-static {v10}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    invoke-static {v7, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->updateAndReturnOffsetFor([ILandroidx/compose/foundation/lazy/LazyListMeasuredItem;)I

    .line 582
    .line 583
    .line 584
    move-result v10

    .line 585
    iget v13, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 586
    .line 587
    const/4 v15, 0x0

    .line 588
    rsub-int/lit8 v13, v13, 0x0

    .line 589
    .line 590
    add-int/2addr v13, v10

    .line 591
    invoke-virtual {v8, v13, v9, v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 592
    .line 593
    .line 594
    if-nez v21, :cond_1b

    .line 595
    .line 596
    add-int/lit8 v5, v5, 0x1

    .line 597
    .line 598
    goto :goto_13

    .line 599
    :cond_1b
    const/4 v13, 0x1

    .line 600
    invoke-virtual {v0, v8, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;Z)V

    .line 601
    .line 602
    .line 603
    throw v22

    .line 604
    :cond_1c
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 605
    .line 606
    .line 607
    const/4 v12, 0x0

    .line 608
    invoke-virtual {v3, v12, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 609
    .line 610
    .line 611
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 612
    .line 613
    .line 614
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 615
    .line 616
    .line 617
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v14}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 627
    .line 628
    .line 629
    return-void
.end method

.method public final releaseAnimations()V
    .locals 14

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->isNotEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    add-int/lit8 v2, v2, -0x2

    .line 15
    .line 16
    if-ltz v2, :cond_3

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    aget-wide v5, v1, v4

    .line 21
    .line 22
    not-long v7, v5

    .line 23
    const/4 v9, 0x7

    .line 24
    shl-long/2addr v7, v9

    .line 25
    and-long/2addr v7, v5

    .line 26
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v7, v9

    .line 32
    cmp-long v7, v7, v9

    .line 33
    .line 34
    if-eqz v7, :cond_2

    .line 35
    .line 36
    sub-int v7, v4, v2

    .line 37
    .line 38
    not-int v7, v7

    .line 39
    ushr-int/lit8 v7, v7, 0x1f

    .line 40
    .line 41
    const/16 v8, 0x8

    .line 42
    .line 43
    rsub-int/lit8 v7, v7, 0x8

    .line 44
    .line 45
    move v9, v3

    .line 46
    :goto_1
    if-ge v9, v7, :cond_1

    .line 47
    .line 48
    const-wide/16 v10, 0xff

    .line 49
    .line 50
    and-long/2addr v10, v5

    .line 51
    const-wide/16 v12, 0x80

    .line 52
    .line 53
    cmp-long v10, v10, v12

    .line 54
    .line 55
    if-ltz v10, :cond_0

    .line 56
    .line 57
    shr-long/2addr v5, v8

    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    shl-int/lit8 p0, v4, 0x3

    .line 62
    .line 63
    add-int/2addr p0, v9

    .line 64
    aget-object p0, v0, p0

    .line 65
    .line 66
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0

    .line 71
    :cond_1
    if-ne v7, v8, :cond_3

    .line 72
    .line 73
    :cond_2
    if-eq v4, v2, :cond_3

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public final startPlacementAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyToItemInfoMap:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method
