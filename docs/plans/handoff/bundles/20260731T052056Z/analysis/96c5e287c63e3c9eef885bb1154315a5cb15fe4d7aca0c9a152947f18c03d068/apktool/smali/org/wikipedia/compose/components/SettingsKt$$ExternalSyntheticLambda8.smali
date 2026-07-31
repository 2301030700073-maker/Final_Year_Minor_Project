.class public final synthetic Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 14
    iput p1, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-boolean p4, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$0:Z

    iput-object p2, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/PinnedScrollBehavior;ZLkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$0:Z

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;ZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 15
    const/4 p4, 0x1

    iput p4, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$0:Z

    iput-object p3, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/language/AppLanguageState;Ljava/lang/String;ZI)V
    .locals 0

    .line 16
    const/4 p4, 0x2

    iput p4, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    iput-boolean p3, p0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-boolean v4, v0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$0:Z

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    iget-object v7, v0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, v0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v17, v8

    .line 22
    .line 23
    check-cast v17, Landroidx/compose/material3/PinnedScrollBehavior;

    .line 24
    .line 25
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    move-object/from16 v0, p1

    .line 28
    .line 29
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    move-object/from16 v1, p2

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    and-int/lit8 v2, v1, 0x3

    .line 40
    .line 41
    if-eq v2, v5, :cond_0

    .line 42
    .line 43
    move v3, v9

    .line 44
    :cond_0
    and-int/2addr v1, v9

    .line 45
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;

    .line 52
    .line 53
    invoke-direct {v1, v5, v4}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;-><init>(IZ)V

    .line 54
    .line 55
    .line 56
    const v2, -0x66fee79d

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;

    .line 64
    .line 65
    invoke-direct {v1, v4, v7}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    const v2, -0x492e6b5f

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    sget v1, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 76
    .line 77
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 84
    .line 85
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 92
    .line 93
    iget-wide v4, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 94
    .line 95
    const-wide/16 v22, 0x0

    .line 96
    .line 97
    const/16 v25, 0x3c

    .line 98
    .line 99
    move-object/from16 v24, v0

    .line 100
    .line 101
    move-wide/from16 v18, v2

    .line 102
    .line 103
    move-wide/from16 v20, v4

    .line 104
    .line 105
    invoke-static/range {v18 .. v25}, Landroidx/compose/material3/TopAppBarDefaults;->topAppBarColors-5tl4gsc(JJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/TopAppBarColors;

    .line 106
    .line 107
    .line 108
    move-result-object v16

    .line 109
    move-object/from16 v18, v24

    .line 110
    .line 111
    const/16 v19, 0x186

    .line 112
    .line 113
    const/16 v20, 0x3a

    .line 114
    .line 115
    const/4 v11, 0x0

    .line 116
    const/4 v13, 0x0

    .line 117
    const/4 v14, 0x0

    .line 118
    const/4 v15, 0x0

    .line 119
    invoke-static/range {v10 .. v20}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;Landroidx/compose/runtime/GapComposer;II)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    move-object/from16 v18, v0

    .line 124
    .line 125
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-object v6

    .line 129
    :pswitch_0
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 130
    .line 131
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 132
    .line 133
    move-object/from16 v15, p1

    .line 134
    .line 135
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 136
    .line 137
    move-object/from16 v1, p2

    .line 138
    .line 139
    check-cast v1, Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    and-int/lit8 v4, v1, 0x3

    .line 146
    .line 147
    if-eq v4, v5, :cond_2

    .line 148
    .line 149
    move v3, v9

    .line 150
    :cond_2
    and-int/2addr v1, v9

    .line 151
    invoke-virtual {v15, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    iget-boolean v0, v0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$0:Z

    .line 158
    .line 159
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    or-int/2addr v1, v3

    .line 168
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-nez v1, :cond_3

    .line 173
    .line 174
    if-ne v3, v2, :cond_4

    .line 175
    .line 176
    :cond_3
    new-instance v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda4;

    .line 177
    .line 178
    invoke-direct {v3, v0, v8, v7, v9}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda4;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 185
    .line 186
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 187
    .line 188
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 193
    .line 194
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 195
    .line 196
    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 197
    .line 198
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Landroidx/compose/material3/ColorScheme;

    .line 203
    .line 204
    iget-wide v7, v7, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 205
    .line 206
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Landroidx/compose/material3/ColorScheme;

    .line 211
    .line 212
    iget-wide v9, v2, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 213
    .line 214
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 219
    .line 220
    iget-wide v12, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 221
    .line 222
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 227
    .line 228
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 229
    .line 230
    move-wide/from16 v16, v4

    .line 231
    .line 232
    move-wide/from16 v18, v9

    .line 233
    .line 234
    move-object/from16 v20, v15

    .line 235
    .line 236
    move-wide v10, v1

    .line 237
    move-wide v14, v7

    .line 238
    invoke-static/range {v10 .. v20}, Landroidx/compose/material3/CardKt;->colors-V1nXRL4(JJJJJLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SwitchColors;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    move-object/from16 v15, v20

    .line 243
    .line 244
    const/16 v16, 0x0

    .line 245
    .line 246
    const/4 v12, 0x0

    .line 247
    const/4 v13, 0x0

    .line 248
    move v10, v0

    .line 249
    move-object v11, v3

    .line 250
    invoke-static/range {v10 .. v16}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_5
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 255
    .line 256
    .line 257
    :goto_1
    return-object v6

    .line 258
    :pswitch_1
    check-cast v8, Lorg/wikipedia/util/Resource;

    .line 259
    .line 260
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 261
    .line 262
    move-object/from16 v15, p1

    .line 263
    .line 264
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 265
    .line 266
    move-object/from16 v0, p2

    .line 267
    .line 268
    check-cast v0, Ljava/lang/Integer;

    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    and-int/lit8 v1, v0, 0x3

    .line 275
    .line 276
    if-eq v1, v5, :cond_6

    .line 277
    .line 278
    move v1, v9

    .line 279
    goto :goto_2

    .line 280
    :cond_6
    move v1, v3

    .line 281
    :goto_2
    and-int/2addr v0, v9

    .line 282
    invoke-virtual {v15, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_a

    .line 287
    .line 288
    if-eqz v4, :cond_8

    .line 289
    .line 290
    instance-of v0, v8, Lorg/wikipedia/util/Resource$Success;

    .line 291
    .line 292
    if-eqz v0, :cond_8

    .line 293
    .line 294
    check-cast v8, Lorg/wikipedia/util/Resource$Success;

    .line 295
    .line 296
    iget-object v0, v8, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 299
    .line 300
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 301
    .line 302
    check-cast v0, Ljava/util/Collection;

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_7

    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_7
    move v9, v3

    .line 312
    :cond_8
    :goto_3
    const v0, 0x7f080113

    .line 313
    .line 314
    .line 315
    invoke-static {v0, v3, v15}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    const v0, 0x7f12083f

    .line 320
    .line 321
    .line 322
    invoke-static {v0, v15}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 327
    .line 328
    const/high16 v1, 0x42400000    # 48.0f

    .line 329
    .line 330
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const/4 v1, 0x0

    .line 335
    const/16 v2, 0xe

    .line 336
    .line 337
    invoke-static {v2, v0, v1, v7, v9}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-eqz v9, :cond_9

    .line 342
    .line 343
    const/high16 v1, 0x3f800000    # 1.0f

    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_9
    const/high16 v1, 0x3f000000    # 0.5f

    .line 347
    .line 348
    :goto_4
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    const/high16 v1, 0x41400000    # 12.0f

    .line 353
    .line 354
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 359
    .line 360
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 365
    .line 366
    iget-wide v13, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 367
    .line 368
    const/16 v16, 0x8

    .line 369
    .line 370
    const/16 v17, 0x0

    .line 371
    .line 372
    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 373
    .line 374
    .line 375
    goto :goto_5

    .line 376
    :cond_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 377
    .line 378
    .line 379
    :goto_5
    return-object v6

    .line 380
    :pswitch_2
    check-cast v8, Lorg/wikipedia/language/AppLanguageState;

    .line 381
    .line 382
    check-cast v7, Ljava/lang/String;

    .line 383
    .line 384
    move-object/from16 v0, p1

    .line 385
    .line 386
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 387
    .line 388
    move-object/from16 v1, p2

    .line 389
    .line 390
    check-cast v1, Ljava/lang/Integer;

    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    invoke-static {v8, v7, v4, v0, v1}, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt;->InitialOnboardingLanguageItem(Lorg/wikipedia/language/AppLanguageState;Ljava/lang/String;ZLandroidx/compose/runtime/GapComposer;I)V

    .line 400
    .line 401
    .line 402
    return-object v6

    .line 403
    :pswitch_3
    check-cast v8, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

    .line 404
    .line 405
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 406
    .line 407
    move-object/from16 v0, p1

    .line 408
    .line 409
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 410
    .line 411
    move-object/from16 v1, p2

    .line 412
    .line 413
    check-cast v1, Ljava/lang/Integer;

    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    invoke-static {v8, v4, v7, v0, v1}, Lokio/Options$Companion;->OnThisDayGameCountdown(Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 423
    .line 424
    .line 425
    return-object v6

    .line 426
    :pswitch_4
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 427
    .line 428
    check-cast v7, Lorg/wikipedia/compose/components/ToggleSettingItem;

    .line 429
    .line 430
    move-object/from16 v15, p1

    .line 431
    .line 432
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 433
    .line 434
    move-object/from16 v1, p2

    .line 435
    .line 436
    check-cast v1, Ljava/lang/Integer;

    .line 437
    .line 438
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    and-int/lit8 v4, v1, 0x3

    .line 443
    .line 444
    if-eq v4, v5, :cond_b

    .line 445
    .line 446
    move v3, v9

    .line 447
    :cond_b
    and-int/2addr v1, v9

    .line 448
    invoke-virtual {v15, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-eqz v1, :cond_e

    .line 453
    .line 454
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    or-int/2addr v1, v3

    .line 463
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    if-nez v1, :cond_c

    .line 468
    .line 469
    if-ne v3, v2, :cond_d

    .line 470
    .line 471
    :cond_c
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 472
    .line 473
    const/16 v1, 0xb

    .line 474
    .line 475
    invoke-direct {v3, v1, v8, v7}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    :cond_d
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 482
    .line 483
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 484
    .line 485
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 490
    .line 491
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 492
    .line 493
    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 494
    .line 495
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v7

    .line 499
    check-cast v7, Landroidx/compose/material3/ColorScheme;

    .line 500
    .line 501
    iget-wide v7, v7, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 502
    .line 503
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    check-cast v2, Landroidx/compose/material3/ColorScheme;

    .line 508
    .line 509
    iget-wide v9, v2, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 510
    .line 511
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 516
    .line 517
    iget-wide v12, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 518
    .line 519
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 524
    .line 525
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 526
    .line 527
    move-wide/from16 v16, v4

    .line 528
    .line 529
    move-wide/from16 v18, v9

    .line 530
    .line 531
    move-object/from16 v20, v15

    .line 532
    .line 533
    move-wide v10, v1

    .line 534
    move-wide v14, v7

    .line 535
    invoke-static/range {v10 .. v20}, Landroidx/compose/material3/CardKt;->colors-V1nXRL4(JJJJJLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SwitchColors;

    .line 536
    .line 537
    .line 538
    move-result-object v14

    .line 539
    move-object/from16 v15, v20

    .line 540
    .line 541
    const/16 v16, 0x0

    .line 542
    .line 543
    iget-boolean v10, v0, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;->f$0:Z

    .line 544
    .line 545
    const/4 v12, 0x0

    .line 546
    const/4 v13, 0x0

    .line 547
    move-object v11, v3

    .line 548
    invoke-static/range {v10 .. v16}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 549
    .line 550
    .line 551
    goto :goto_6

    .line 552
    :cond_e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 553
    .line 554
    .line 555
    :goto_6
    return-object v6

    .line 556
    nop

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
