.class public final Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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

.field public final inputMethodManager:Landroidx/cardview/widget/CardView$1;

.field public final localToScreen:Lkotlinx/datetime/internal/format/SignedFormatStructure$formatter$1;

.field public final lock:Ljava/lang/Object;

.field public final matrix:[F

.field public monitorEnabled:Z

.field public offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field public textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

.field public textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method public constructor <init>(Lkotlinx/datetime/internal/format/SignedFormatStructure$formatter$1;Landroidx/cardview/widget/CardView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->localToScreen:Lkotlinx/datetime/internal/format/SignedFormatStructure$formatter$1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->inputMethodManager:Landroidx/cardview/widget/CardView$1;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    .line 27
    .line 28
    new-instance p1, Landroid/graphics/Matrix;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final updateCursorAnchorInfo()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->inputMethodManager:Landroidx/cardview/widget/CardView$1;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$1;->getImm()Landroid/view/inputmethod/InputMethodManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_19

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 20
    .line 21
    if-eqz v2, :cond_19

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 24
    .line 25
    if-eqz v2, :cond_19

    .line 26
    .line 27
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 28
    .line 29
    if-eqz v2, :cond_19

    .line 30
    .line 31
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    .line 32
    .line 33
    if-eqz v2, :cond_19

    .line 34
    .line 35
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto/16 :goto_d

    .line 40
    .line 41
    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->matrix:[F

    .line 42
    .line 43
    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->localToScreen:Lkotlinx/datetime/internal/format/SignedFormatStructure$formatter$1;

    .line 47
    .line 48
    iget-object v4, v4, Lkotlinx/datetime/internal/format/SignedFormatStructure$formatter$1;->this$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 51
    .line 52
    iget-object v4, v4, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;->layoutCoordinates$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached$1()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v4, 0x0

    .line 70
    :goto_0
    if-nez v4, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-interface {v4, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->transformToScreen-58bKbWc([F)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 82
    .line 83
    neg-float v4, v4

    .line 84
    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget v5, v5, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 90
    .line 91
    neg-float v5, v5

    .line 92
    invoke-static {v2, v4, v5}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFF)V

    .line 93
    .line 94
    .line 95
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    .line 96
    .line 97
    invoke-static {v4, v2}, Landroidx/compose/ui/graphics/ColorKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    .line 98
    .line 99
    .line 100
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-wide v5, v2, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 106
    .line 107
    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v8, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v9, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    .line 118
    .line 119
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iget-object v10, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 123
    .line 124
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-boolean v11, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeInsertionMarker:Z

    .line 128
    .line 129
    iget-boolean v12, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeCharacterBounds:Z

    .line 130
    .line 131
    iget-boolean v13, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeEditorBounds:Z

    .line 132
    .line 133
    iget-boolean v14, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeLineBounds:Z

    .line 134
    .line 135
    iget-object v15, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 136
    .line 137
    invoke-virtual {v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v15, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 141
    .line 142
    .line 143
    iget-object v4, v2, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    .line 144
    .line 145
    move-object/from16 v22, v1

    .line 146
    .line 147
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    invoke-virtual {v15, v1, v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 156
    .line 157
    .line 158
    sget-object v5, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 159
    .line 160
    const/16 v23, 0x1

    .line 161
    .line 162
    if-eqz v11, :cond_b

    .line 163
    .line 164
    if-gez v1, :cond_4

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_4
    invoke-interface {v7, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v8, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    iget v6, v11, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 176
    .line 177
    move/from16 v21, v12

    .line 178
    .line 179
    move/from16 v24, v13

    .line 180
    .line 181
    iget-wide v12, v8, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 182
    .line 183
    const/16 v16, 0x20

    .line 184
    .line 185
    shr-long v12, v12, v16

    .line 186
    .line 187
    long-to-int v12, v12

    .line 188
    int-to-float v12, v12

    .line 189
    const/4 v13, 0x0

    .line 190
    invoke-static {v6, v13, v12}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    iget v12, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 195
    .line 196
    invoke-static {v9, v6, v12}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    iget v13, v11, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 201
    .line 202
    invoke-static {v9, v6, v13}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    invoke-virtual {v8, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-ne v1, v5, :cond_5

    .line 211
    .line 212
    move/from16 v1, v23

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_5
    const/4 v1, 0x0

    .line 216
    :goto_2
    if-nez v12, :cond_7

    .line 217
    .line 218
    if-eqz v13, :cond_6

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    const/16 v16, 0x0

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_7
    :goto_3
    move/from16 v16, v23

    .line 225
    .line 226
    :goto_4
    if-eqz v12, :cond_8

    .line 227
    .line 228
    if-nez v13, :cond_9

    .line 229
    .line 230
    :cond_8
    or-int/lit8 v16, v16, 0x2

    .line 231
    .line 232
    :cond_9
    if-eqz v1, :cond_a

    .line 233
    .line 234
    or-int/lit8 v16, v16, 0x4

    .line 235
    .line 236
    :cond_a
    move/from16 v20, v16

    .line 237
    .line 238
    iget v1, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 239
    .line 240
    iget v11, v11, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 241
    .line 242
    move/from16 v19, v11

    .line 243
    .line 244
    move/from16 v17, v1

    .line 245
    .line 246
    move/from16 v16, v6

    .line 247
    .line 248
    move/from16 v18, v11

    .line 249
    .line 250
    invoke-virtual/range {v15 .. v20}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_b
    :goto_5
    move/from16 v21, v12

    .line 255
    .line 256
    move/from16 v24, v13

    .line 257
    .line 258
    :goto_6
    if-eqz v21, :cond_15

    .line 259
    .line 260
    const/4 v1, -0x1

    .line 261
    if-eqz v4, :cond_c

    .line 262
    .line 263
    iget-wide v11, v4, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 264
    .line 265
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    goto :goto_7

    .line 270
    :cond_c
    move v6, v1

    .line 271
    :goto_7
    if-eqz v4, :cond_d

    .line 272
    .line 273
    iget-wide v11, v4, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 274
    .line 275
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    :cond_d
    if-ltz v6, :cond_15

    .line 280
    .line 281
    if-ge v6, v1, :cond_15

    .line 282
    .line 283
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 284
    .line 285
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v15, v6, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 292
    .line 293
    .line 294
    invoke-interface {v7, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-interface {v7, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    sub-int v11, v4, v2

    .line 303
    .line 304
    mul-int/lit8 v11, v11, 0x4

    .line 305
    .line 306
    new-array v11, v11, [F

    .line 307
    .line 308
    iget-object v12, v8, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 309
    .line 310
    move/from16 v25, v14

    .line 311
    .line 312
    invoke-static {v2, v4}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 313
    .line 314
    .line 315
    move-result-wide v13

    .line 316
    invoke-virtual {v12, v13, v14, v11}, Landroidx/compose/ui/text/MultiParagraph;->fillBoundingBoxes-8ffj60Q(J[F)V

    .line 317
    .line 318
    .line 319
    :goto_8
    if-ge v6, v1, :cond_16

    .line 320
    .line 321
    invoke-interface {v7, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    sub-int v12, v4, v2

    .line 326
    .line 327
    mul-int/lit8 v12, v12, 0x4

    .line 328
    .line 329
    aget v13, v11, v12

    .line 330
    .line 331
    add-int/lit8 v14, v12, 0x1

    .line 332
    .line 333
    aget v14, v11, v14

    .line 334
    .line 335
    add-int/lit8 v16, v12, 0x2

    .line 336
    .line 337
    move/from16 v26, v1

    .line 338
    .line 339
    aget v1, v11, v16

    .line 340
    .line 341
    add-int/lit8 v12, v12, 0x3

    .line 342
    .line 343
    aget v12, v11, v12

    .line 344
    .line 345
    move/from16 v27, v2

    .line 346
    .line 347
    iget v2, v9, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 348
    .line 349
    cmpg-float v2, v2, v1

    .line 350
    .line 351
    if-gez v2, :cond_e

    .line 352
    .line 353
    move/from16 v16, v23

    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_e
    const/16 v16, 0x0

    .line 357
    .line 358
    :goto_9
    iget v2, v9, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 359
    .line 360
    cmpg-float v2, v13, v2

    .line 361
    .line 362
    if-gez v2, :cond_f

    .line 363
    .line 364
    move/from16 v2, v23

    .line 365
    .line 366
    goto :goto_a

    .line 367
    :cond_f
    const/4 v2, 0x0

    .line 368
    :goto_a
    and-int v2, v16, v2

    .line 369
    .line 370
    move/from16 v16, v2

    .line 371
    .line 372
    iget v2, v9, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 373
    .line 374
    cmpg-float v2, v2, v12

    .line 375
    .line 376
    if-gez v2, :cond_10

    .line 377
    .line 378
    move/from16 v2, v23

    .line 379
    .line 380
    goto :goto_b

    .line 381
    :cond_10
    const/4 v2, 0x0

    .line 382
    :goto_b
    and-int v2, v16, v2

    .line 383
    .line 384
    move/from16 v16, v2

    .line 385
    .line 386
    iget v2, v9, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 387
    .line 388
    cmpg-float v2, v14, v2

    .line 389
    .line 390
    if-gez v2, :cond_11

    .line 391
    .line 392
    move/from16 v2, v23

    .line 393
    .line 394
    goto :goto_c

    .line 395
    :cond_11
    const/4 v2, 0x0

    .line 396
    :goto_c
    and-int v2, v16, v2

    .line 397
    .line 398
    invoke-static {v9, v13, v14}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 399
    .line 400
    .line 401
    move-result v16

    .line 402
    if-eqz v16, :cond_12

    .line 403
    .line 404
    invoke-static {v9, v1, v12}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 405
    .line 406
    .line 407
    move-result v16

    .line 408
    if-nez v16, :cond_13

    .line 409
    .line 410
    :cond_12
    or-int/lit8 v2, v2, 0x2

    .line 411
    .line 412
    :cond_13
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    if-ne v4, v5, :cond_14

    .line 417
    .line 418
    or-int/lit8 v2, v2, 0x4

    .line 419
    .line 420
    :cond_14
    move/from16 v19, v1

    .line 421
    .line 422
    move/from16 v21, v2

    .line 423
    .line 424
    move/from16 v16, v6

    .line 425
    .line 426
    move/from16 v20, v12

    .line 427
    .line 428
    move/from16 v17, v13

    .line 429
    .line 430
    move/from16 v18, v14

    .line 431
    .line 432
    invoke-virtual/range {v15 .. v21}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 433
    .line 434
    .line 435
    add-int/lit8 v6, v16, 0x1

    .line 436
    .line 437
    move/from16 v1, v26

    .line 438
    .line 439
    move/from16 v2, v27

    .line 440
    .line 441
    goto :goto_8

    .line 442
    :cond_15
    move/from16 v25, v14

    .line 443
    .line 444
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 445
    .line 446
    const/16 v2, 0x21

    .line 447
    .line 448
    if-lt v1, v2, :cond_17

    .line 449
    .line 450
    if-eqz v24, :cond_17

    .line 451
    .line 452
    invoke-static {v15, v10}, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;->setEditorBoundsInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/geometry/Rect;)V

    .line 453
    .line 454
    .line 455
    :cond_17
    const/16 v2, 0x22

    .line 456
    .line 457
    if-lt v1, v2, :cond_18

    .line 458
    .line 459
    if-eqz v25, :cond_18

    .line 460
    .line 461
    invoke-static {v15, v8, v9}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->addVisibleLineBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;)V

    .line 462
    .line 463
    .line 464
    :cond_18
    invoke-virtual {v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-virtual/range {v22 .. v22}, Landroidx/cardview/widget/CardView$1;->getImm()Landroid/view/inputmethod/InputMethodManager;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 473
    .line 474
    .line 475
    const/4 v1, 0x0

    .line 476
    iput-boolean v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->hasPendingImmediateRequest:Z

    .line 477
    .line 478
    :cond_19
    :goto_d
    return-void
.end method
