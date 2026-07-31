.class public final Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final measure_3p2s80s$startNewSequence(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 8
    .line 9
    const/high16 v1, 0x41400000    # 12.0f

    .line 10
    .line 11
    invoke-interface {p2, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    add-int/2addr p2, v0

    .line 16
    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 17
    .line 18
    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget p0, p5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 45
    .line 46
    iget p2, p5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 47
    .line 48
    add-int/2addr p0, p2

    .line 49
    iput p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 50
    .line 51
    iget p0, p7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 52
    .line 53
    iget p1, p8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 54
    .line 55
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    iput p0, p7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    iput v0, p8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 65
    .line 66
    iput v0, p5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final synthetic maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$maxIntrinsicHeight(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$maxIntrinsicWidth(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 26

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v0, p0

    .line 6
    .line 7
    move-wide/from16 v10, p3

    .line 8
    .line 9
    iget v0, v0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$r8$classId:I

    .line 10
    .line 11
    sget-object v12, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v6, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    move v8, v7

    .line 33
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 34
    .line 35
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    move v14, v8

    .line 49
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    .line 50
    .line 51
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 55
    .line 56
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 60
    .line 61
    .line 62
    move-result v15

    .line 63
    :goto_0
    if-ge v14, v15, :cond_3

    .line 64
    .line 65
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v16

    .line 69
    move-object/from16 v13, v16

    .line 70
    .line 71
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 72
    .line 73
    invoke-interface {v13, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    if-nez v16, :cond_1

    .line 82
    .line 83
    move-object/from16 v16, v0

    .line 84
    .line 85
    iget v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 86
    .line 87
    move/from16 v17, v0

    .line 88
    .line 89
    const/high16 v0, 0x41000000    # 8.0f

    .line 90
    .line 91
    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 92
    .line 93
    .line 94
    move-result v18

    .line 95
    add-int v18, v18, v17

    .line 96
    .line 97
    iget v0, v13, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 98
    .line 99
    add-int v0, v18, v0

    .line 100
    .line 101
    move-object/from16 v17, v1

    .line 102
    .line 103
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-gt v0, v1, :cond_0

    .line 108
    .line 109
    move-object/from16 v0, v16

    .line 110
    .line 111
    move-object/from16 v1, v17

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_0
    move-object/from16 v0, v16

    .line 115
    .line 116
    move-object/from16 v1, v17

    .line 117
    .line 118
    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->measure_3p2s80s$startNewSequence(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v16

    .line 125
    if-nez v16, :cond_2

    .line 126
    .line 127
    move-object/from16 v16, v0

    .line 128
    .line 129
    iget v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 130
    .line 131
    move/from16 v17, v0

    .line 132
    .line 133
    const/high16 v0, 0x41000000    # 8.0f

    .line 134
    .line 135
    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 136
    .line 137
    .line 138
    move-result v18

    .line 139
    add-int v0, v18, v17

    .line 140
    .line 141
    iput v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    move-object/from16 v16, v0

    .line 145
    .line 146
    :goto_2
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    iget v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 150
    .line 151
    move/from16 v17, v0

    .line 152
    .line 153
    iget v0, v13, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 154
    .line 155
    add-int v0, v17, v0

    .line 156
    .line 157
    iput v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 158
    .line 159
    iget v0, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 160
    .line 161
    iget v13, v13, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 162
    .line 163
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    iput v0, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 168
    .line 169
    add-int/lit8 v14, v14, 0x1

    .line 170
    .line 171
    move-object/from16 v0, v16

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_3
    move-object/from16 v16, v0

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_4

    .line 181
    .line 182
    move-object/from16 v0, v16

    .line 183
    .line 184
    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->measure_3p2s80s$startNewSequence(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v24, v2

    .line 188
    .line 189
    move-object v2, v1

    .line 190
    move-object v1, v7

    .line 191
    move-object/from16 v7, v24

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_4
    move-object v0, v2

    .line 195
    move-object v2, v1

    .line 196
    move-object v1, v7

    .line 197
    move-object v7, v0

    .line 198
    move-object/from16 v0, v16

    .line 199
    .line 200
    :goto_3
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 201
    .line 202
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 211
    .line 212
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    new-instance v3, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;

    .line 221
    .line 222
    invoke-direct {v3, v0, v7, v1, v6}, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;ILjava/util/ArrayList;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v7, v1, v2, v12, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    return-object v0

    .line 230
    :pswitch_0
    move v14, v7

    .line 231
    move-object v7, v2

    .line 232
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    const/high16 v1, 0x44160000    # 600.0f

    .line 237
    .line 238
    invoke-interface {v7, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    move v1, v14

    .line 251
    :goto_4
    if-ge v1, v0, :cond_6

    .line 252
    .line 253
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    move-object v4, v3

    .line 258
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 259
    .line 260
    invoke-static {v4}, Landroidx/compose/ui/layout/RulerKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    const-string v5, "action"

    .line 265
    .line 266
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_5

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_6
    const/4 v3, 0x0

    .line 277
    :goto_5
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 278
    .line 279
    if-eqz v3, :cond_7

    .line 280
    .line 281
    invoke-interface {v3, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    move-object v13, v0

    .line 286
    goto :goto_6

    .line 287
    :cond_7
    const/4 v13, 0x0

    .line 288
    :goto_6
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    move v1, v14

    .line 293
    :goto_7
    if-ge v1, v0, :cond_9

    .line 294
    .line 295
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    move-object v4, v3

    .line 300
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 301
    .line 302
    invoke-static {v4}, Landroidx/compose/ui/layout/RulerKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    const-string v5, "dismissAction"

    .line 307
    .line 308
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_8

    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_9
    const/4 v3, 0x0

    .line 319
    :goto_8
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 320
    .line 321
    if-eqz v3, :cond_a

    .line 322
    .line 323
    invoke-interface {v3, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    move-object v15, v0

    .line 328
    goto :goto_9

    .line 329
    :cond_a
    const/4 v15, 0x0

    .line 330
    :goto_9
    if-eqz v13, :cond_b

    .line 331
    .line 332
    iget v0, v13, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 333
    .line 334
    move/from16 v16, v0

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_b
    move/from16 v16, v14

    .line 338
    .line 339
    :goto_a
    if-eqz v13, :cond_c

    .line 340
    .line 341
    iget v0, v13, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_c
    move v0, v14

    .line 345
    :goto_b
    if-eqz v15, :cond_d

    .line 346
    .line 347
    iget v1, v15, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 348
    .line 349
    move/from16 v17, v1

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_d
    move/from16 v17, v14

    .line 353
    .line 354
    :goto_c
    if-eqz v15, :cond_e

    .line 355
    .line 356
    iget v1, v15, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 357
    .line 358
    goto :goto_d

    .line 359
    :cond_e
    move v1, v14

    .line 360
    :goto_d
    if-nez v17, :cond_f

    .line 361
    .line 362
    const/high16 v3, 0x41000000    # 8.0f

    .line 363
    .line 364
    invoke-interface {v7, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    goto :goto_e

    .line 369
    :cond_f
    move v3, v14

    .line 370
    :goto_e
    sub-int v4, v8, v16

    .line 371
    .line 372
    sub-int v4, v4, v17

    .line 373
    .line 374
    sub-int/2addr v4, v3

    .line 375
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-ge v4, v3, :cond_10

    .line 380
    .line 381
    goto :goto_f

    .line 382
    :cond_10
    move v3, v4

    .line 383
    :goto_f
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    move v5, v14

    .line 388
    :goto_10
    if-ge v5, v4, :cond_18

    .line 389
    .line 390
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 395
    .line 396
    invoke-static {v6}, Landroidx/compose/ui/layout/RulerKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    const-string v14, "text"

    .line 401
    .line 402
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_17

    .line 407
    .line 408
    const/4 v5, 0x0

    .line 409
    move-object v2, v6

    .line 410
    const/16 v6, 0x9

    .line 411
    .line 412
    move-object v4, v2

    .line 413
    const/4 v2, 0x0

    .line 414
    move-object v9, v4

    .line 415
    const/4 v4, 0x0

    .line 416
    move v14, v0

    .line 417
    move-wide/from16 v24, v10

    .line 418
    .line 419
    move v10, v1

    .line 420
    move-wide/from16 v0, v24

    .line 421
    .line 422
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    .line 423
    .line 424
    .line 425
    move-result-wide v0

    .line 426
    invoke-interface {v9, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    sget-object v1, Landroidx/compose/ui/layout/AlignmentLineKt;->FirstBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 431
    .line 432
    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    sget-object v3, Landroidx/compose/ui/layout/AlignmentLineKt;->LastBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 437
    .line 438
    invoke-virtual {v0, v3}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    const/4 v4, 0x1

    .line 443
    const/high16 v5, -0x80000000

    .line 444
    .line 445
    if-eq v2, v5, :cond_11

    .line 446
    .line 447
    if-eq v3, v5, :cond_11

    .line 448
    .line 449
    move v6, v4

    .line 450
    goto :goto_11

    .line 451
    :cond_11
    const/4 v6, 0x0

    .line 452
    :goto_11
    if-eq v2, v3, :cond_13

    .line 453
    .line 454
    if-nez v6, :cond_12

    .line 455
    .line 456
    goto :goto_12

    .line 457
    :cond_12
    const/4 v4, 0x0

    .line 458
    :cond_13
    :goto_12
    sub-int v19, v8, v17

    .line 459
    .line 460
    sub-int v22, v19, v16

    .line 461
    .line 462
    if-eqz v4, :cond_15

    .line 463
    .line 464
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->SingleLineContainerHeight:F

    .line 465
    .line 466
    invoke-interface {v7, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 479
    .line 480
    sub-int v4, v3, v4

    .line 481
    .line 482
    div-int/lit8 v4, v4, 0x2

    .line 483
    .line 484
    if-eqz v13, :cond_14

    .line 485
    .line 486
    invoke-virtual {v13, v1}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-eq v1, v5, :cond_14

    .line 491
    .line 492
    add-int/2addr v2, v4

    .line 493
    sub-int/2addr v2, v1

    .line 494
    goto :goto_13

    .line 495
    :cond_14
    const/4 v2, 0x0

    .line 496
    :goto_13
    move/from16 v23, v2

    .line 497
    .line 498
    move/from16 v17, v4

    .line 499
    .line 500
    goto :goto_14

    .line 501
    :cond_15
    const/high16 v1, 0x41f00000    # 30.0f

    .line 502
    .line 503
    invoke-interface {v7, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    sub-int v4, v1, v2

    .line 508
    .line 509
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->TwoLinesContainerHeight:F

    .line 510
    .line 511
    invoke-interface {v7, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 516
    .line 517
    add-int/2addr v2, v4

    .line 518
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-eqz v13, :cond_14

    .line 523
    .line 524
    iget v1, v13, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 525
    .line 526
    sub-int v1, v3, v1

    .line 527
    .line 528
    div-int/lit8 v1, v1, 0x2

    .line 529
    .line 530
    move v2, v1

    .line 531
    goto :goto_13

    .line 532
    :goto_14
    if-eqz v15, :cond_16

    .line 533
    .line 534
    iget v1, v15, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 535
    .line 536
    sub-int v1, v3, v1

    .line 537
    .line 538
    div-int/lit8 v1, v1, 0x2

    .line 539
    .line 540
    move/from16 v20, v1

    .line 541
    .line 542
    :goto_15
    move-object/from16 v18, v15

    .line 543
    .line 544
    goto :goto_16

    .line 545
    :cond_16
    const/16 v20, 0x0

    .line 546
    .line 547
    goto :goto_15

    .line 548
    :goto_16
    new-instance v15, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$$ExternalSyntheticLambda0;

    .line 549
    .line 550
    move-object/from16 v16, v0

    .line 551
    .line 552
    move-object/from16 v21, v13

    .line 553
    .line 554
    invoke-direct/range {v15 .. v23}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    .line 555
    .line 556
    .line 557
    invoke-interface {v7, v8, v3, v12, v15}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    goto :goto_17

    .line 562
    :cond_17
    move v14, v0

    .line 563
    move v10, v1

    .line 564
    move-object/from16 v21, v13

    .line 565
    .line 566
    move-object v0, v15

    .line 567
    add-int/lit8 v5, v5, 0x1

    .line 568
    .line 569
    move v0, v14

    .line 570
    const/4 v14, 0x0

    .line 571
    move-wide/from16 v10, p3

    .line 572
    .line 573
    goto/16 :goto_10

    .line 574
    .line 575
    :cond_18
    const-string v0, "Collection contains no element matching the predicate."

    .line 576
    .line 577
    invoke-static {v0}, Landroidx/compose/ui/util/ListUtilsKt;->throwNoSuchElementException(Ljava/lang/String;)Ljava/lang/Void;

    .line 578
    .line 579
    .line 580
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 581
    .line 582
    .line 583
    const/4 v2, 0x0

    .line 584
    :goto_17
    return-object v2

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$minIntrinsicHeight(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$minIntrinsicWidth(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
