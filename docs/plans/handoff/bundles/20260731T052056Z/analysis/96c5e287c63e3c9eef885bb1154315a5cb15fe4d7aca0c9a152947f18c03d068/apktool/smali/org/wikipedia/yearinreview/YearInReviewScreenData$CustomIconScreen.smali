.class public final Lorg/wikipedia/yearinreview/YearInReviewScreenData$CustomIconScreen;
.super Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final showDonateButton:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    xor-int/lit8 v7, p5, 0x1

    .line 2
    .line 3
    const/4 v8, 0x4

    .line 4
    const v2, 0x7f080229

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move v1, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    move-object v6, p4

    .line 13
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen;-><init>(ZILandroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZI)V

    .line 14
    .line 15
    .line 16
    iput-boolean p5, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$CustomIconScreen;->showDonateButton:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final BottomButton(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v13, p3

    .line 6
    .line 7
    move/from16 v0, p4

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const v2, 0x571ac2    # 7.999287E-39f

    .line 16
    .line 17
    .line 18
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v2, v0, 0x30

    .line 22
    .line 23
    const/16 v10, 0x20

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    move v2, v10

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v2, 0x10

    .line 36
    .line 37
    :goto_0
    or-int/2addr v2, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v0

    .line 40
    :goto_1
    and-int/lit16 v4, v0, 0x180

    .line 41
    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    const/16 v4, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v4, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v2, v4

    .line 56
    :cond_3
    and-int/lit16 v4, v2, 0x91

    .line 57
    .line 58
    const/16 v5, 0x90

    .line 59
    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x1

    .line 62
    if-eq v4, v5, :cond_4

    .line 63
    .line 64
    move v4, v12

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move v4, v11

    .line 67
    :goto_3
    and-int/lit8 v5, v2, 0x1

    .line 68
    .line 69
    invoke-virtual {v13, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_9

    .line 74
    .line 75
    iget-boolean v4, v1, Lorg/wikipedia/yearinreview/YearInReviewScreenData$CustomIconScreen;->showDonateButton:Z

    .line 76
    .line 77
    if-eqz v4, :cond_8

    .line 78
    .line 79
    const v4, -0x678a9819

    .line 80
    .line 81
    .line 82
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 83
    .line 84
    .line 85
    const/16 v18, 0x0

    .line 86
    .line 87
    const/16 v19, 0x8

    .line 88
    .line 89
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 90
    .line 91
    const/high16 v15, 0x41000000    # 8.0f

    .line 92
    .line 93
    move/from16 v16, v15

    .line 94
    .line 95
    move/from16 v17, v15

    .line 96
    .line 97
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const/high16 v5, 0x3f800000    # 1.0f

    .line 102
    .line 103
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    const/high16 v4, 0x41900000    # 18.0f

    .line 108
    .line 109
    const/4 v5, 0x2

    .line 110
    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    sget-object v4, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 115
    .line 116
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 117
    .line 118
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 123
    .line 124
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 125
    .line 126
    const-wide/16 v6, 0x0

    .line 127
    .line 128
    const/16 v9, 0xe

    .line 129
    .line 130
    move-object v8, v13

    .line 131
    invoke-static/range {v4 .. v9}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    and-int/lit8 v2, v2, 0x70

    .line 136
    .line 137
    if-ne v2, v10, :cond_5

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_5
    move v12, v11

    .line 141
    :goto_4
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    or-int/2addr v2, v12

    .line 146
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    if-nez v2, :cond_6

    .line 151
    .line 152
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 153
    .line 154
    if-ne v5, v2, :cond_7

    .line 155
    .line 156
    :cond_6
    new-instance v5, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 157
    .line 158
    const/16 v2, 0xd

    .line 159
    .line 160
    invoke-direct {v5, v2, v3, v1}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 167
    .line 168
    sget-object v12, Lorg/wikipedia/yearinreview/YearInReviewDialog;->lambda$2085340557:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 169
    .line 170
    move-object v8, v4

    .line 171
    move-object v4, v5

    .line 172
    move-object v5, v14

    .line 173
    const/high16 v14, 0x30c00000

    .line 174
    .line 175
    move v2, v11

    .line 176
    move-object v11, v15

    .line 177
    const/16 v15, 0x16c

    .line 178
    .line 179
    const/4 v6, 0x0

    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v9, 0x0

    .line 182
    const/4 v10, 0x0

    .line 183
    invoke-static/range {v4 .. v15}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_8
    move v2, v11

    .line 191
    const v4, -0x677b7820

    .line 192
    .line 193
    .line 194
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 202
    .line 203
    .line 204
    :goto_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    if-eqz v6, :cond_a

    .line 209
    .line 210
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 211
    .line 212
    const/16 v5, 0x17

    .line 213
    .line 214
    move-object/from16 v2, p1

    .line 215
    .line 216
    move/from16 v4, p4

    .line 217
    .line 218
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 219
    .line 220
    .line 221
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 222
    .line 223
    :cond_a
    return-void
.end method
