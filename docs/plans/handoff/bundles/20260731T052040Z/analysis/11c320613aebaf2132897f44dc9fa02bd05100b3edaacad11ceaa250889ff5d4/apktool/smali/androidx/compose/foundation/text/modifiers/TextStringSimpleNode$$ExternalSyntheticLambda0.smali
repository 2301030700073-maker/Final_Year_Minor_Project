.class public final synthetic Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-boolean v1, v4, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->isShowingSubstitution:Z

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :pswitch_0
    move-object/from16 v1, p1

    .line 42
    .line 43
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 44
    .line 45
    iget-object v3, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v2, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->substitution:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iput-object v3, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->substitution:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 67
    .line 68
    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 69
    .line 70
    iget v6, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    .line 71
    .line 72
    iget-boolean v7, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    .line 73
    .line 74
    iget v8, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    .line 75
    .line 76
    iget v9, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    .line 77
    .line 78
    invoke-virtual/range {v2 .. v9}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->update-L6sJoHM(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 83
    .line 84
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->text:Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v1, v2, v3}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 90
    .line 91
    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 92
    .line 93
    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 94
    .line 95
    iget v6, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->overflow:I

    .line 96
    .line 97
    iget-boolean v7, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->softWrap:Z

    .line 98
    .line 99
    iget v8, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->maxLines:I

    .line 100
    .line 101
    iget v9, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->minLines:I

    .line 102
    .line 103
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-object v3, v3, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->setDensity$foundation(Landroidx/compose/ui/unit/Density;)V

    .line 113
    .line 114
    .line 115
    iput-object v2, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->layoutCache:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 116
    .line 117
    iput-object v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->textSubstitution:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 118
    .line 119
    :cond_3
    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 129
    .line 130
    return-object v0

    .line 131
    :pswitch_1
    move-object/from16 v1, p1

    .line 132
    .line 133
    check-cast v1, Ljava/util/List;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->getLayoutCache()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->style:Landroidx/compose/ui/text/TextStyle;

    .line 140
    .line 141
    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 142
    .line 143
    const-wide/16 v13, 0x0

    .line 144
    .line 145
    const v15, 0xfffffe

    .line 146
    .line 147
    .line 148
    const-wide/16 v8, 0x0

    .line 149
    .line 150
    const-wide/16 v10, 0x0

    .line 151
    .line 152
    const/4 v12, 0x0

    .line 153
    invoke-static/range {v5 .. v15}, Landroidx/compose/ui/text/TextStyle;->merge-dA7vx0o$default(Landroidx/compose/ui/text/TextStyle;JJJIJI)Landroidx/compose/ui/text/TextStyle;

    .line 154
    .line 155
    .line 156
    move-result-object v18

    .line 157
    iget-object v0, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 158
    .line 159
    if-nez v0, :cond_4

    .line 160
    .line 161
    :goto_2
    const/4 v7, 0x0

    .line 162
    const/4 v8, 0x0

    .line 163
    goto/16 :goto_d

    .line 164
    .line 165
    :cond_4
    iget-object v6, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->density:Landroidx/compose/ui/unit/Density;

    .line 166
    .line 167
    if-nez v6, :cond_5

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    new-instance v7, Landroidx/compose/ui/text/AnnotatedString;

    .line 171
    .line 172
    iget-object v8, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->text:Ljava/lang/String;

    .line 173
    .line 174
    invoke-direct {v7, v8}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v8, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    .line 178
    .line 179
    if-nez v8, :cond_6

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    iget-object v8, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->paragraphIntrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    .line 183
    .line 184
    if-nez v8, :cond_7

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    iget-wide v8, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->prevConstraints:J

    .line 188
    .line 189
    const-wide v10, -0x1fffffffdL

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    and-long v26, v8, v10

    .line 195
    .line 196
    new-instance v8, Landroidx/compose/ui/text/TextLayoutResult;

    .line 197
    .line 198
    new-instance v16, Landroidx/compose/ui/text/TextLayoutInput;

    .line 199
    .line 200
    iget v9, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    .line 201
    .line 202
    iget-boolean v10, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->softWrap:Z

    .line 203
    .line 204
    iget v11, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    .line 205
    .line 206
    iget-object v12, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 207
    .line 208
    sget-object v19, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 209
    .line 210
    move-object/from16 v24, v0

    .line 211
    .line 212
    move-object/from16 v23, v6

    .line 213
    .line 214
    move-object/from16 v17, v7

    .line 215
    .line 216
    move/from16 v20, v9

    .line 217
    .line 218
    move/from16 v21, v10

    .line 219
    .line 220
    move/from16 v22, v11

    .line 221
    .line 222
    move-object/from16 v25, v12

    .line 223
    .line 224
    invoke-direct/range {v16 .. v27}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V

    .line 225
    .line 226
    .line 227
    move-object/from16 v0, v16

    .line 228
    .line 229
    move-object/from16 v20, v23

    .line 230
    .line 231
    move-object/from16 v21, v25

    .line 232
    .line 233
    new-instance v6, Landroidx/compose/ui/text/MultiParagraph;

    .line 234
    .line 235
    new-instance v16, Lcoil3/ComponentRegistry$Builder;

    .line 236
    .line 237
    invoke-direct/range {v16 .. v21}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 238
    .line 239
    .line 240
    move-object/from16 v7, v16

    .line 241
    .line 242
    iget v9, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->maxLines:I

    .line 243
    .line 244
    iget v13, v4, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->overflow:I

    .line 245
    .line 246
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 247
    .line 248
    .line 249
    iput-object v7, v6, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Ljava/lang/Object;

    .line 250
    .line 251
    iput v9, v6, Landroidx/compose/ui/text/MultiParagraph;->maxLines:I

    .line 252
    .line 253
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-nez v9, :cond_8

    .line 258
    .line 259
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    if-nez v9, :cond_8

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_8
    const-string v9, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    .line 267
    .line 268
    invoke-static {v9}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .line 275
    .line 276
    iget-object v7, v7, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v7, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 281
    .line 282
    .line 283
    move-result v10

    .line 284
    const/16 v16, 0x0

    .line 285
    .line 286
    move/from16 v12, v16

    .line 287
    .line 288
    const/4 v11, 0x0

    .line 289
    const/16 v21, 0x0

    .line 290
    .line 291
    :goto_4
    if-ge v11, v10, :cond_c

    .line 292
    .line 293
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v14

    .line 297
    check-cast v14, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 298
    .line 299
    move v15, v11

    .line 300
    iget-object v11, v14, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 301
    .line 302
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    .line 307
    .line 308
    .line 309
    move-result v17

    .line 310
    if-eqz v17, :cond_a

    .line 311
    .line 312
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 313
    .line 314
    .line 315
    move-result v17

    .line 316
    move-object/from16 p0, v4

    .line 317
    .line 318
    float-to-double v3, v12

    .line 319
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 320
    .line 321
    .line 322
    move-result-wide v3

    .line 323
    double-to-float v3, v3

    .line 324
    float-to-int v3, v3

    .line 325
    sub-int v17, v17, v3

    .line 326
    .line 327
    if-gez v17, :cond_9

    .line 328
    .line 329
    const/16 v17, 0x0

    .line 330
    .line 331
    :cond_9
    :goto_5
    move/from16 v3, v17

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_a
    move-object/from16 p0, v4

    .line 335
    .line 336
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 337
    .line 338
    .line 339
    move-result v17

    .line 340
    goto :goto_5

    .line 341
    :goto_6
    const/4 v4, 0x5

    .line 342
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    .line 343
    .line 344
    .line 345
    move-result-wide v2

    .line 346
    iget v4, v6, Landroidx/compose/ui/text/MultiParagraph;->maxLines:I

    .line 347
    .line 348
    sub-int v4, v4, v21

    .line 349
    .line 350
    new-instance v18, Landroidx/compose/ui/text/AndroidParagraph;

    .line 351
    .line 352
    move/from16 v23, v12

    .line 353
    .line 354
    move v12, v4

    .line 355
    move-object v4, v14

    .line 356
    move-wide/from16 v28, v2

    .line 357
    .line 358
    move v2, v10

    .line 359
    move v3, v15

    .line 360
    move-object/from16 v10, v18

    .line 361
    .line 362
    move-wide/from16 v14, v28

    .line 363
    .line 364
    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJ)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v10}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    .line 368
    .line 369
    .line 370
    move-result v11

    .line 371
    add-float v24, v11, v23

    .line 372
    .line 373
    iget-object v11, v10, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 374
    .line 375
    iget v12, v11, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 376
    .line 377
    add-int v22, v21, v12

    .line 378
    .line 379
    new-instance v17, Landroidx/compose/ui/text/ParagraphInfo;

    .line 380
    .line 381
    iget v12, v4, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->startIndex:I

    .line 382
    .line 383
    iget v4, v4, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->endIndex:I

    .line 384
    .line 385
    move/from16 v20, v4

    .line 386
    .line 387
    move/from16 v19, v12

    .line 388
    .line 389
    invoke-direct/range {v17 .. v24}, Landroidx/compose/ui/text/ParagraphInfo;-><init>(Landroidx/compose/ui/text/AndroidParagraph;IIIIFF)V

    .line 390
    .line 391
    .line 392
    move-object/from16 v10, v17

    .line 393
    .line 394
    move/from16 v4, v22

    .line 395
    .line 396
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    iget-boolean v10, v11, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    .line 400
    .line 401
    if-nez v10, :cond_d

    .line 402
    .line 403
    iget v10, v6, Landroidx/compose/ui/text/MultiParagraph;->maxLines:I

    .line 404
    .line 405
    if-ne v4, v10, :cond_b

    .line 406
    .line 407
    iget-object v10, v6, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v10, Lcoil3/ComponentRegistry$Builder;

    .line 410
    .line 411
    iget-object v10, v10, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v10, Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-static {v10}, Lorg/jsoup/Jsoup;->getLastIndex(Ljava/util/List;)I

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    if-eq v3, v10, :cond_b

    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_b
    add-int/lit8 v11, v3, 0x1

    .line 423
    .line 424
    move v10, v2

    .line 425
    move/from16 v21, v4

    .line 426
    .line 427
    move/from16 v12, v24

    .line 428
    .line 429
    move-object/from16 v4, p0

    .line 430
    .line 431
    goto/16 :goto_4

    .line 432
    .line 433
    :cond_c
    move-object/from16 p0, v4

    .line 434
    .line 435
    move/from16 v4, v21

    .line 436
    .line 437
    :cond_d
    :goto_7
    iput v4, v6, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    .line 438
    .line 439
    iput-object v9, v6, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/lang/Object;

    .line 440
    .line 441
    new-instance v2, Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    const/4 v4, 0x0

    .line 455
    :goto_8
    if-ge v4, v3, :cond_10

    .line 456
    .line 457
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    check-cast v7, Landroidx/compose/ui/text/ParagraphInfo;

    .line 462
    .line 463
    iget-object v10, v7, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    .line 464
    .line 465
    iget-object v10, v10, Landroidx/compose/ui/text/AndroidParagraph;->placeholderRects:Ljava/util/List;

    .line 466
    .line 467
    new-instance v11, Ljava/util/ArrayList;

    .line 468
    .line 469
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 470
    .line 471
    .line 472
    move-result v12

    .line 473
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 474
    .line 475
    .line 476
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 477
    .line 478
    .line 479
    move-result v12

    .line 480
    const/4 v13, 0x0

    .line 481
    :goto_9
    if-ge v13, v12, :cond_f

    .line 482
    .line 483
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v14

    .line 487
    check-cast v14, Landroidx/compose/ui/geometry/Rect;

    .line 488
    .line 489
    if-eqz v14, :cond_e

    .line 490
    .line 491
    iget v15, v7, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    .line 492
    .line 493
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    move/from16 v17, v3

    .line 498
    .line 499
    move/from16 v18, v4

    .line 500
    .line 501
    int-to-long v3, v5

    .line 502
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 503
    .line 504
    .line 505
    move-result v5

    .line 506
    move-wide/from16 v19, v3

    .line 507
    .line 508
    int-to-long v3, v5

    .line 509
    const/16 v5, 0x20

    .line 510
    .line 511
    shl-long v19, v19, v5

    .line 512
    .line 513
    const-wide v21, 0xffffffffL

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    and-long v3, v3, v21

    .line 519
    .line 520
    or-long v3, v19, v3

    .line 521
    .line 522
    invoke-virtual {v14, v3, v4}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    goto :goto_a

    .line 527
    :cond_e
    move/from16 v17, v3

    .line 528
    .line 529
    move/from16 v18, v4

    .line 530
    .line 531
    const/4 v3, 0x0

    .line 532
    :goto_a
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    add-int/lit8 v13, v13, 0x1

    .line 536
    .line 537
    move/from16 v3, v17

    .line 538
    .line 539
    move/from16 v4, v18

    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_f
    move/from16 v17, v3

    .line 543
    .line 544
    move/from16 v18, v4

    .line 545
    .line 546
    invoke-static {v11, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 547
    .line 548
    .line 549
    add-int/lit8 v4, v18, 0x1

    .line 550
    .line 551
    goto :goto_8

    .line 552
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    iget-object v4, v6, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v4, Lcoil3/ComponentRegistry$Builder;

    .line 559
    .line 560
    iget-object v4, v4, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 561
    .line 562
    check-cast v4, Ljava/util/List;

    .line 563
    .line 564
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    if-ge v3, v4, :cond_12

    .line 569
    .line 570
    iget-object v3, v6, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v3, Lcoil3/ComponentRegistry$Builder;

    .line 573
    .line 574
    iget-object v3, v3, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v3, Ljava/util/List;

    .line 577
    .line 578
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    sub-int/2addr v3, v4

    .line 587
    new-instance v4, Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 590
    .line 591
    .line 592
    const/4 v5, 0x0

    .line 593
    :goto_b
    const/4 v7, 0x0

    .line 594
    if-ge v5, v3, :cond_11

    .line 595
    .line 596
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    add-int/lit8 v5, v5, 0x1

    .line 600
    .line 601
    goto :goto_b

    .line 602
    :cond_11
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    goto :goto_c

    .line 607
    :cond_12
    const/4 v7, 0x0

    .line 608
    :goto_c
    iput-object v2, v6, Landroidx/compose/ui/text/MultiParagraph;->placeholderRects:Ljava/lang/Object;

    .line 609
    .line 610
    move-object/from16 v2, p0

    .line 611
    .line 612
    iget-wide v2, v2, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->layoutSize:J

    .line 613
    .line 614
    invoke-direct {v8, v0, v6, v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    .line 615
    .line 616
    .line 617
    :goto_d
    if-eqz v8, :cond_13

    .line 618
    .line 619
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-object v5, v8

    .line 623
    goto :goto_e

    .line 624
    :cond_13
    move-object v5, v7

    .line 625
    :goto_e
    if-eqz v5, :cond_14

    .line 626
    .line 627
    const/4 v2, 0x1

    .line 628
    goto :goto_f

    .line 629
    :cond_14
    const/4 v2, 0x0

    .line 630
    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    return-object v0

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
