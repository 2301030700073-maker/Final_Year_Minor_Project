.class public final synthetic Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroidx/compose/foundation/pager/DefaultPagerState;

.field public final synthetic f$4:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:Landroidx/compose/runtime/State;

.field public final synthetic f$8:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/runtime/State;Landroid/content/Context;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/runtime/State;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$3:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$4:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$5:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$7:Landroidx/compose/runtime/State;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$8:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/pager/PagerScopeImpl;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move-object/from16 v15, p3

    .line 16
    .line 17
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v3, p4

    .line 20
    .line 21
    check-cast v3, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v7, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lorg/wikipedia/feed/personalization/PersonalizationPage;

    .line 36
    .line 37
    sget-object v2, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aget v1, v2, v1

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    const/4 v11, 0x0

    .line 47
    if-eq v1, v2, :cond_e

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    sget-object v3, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 51
    .line 52
    iget-object v5, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$2:Landroid/content/Context;

    .line 53
    .line 54
    iget-object v8, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$3:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 55
    .line 56
    iget-object v9, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$4:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 57
    .line 58
    iget-object v6, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$8:Ljava/util/Map;

    .line 59
    .line 60
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 61
    .line 62
    if-eq v1, v2, :cond_5

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    if-ne v1, v2, :cond_4

    .line 66
    .line 67
    const v1, -0x5d31095d

    .line 68
    .line 69
    .line 70
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 74
    .line 75
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 76
    .line 77
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 82
    .line 83
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 84
    .line 85
    invoke-static {v1, v13, v14, v3}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    .line 88
    move-result-object v16

    .line 89
    const/16 v20, 0x0

    .line 90
    .line 91
    const/16 v21, 0xd

    .line 92
    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const/high16 v18, 0x42200000    # 40.0f

    .line 96
    .line 97
    const/16 v19, 0x0

    .line 98
    .line 99
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$7:Landroidx/compose/runtime/State;

    .line 104
    .line 105
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;

    .line 110
    .line 111
    iget-object v1, v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->selectedType:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 112
    .line 113
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;

    .line 118
    .line 119
    iget-object v2, v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->communityState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 120
    .line 121
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;

    .line 126
    .line 127
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;->personalizedState:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 128
    .line 129
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    or-int/2addr v4, v10

    .line 138
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    or-int/2addr v4, v10

    .line 143
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    or-int/2addr v4, v10

    .line 148
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    if-nez v4, :cond_0

    .line 153
    .line 154
    if-ne v10, v12, :cond_1

    .line 155
    .line 156
    :cond_0
    new-instance v4, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;

    .line 157
    .line 158
    const/4 v10, 0x2

    .line 159
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    move-object v10, v4

    .line 166
    :cond_1
    move-object v13, v10

    .line 167
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 168
    .line 169
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    or-int/2addr v4, v10

    .line 178
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    or-int/2addr v4, v10

    .line 183
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    or-int/2addr v4, v10

    .line 188
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    if-nez v4, :cond_2

    .line 193
    .line 194
    if-ne v10, v12, :cond_3

    .line 195
    .line 196
    :cond_2
    new-instance v4, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;

    .line 197
    .line 198
    const/4 v10, 0x3

    .line 199
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    move-object v10, v4

    .line 206
    :cond_3
    move-object v8, v10

    .line 207
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 208
    .line 209
    const/4 v10, 0x0

    .line 210
    move-object v6, v0

    .line 211
    move-object v4, v1

    .line 212
    move-object v5, v2

    .line 213
    move-object v7, v13

    .line 214
    move-object v9, v15

    .line 215
    invoke-static/range {v3 .. v10}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt;->HomePreferenceScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_4
    const v0, 0x60161598

    .line 224
    .line 225
    .line 226
    invoke-static {v15, v0, v11}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    throw v0

    .line 231
    :cond_5
    const v1, -0x5d5024f9

    .line 232
    .line 233
    .line 234
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 235
    .line 236
    .line 237
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 238
    .line 239
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 240
    .line 241
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 246
    .line 247
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 248
    .line 249
    invoke-static {v1, v13, v14, v3}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 250
    .line 251
    .line 252
    move-result-object v16

    .line 253
    const/16 v20, 0x0

    .line 254
    .line 255
    const/16 v21, 0xd

    .line 256
    .line 257
    const/16 v17, 0x0

    .line 258
    .line 259
    const/high16 v18, 0x42200000    # 40.0f

    .line 260
    .line 261
    const/16 v19, 0x0

    .line 262
    .line 263
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    iget-object v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/runtime/State;

    .line 268
    .line 269
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    check-cast v2, Lorg/wikipedia/feed/personalization/interest/InterestUiState;

    .line 274
    .line 275
    iget-object v2, v2, Lorg/wikipedia/feed/personalization/interest/InterestUiState;->topicsList:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    check-cast v4, Lorg/wikipedia/feed/personalization/interest/InterestUiState;

    .line 282
    .line 283
    iget-object v13, v4, Lorg/wikipedia/feed/personalization/interest/InterestUiState;->articlesState:Lorg/wikipedia/feed/personalization/interest/ArticlesState;

    .line 284
    .line 285
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    check-cast v4, Lorg/wikipedia/feed/personalization/interest/InterestUiState;

    .line 290
    .line 291
    iget v14, v4, Lorg/wikipedia/feed/personalization/interest/InterestUiState;->totalSelectedCount:I

    .line 292
    .line 293
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    check-cast v1, Lorg/wikipedia/feed/personalization/interest/InterestUiState;

    .line 298
    .line 299
    iget-object v1, v1, Lorg/wikipedia/feed/personalization/interest/InterestUiState;->languageCode:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    or-int/2addr v4, v10

    .line 310
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    or-int/2addr v4, v10

    .line 315
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v10

    .line 319
    or-int/2addr v4, v10

    .line 320
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    if-nez v4, :cond_6

    .line 325
    .line 326
    if-ne v10, v12, :cond_7

    .line 327
    .line 328
    :cond_6
    new-instance v4, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;

    .line 329
    .line 330
    const/4 v10, 0x0

    .line 331
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    move-object v10, v4

    .line 338
    :cond_7
    move-object/from16 v16, v10

    .line 339
    .line 340
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 341
    .line 342
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    or-int/2addr v4, v10

    .line 351
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    or-int/2addr v4, v10

    .line 356
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    or-int/2addr v4, v10

    .line 361
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    if-nez v4, :cond_8

    .line 366
    .line 367
    if-ne v10, v12, :cond_9

    .line 368
    .line 369
    :cond_8
    new-instance v4, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;

    .line 370
    .line 371
    const/4 v10, 0x1

    .line 372
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    move-object v10, v4

    .line 379
    :cond_9
    move-object/from16 v17, v10

    .line 380
    .line 381
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 382
    .line 383
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    or-int/2addr v4, v10

    .line 392
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    or-int/2addr v4, v10

    .line 397
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    or-int/2addr v4, v10

    .line 402
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v10

    .line 406
    if-nez v4, :cond_a

    .line 407
    .line 408
    if-ne v10, v12, :cond_b

    .line 409
    .line 410
    :cond_a
    new-instance v4, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;

    .line 411
    .line 412
    const/4 v10, 0x0

    .line 413
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    move-object v10, v4

    .line 420
    :cond_b
    move-object/from16 v18, v10

    .line 421
    .line 422
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 423
    .line 424
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v10

    .line 432
    or-int/2addr v4, v10

    .line 433
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v10

    .line 437
    or-int/2addr v4, v10

    .line 438
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v10

    .line 442
    or-int/2addr v4, v10

    .line 443
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v10

    .line 447
    if-nez v4, :cond_c

    .line 448
    .line 449
    if-ne v10, v12, :cond_d

    .line 450
    .line 451
    :cond_c
    new-instance v4, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;

    .line 452
    .line 453
    const/4 v10, 0x1

    .line 454
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    move-object v10, v4

    .line 461
    :cond_d
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 462
    .line 463
    move-object/from16 v9, v16

    .line 464
    .line 465
    const/16 v16, 0x0

    .line 466
    .line 467
    const/4 v8, 0x0

    .line 468
    move v4, v11

    .line 469
    iget-object v11, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$5:Lkotlin/jvm/functions/Function0;

    .line 470
    .line 471
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt$$ExternalSyntheticLambda6;->f$6:Lkotlin/jvm/functions/Function0;

    .line 472
    .line 473
    move-object v7, v1

    .line 474
    move-object v5, v2

    .line 475
    move v6, v14

    .line 476
    move-object/from16 v12, v18

    .line 477
    .line 478
    move-object v14, v0

    .line 479
    move v0, v4

    .line 480
    move-object v4, v13

    .line 481
    move-object v13, v10

    .line 482
    move-object/from16 v10, v17

    .line 483
    .line 484
    invoke-static/range {v3 .. v16}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt;->InterestOnboardingScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/interest/ArticlesState;Ljava/util/ArrayList;ILjava/lang/String;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 488
    .line 489
    .line 490
    goto :goto_0

    .line 491
    :cond_e
    move v0, v11

    .line 492
    const v1, -0x5d53e53f

    .line 493
    .line 494
    .line 495
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 496
    .line 497
    .line 498
    const/high16 v1, 0x3f800000    # 1.0f

    .line 499
    .line 500
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 501
    .line 502
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    const/4 v2, 0x6

    .line 507
    invoke-static {v1, v15, v2, v0}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt;->OnboardingCuriosityScreen(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 511
    .line 512
    .line 513
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 514
    .line 515
    return-object v0
.end method
