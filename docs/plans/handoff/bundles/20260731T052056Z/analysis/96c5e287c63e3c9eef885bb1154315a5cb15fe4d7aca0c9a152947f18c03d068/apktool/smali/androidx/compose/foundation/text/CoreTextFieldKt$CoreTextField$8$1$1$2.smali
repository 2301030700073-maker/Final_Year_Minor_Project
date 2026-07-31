.class public final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final synthetic $density:Landroidx/compose/ui/unit/Density;

.field public final synthetic $maxLines:I

.field public final synthetic $offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic $onTextLayout:Lkotlin/jvm/functions/Function1;

.field public final synthetic $state:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$density:Landroidx/compose/ui/unit/Density;

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$maxLines:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$maxIntrinsicHeight(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/TextDelegate;->layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lokhttp3/Request$Builder;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getMaxIntrinsicWidth()F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextKt;->ceilToIntPx(F)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_0
    const-string p0, "layoutIntrinsics must be called first"

    .line 30
    .line 31
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v13, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    :try_start_0
    invoke-virtual {v13}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 22
    .line 23
    .line 24
    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    if-eqz v15, :cond_1

    .line 29
    .line 30
    iget-object v1, v15, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_1
    iget-object v2, v13, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 35
    .line 36
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    iget-boolean v3, v2, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 41
    .line 42
    const v4, 0x7fffffff

    .line 43
    .line 44
    .line 45
    const-wide v16, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const/16 v18, 0x20

    .line 51
    .line 52
    if-eqz v1, :cond_7

    .line 53
    .line 54
    iget-object v7, v1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 55
    .line 56
    iget-object v8, v1, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 57
    .line 58
    iget-object v10, v2, Landroidx/compose/foundation/text/TextDelegate;->text:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString;

    .line 61
    .line 62
    iget-object v11, v2, Landroidx/compose/foundation/text/TextDelegate;->style:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v11, Landroidx/compose/ui/text/TextStyle;

    .line 65
    .line 66
    iget-object v12, v2, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v12, Ljava/util/List;

    .line 69
    .line 70
    iget-object v6, v2, Landroidx/compose/foundation/text/TextDelegate;->density:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 73
    .line 74
    const/16 v19, 0x0

    .line 75
    .line 76
    iget-object v14, v2, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v14, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 79
    .line 80
    iget-object v5, v7, Landroidx/compose/ui/text/MultiParagraph;->intrinsics:Lokhttp3/Request$Builder;

    .line 81
    .line 82
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->getHasStaleResolvedFonts()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    move-wide/from16 v11, p3

    .line 89
    .line 90
    move-object v14, v1

    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_2
    iget-object v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 94
    .line 95
    move-object/from16 v21, v1

    .line 96
    .line 97
    iget-wide v0, v8, Landroidx/compose/ui/text/TextLayoutInput;->constraints:J

    .line 98
    .line 99
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_6

    .line 104
    .line 105
    iget-object v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->style:Landroidx/compose/ui/text/TextStyle;

    .line 106
    .line 107
    invoke-virtual {v5, v11}, Landroidx/compose/ui/text/TextStyle;->hasSameLayoutAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_6

    .line 112
    .line 113
    iget-object v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->placeholders:Ljava/util/List;

    .line 114
    .line 115
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_6

    .line 120
    .line 121
    iget v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->maxLines:I

    .line 122
    .line 123
    if-ne v5, v4, :cond_6

    .line 124
    .line 125
    iget-boolean v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->softWrap:Z

    .line 126
    .line 127
    if-ne v5, v3, :cond_6

    .line 128
    .line 129
    iget v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->overflow:I

    .line 130
    .line 131
    const/4 v10, 0x1

    .line 132
    if-ne v5, v10, :cond_6

    .line 133
    .line 134
    iget-object v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->density:Landroidx/compose/ui/unit/Density;

    .line 135
    .line 136
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    iget-object v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 143
    .line 144
    if-ne v5, v9, :cond_6

    .line 145
    .line 146
    iget-object v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 147
    .line 148
    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_3

    .line 153
    .line 154
    goto/16 :goto_3

    .line 155
    .line 156
    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eq v5, v6, :cond_4

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    if-nez v3, :cond_5

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-ne v5, v6, :cond_6

    .line 179
    .line 180
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-ne v5, v0, :cond_6

    .line 189
    .line 190
    :goto_2
    new-instance v1, Landroidx/compose/ui/text/TextLayoutInput;

    .line 191
    .line 192
    iget-object v0, v8, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 193
    .line 194
    iget-object v2, v2, Landroidx/compose/foundation/text/TextDelegate;->style:Ljava/lang/Object;

    .line 195
    .line 196
    move-object v3, v2

    .line 197
    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    .line 198
    .line 199
    iget-object v4, v8, Landroidx/compose/ui/text/TextLayoutInput;->placeholders:Ljava/util/List;

    .line 200
    .line 201
    iget v5, v8, Landroidx/compose/ui/text/TextLayoutInput;->maxLines:I

    .line 202
    .line 203
    iget-boolean v6, v8, Landroidx/compose/ui/text/TextLayoutInput;->softWrap:Z

    .line 204
    .line 205
    move-object v2, v7

    .line 206
    iget v7, v8, Landroidx/compose/ui/text/TextLayoutInput;->overflow:I

    .line 207
    .line 208
    iget-object v9, v8, Landroidx/compose/ui/text/TextLayoutInput;->density:Landroidx/compose/ui/unit/Density;

    .line 209
    .line 210
    move-object v11, v9

    .line 211
    iget-object v9, v8, Landroidx/compose/ui/text/TextLayoutInput;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 212
    .line 213
    iget-object v8, v8, Landroidx/compose/ui/text/TextLayoutInput;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 214
    .line 215
    move-object v10, v2

    .line 216
    move-object v2, v0

    .line 217
    move-object v0, v10

    .line 218
    move-object v10, v8

    .line 219
    move-object v8, v11

    .line 220
    move-object/from16 v14, v21

    .line 221
    .line 222
    move-wide/from16 v11, p3

    .line 223
    .line 224
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V

    .line 225
    .line 226
    .line 227
    iget v2, v0, Landroidx/compose/ui/text/MultiParagraph;->width:F

    .line 228
    .line 229
    invoke-static {v2}, Landroidx/compose/foundation/text/BasicTextKt;->ceilToIntPx(F)I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    iget v3, v0, Landroidx/compose/ui/text/MultiParagraph;->height:F

    .line 234
    .line 235
    invoke-static {v3}, Landroidx/compose/foundation/text/BasicTextKt;->ceilToIntPx(F)I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    int-to-long v4, v2

    .line 240
    shl-long v4, v4, v18

    .line 241
    .line 242
    int-to-long v2, v3

    .line 243
    and-long v2, v2, v16

    .line 244
    .line 245
    or-long/2addr v2, v4

    .line 246
    invoke-static {v11, v12, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    .line 247
    .line 248
    .line 249
    move-result-wide v2

    .line 250
    new-instance v4, Landroidx/compose/ui/text/TextLayoutResult;

    .line 251
    .line 252
    invoke-direct {v4, v1, v0, v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    .line 253
    .line 254
    .line 255
    move-object/from16 v24, v13

    .line 256
    .line 257
    move-object/from16 v25, v14

    .line 258
    .line 259
    move-object/from16 v20, v15

    .line 260
    .line 261
    goto/16 :goto_7

    .line 262
    .line 263
    :cond_6
    :goto_3
    move-wide/from16 v11, p3

    .line 264
    .line 265
    move-object/from16 v14, v21

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_7
    move-wide/from16 v11, p3

    .line 269
    .line 270
    move-object v14, v1

    .line 271
    const/16 v19, 0x0

    .line 272
    .line 273
    :goto_4
    invoke-virtual {v2, v9}, Landroidx/compose/foundation/text/TextDelegate;->layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-nez v3, :cond_8

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_8
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_9

    .line 288
    .line 289
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    :cond_9
    :goto_5
    const-string v1, "layoutIntrinsics must be called first"

    .line 294
    .line 295
    if-ne v0, v4, :cond_a

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_a
    iget-object v3, v2, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v3, Lokhttp3/Request$Builder;

    .line 301
    .line 302
    if-eqz v3, :cond_f

    .line 303
    .line 304
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->getMaxIntrinsicWidth()F

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    invoke-static {v3}, Landroidx/compose/foundation/text/BasicTextKt;->ceilToIntPx(F)I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    invoke-static {v3, v0, v4}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    :goto_6
    new-instance v22, Landroidx/compose/ui/text/MultiParagraph;

    .line 317
    .line 318
    iget-object v0, v2, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Ljava/lang/Object;

    .line 319
    .line 320
    move-object/from16 v23, v0

    .line 321
    .line 322
    check-cast v23, Lokhttp3/Request$Builder;

    .line 323
    .line 324
    if-eqz v23, :cond_e

    .line 325
    .line 326
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    const/4 v1, 0x0

    .line 331
    invoke-static {v1, v4, v1, v0}, Lkotlin/text/UStringsKt;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    .line 332
    .line 333
    .line 334
    move-result-wide v24

    .line 335
    const/16 v27, 0x1

    .line 336
    .line 337
    const v26, 0x7fffffff

    .line 338
    .line 339
    .line 340
    invoke-direct/range {v22 .. v27}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Lokhttp3/Request$Builder;JII)V

    .line 341
    .line 342
    .line 343
    move-object/from16 v0, v22

    .line 344
    .line 345
    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph;->width:F

    .line 346
    .line 347
    invoke-static {v1}, Landroidx/compose/foundation/text/BasicTextKt;->ceilToIntPx(F)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    iget v3, v0, Landroidx/compose/ui/text/MultiParagraph;->height:F

    .line 352
    .line 353
    invoke-static {v3}, Landroidx/compose/foundation/text/BasicTextKt;->ceilToIntPx(F)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    int-to-long v4, v1

    .line 358
    shl-long v4, v4, v18

    .line 359
    .line 360
    int-to-long v6, v3

    .line 361
    and-long v6, v6, v16

    .line 362
    .line 363
    or-long/2addr v4, v6

    .line 364
    invoke-static {v11, v12, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    .line 365
    .line 366
    .line 367
    move-result-wide v3

    .line 368
    new-instance v1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 369
    .line 370
    move-object v5, v1

    .line 371
    new-instance v1, Landroidx/compose/ui/text/TextLayoutInput;

    .line 372
    .line 373
    iget-object v6, v2, Landroidx/compose/foundation/text/TextDelegate;->text:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString;

    .line 376
    .line 377
    iget-object v7, v2, Landroidx/compose/foundation/text/TextDelegate;->style:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v7, Landroidx/compose/ui/text/TextStyle;

    .line 380
    .line 381
    iget-object v8, v2, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v8, Ljava/util/List;

    .line 384
    .line 385
    move-object v10, v6

    .line 386
    iget-boolean v6, v2, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 387
    .line 388
    move-object/from16 v20, v1

    .line 389
    .line 390
    iget-object v1, v2, Landroidx/compose/foundation/text/TextDelegate;->density:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 393
    .line 394
    iget-object v2, v2, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v2, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 397
    .line 398
    move-object/from16 v21, v5

    .line 399
    .line 400
    const v5, 0x7fffffff

    .line 401
    .line 402
    .line 403
    move-wide/from16 v22, v3

    .line 404
    .line 405
    move-object v3, v7

    .line 406
    const/4 v7, 0x1

    .line 407
    move-object v4, v10

    .line 408
    move-object v10, v2

    .line 409
    move-object v2, v4

    .line 410
    move-object v4, v8

    .line 411
    move-object/from16 v24, v13

    .line 412
    .line 413
    move-object/from16 v25, v14

    .line 414
    .line 415
    move-wide/from16 v13, v22

    .line 416
    .line 417
    move-object v8, v1

    .line 418
    move-object/from16 v1, v20

    .line 419
    .line 420
    move-object/from16 v20, v15

    .line 421
    .line 422
    move-object/from16 v15, v21

    .line 423
    .line 424
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V

    .line 425
    .line 426
    .line 427
    invoke-direct {v15, v1, v0, v13, v14}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    .line 428
    .line 429
    .line 430
    move-object v4, v15

    .line 431
    :goto_7
    iget-wide v0, v4, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 432
    .line 433
    shr-long v2, v0, v18

    .line 434
    .line 435
    long-to-int v2, v2

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    and-long v0, v0, v16

    .line 441
    .line 442
    long-to-int v0, v0

    .line 443
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    move-object/from16 v14, v25

    .line 456
    .line 457
    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-nez v2, :cond_c

    .line 462
    .line 463
    new-instance v2, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 464
    .line 465
    if-eqz v20, :cond_b

    .line 466
    .line 467
    move-object/from16 v3, v20

    .line 468
    .line 469
    iget-object v14, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->decorationBoxCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_b
    move-object/from16 v14, v19

    .line 473
    .line 474
    :goto_8
    invoke-direct {v2, v14, v4}, Landroidx/compose/foundation/text/TextLayoutResultProxy;-><init>(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 475
    .line 476
    .line 477
    move-object/from16 v3, v24

    .line 478
    .line 479
    iget-object v5, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->layoutResultState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 480
    .line 481
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    const/4 v2, 0x0

    .line 485
    iput-boolean v2, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->isLayoutResultStale:Z

    .line 486
    .line 487
    move-object/from16 v5, p0

    .line 488
    .line 489
    iget-object v6, v5, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    .line 490
    .line 491
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    iget-object v6, v5, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 495
    .line 496
    iget-object v7, v5, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 497
    .line 498
    invoke-static {v3, v6, v7}, Landroidx/compose/foundation/text/BasicTextKt;->notifyFocusedRect(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 499
    .line 500
    .line 501
    goto :goto_9

    .line 502
    :cond_c
    move-object/from16 v5, p0

    .line 503
    .line 504
    move-object/from16 v3, v24

    .line 505
    .line 506
    const/4 v2, 0x0

    .line 507
    :goto_9
    iget v6, v5, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$maxLines:I

    .line 508
    .line 509
    const/4 v10, 0x1

    .line 510
    if-ne v6, v10, :cond_d

    .line 511
    .line 512
    iget-object v6, v4, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 513
    .line 514
    invoke-virtual {v6, v2}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    .line 515
    .line 516
    .line 517
    move-result v6

    .line 518
    invoke-static {v6}, Landroidx/compose/foundation/text/BasicTextKt;->ceilToIntPx(F)I

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    goto :goto_a

    .line 523
    :cond_d
    const/4 v6, 0x0

    .line 524
    :goto_a
    iget-object v2, v5, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;->$density:Landroidx/compose/ui/unit/Density;

    .line 525
    .line 526
    invoke-interface {v2, v6}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    iget-object v3, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->minHeightForSingleLineField$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 531
    .line 532
    new-instance v5, Landroidx/compose/ui/unit/Dp;

    .line 533
    .line 534
    invoke-direct {v5, v2}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    sget-object v2, Landroidx/compose/ui/layout/AlignmentLineKt;->FirstBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 541
    .line 542
    iget v3, v4, Landroidx/compose/ui/text/TextLayoutResult;->firstBaseline:F

    .line 543
    .line 544
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    new-instance v5, Lkotlin/Pair;

    .line 553
    .line 554
    invoke-direct {v5, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    sget-object v2, Landroidx/compose/ui/layout/AlignmentLineKt;->LastBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 558
    .line 559
    iget v3, v4, Landroidx/compose/ui/text/TextLayoutResult;->lastBaseline:F

    .line 560
    .line 561
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    new-instance v4, Lkotlin/Pair;

    .line 570
    .line 571
    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    const/4 v2, 0x2

    .line 575
    new-array v2, v2, [Lkotlin/Pair;

    .line 576
    .line 577
    const/4 v3, 0x0

    .line 578
    aput-object v5, v2, v3

    .line 579
    .line 580
    aput-object v4, v2, v10

    .line 581
    .line 582
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    new-instance v3, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 587
    .line 588
    const/16 v4, 0x19

    .line 589
    .line 590
    invoke-direct {v3, v4}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 591
    .line 592
    .line 593
    move-object/from16 v4, p1

    .line 594
    .line 595
    invoke-interface {v4, v1, v0, v2, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    return-object v0

    .line 600
    :cond_e
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    return-object v19

    .line 604
    :cond_f
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    return-object v19

    .line 608
    :catchall_0
    move-exception v0

    .line 609
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 610
    .line 611
    .line 612
    throw v0
.end method

.method public final synthetic minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$minIntrinsicHeight(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$minIntrinsicWidth(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
