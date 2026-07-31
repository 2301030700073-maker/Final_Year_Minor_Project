.class public final synthetic Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 47

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p1

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    .line 19
    .line 20
    move-object/from16 v15, p2

    .line 21
    .line 22
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    move-object/from16 v7, p3

    .line 25
    .line 26
    check-cast v7, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    and-int/lit8 v0, v7, 0x11

    .line 36
    .line 37
    if-eq v0, v3, :cond_0

    .line 38
    .line 39
    move v0, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v0, v5

    .line 42
    :goto_0
    and-int/lit8 v3, v7, 0x1

    .line 43
    .line 44
    invoke-virtual {v15, v3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_9

    .line 49
    .line 50
    iget-object v0, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v7, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function0;

    .line 57
    .line 58
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    or-int/2addr v3, v8

    .line 63
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    iget-object v9, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/runtime/MutableState;

    .line 68
    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    if-ne v8, v4, :cond_2

    .line 72
    .line 73
    :cond_1
    new-instance v8, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;

    .line 74
    .line 75
    invoke-direct {v8, v0, v7, v9, v5}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 82
    .line 83
    move-object v0, v7

    .line 84
    move-object v7, v8

    .line 85
    sget-object v8, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$2033903237:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 86
    .line 87
    const/4 v14, 0x0

    .line 88
    const/16 v16, 0x30

    .line 89
    .line 90
    move-object v3, v9

    .line 91
    const/4 v9, 0x0

    .line 92
    const/4 v10, 0x0

    .line 93
    const/4 v11, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    invoke-static/range {v7 .. v16}, Landroidx/compose/material3/ChipKt;->AssistChip(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/GapComposer;I)V

    .line 97
    .line 98
    .line 99
    iget-object v5, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    or-int/2addr v7, v8

    .line 110
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    if-nez v7, :cond_3

    .line 115
    .line 116
    if-ne v8, v4, :cond_4

    .line 117
    .line 118
    :cond_3
    new-instance v8, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;

    .line 119
    .line 120
    invoke-direct {v8, v5, v0, v3, v6}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    move-object v7, v8

    .line 127
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 128
    .line 129
    sget-object v8, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$265198780:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 130
    .line 131
    const/4 v14, 0x0

    .line 132
    const/16 v16, 0x30

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    const/4 v10, 0x0

    .line 136
    const/4 v11, 0x0

    .line 137
    const/4 v12, 0x0

    .line 138
    const/4 v13, 0x0

    .line 139
    invoke-static/range {v7 .. v16}, Landroidx/compose/material3/ChipKt;->AssistChip(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/GapComposer;I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    or-int/2addr v5, v6

    .line 153
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-nez v5, :cond_5

    .line 158
    .line 159
    if-ne v6, v4, :cond_6

    .line 160
    .line 161
    :cond_5
    new-instance v6, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;

    .line 162
    .line 163
    const/4 v5, 0x2

    .line 164
    invoke-direct {v6, v1, v0, v3, v5}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    move-object v7, v6

    .line 171
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 172
    .line 173
    sget-object v8, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$1328387389:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 174
    .line 175
    const/4 v14, 0x0

    .line 176
    const/16 v16, 0x30

    .line 177
    .line 178
    const/4 v9, 0x0

    .line 179
    const/4 v10, 0x0

    .line 180
    const/4 v11, 0x0

    .line 181
    const/4 v12, 0x0

    .line 182
    const/4 v13, 0x0

    .line 183
    invoke-static/range {v7 .. v16}, Landroidx/compose/material3/ChipKt;->AssistChip(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/GapComposer;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-nez v1, :cond_7

    .line 195
    .line 196
    if-ne v5, v4, :cond_8

    .line 197
    .line 198
    :cond_7
    new-instance v5, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;

    .line 199
    .line 200
    const/16 v1, 0x8

    .line 201
    .line 202
    invoke-direct {v5, v0, v3, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_8
    move-object v7, v5

    .line 209
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 210
    .line 211
    sget-object v8, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$-1903391298:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 212
    .line 213
    const/4 v14, 0x0

    .line 214
    const/16 v16, 0x30

    .line 215
    .line 216
    const/4 v9, 0x0

    .line 217
    const/4 v10, 0x0

    .line 218
    const/4 v11, 0x0

    .line 219
    const/4 v12, 0x0

    .line 220
    const/4 v13, 0x0

    .line 221
    invoke-static/range {v7 .. v16}, Landroidx/compose/material3/ChipKt;->AssistChip(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/GapComposer;I)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 226
    .line 227
    .line 228
    :goto_1
    return-object v2

    .line 229
    :pswitch_0
    move-object/from16 v0, p1

    .line 230
    .line 231
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 232
    .line 233
    move-object/from16 v14, p2

    .line 234
    .line 235
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 236
    .line 237
    move-object/from16 v7, p3

    .line 238
    .line 239
    check-cast v7, Ljava/lang/Integer;

    .line 240
    .line 241
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    and-int/lit8 v0, v7, 0x11

    .line 249
    .line 250
    if-eq v0, v3, :cond_a

    .line 251
    .line 252
    move v0, v6

    .line 253
    goto :goto_2

    .line 254
    :cond_a
    move v0, v5

    .line 255
    :goto_2
    and-int/lit8 v3, v7, 0x1

    .line 256
    .line 257
    invoke-virtual {v14, v3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_12

    .line 262
    .line 263
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 264
    .line 265
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 270
    .line 271
    iget-wide v7, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 272
    .line 273
    sget-object v3, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 274
    .line 275
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 276
    .line 277
    invoke-static {v9, v7, v8, v3}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    const/high16 v7, 0x41800000    # 16.0f

    .line 282
    .line 283
    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    new-instance v7, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 288
    .line 289
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 290
    .line 291
    const/16 v10, 0xa

    .line 292
    .line 293
    invoke-direct {v8, v10}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 294
    .line 295
    .line 296
    const/high16 v11, 0x41000000    # 8.0f

    .line 297
    .line 298
    invoke-direct {v7, v11, v6, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 299
    .line 300
    .line 301
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 302
    .line 303
    const/4 v12, 0x6

    .line 304
    invoke-static {v7, v8, v14, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 309
    .line 310
    const/16 v31, 0x20

    .line 311
    .line 312
    ushr-long v15, v10, v31

    .line 313
    .line 314
    xor-long/2addr v10, v15

    .line 315
    long-to-int v8, v10

    .line 316
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-static {v14, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 325
    .line 326
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 330
    .line 331
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 332
    .line 333
    .line 334
    iget-boolean v13, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 335
    .line 336
    if-eqz v13, :cond_b

    .line 337
    .line 338
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 343
    .line 344
    .line 345
    :goto_3
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 346
    .line 347
    invoke-static {v14, v7, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 348
    .line 349
    .line 350
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 351
    .line 352
    invoke-static {v14, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 360
    .line 361
    invoke-static {v14, v8, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 362
    .line 363
    .line 364
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 365
    .line 366
    invoke-static {v14, v8}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 367
    .line 368
    .line 369
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 370
    .line 371
    invoke-static {v14, v3, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 372
    .line 373
    .line 374
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 375
    .line 376
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 381
    .line 382
    iget-object v3, v3, Landroidx/compose/material3/Typography;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 383
    .line 384
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v16

    .line 388
    move-object/from16 v5, v16

    .line 389
    .line 390
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 391
    .line 392
    move-object/from16 v16, v13

    .line 393
    .line 394
    iget-wide v12, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 395
    .line 396
    const/16 v29, 0x0

    .line 397
    .line 398
    const v30, 0x1fffa

    .line 399
    .line 400
    .line 401
    move-object v5, v7

    .line 402
    const-string v7, "readingChallengeLastReadDate"

    .line 403
    .line 404
    move-object/from16 v17, v8

    .line 405
    .line 406
    const/4 v8, 0x0

    .line 407
    move-object/from16 v18, v11

    .line 408
    .line 409
    const/4 v11, 0x0

    .line 410
    move-object/from16 v20, v9

    .line 411
    .line 412
    move-object/from16 v19, v10

    .line 413
    .line 414
    move-wide v9, v12

    .line 415
    const-wide/16 v12, 0x0

    .line 416
    .line 417
    move-object/from16 v27, v14

    .line 418
    .line 419
    const/4 v14, 0x0

    .line 420
    move-object/from16 v21, v15

    .line 421
    .line 422
    const/4 v15, 0x0

    .line 423
    move-object/from16 v22, v16

    .line 424
    .line 425
    move-object/from16 v23, v17

    .line 426
    .line 427
    const-wide/16 v16, 0x0

    .line 428
    .line 429
    move-object/from16 v24, v18

    .line 430
    .line 431
    const/16 v18, 0x0

    .line 432
    .line 433
    move-object/from16 v25, v19

    .line 434
    .line 435
    move-object/from16 v26, v20

    .line 436
    .line 437
    const-wide/16 v19, 0x0

    .line 438
    .line 439
    move-object/from16 v28, v21

    .line 440
    .line 441
    const/16 v21, 0x0

    .line 442
    .line 443
    move-object/from16 v33, v22

    .line 444
    .line 445
    const/16 v22, 0x0

    .line 446
    .line 447
    move-object/from16 v34, v23

    .line 448
    .line 449
    const/16 v23, 0x0

    .line 450
    .line 451
    move-object/from16 v35, v24

    .line 452
    .line 453
    const/16 v24, 0x0

    .line 454
    .line 455
    move-object/from16 v36, v25

    .line 456
    .line 457
    const/16 v25, 0x0

    .line 458
    .line 459
    move-object/from16 v37, v28

    .line 460
    .line 461
    const/16 v28, 0x6

    .line 462
    .line 463
    move-object/from16 v38, v5

    .line 464
    .line 465
    move-object/from16 v42, v26

    .line 466
    .line 467
    move-object/from16 v5, v33

    .line 468
    .line 469
    move-object/from16 v40, v34

    .line 470
    .line 471
    move-object/from16 v39, v36

    .line 472
    .line 473
    move-object/from16 v41, v37

    .line 474
    .line 475
    const/16 v6, 0xa

    .line 476
    .line 477
    move-object/from16 v26, v3

    .line 478
    .line 479
    move-object/from16 v3, v35

    .line 480
    .line 481
    invoke-static/range {v7 .. v30}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 482
    .line 483
    .line 484
    move-object/from16 v14, v27

    .line 485
    .line 486
    new-instance v7, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 487
    .line 488
    new-instance v8, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 489
    .line 490
    invoke-direct {v8, v6}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 491
    .line 492
    .line 493
    const/4 v9, 0x1

    .line 494
    const/high16 v10, 0x41000000    # 8.0f

    .line 495
    .line 496
    invoke-direct {v7, v10, v9, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 497
    .line 498
    .line 499
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 500
    .line 501
    const/16 v9, 0x36

    .line 502
    .line 503
    invoke-static {v7, v8, v14, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    iget-wide v8, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 508
    .line 509
    ushr-long v11, v8, v31

    .line 510
    .line 511
    xor-long/2addr v8, v11

    .line 512
    long-to-int v8, v8

    .line 513
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 514
    .line 515
    .line 516
    move-result-object v9

    .line 517
    move-object/from16 v11, v42

    .line 518
    .line 519
    invoke-static {v14, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 520
    .line 521
    .line 522
    move-result-object v11

    .line 523
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 524
    .line 525
    .line 526
    iget-boolean v12, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 527
    .line 528
    if-eqz v12, :cond_c

    .line 529
    .line 530
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 531
    .line 532
    .line 533
    goto :goto_4

    .line 534
    :cond_c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 535
    .line 536
    .line 537
    :goto_4
    invoke-static {v14, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 538
    .line 539
    .line 540
    move-object/from16 v5, v38

    .line 541
    .line 542
    invoke-static {v14, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 543
    .line 544
    .line 545
    move-object/from16 v3, v39

    .line 546
    .line 547
    move-object/from16 v5, v40

    .line 548
    .line 549
    invoke-static {v8, v14, v3, v14, v5}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 550
    .line 551
    .line 552
    move-object/from16 v3, v41

    .line 553
    .line 554
    invoke-static {v14, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 555
    .line 556
    .line 557
    iget-object v3, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/runtime/MutableState;

    .line 558
    .line 559
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    check-cast v5, Ljava/lang/String;

    .line 564
    .line 565
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v7

    .line 569
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 570
    .line 571
    iget-wide v7, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 572
    .line 573
    sget-object v9, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 574
    .line 575
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v11

    .line 579
    check-cast v11, Landroidx/compose/material3/ColorScheme;

    .line 580
    .line 581
    iget-wide v11, v11, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 582
    .line 583
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v13

    .line 587
    check-cast v13, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 588
    .line 589
    move-wide v15, v11

    .line 590
    iget-wide v10, v13, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 591
    .line 592
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v9

    .line 596
    check-cast v9, Landroidx/compose/material3/ColorScheme;

    .line 597
    .line 598
    iget-wide v12, v9, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 599
    .line 600
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v9

    .line 604
    check-cast v9, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 605
    .line 606
    move-wide/from16 v17, v7

    .line 607
    .line 608
    iget-wide v6, v9, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 609
    .line 610
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 615
    .line 616
    iget-wide v8, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 617
    .line 618
    const v20, 0x7fffe6f4

    .line 619
    .line 620
    .line 621
    move-object/from16 v19, v14

    .line 622
    .line 623
    move-wide/from16 v43, v6

    .line 624
    .line 625
    const/high16 v6, 0x41000000    # 8.0f

    .line 626
    .line 627
    move-wide/from16 v45, v12

    .line 628
    .line 629
    move-wide/from16 v13, v43

    .line 630
    .line 631
    move-wide/from16 v43, v10

    .line 632
    .line 633
    move-wide v11, v8

    .line 634
    move-wide/from16 v9, v43

    .line 635
    .line 636
    move-wide/from16 v7, v17

    .line 637
    .line 638
    move-wide/from16 v17, v45

    .line 639
    .line 640
    invoke-static/range {v7 .. v20}, Landroidx/compose/material3/TextFieldDefaults;->colors-0hiis_0(JJJJJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/TextFieldColors;

    .line 641
    .line 642
    .line 643
    move-result-object v26

    .line 644
    move-object/from16 v14, v19

    .line 645
    .line 646
    new-instance v9, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 647
    .line 648
    const/high16 v0, 0x3f800000    # 1.0f

    .line 649
    .line 650
    const/4 v7, 0x1

    .line 651
    invoke-direct {v9, v0, v7}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    if-ne v0, v4, :cond_d

    .line 659
    .line 660
    new-instance v0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 661
    .line 662
    const/16 v7, 0x16

    .line 663
    .line 664
    invoke-direct {v0, v3, v7}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    :cond_d
    move-object v8, v0

    .line 671
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 672
    .line 673
    sget-object v13, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$-636134630:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 674
    .line 675
    const/high16 v29, 0xc00000

    .line 676
    .line 677
    const v30, 0x3dff78

    .line 678
    .line 679
    .line 680
    const/4 v10, 0x0

    .line 681
    const/4 v11, 0x0

    .line 682
    const/4 v12, 0x0

    .line 683
    move-object/from16 v27, v14

    .line 684
    .line 685
    const/4 v14, 0x0

    .line 686
    const/4 v15, 0x0

    .line 687
    const/16 v16, 0x0

    .line 688
    .line 689
    const/16 v17, 0x0

    .line 690
    .line 691
    const/16 v18, 0x0

    .line 692
    .line 693
    const/16 v19, 0x0

    .line 694
    .line 695
    const/16 v20, 0x0

    .line 696
    .line 697
    const/16 v21, 0x0

    .line 698
    .line 699
    const/16 v22, 0x1

    .line 700
    .line 701
    const/16 v23, 0x0

    .line 702
    .line 703
    const/16 v24, 0x0

    .line 704
    .line 705
    const/16 v25, 0x0

    .line 706
    .line 707
    const v28, 0xc00030

    .line 708
    .line 709
    .line 710
    move-object v7, v5

    .line 711
    invoke-static/range {v7 .. v30}, Landroidx/compose/material3/CardKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/GapComposer;III)V

    .line 712
    .line 713
    .line 714
    move-object/from16 v14, v27

    .line 715
    .line 716
    iget-object v5, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function0;

    .line 717
    .line 718
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v7

    .line 726
    if-nez v0, :cond_e

    .line 727
    .line 728
    if-ne v7, v4, :cond_f

    .line 729
    .line 730
    :cond_e
    new-instance v7, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;

    .line 731
    .line 732
    const/4 v0, 0x6

    .line 733
    invoke-direct {v7, v5, v3, v0}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    :cond_f
    move-object v4, v7

    .line 740
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 741
    .line 742
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    check-cast v0, Ljava/lang/String;

    .line 747
    .line 748
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    if-nez v0, :cond_10

    .line 753
    .line 754
    goto :goto_6

    .line 755
    :cond_10
    :try_start_0
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    check-cast v0, Ljava/lang/String;

    .line 760
    .line 761
    invoke-static {v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 762
    .line 763
    .line 764
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    goto :goto_5

    .line 766
    :catchall_0
    move-exception v0

    .line 767
    new-instance v7, Lkotlin/Result$Failure;

    .line 768
    .line 769
    invoke-direct {v7, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 770
    .line 771
    .line 772
    move-object v0, v7

    .line 773
    :goto_5
    instance-of v0, v0, Lkotlin/Result$Failure;

    .line 774
    .line 775
    if-nez v0, :cond_11

    .line 776
    .line 777
    :goto_6
    const/16 v32, 0x1

    .line 778
    .line 779
    goto :goto_7

    .line 780
    :cond_11
    const/16 v32, 0x0

    .line 781
    .line 782
    :goto_7
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 783
    .line 784
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 785
    .line 786
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v7

    .line 790
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 791
    .line 792
    iget-wide v7, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 793
    .line 794
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 799
    .line 800
    iget-wide v9, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 801
    .line 802
    const/16 v12, 0xc

    .line 803
    .line 804
    move-object v11, v14

    .line 805
    invoke-static/range {v7 .. v12}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    sget-object v15, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->lambda$-2015767535:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 810
    .line 811
    const/high16 v17, 0x30000000

    .line 812
    .line 813
    const/16 v18, 0x1ea

    .line 814
    .line 815
    const/4 v8, 0x0

    .line 816
    const/4 v10, 0x0

    .line 817
    const/4 v12, 0x0

    .line 818
    const/4 v13, 0x0

    .line 819
    move-object/from16 v27, v14

    .line 820
    .line 821
    const/4 v14, 0x0

    .line 822
    move-object v11, v0

    .line 823
    move-object v7, v4

    .line 824
    move-object/from16 v16, v27

    .line 825
    .line 826
    move/from16 v9, v32

    .line 827
    .line 828
    invoke-static/range {v7 .. v18}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 829
    .line 830
    .line 831
    move-object/from16 v14, v16

    .line 832
    .line 833
    const/4 v7, 0x1

    .line 834
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 835
    .line 836
    .line 837
    new-instance v8, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 838
    .line 839
    new-instance v0, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 840
    .line 841
    const/16 v4, 0xa

    .line 842
    .line 843
    invoke-direct {v0, v4}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 844
    .line 845
    .line 846
    invoke-direct {v8, v6, v7, v0}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 847
    .line 848
    .line 849
    new-instance v15, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;

    .line 850
    .line 851
    iget-object v0, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 852
    .line 853
    iget-object v4, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    .line 854
    .line 855
    iget-object v1, v1, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    .line 856
    .line 857
    move-object/from16 v16, v0

    .line 858
    .line 859
    move-object/from16 v19, v1

    .line 860
    .line 861
    move-object/from16 v20, v3

    .line 862
    .line 863
    move-object/from16 v18, v4

    .line 864
    .line 865
    move-object/from16 v17, v5

    .line 866
    .line 867
    invoke-direct/range {v15 .. v20}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V

    .line 868
    .line 869
    .line 870
    const v0, -0x4bbd83de

    .line 871
    .line 872
    .line 873
    invoke-static {v0, v15, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 874
    .line 875
    .line 876
    move-result-object v13

    .line 877
    const v15, 0x180030

    .line 878
    .line 879
    .line 880
    const/16 v16, 0x3d

    .line 881
    .line 882
    const/4 v7, 0x0

    .line 883
    const/4 v9, 0x0

    .line 884
    const/4 v11, 0x0

    .line 885
    const/4 v12, 0x0

    .line 886
    invoke-static/range {v7 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 887
    .line 888
    .line 889
    const/4 v7, 0x1

    .line 890
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 891
    .line 892
    .line 893
    goto :goto_8

    .line 894
    :cond_12
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 895
    .line 896
    .line 897
    :goto_8
    return-object v2

    .line 898
    nop

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
