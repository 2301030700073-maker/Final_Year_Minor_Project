.class public final Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

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
    goto :goto_3

    .line 188
    :cond_4
    move-object/from16 v0, v16

    .line 189
    .line 190
    :goto_3
    iget v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 191
    .line 192
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 201
    .line 202
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    move-object/from16 v16, v0

    .line 211
    .line 212
    new-instance v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;

    .line 213
    .line 214
    const/4 v5, 0x3

    .line 215
    move-object/from16 v2, p1

    .line 216
    .line 217
    move-object v4, v6

    .line 218
    move-object/from16 v1, v16

    .line 219
    .line 220
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/io/Serializable;I)V

    .line 221
    .line 222
    .line 223
    move-object v8, v2

    .line 224
    invoke-interface {v8, v3, v7, v12, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    return-object v0

    .line 229
    :pswitch_0
    move-object v8, v2

    .line 230
    move v14, v7

    .line 231
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    const/high16 v1, 0x44160000    # 600.0f

    .line 236
    .line 237
    invoke-interface {v8, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    move v1, v14

    .line 250
    :goto_4
    if-ge v1, v0, :cond_6

    .line 251
    .line 252
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    move-object v4, v3

    .line 257
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 258
    .line 259
    invoke-static {v4}, Landroidx/compose/ui/layout/RulerKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    const-string v5, "action"

    .line 264
    .line 265
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_5

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_6
    const/4 v3, 0x0

    .line 276
    :goto_5
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 277
    .line 278
    if-eqz v3, :cond_7

    .line 279
    .line 280
    invoke-interface {v3, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object v13, v0

    .line 285
    goto :goto_6

    .line 286
    :cond_7
    const/4 v13, 0x0

    .line 287
    :goto_6
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    move v1, v14

    .line 292
    :goto_7
    if-ge v1, v0, :cond_9

    .line 293
    .line 294
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    move-object v4, v3

    .line 299
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 300
    .line 301
    invoke-static {v4}, Landroidx/compose/ui/layout/RulerKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    const-string v5, "dismissAction"

    .line 306
    .line 307
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-eqz v4, :cond_8

    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_9
    const/4 v3, 0x0

    .line 318
    :goto_8
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 319
    .line 320
    if-eqz v3, :cond_a

    .line 321
    .line 322
    invoke-interface {v3, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    move-object v15, v0

    .line 327
    goto :goto_9

    .line 328
    :cond_a
    const/4 v15, 0x0

    .line 329
    :goto_9
    if-eqz v13, :cond_b

    .line 330
    .line 331
    iget v0, v13, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 332
    .line 333
    move/from16 v16, v0

    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_b
    move/from16 v16, v14

    .line 337
    .line 338
    :goto_a
    if-eqz v13, :cond_c

    .line 339
    .line 340
    iget v0, v13, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_c
    move v0, v14

    .line 344
    :goto_b
    if-eqz v15, :cond_d

    .line 345
    .line 346
    iget v1, v15, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 347
    .line 348
    move/from16 v17, v1

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_d
    move/from16 v17, v14

    .line 352
    .line 353
    :goto_c
    if-eqz v15, :cond_e

    .line 354
    .line 355
    iget v1, v15, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 356
    .line 357
    goto :goto_d

    .line 358
    :cond_e
    move v1, v14

    .line 359
    :goto_d
    if-nez v17, :cond_f

    .line 360
    .line 361
    const/high16 v3, 0x41000000    # 8.0f

    .line 362
    .line 363
    invoke-interface {v8, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    goto :goto_e

    .line 368
    :cond_f
    move v3, v14

    .line 369
    :goto_e
    sub-int v4, v7, v16

    .line 370
    .line 371
    sub-int v4, v4, v17

    .line 372
    .line 373
    sub-int/2addr v4, v3

    .line 374
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-ge v4, v3, :cond_10

    .line 379
    .line 380
    goto :goto_f

    .line 381
    :cond_10
    move v3, v4

    .line 382
    :goto_f
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    move v5, v14

    .line 387
    :goto_10
    if-ge v5, v4, :cond_18

    .line 388
    .line 389
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 394
    .line 395
    invoke-static {v6}, Landroidx/compose/ui/layout/RulerKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    const-string v14, "text"

    .line 400
    .line 401
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_17

    .line 406
    .line 407
    const/4 v5, 0x0

    .line 408
    move-object v2, v6

    .line 409
    const/16 v6, 0x9

    .line 410
    .line 411
    move-object v4, v2

    .line 412
    const/4 v2, 0x0

    .line 413
    move-object v9, v4

    .line 414
    const/4 v4, 0x0

    .line 415
    move v14, v0

    .line 416
    move-wide/from16 v24, v10

    .line 417
    .line 418
    move v10, v1

    .line 419
    move-wide/from16 v0, v24

    .line 420
    .line 421
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    .line 422
    .line 423
    .line 424
    move-result-wide v0

    .line 425
    invoke-interface {v9, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    sget-object v1, Landroidx/compose/ui/layout/AlignmentLineKt;->FirstBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    sget-object v3, Landroidx/compose/ui/layout/AlignmentLineKt;->LastBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 436
    .line 437
    invoke-virtual {v0, v3}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    const/4 v4, 0x1

    .line 442
    const/high16 v5, -0x80000000

    .line 443
    .line 444
    if-eq v2, v5, :cond_11

    .line 445
    .line 446
    if-eq v3, v5, :cond_11

    .line 447
    .line 448
    move v6, v4

    .line 449
    goto :goto_11

    .line 450
    :cond_11
    const/4 v6, 0x0

    .line 451
    :goto_11
    if-eq v2, v3, :cond_13

    .line 452
    .line 453
    if-nez v6, :cond_12

    .line 454
    .line 455
    goto :goto_12

    .line 456
    :cond_12
    const/4 v4, 0x0

    .line 457
    :cond_13
    :goto_12
    sub-int v19, v7, v17

    .line 458
    .line 459
    sub-int v22, v19, v16

    .line 460
    .line 461
    if-eqz v4, :cond_15

    .line 462
    .line 463
    sget v3, Landroidx/compose/material3/tokens/SnackbarTokens;->SingleLineContainerHeight:F

    .line 464
    .line 465
    invoke-interface {v8, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 478
    .line 479
    sub-int v4, v3, v4

    .line 480
    .line 481
    div-int/lit8 v4, v4, 0x2

    .line 482
    .line 483
    if-eqz v13, :cond_14

    .line 484
    .line 485
    invoke-virtual {v13, v1}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 486
    .line 487
    .line 488
    move-result v1

    .line 489
    if-eq v1, v5, :cond_14

    .line 490
    .line 491
    add-int/2addr v2, v4

    .line 492
    sub-int/2addr v2, v1

    .line 493
    goto :goto_13

    .line 494
    :cond_14
    const/4 v2, 0x0

    .line 495
    :goto_13
    move/from16 v23, v2

    .line 496
    .line 497
    move/from16 v17, v4

    .line 498
    .line 499
    goto :goto_14

    .line 500
    :cond_15
    const/high16 v1, 0x41f00000    # 30.0f

    .line 501
    .line 502
    invoke-interface {v8, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    sub-int v4, v1, v2

    .line 507
    .line 508
    sget v1, Landroidx/compose/material3/tokens/SnackbarTokens;->TwoLinesContainerHeight:F

    .line 509
    .line 510
    invoke-interface {v8, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 515
    .line 516
    add-int/2addr v2, v4

    .line 517
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-eqz v13, :cond_14

    .line 522
    .line 523
    iget v1, v13, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 524
    .line 525
    sub-int v1, v3, v1

    .line 526
    .line 527
    div-int/lit8 v1, v1, 0x2

    .line 528
    .line 529
    move v2, v1

    .line 530
    goto :goto_13

    .line 531
    :goto_14
    if-eqz v15, :cond_16

    .line 532
    .line 533
    iget v1, v15, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 534
    .line 535
    sub-int v1, v3, v1

    .line 536
    .line 537
    div-int/lit8 v1, v1, 0x2

    .line 538
    .line 539
    move/from16 v20, v1

    .line 540
    .line 541
    :goto_15
    move-object/from16 v18, v15

    .line 542
    .line 543
    goto :goto_16

    .line 544
    :cond_16
    const/16 v20, 0x0

    .line 545
    .line 546
    goto :goto_15

    .line 547
    :goto_16
    new-instance v15, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$$ExternalSyntheticLambda0;

    .line 548
    .line 549
    move-object/from16 v16, v0

    .line 550
    .line 551
    move-object/from16 v21, v13

    .line 552
    .line 553
    invoke-direct/range {v15 .. v23}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    .line 554
    .line 555
    .line 556
    invoke-interface {v8, v7, v3, v12, v15}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    goto :goto_17

    .line 561
    :cond_17
    move v14, v0

    .line 562
    move v10, v1

    .line 563
    move-object/from16 v21, v13

    .line 564
    .line 565
    move-object v0, v15

    .line 566
    add-int/lit8 v5, v5, 0x1

    .line 567
    .line 568
    move v0, v14

    .line 569
    const/4 v14, 0x0

    .line 570
    move-wide/from16 v10, p3

    .line 571
    .line 572
    goto/16 :goto_10

    .line 573
    .line 574
    :cond_18
    const-string v0, "Collection contains no element matching the predicate."

    .line 575
    .line 576
    invoke-static {v0}, Landroidx/compose/ui/util/ListUtilsKt;->throwNoSuchElementException(Ljava/lang/String;)Ljava/lang/Void;

    .line 577
    .line 578
    .line 579
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 580
    .line 581
    .line 582
    const/4 v2, 0x0

    .line 583
    :goto_17
    return-object v2

    .line 584
    nop

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
