.class public final Landroidx/compose/ui/text/input/CursorAnchorInfoController;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final androidMatrix:Landroid/graphics/Matrix;

.field public final builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

.field public hasPendingImmediateRequest:Z

.field public includeCharacterBounds:Z

.field public includeEditorBounds:Z

.field public includeInsertionMarker:Z

.field public includeLineBounds:Z

.field public innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

.field public final inputMethodManager:Lcom/caverock/androidsvg/SVG;

.field public final lock:Ljava/lang/Object;

.field public final matrix:[F

.field public monitorEnabled:Z

.field public offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final rootPositionCalculator:Landroidx/compose/ui/platform/AndroidComposeView;

.field public textFieldToRootTransform:Lkotlin/jvm/functions/Function1;

.field public textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

.field public textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Lcom/caverock/androidsvg/SVG;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->rootPositionCalculator:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->inputMethodManager:Lcom/caverock/androidsvg/SVG;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object p1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$stopInput$1;->INSTANCE$2:Landroidx/compose/ui/text/input/TextInputServiceAndroid$stopInput$1;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textFieldToRootTransform:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 25
    .line 26
    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->matrix:[F

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Matrix;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final updateCursorAnchorInfo()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->inputMethodManager:Lcom/caverock/androidsvg/SVG;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lkotlin/Lazy;

    .line 8
    .line 9
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textFieldToRootTransform:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    new-instance v4, Landroidx/compose/ui/graphics/Matrix;

    .line 29
    .line 30
    iget-object v5, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->matrix:[F

    .line 31
    .line 32
    invoke-direct {v4, v5}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->rootPositionCalculator:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 39
    .line 40
    invoke-virtual {v3, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->localToScreen-58bKbWc([F)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    .line 44
    .line 45
    invoke-static {v3, v5}, Landroidx/compose/ui/graphics/ColorKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    .line 46
    .line 47
    .line 48
    iget-object v4, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-wide v5, v4, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 54
    .line 55
    iget-object v7, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v8, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 61
    .line 62
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v9, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object v10, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-boolean v11, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeInsertionMarker:Z

    .line 76
    .line 77
    iget-boolean v12, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeCharacterBounds:Z

    .line 78
    .line 79
    iget-boolean v13, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeEditorBounds:Z

    .line 80
    .line 81
    iget-boolean v14, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->includeLineBounds:Z

    .line 82
    .line 83
    iget-object v15, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 84
    .line 85
    invoke-virtual {v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v15, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 89
    .line 90
    .line 91
    iget-object v3, v4, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    .line 92
    .line 93
    move-object/from16 v22, v2

    .line 94
    .line 95
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v15, v2, v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 104
    .line 105
    .line 106
    if-eqz v11, :cond_8

    .line 107
    .line 108
    if-gez v2, :cond_1

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_1
    invoke-interface {v7, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v8, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    iget v6, v11, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 120
    .line 121
    move/from16 v16, v6

    .line 122
    .line 123
    iget-wide v5, v8, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 124
    .line 125
    const/16 v17, 0x20

    .line 126
    .line 127
    shr-long v5, v5, v17

    .line 128
    .line 129
    long-to-int v5, v5

    .line 130
    int-to-float v5, v5

    .line 131
    const/4 v6, 0x0

    .line 132
    move/from16 v21, v12

    .line 133
    .line 134
    move/from16 v12, v16

    .line 135
    .line 136
    invoke-static {v12, v6, v5}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    iget v6, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 141
    .line 142
    invoke-static {v9, v5, v6}, Landroidx/work/OperationKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    iget v12, v11, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 147
    .line 148
    invoke-static {v9, v5, v12}, Landroidx/work/OperationKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    invoke-virtual {v8, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    move/from16 v16, v5

    .line 157
    .line 158
    sget-object v5, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 159
    .line 160
    if-ne v2, v5, :cond_2

    .line 161
    .line 162
    const/4 v2, 0x1

    .line 163
    goto :goto_0

    .line 164
    :cond_2
    const/4 v2, 0x0

    .line 165
    :goto_0
    if-nez v6, :cond_4

    .line 166
    .line 167
    if-eqz v12, :cond_3

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    const/4 v5, 0x0

    .line 171
    goto :goto_2

    .line 172
    :cond_4
    :goto_1
    const/4 v5, 0x1

    .line 173
    :goto_2
    if-eqz v6, :cond_5

    .line 174
    .line 175
    if-nez v12, :cond_6

    .line 176
    .line 177
    :cond_5
    or-int/lit8 v5, v5, 0x2

    .line 178
    .line 179
    :cond_6
    if-eqz v2, :cond_7

    .line 180
    .line 181
    or-int/lit8 v5, v5, 0x4

    .line 182
    .line 183
    :cond_7
    move/from16 v20, v5

    .line 184
    .line 185
    iget v2, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 186
    .line 187
    iget v5, v11, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 188
    .line 189
    move/from16 v19, v5

    .line 190
    .line 191
    move/from16 v17, v2

    .line 192
    .line 193
    move/from16 v18, v5

    .line 194
    .line 195
    invoke-virtual/range {v15 .. v20}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_8
    :goto_3
    move/from16 v21, v12

    .line 200
    .line 201
    :goto_4
    if-eqz v21, :cond_12

    .line 202
    .line 203
    const/4 v2, -0x1

    .line 204
    if-eqz v3, :cond_9

    .line 205
    .line 206
    iget-wide v5, v3, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 207
    .line 208
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    goto :goto_5

    .line 213
    :cond_9
    move v5, v2

    .line 214
    :goto_5
    if-eqz v3, :cond_a

    .line 215
    .line 216
    iget-wide v2, v3, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 217
    .line 218
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    :cond_a
    if-ltz v5, :cond_12

    .line 223
    .line 224
    if-ge v5, v2, :cond_12

    .line 225
    .line 226
    iget-object v3, v4, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 227
    .line 228
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v15, v5, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 235
    .line 236
    .line 237
    invoke-interface {v7, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    invoke-interface {v7, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    sub-int v6, v4, v3

    .line 246
    .line 247
    mul-int/lit8 v6, v6, 0x4

    .line 248
    .line 249
    new-array v6, v6, [F

    .line 250
    .line 251
    iget-object v11, v8, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 252
    .line 253
    move v12, v5

    .line 254
    invoke-static {v3, v4}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 255
    .line 256
    .line 257
    move-result-wide v4

    .line 258
    invoke-virtual {v11, v4, v5, v6}, Landroidx/compose/ui/text/MultiParagraph;->fillBoundingBoxes-8ffj60Q(J[F)V

    .line 259
    .line 260
    .line 261
    move v5, v12

    .line 262
    :goto_6
    if-ge v5, v2, :cond_12

    .line 263
    .line 264
    invoke-interface {v7, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    sub-int v11, v4, v3

    .line 269
    .line 270
    mul-int/lit8 v11, v11, 0x4

    .line 271
    .line 272
    aget v12, v6, v11

    .line 273
    .line 274
    add-int/lit8 v16, v11, 0x1

    .line 275
    .line 276
    move/from16 v23, v2

    .line 277
    .line 278
    aget v2, v6, v16

    .line 279
    .line 280
    add-int/lit8 v16, v11, 0x2

    .line 281
    .line 282
    move/from16 v24, v3

    .line 283
    .line 284
    aget v3, v6, v16

    .line 285
    .line 286
    add-int/lit8 v11, v11, 0x3

    .line 287
    .line 288
    aget v11, v6, v11

    .line 289
    .line 290
    move/from16 v16, v5

    .line 291
    .line 292
    iget v5, v9, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 293
    .line 294
    cmpg-float v5, v5, v3

    .line 295
    .line 296
    if-gez v5, :cond_b

    .line 297
    .line 298
    const/16 v17, 0x1

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_b
    const/16 v17, 0x0

    .line 302
    .line 303
    :goto_7
    iget v5, v9, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 304
    .line 305
    cmpg-float v5, v12, v5

    .line 306
    .line 307
    if-gez v5, :cond_c

    .line 308
    .line 309
    const/4 v5, 0x1

    .line 310
    goto :goto_8

    .line 311
    :cond_c
    const/4 v5, 0x0

    .line 312
    :goto_8
    and-int v5, v17, v5

    .line 313
    .line 314
    move/from16 v17, v5

    .line 315
    .line 316
    iget v5, v9, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 317
    .line 318
    cmpg-float v5, v5, v11

    .line 319
    .line 320
    if-gez v5, :cond_d

    .line 321
    .line 322
    const/4 v5, 0x1

    .line 323
    goto :goto_9

    .line 324
    :cond_d
    const/4 v5, 0x0

    .line 325
    :goto_9
    and-int v5, v17, v5

    .line 326
    .line 327
    move/from16 v17, v5

    .line 328
    .line 329
    iget v5, v9, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 330
    .line 331
    cmpg-float v5, v2, v5

    .line 332
    .line 333
    if-gez v5, :cond_e

    .line 334
    .line 335
    const/4 v5, 0x1

    .line 336
    goto :goto_a

    .line 337
    :cond_e
    const/4 v5, 0x0

    .line 338
    :goto_a
    and-int v5, v17, v5

    .line 339
    .line 340
    invoke-static {v9, v12, v2}, Landroidx/work/OperationKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 341
    .line 342
    .line 343
    move-result v17

    .line 344
    if-eqz v17, :cond_f

    .line 345
    .line 346
    invoke-static {v9, v3, v11}, Landroidx/work/OperationKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 347
    .line 348
    .line 349
    move-result v17

    .line 350
    if-nez v17, :cond_10

    .line 351
    .line 352
    :cond_f
    or-int/lit8 v5, v5, 0x2

    .line 353
    .line 354
    :cond_10
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    move/from16 v18, v2

    .line 359
    .line 360
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 361
    .line 362
    if-ne v4, v2, :cond_11

    .line 363
    .line 364
    or-int/lit8 v5, v5, 0x4

    .line 365
    .line 366
    :cond_11
    move/from16 v19, v3

    .line 367
    .line 368
    move/from16 v21, v5

    .line 369
    .line 370
    move/from16 v20, v11

    .line 371
    .line 372
    move/from16 v17, v12

    .line 373
    .line 374
    invoke-virtual/range {v15 .. v21}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 375
    .line 376
    .line 377
    add-int/lit8 v5, v16, 0x1

    .line 378
    .line 379
    move/from16 v2, v23

    .line 380
    .line 381
    move/from16 v3, v24

    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 385
    .line 386
    const/16 v3, 0x21

    .line 387
    .line 388
    if-lt v2, v3, :cond_13

    .line 389
    .line 390
    if-eqz v13, :cond_13

    .line 391
    .line 392
    invoke-static {v15, v10}, Lcom/hcaptcha/sdk/HCaptchaCompat;->setEditorBoundsInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/geometry/Rect;)V

    .line 393
    .line 394
    .line 395
    :cond_13
    const/16 v3, 0x22

    .line 396
    .line 397
    if-lt v2, v3, :cond_14

    .line 398
    .line 399
    if-eqz v14, :cond_14

    .line 400
    .line 401
    invoke-static {v15, v8, v9}, Landroidx/core/util/TypedValueCompat$Api34Impl;->addVisibleLineBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;)V

    .line 402
    .line 403
    .line 404
    :cond_14
    invoke-virtual {v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-interface/range {v22 .. v22}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 413
    .line 414
    invoke-virtual {v3, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 415
    .line 416
    .line 417
    const/4 v1, 0x0

    .line 418
    iput-boolean v1, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->hasPendingImmediateRequest:Z

    .line 419
    .line 420
    return-void
.end method
