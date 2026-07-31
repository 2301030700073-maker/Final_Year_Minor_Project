.class public final Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $bodyLarge:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic $bodySmall:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic $label:Lkotlin/jvm/functions/Function3;

.field public final synthetic $labelContentColor:Landroidx/compose/runtime/State;

.field public final synthetic $labelProgress:Landroidx/compose/runtime/State;

.field public final synthetic $labelScope:Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

.field public final synthetic $labelTextStyleColor:Landroidx/compose/runtime/State;

.field public final synthetic $overrideLabelTextStyleColor:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;ZLandroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelProgress:Landroidx/compose/runtime/State;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelContentColor:Landroidx/compose/runtime/State;

    .line 11
    .line 12
    iput-boolean p5, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$overrideLabelTextStyleColor:Z

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelTextStyleColor:Landroidx/compose/runtime/State;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$label:Lkotlin/jvm/functions/Function3;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelScope:Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    move v2, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    and-int/2addr v1, v5

    .line 25
    invoke-virtual {v4, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_19

    .line 30
    .line 31
    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelProgress:Landroidx/compose/runtime/State;

    .line 32
    .line 33
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    new-instance v6, Landroidx/compose/ui/text/TextStyle;

    .line 44
    .line 45
    iget-object v2, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 46
    .line 47
    iget-object v3, v2, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 48
    .line 49
    iget-object v7, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 50
    .line 51
    iget-object v8, v7, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 52
    .line 53
    sget-object v9, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 54
    .line 55
    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 56
    .line 57
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 58
    .line 59
    instance-of v11, v9, Landroidx/compose/ui/text/style/BrushStyle;

    .line 60
    .line 61
    const-wide/16 v13, 0x10

    .line 62
    .line 63
    sget-object v15, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    .line 64
    .line 65
    const/16 p1, 0x0

    .line 66
    .line 67
    if-nez v11, :cond_2

    .line 68
    .line 69
    instance-of v12, v10, Landroidx/compose/ui/text/style/BrushStyle;

    .line 70
    .line 71
    if-nez v12, :cond_2

    .line 72
    .line 73
    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    invoke-interface {v10}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 78
    .line 79
    .line 80
    move-result-wide v9

    .line 81
    invoke-static {v11, v12, v9, v10, v1}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    .line 82
    .line 83
    .line 84
    move-result-wide v9

    .line 85
    cmp-long v11, v9, v13

    .line 86
    .line 87
    if-eqz v11, :cond_1

    .line 88
    .line 89
    new-instance v15, Landroidx/compose/ui/text/style/ColorStyle;

    .line 90
    .line 91
    invoke-direct {v15, v9, v10}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_1
    move-object/from16 v17, v15

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    if-eqz v11, :cond_6

    .line 98
    .line 99
    instance-of v11, v10, Landroidx/compose/ui/text/style/BrushStyle;

    .line 100
    .line 101
    if-eqz v11, :cond_6

    .line 102
    .line 103
    check-cast v9, Landroidx/compose/ui/text/style/BrushStyle;

    .line 104
    .line 105
    iget-object v11, v9, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    .line 106
    .line 107
    check-cast v10, Landroidx/compose/ui/text/style/BrushStyle;

    .line 108
    .line 109
    iget-object v12, v10, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    .line 110
    .line 111
    invoke-static {v1, v11, v12}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    check-cast v11, Landroidx/compose/ui/graphics/Brush;

    .line 116
    .line 117
    iget v9, v9, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    .line 118
    .line 119
    iget v10, v10, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    .line 120
    .line 121
    invoke-static {v9, v10, v1}, Lkotlin/UnsignedKt;->lerp(FFF)F

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-nez v11, :cond_3

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    instance-of v10, v11, Landroidx/compose/ui/graphics/SolidColor;

    .line 129
    .line 130
    if-eqz v10, :cond_4

    .line 131
    .line 132
    check-cast v11, Landroidx/compose/ui/graphics/SolidColor;

    .line 133
    .line 134
    iget-wide v10, v11, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 135
    .line 136
    invoke-static {v9, v10, v11}, Lcoil3/util/UtilsKt;->modulate-DxMtmZc(FJ)J

    .line 137
    .line 138
    .line 139
    move-result-wide v9

    .line 140
    cmp-long v11, v9, v13

    .line 141
    .line 142
    if-eqz v11, :cond_1

    .line 143
    .line 144
    new-instance v15, Landroidx/compose/ui/text/style/ColorStyle;

    .line 145
    .line 146
    invoke-direct {v15, v9, v10}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    instance-of v10, v11, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 151
    .line 152
    if-eqz v10, :cond_5

    .line 153
    .line 154
    new-instance v15, Landroidx/compose/ui/text/style/BrushStyle;

    .line 155
    .line 156
    check-cast v11, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 157
    .line 158
    invoke-direct {v15, v11, v9}, Landroidx/compose/ui/text/style/BrushStyle;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;F)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 163
    .line 164
    .line 165
    return-object p1

    .line 166
    :cond_6
    invoke-static {v1, v9, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    move-object v15, v9

    .line 171
    check-cast v15, Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :goto_2
    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 175
    .line 176
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 177
    .line 178
    invoke-static {v1, v9, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    move-object/from16 v23, v9

    .line 183
    .line 184
    check-cast v23, Landroidx/compose/ui/text/font/FontFamily;

    .line 185
    .line 186
    iget-wide v9, v3, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 187
    .line 188
    iget-wide v11, v8, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 189
    .line 190
    invoke-static {v9, v10, v11, v12, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 191
    .line 192
    .line 193
    move-result-wide v18

    .line 194
    iget-object v9, v3, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 195
    .line 196
    if-nez v9, :cond_7

    .line 197
    .line 198
    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 199
    .line 200
    :cond_7
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 201
    .line 202
    if-nez v10, :cond_8

    .line 203
    .line 204
    sget-object v10, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 205
    .line 206
    :cond_8
    iget v9, v9, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 207
    .line 208
    iget v10, v10, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 209
    .line 210
    invoke-static {v9, v1, v10}, Lkotlin/UnsignedKt;->lerp(IFI)I

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    const/16 v10, 0x3e8

    .line 215
    .line 216
    invoke-static {v9, v5, v10}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    new-instance v9, Landroidx/compose/ui/text/font/FontWeight;

    .line 221
    .line 222
    invoke-direct {v9, v5}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 223
    .line 224
    .line 225
    iget-object v5, v3, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 226
    .line 227
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 228
    .line 229
    invoke-static {v1, v5, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    move-object/from16 v21, v5

    .line 234
    .line 235
    check-cast v21, Landroidx/compose/ui/text/font/FontStyle;

    .line 236
    .line 237
    iget-object v5, v3, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 238
    .line 239
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 240
    .line 241
    invoke-static {v1, v5, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    move-object/from16 v22, v5

    .line 246
    .line 247
    check-cast v22, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 248
    .line 249
    iget-object v5, v3, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {v1, v5, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    move-object/from16 v24, v5

    .line 258
    .line 259
    check-cast v24, Ljava/lang/String;

    .line 260
    .line 261
    iget-wide v10, v3, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 262
    .line 263
    iget-wide v12, v8, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 264
    .line 265
    invoke-static {v10, v11, v12, v13, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 266
    .line 267
    .line 268
    move-result-wide v25

    .line 269
    iget-object v5, v3, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 270
    .line 271
    const/4 v10, 0x0

    .line 272
    if-eqz v5, :cond_9

    .line 273
    .line 274
    iget v5, v5, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_9
    move v5, v10

    .line 278
    :goto_3
    iget-object v11, v8, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 279
    .line 280
    if-eqz v11, :cond_a

    .line 281
    .line 282
    iget v11, v11, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_a
    move v11, v10

    .line 286
    :goto_4
    invoke-static {v5, v11, v1}, Lkotlin/UnsignedKt;->lerp(FFF)F

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    iget-object v11, v3, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 291
    .line 292
    sget-object v12, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 293
    .line 294
    if-nez v11, :cond_b

    .line 295
    .line 296
    move-object v11, v12

    .line 297
    :cond_b
    iget-object v13, v8, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 298
    .line 299
    if-nez v13, :cond_c

    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_c
    move-object v12, v13

    .line 303
    :goto_5
    new-instance v13, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 304
    .line 305
    iget v14, v11, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 306
    .line 307
    iget v15, v12, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 308
    .line 309
    invoke-static {v14, v15, v1}, Lkotlin/UnsignedKt;->lerp(FFF)F

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    iget v11, v11, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    .line 314
    .line 315
    iget v12, v12, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    .line 316
    .line 317
    invoke-static {v11, v12, v1}, Lkotlin/UnsignedKt;->lerp(FFF)F

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    invoke-direct {v13, v14, v11}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 322
    .line 323
    .line 324
    iget-object v11, v3, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 325
    .line 326
    iget-object v12, v8, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 327
    .line 328
    invoke-static {v1, v11, v12}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    move-object/from16 v29, v11

    .line 333
    .line 334
    check-cast v29, Landroidx/compose/ui/text/intl/LocaleList;

    .line 335
    .line 336
    iget-wide v11, v3, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 337
    .line 338
    iget-wide v14, v8, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 339
    .line 340
    invoke-static {v11, v12, v14, v15, v1}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    .line 341
    .line 342
    .line 343
    move-result-wide v30

    .line 344
    iget-object v11, v3, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 345
    .line 346
    iget-object v12, v8, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 347
    .line 348
    invoke-static {v1, v11, v12}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v11

    .line 352
    move-object/from16 v32, v11

    .line 353
    .line 354
    check-cast v32, Landroidx/compose/ui/text/style/TextDecoration;

    .line 355
    .line 356
    iget-object v11, v3, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 357
    .line 358
    iget-object v12, v8, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 359
    .line 360
    if-nez v11, :cond_d

    .line 361
    .line 362
    if-nez v12, :cond_d

    .line 363
    .line 364
    move-object/from16 v33, p1

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_d
    if-nez v11, :cond_e

    .line 368
    .line 369
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    iget-wide v14, v12, Landroidx/compose/ui/graphics/Shadow;->color:J

    .line 373
    .line 374
    invoke-static {v10, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 375
    .line 376
    .line 377
    move-result-wide v34

    .line 378
    iget-wide v10, v12, Landroidx/compose/ui/graphics/Shadow;->offset:J

    .line 379
    .line 380
    iget v14, v12, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    .line 381
    .line 382
    new-instance v33, Landroidx/compose/ui/graphics/Shadow;

    .line 383
    .line 384
    move-wide/from16 v36, v10

    .line 385
    .line 386
    move/from16 v38, v14

    .line 387
    .line 388
    invoke-direct/range {v33 .. v38}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v10, v33

    .line 392
    .line 393
    invoke-static {v10, v12, v1}, Landroidx/compose/ui/graphics/ColorKt;->lerp(Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/Shadow;F)Landroidx/compose/ui/graphics/Shadow;

    .line 394
    .line 395
    .line 396
    move-result-object v10

    .line 397
    :goto_6
    move-object/from16 v33, v10

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_e
    if-nez v12, :cond_f

    .line 401
    .line 402
    iget-wide v14, v11, Landroidx/compose/ui/graphics/Shadow;->color:J

    .line 403
    .line 404
    invoke-static {v10, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 405
    .line 406
    .line 407
    move-result-wide v34

    .line 408
    iget-wide v14, v11, Landroidx/compose/ui/graphics/Shadow;->offset:J

    .line 409
    .line 410
    iget v10, v11, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    .line 411
    .line 412
    new-instance v33, Landroidx/compose/ui/graphics/Shadow;

    .line 413
    .line 414
    move/from16 v38, v10

    .line 415
    .line 416
    move-wide/from16 v36, v14

    .line 417
    .line 418
    invoke-direct/range {v33 .. v38}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    .line 419
    .line 420
    .line 421
    move-object/from16 v10, v33

    .line 422
    .line 423
    invoke-static {v11, v10, v1}, Landroidx/compose/ui/graphics/ColorKt;->lerp(Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/Shadow;F)Landroidx/compose/ui/graphics/Shadow;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    goto :goto_6

    .line 428
    :cond_f
    invoke-static {v11, v12, v1}, Landroidx/compose/ui/graphics/ColorKt;->lerp(Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/Shadow;F)Landroidx/compose/ui/graphics/Shadow;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    goto :goto_6

    .line 433
    :goto_7
    iget-object v10, v3, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 434
    .line 435
    iget-object v11, v8, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 436
    .line 437
    if-nez v10, :cond_10

    .line 438
    .line 439
    if-nez v11, :cond_10

    .line 440
    .line 441
    move-object/from16 v34, p1

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_10
    if-nez v10, :cond_11

    .line 445
    .line 446
    sget-object v10, Landroidx/compose/ui/text/PlatformSpanStyle;->Default:Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 447
    .line 448
    :cond_11
    move-object/from16 v34, v10

    .line 449
    .line 450
    :goto_8
    iget-object v3, v3, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 451
    .line 452
    iget-object v8, v8, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 453
    .line 454
    invoke-static {v1, v3, v8}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    move-object/from16 v35, v3

    .line 459
    .line 460
    check-cast v35, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 461
    .line 462
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 463
    .line 464
    new-instance v3, Landroidx/compose/ui/text/style/BaselineShift;

    .line 465
    .line 466
    invoke-direct {v3, v5}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 467
    .line 468
    .line 469
    move-object/from16 v27, v3

    .line 470
    .line 471
    move-object/from16 v20, v9

    .line 472
    .line 473
    move-object/from16 v28, v13

    .line 474
    .line 475
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 476
    .line 477
    .line 478
    move-object/from16 v3, v16

    .line 479
    .line 480
    iget-object v2, v2, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 481
    .line 482
    iget-object v5, v7, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 483
    .line 484
    sget v7, Landroidx/compose/ui/text/ParagraphStyleKt;->$r8$clinit:I

    .line 485
    .line 486
    new-instance v8, Landroidx/compose/ui/text/ParagraphStyle;

    .line 487
    .line 488
    iget v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 489
    .line 490
    new-instance v9, Landroidx/compose/ui/text/style/TextAlign;

    .line 491
    .line 492
    invoke-direct {v9, v7}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 493
    .line 494
    .line 495
    iget v7, v5, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 496
    .line 497
    new-instance v10, Landroidx/compose/ui/text/style/TextAlign;

    .line 498
    .line 499
    invoke-direct {v10, v7}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 500
    .line 501
    .line 502
    invoke-static {v1, v9, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    check-cast v7, Landroidx/compose/ui/text/style/TextAlign;

    .line 507
    .line 508
    iget v9, v7, Landroidx/compose/ui/text/style/TextAlign;->value:I

    .line 509
    .line 510
    iget v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 511
    .line 512
    new-instance v10, Landroidx/compose/ui/text/style/TextDirection;

    .line 513
    .line 514
    invoke-direct {v10, v7}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 515
    .line 516
    .line 517
    iget v7, v5, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 518
    .line 519
    new-instance v11, Landroidx/compose/ui/text/style/TextDirection;

    .line 520
    .line 521
    invoke-direct {v11, v7}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 522
    .line 523
    .line 524
    invoke-static {v1, v10, v11}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    check-cast v7, Landroidx/compose/ui/text/style/TextDirection;

    .line 529
    .line 530
    iget v10, v7, Landroidx/compose/ui/text/style/TextDirection;->value:I

    .line 531
    .line 532
    iget-wide v11, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 533
    .line 534
    iget-wide v13, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 535
    .line 536
    invoke-static {v11, v12, v13, v14, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 537
    .line 538
    .line 539
    move-result-wide v11

    .line 540
    iget-object v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 541
    .line 542
    if-nez v7, :cond_12

    .line 543
    .line 544
    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 545
    .line 546
    :cond_12
    iget-object v13, v5, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 547
    .line 548
    if-nez v13, :cond_13

    .line 549
    .line 550
    sget-object v13, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 551
    .line 552
    :cond_13
    new-instance v14, Landroidx/compose/ui/text/style/TextIndent;

    .line 553
    .line 554
    move-object/from16 p2, v8

    .line 555
    .line 556
    move v15, v9

    .line 557
    iget-wide v8, v7, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 558
    .line 559
    move/from16 v16, v10

    .line 560
    .line 561
    move-wide/from16 v17, v11

    .line 562
    .line 563
    iget-wide v10, v13, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 564
    .line 565
    invoke-static {v8, v9, v10, v11, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 566
    .line 567
    .line 568
    move-result-wide v8

    .line 569
    iget-wide v10, v7, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    .line 570
    .line 571
    iget-wide v12, v13, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    .line 572
    .line 573
    invoke-static {v10, v11, v12, v13, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 574
    .line 575
    .line 576
    move-result-wide v10

    .line 577
    invoke-direct {v14, v8, v9, v10, v11}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJ)V

    .line 578
    .line 579
    .line 580
    iget-object v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 581
    .line 582
    iget-object v8, v5, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 583
    .line 584
    if-nez v7, :cond_14

    .line 585
    .line 586
    if-nez v8, :cond_14

    .line 587
    .line 588
    move-object/from16 v12, p1

    .line 589
    .line 590
    goto :goto_a

    .line 591
    :cond_14
    sget-object v9, Landroidx/compose/ui/text/PlatformParagraphStyle;->Default:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 592
    .line 593
    if-nez v7, :cond_15

    .line 594
    .line 595
    move-object v12, v9

    .line 596
    goto :goto_9

    .line 597
    :cond_15
    move-object v12, v7

    .line 598
    :goto_9
    iget-boolean v7, v12, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 599
    .line 600
    if-nez v8, :cond_16

    .line 601
    .line 602
    move-object v8, v9

    .line 603
    :cond_16
    iget-boolean v9, v8, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 604
    .line 605
    if-ne v7, v9, :cond_17

    .line 606
    .line 607
    goto :goto_a

    .line 608
    :cond_17
    new-instance v10, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 609
    .line 610
    iget v11, v12, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    .line 611
    .line 612
    new-instance v12, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 613
    .line 614
    invoke-direct {v12, v11}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 615
    .line 616
    .line 617
    iget v8, v8, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    .line 618
    .line 619
    new-instance v11, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 620
    .line 621
    invoke-direct {v11, v8}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 622
    .line 623
    .line 624
    invoke-static {v1, v12, v11}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v8

    .line 628
    check-cast v8, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 629
    .line 630
    iget v8, v8, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    .line 631
    .line 632
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 633
    .line 634
    .line 635
    move-result-object v7

    .line 636
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 637
    .line 638
    .line 639
    move-result-object v9

    .line 640
    invoke-static {v1, v7, v9}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v7

    .line 644
    check-cast v7, Ljava/lang/Boolean;

    .line 645
    .line 646
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    invoke-direct {v10, v8, v7}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZ)V

    .line 651
    .line 652
    .line 653
    move-object v12, v10

    .line 654
    :goto_a
    iget-object v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 655
    .line 656
    iget-object v8, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 657
    .line 658
    invoke-static {v1, v7, v8}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v7

    .line 662
    check-cast v7, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 663
    .line 664
    iget v8, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 665
    .line 666
    new-instance v9, Landroidx/compose/ui/text/style/LineBreak;

    .line 667
    .line 668
    invoke-direct {v9, v8}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 669
    .line 670
    .line 671
    iget v8, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 672
    .line 673
    new-instance v10, Landroidx/compose/ui/text/style/LineBreak;

    .line 674
    .line 675
    invoke-direct {v10, v8}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 676
    .line 677
    .line 678
    invoke-static {v1, v9, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v8

    .line 682
    check-cast v8, Landroidx/compose/ui/text/style/LineBreak;

    .line 683
    .line 684
    iget v8, v8, Landroidx/compose/ui/text/style/LineBreak;->mask:I

    .line 685
    .line 686
    iget v9, v2, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 687
    .line 688
    new-instance v10, Landroidx/compose/ui/text/style/Hyphens;

    .line 689
    .line 690
    invoke-direct {v10, v9}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 691
    .line 692
    .line 693
    iget v9, v5, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 694
    .line 695
    new-instance v11, Landroidx/compose/ui/text/style/Hyphens;

    .line 696
    .line 697
    invoke-direct {v11, v9}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 698
    .line 699
    .line 700
    invoke-static {v1, v10, v11}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v9

    .line 704
    check-cast v9, Landroidx/compose/ui/text/style/Hyphens;

    .line 705
    .line 706
    iget v9, v9, Landroidx/compose/ui/text/style/Hyphens;->value:I

    .line 707
    .line 708
    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 709
    .line 710
    iget-object v5, v5, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 711
    .line 712
    invoke-static {v1, v2, v5}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    check-cast v1, Landroidx/compose/ui/text/style/TextMotion;

    .line 717
    .line 718
    move-object v13, v14

    .line 719
    move/from16 v10, v16

    .line 720
    .line 721
    move/from16 v16, v8

    .line 722
    .line 723
    move-object v14, v12

    .line 724
    move-wide/from16 v11, v17

    .line 725
    .line 726
    move-object/from16 v8, p2

    .line 727
    .line 728
    move-object/from16 v18, v1

    .line 729
    .line 730
    move/from16 v17, v9

    .line 731
    .line 732
    move v9, v15

    .line 733
    move-object v15, v7

    .line 734
    invoke-direct/range {v8 .. v18}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 735
    .line 736
    .line 737
    invoke-direct {v6, v3, v8}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    .line 738
    .line 739
    .line 740
    iget-boolean v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$overrideLabelTextStyleColor:Z

    .line 741
    .line 742
    if-eqz v1, :cond_18

    .line 743
    .line 744
    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelTextStyleColor:Landroidx/compose/runtime/State;

    .line 745
    .line 746
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 751
    .line 752
    iget-wide v7, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 753
    .line 754
    const/16 v17, 0x0

    .line 755
    .line 756
    const v18, 0xfffffe

    .line 757
    .line 758
    .line 759
    const-wide/16 v9, 0x0

    .line 760
    .line 761
    const/4 v11, 0x0

    .line 762
    const/4 v12, 0x0

    .line 763
    const-wide/16 v13, 0x0

    .line 764
    .line 765
    const-wide/16 v15, 0x0

    .line 766
    .line 767
    invoke-static/range {v6 .. v18}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 768
    .line 769
    .line 770
    move-result-object v6

    .line 771
    :cond_18
    move-object v2, v6

    .line 772
    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelContentColor:Landroidx/compose/runtime/State;

    .line 773
    .line 774
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 779
    .line 780
    iget-wide v5, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 781
    .line 782
    new-instance v1, Landroidx/compose/material3/ButtonKt$Button$2$1;

    .line 783
    .line 784
    iget-object v3, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$label:Lkotlin/jvm/functions/Function3;

    .line 785
    .line 786
    iget-object v0, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelScope:Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    .line 787
    .line 788
    invoke-direct {v1, v3, v0}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;)V

    .line 789
    .line 790
    .line 791
    const v0, 0x44fdd1bf

    .line 792
    .line 793
    .line 794
    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    move-wide v0, v5

    .line 799
    const/16 v5, 0x180

    .line 800
    .line 801
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/LayoutUtilKt;->Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 802
    .line 803
    .line 804
    goto :goto_b

    .line 805
    :cond_19
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 806
    .line 807
    .line 808
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 809
    .line 810
    return-object v0
.end method
