.class public final synthetic Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    const/4 p3, 0x3

    .line 2
    iput p3, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IB)V
    .locals 0

    .line 12
    iput p3, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    const/high16 v4, 0x41800000    # 16.0f

    .line 10
    .line 11
    const/high16 v5, 0x3f800000    # 1.0f

    .line 12
    .line 13
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 14
    .line 15
    const/4 v7, 0x2

    .line 16
    const/4 v8, 0x0

    .line 17
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    const/4 v10, 0x1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    move-object/from16 v2, p2

    .line 28
    .line 29
    check-cast v2, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    sget v3, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;->$r8$clinit:I

    .line 36
    .line 37
    and-int/lit8 v3, v2, 0x3

    .line 38
    .line 39
    if-eq v3, v7, :cond_0

    .line 40
    .line 41
    move v8, v10

    .line 42
    :cond_0
    and-int/2addr v2, v10

    .line 43
    invoke-virtual {v1, v2, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2, v4, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    const v2, 0x7f120717

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    const v2, 0x7f120718

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    const/16 v17, 0x6

    .line 72
    .line 73
    iget-object v14, v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    iget-object v15, v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 76
    .line 77
    move-object/from16 v16, v1

    .line 78
    .line 79
    invoke-static/range {v11 .. v17}, Lorg/wikipedia/compose/components/TabsBoxKt;->TwoButtonBottomBar(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-object/from16 v16, v1

    .line 84
    .line 85
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-object v9

    .line 89
    :pswitch_0
    move-object/from16 v0, p1

    .line 90
    .line 91
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 92
    .line 93
    move-object/from16 v1, p2

    .line 94
    .line 95
    check-cast v1, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {v3, v2, v0, v1}, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->MainBottomBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 105
    .line 106
    .line 107
    return-object v9

    .line 108
    :pswitch_1
    move-object/from16 v15, p1

    .line 109
    .line 110
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 111
    .line 112
    move-object/from16 v1, p2

    .line 113
    .line 114
    check-cast v1, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    and-int/lit8 v2, v1, 0x3

    .line 121
    .line 122
    if-eq v2, v7, :cond_2

    .line 123
    .line 124
    move v8, v10

    .line 125
    :cond_2
    and-int/2addr v1, v10

    .line 126
    invoke-virtual {v15, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1, v4, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    const v1, 0x7f120208

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v15}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    const v1, 0x7f120209

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v15}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    const/16 v16, 0x6

    .line 155
    .line 156
    iget-object v13, v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 157
    .line 158
    iget-object v14, v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 159
    .line 160
    invoke-static/range {v10 .. v16}, Lorg/wikipedia/compose/components/TabsBoxKt;->TwoButtonBottomBar(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 165
    .line 166
    .line 167
    :goto_1
    return-object v9

    .line 168
    :pswitch_2
    move-object/from16 v1, p1

    .line 169
    .line 170
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 171
    .line 172
    move-object/from16 v2, p2

    .line 173
    .line 174
    check-cast v2, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    and-int/lit8 v3, v2, 0x3

    .line 181
    .line 182
    if-eq v3, v7, :cond_4

    .line 183
    .line 184
    move v8, v10

    .line 185
    :cond_4
    and-int/2addr v2, v10

    .line 186
    invoke-virtual {v1, v2, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_5

    .line 191
    .line 192
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-static {v2, v4, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const v3, 0x7f120507

    .line 201
    .line 202
    .line 203
    invoke-static {v3, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const v4, 0x7f12005d

    .line 208
    .line 209
    .line 210
    invoke-static {v4, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    const/4 v6, 0x6

    .line 215
    move-object v5, v1

    .line 216
    move-object v1, v3

    .line 217
    iget-object v3, v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 218
    .line 219
    iget-object v0, v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 220
    .line 221
    move-object/from16 v18, v4

    .line 222
    .line 223
    move-object v4, v0

    .line 224
    move-object v0, v2

    .line 225
    move-object/from16 v2, v18

    .line 226
    .line 227
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/compose/components/TabsBoxKt;->TwoButtonBottomBar(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_5
    move-object v5, v1

    .line 232
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 233
    .line 234
    .line 235
    :goto_2
    return-object v9

    .line 236
    :pswitch_3
    move-object/from16 v14, p1

    .line 237
    .line 238
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 239
    .line 240
    move-object/from16 v0, p2

    .line 241
    .line 242
    check-cast v0, Ljava/lang/Integer;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    and-int/lit8 v1, v0, 0x3

    .line 249
    .line 250
    if-eq v1, v7, :cond_6

    .line 251
    .line 252
    move v1, v10

    .line 253
    goto :goto_3

    .line 254
    :cond_6
    move v1, v8

    .line 255
    :goto_3
    and-int/2addr v0, v10

    .line 256
    invoke-virtual {v14, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_9

    .line 261
    .line 262
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 263
    .line 264
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 269
    .line 270
    iget-wide v12, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 271
    .line 272
    const/16 v15, 0x30

    .line 273
    .line 274
    const/16 v16, 0x1

    .line 275
    .line 276
    const/4 v10, 0x0

    .line 277
    const/high16 v11, 0x3f000000    # 0.5f

    .line 278
    .line 279
    invoke-static/range {v10 .. v16}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    if-nez v0, :cond_7

    .line 291
    .line 292
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 293
    .line 294
    if-ne v1, v0, :cond_8

    .line 295
    .line 296
    :cond_7
    new-instance v1, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 297
    .line 298
    const/4 v0, 0x3

    .line 299
    invoke-direct {v1, v0, v3}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :cond_8
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 306
    .line 307
    invoke-static {v1, v2, v14, v8}, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->MainBottomBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 312
    .line 313
    .line 314
    :goto_4
    return-object v9

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
