.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IIZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$0:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$1:I

    .line 10
    .line 11
    iput p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$2:I

    .line 12
    .line 13
    iput-boolean p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$3:Z

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/Modifier;III)V
    .locals 0

    .line 16
    const/4 p5, 0x1

    iput p5, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$3:Z

    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$0:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$1:I

    iput p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v8, p1

    .line 12
    .line 13
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    move-object/from16 v1, p2

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    iget-boolean v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$3:Z

    .line 27
    .line 28
    iget-object v5, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$0:Landroidx/compose/ui/Modifier;

    .line 29
    .line 30
    iget v6, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$1:I

    .line 31
    .line 32
    iget v7, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$2:I

    .line 33
    .line 34
    invoke-static/range {v4 .. v9}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->SourceOptionCard(ZLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/GapComposer;I)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :pswitch_0
    move-object/from16 v15, p1

    .line 39
    .line 40
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    check-cast v1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    and-int/lit8 v4, v1, 0x3

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x2

    .line 54
    if-eq v4, v6, :cond_0

    .line 55
    .line 56
    move v4, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v4, v5

    .line 59
    :goto_0
    and-int/2addr v1, v3

    .line 60
    invoke-virtual {v15, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    .line 68
    iget-object v4, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$0:Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/high16 v4, 0x41800000    # 16.0f

    .line 75
    .line 76
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 81
    .line 82
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 83
    .line 84
    invoke-static {v7, v8, v15, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iget-wide v8, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 89
    .line 90
    const/16 v10, 0x20

    .line 91
    .line 92
    ushr-long v10, v8, v10

    .line 93
    .line 94
    xor-long/2addr v8, v10

    .line 95
    long-to-int v8, v8

    .line 96
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-static {v15, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 105
    .line 106
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 110
    .line 111
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 112
    .line 113
    .line 114
    iget-boolean v11, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 115
    .line 116
    if-eqz v11, :cond_1

    .line 117
    .line 118
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 123
    .line 124
    .line 125
    :goto_1
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 126
    .line 127
    invoke-static {v15, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 131
    .line 132
    invoke-static {v15, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 140
    .line 141
    invoke-static {v15, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 145
    .line 146
    invoke-static {v15, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 147
    .line 148
    .line 149
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 150
    .line 151
    invoke-static {v15, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 152
    .line 153
    .line 154
    const/high16 v1, 0x41c00000    # 24.0f

    .line 155
    .line 156
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 157
    .line 158
    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$1:I

    .line 163
    .line 164
    invoke-static {v1, v5, v15}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 169
    .line 170
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 175
    .line 176
    iget-wide v13, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 177
    .line 178
    iget v5, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$2:I

    .line 179
    .line 180
    invoke-static {v5, v15}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    const/16 v16, 0x188

    .line 185
    .line 186
    const/16 v17, 0x0

    .line 187
    .line 188
    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 189
    .line 190
    .line 191
    const/4 v8, 0x0

    .line 192
    invoke-static {v7, v4, v8, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-static {v5, v15}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    sget-object v4, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 201
    .line 202
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 207
    .line 208
    iget-object v4, v4, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 209
    .line 210
    iget-boolean v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt$$ExternalSyntheticLambda14;->f$3:Z

    .line 211
    .line 212
    if-eqz v0, :cond_2

    .line 213
    .line 214
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 215
    .line 216
    :goto_2
    move-object/from16 v17, v0

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_2
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :goto_3
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 227
    .line 228
    iget-wide v12, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 229
    .line 230
    const/16 v32, 0x0

    .line 231
    .line 232
    const v33, 0x1ffb8

    .line 233
    .line 234
    .line 235
    const/4 v14, 0x0

    .line 236
    move-object/from16 v30, v15

    .line 237
    .line 238
    const-wide/16 v15, 0x0

    .line 239
    .line 240
    const/16 v18, 0x0

    .line 241
    .line 242
    const-wide/16 v19, 0x0

    .line 243
    .line 244
    const/16 v21, 0x0

    .line 245
    .line 246
    const-wide/16 v22, 0x0

    .line 247
    .line 248
    const/16 v24, 0x0

    .line 249
    .line 250
    const/16 v25, 0x0

    .line 251
    .line 252
    const/16 v26, 0x0

    .line 253
    .line 254
    const/16 v27, 0x0

    .line 255
    .line 256
    const/16 v28, 0x0

    .line 257
    .line 258
    const/16 v31, 0x30

    .line 259
    .line 260
    move-object/from16 v29, v4

    .line 261
    .line 262
    invoke-static/range {v10 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v15, v30

    .line 266
    .line 267
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_3
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 272
    .line 273
    .line 274
    :goto_4
    return-object v2

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
