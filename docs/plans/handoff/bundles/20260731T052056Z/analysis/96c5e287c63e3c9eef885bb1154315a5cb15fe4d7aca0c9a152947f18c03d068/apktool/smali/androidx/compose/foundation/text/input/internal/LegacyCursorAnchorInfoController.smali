.class public final Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;
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

.field public final inputMethodManager:Landroidx/cardview/widget/CardView$1;

.field public final localToScreen:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;

.field public final lock:Ljava/lang/Object;

.field public final matrix:[F

.field public monitorEnabled:Z

.field public offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field public textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

.field public textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;Landroidx/cardview/widget/CardView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->localToScreen:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;

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
    .locals 25

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
    if-eqz v2, :cond_18

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 20
    .line 21
    if-eqz v2, :cond_18

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 24
    .line 25
    if-eqz v2, :cond_18

    .line 26
    .line 27
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 28
    .line 29
    if-eqz v2, :cond_18

    .line 30
    .line 31
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    .line 32
    .line 33
    if-eqz v2, :cond_18

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
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->localToScreen:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;

    .line 47
    .line 48
    iget-object v4, v4, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;->$node:Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 49
    .line 50
    iget-object v4, v4, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;->layoutCoordinates$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 57
    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v4, 0x0

    .line 68
    :goto_0
    if-nez v4, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-interface {v4, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->transformToScreen-58bKbWc([F)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 80
    .line 81
    neg-float v4, v4

    .line 82
    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget v5, v5, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 88
    .line 89
    neg-float v5, v5

    .line 90
    invoke-static {v2, v4, v5}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFF)V

    .line 91
    .line 92
    .line 93
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->androidMatrix:Landroid/graphics/Matrix;

    .line 94
    .line 95
    invoke-static {v4, v2}, Landroidx/compose/ui/graphics/ColorKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    iget-wide v5, v2, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 104
    .line 105
    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object v8, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object v9, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->innerTextFieldBounds:Landroidx/compose/ui/geometry/Rect;

    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object v10, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->decorationBoxBounds:Landroidx/compose/ui/geometry/Rect;

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-boolean v11, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeInsertionMarker:Z

    .line 126
    .line 127
    iget-boolean v12, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeCharacterBounds:Z

    .line 128
    .line 129
    iget-boolean v13, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeEditorBounds:Z

    .line 130
    .line 131
    iget-boolean v14, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->includeLineBounds:Z

    .line 132
    .line 133
    iget-object v15, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->builder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 134
    .line 135
    invoke-virtual {v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v15, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 139
    .line 140
    .line 141
    iget-object v4, v2, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    .line 142
    .line 143
    move-object/from16 v22, v1

    .line 144
    .line 145
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-virtual {v15, v1, v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 154
    .line 155
    .line 156
    if-eqz v11, :cond_b

    .line 157
    .line 158
    if-gez v1, :cond_4

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_4
    invoke-interface {v7, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {v8, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    iget v6, v11, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 170
    .line 171
    move/from16 v16, v6

    .line 172
    .line 173
    iget-wide v5, v8, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 174
    .line 175
    const/16 v17, 0x20

    .line 176
    .line 177
    shr-long v5, v5, v17

    .line 178
    .line 179
    long-to-int v5, v5

    .line 180
    int-to-float v5, v5

    .line 181
    const/4 v6, 0x0

    .line 182
    move/from16 v21, v12

    .line 183
    .line 184
    move/from16 v12, v16

    .line 185
    .line 186
    invoke-static {v12, v6, v5}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    iget v6, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 191
    .line 192
    invoke-static {v9, v5, v6}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    iget v12, v11, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 197
    .line 198
    invoke-static {v9, v5, v12}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    invoke-virtual {v8, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    move/from16 v16, v5

    .line 207
    .line 208
    sget-object v5, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 209
    .line 210
    if-ne v1, v5, :cond_5

    .line 211
    .line 212
    const/4 v1, 0x1

    .line 213
    goto :goto_2

    .line 214
    :cond_5
    const/4 v1, 0x0

    .line 215
    :goto_2
    if-nez v6, :cond_7

    .line 216
    .line 217
    if-eqz v12, :cond_6

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_6
    const/4 v5, 0x0

    .line 221
    goto :goto_4

    .line 222
    :cond_7
    :goto_3
    const/4 v5, 0x1

    .line 223
    :goto_4
    if-eqz v6, :cond_8

    .line 224
    .line 225
    if-nez v12, :cond_9

    .line 226
    .line 227
    :cond_8
    or-int/lit8 v5, v5, 0x2

    .line 228
    .line 229
    :cond_9
    if-eqz v1, :cond_a

    .line 230
    .line 231
    or-int/lit8 v5, v5, 0x4

    .line 232
    .line 233
    :cond_a
    move/from16 v20, v5

    .line 234
    .line 235
    iget v1, v11, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 236
    .line 237
    iget v5, v11, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 238
    .line 239
    move/from16 v19, v5

    .line 240
    .line 241
    move/from16 v17, v1

    .line 242
    .line 243
    move/from16 v18, v5

    .line 244
    .line 245
    invoke-virtual/range {v15 .. v20}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_b
    :goto_5
    move/from16 v21, v12

    .line 250
    .line 251
    :goto_6
    if-eqz v21, :cond_15

    .line 252
    .line 253
    const/4 v1, -0x1

    .line 254
    if-eqz v4, :cond_c

    .line 255
    .line 256
    iget-wide v5, v4, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 257
    .line 258
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    goto :goto_7

    .line 263
    :cond_c
    move v5, v1

    .line 264
    :goto_7
    if-eqz v4, :cond_d

    .line 265
    .line 266
    iget-wide v11, v4, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 267
    .line 268
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    :cond_d
    if-ltz v5, :cond_15

    .line 273
    .line 274
    if-ge v5, v1, :cond_15

    .line 275
    .line 276
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 277
    .line 278
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v15, v5, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 285
    .line 286
    .line 287
    invoke-interface {v7, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    invoke-interface {v7, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    sub-int v6, v4, v2

    .line 296
    .line 297
    mul-int/lit8 v6, v6, 0x4

    .line 298
    .line 299
    new-array v6, v6, [F

    .line 300
    .line 301
    iget-object v11, v8, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 302
    .line 303
    move v12, v5

    .line 304
    invoke-static {v2, v4}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 305
    .line 306
    .line 307
    move-result-wide v4

    .line 308
    invoke-virtual {v11, v4, v5, v6}, Landroidx/compose/ui/text/MultiParagraph;->fillBoundingBoxes-8ffj60Q(J[F)V

    .line 309
    .line 310
    .line 311
    move v5, v12

    .line 312
    :goto_8
    if-ge v5, v1, :cond_15

    .line 313
    .line 314
    invoke-interface {v7, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    sub-int v11, v4, v2

    .line 319
    .line 320
    mul-int/lit8 v11, v11, 0x4

    .line 321
    .line 322
    aget v12, v6, v11

    .line 323
    .line 324
    add-int/lit8 v16, v11, 0x1

    .line 325
    .line 326
    move/from16 v23, v1

    .line 327
    .line 328
    aget v1, v6, v16

    .line 329
    .line 330
    add-int/lit8 v16, v11, 0x2

    .line 331
    .line 332
    move/from16 v24, v2

    .line 333
    .line 334
    aget v2, v6, v16

    .line 335
    .line 336
    add-int/lit8 v11, v11, 0x3

    .line 337
    .line 338
    aget v11, v6, v11

    .line 339
    .line 340
    move/from16 v16, v5

    .line 341
    .line 342
    iget v5, v9, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 343
    .line 344
    cmpg-float v5, v5, v2

    .line 345
    .line 346
    if-gez v5, :cond_e

    .line 347
    .line 348
    const/16 v17, 0x1

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_e
    const/16 v17, 0x0

    .line 352
    .line 353
    :goto_9
    iget v5, v9, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 354
    .line 355
    cmpg-float v5, v12, v5

    .line 356
    .line 357
    if-gez v5, :cond_f

    .line 358
    .line 359
    const/4 v5, 0x1

    .line 360
    goto :goto_a

    .line 361
    :cond_f
    const/4 v5, 0x0

    .line 362
    :goto_a
    and-int v5, v17, v5

    .line 363
    .line 364
    move/from16 v17, v5

    .line 365
    .line 366
    iget v5, v9, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 367
    .line 368
    cmpg-float v5, v5, v11

    .line 369
    .line 370
    if-gez v5, :cond_10

    .line 371
    .line 372
    const/4 v5, 0x1

    .line 373
    goto :goto_b

    .line 374
    :cond_10
    const/4 v5, 0x0

    .line 375
    :goto_b
    and-int v5, v17, v5

    .line 376
    .line 377
    move/from16 v17, v5

    .line 378
    .line 379
    iget v5, v9, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 380
    .line 381
    cmpg-float v5, v1, v5

    .line 382
    .line 383
    if-gez v5, :cond_11

    .line 384
    .line 385
    const/4 v5, 0x1

    .line 386
    goto :goto_c

    .line 387
    :cond_11
    const/4 v5, 0x0

    .line 388
    :goto_c
    and-int v5, v17, v5

    .line 389
    .line 390
    invoke-static {v9, v12, v1}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 391
    .line 392
    .line 393
    move-result v17

    .line 394
    if-eqz v17, :cond_12

    .line 395
    .line 396
    invoke-static {v9, v2, v11}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 397
    .line 398
    .line 399
    move-result v17

    .line 400
    if-nez v17, :cond_13

    .line 401
    .line 402
    :cond_12
    or-int/lit8 v5, v5, 0x2

    .line 403
    .line 404
    :cond_13
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    move/from16 v18, v1

    .line 409
    .line 410
    sget-object v1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 411
    .line 412
    if-ne v4, v1, :cond_14

    .line 413
    .line 414
    or-int/lit8 v5, v5, 0x4

    .line 415
    .line 416
    :cond_14
    move/from16 v19, v2

    .line 417
    .line 418
    move/from16 v21, v5

    .line 419
    .line 420
    move/from16 v20, v11

    .line 421
    .line 422
    move/from16 v17, v12

    .line 423
    .line 424
    invoke-virtual/range {v15 .. v21}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 425
    .line 426
    .line 427
    add-int/lit8 v5, v16, 0x1

    .line 428
    .line 429
    move/from16 v1, v23

    .line 430
    .line 431
    move/from16 v2, v24

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 435
    .line 436
    const/16 v2, 0x21

    .line 437
    .line 438
    if-lt v1, v2, :cond_16

    .line 439
    .line 440
    if-eqz v13, :cond_16

    .line 441
    .line 442
    invoke-static {v15, v10}, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;->setEditorBoundsInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/geometry/Rect;)V

    .line 443
    .line 444
    .line 445
    :cond_16
    const/16 v2, 0x22

    .line 446
    .line 447
    if-lt v1, v2, :cond_17

    .line 448
    .line 449
    if-eqz v14, :cond_17

    .line 450
    .line 451
    invoke-static {v15, v8, v9}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->addVisibleLineBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/geometry/Rect;)V

    .line 452
    .line 453
    .line 454
    :cond_17
    invoke-virtual {v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual/range {v22 .. v22}, Landroidx/cardview/widget/CardView$1;->getImm()Landroid/view/inputmethod/InputMethodManager;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 463
    .line 464
    .line 465
    const/4 v1, 0x0

    .line 466
    iput-boolean v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->hasPendingImmediateRequest:Z

    .line 467
    .line 468
    :cond_18
    :goto_d
    return-void
.end method
