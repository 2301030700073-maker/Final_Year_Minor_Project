.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;->f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    move-object/from16 v6, p2

    .line 18
    .line 19
    check-cast v6, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    and-int/lit8 v7, v6, 0x3

    .line 26
    .line 27
    if-eq v7, v3, :cond_0

    .line 28
    .line 29
    move v3, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v3, v4

    .line 32
    :goto_0
    and-int/2addr v6, v5

    .line 33
    invoke-virtual {v1, v6, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    iget-object v6, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;->f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 40
    .line 41
    invoke-virtual {v6}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->scrollToGames:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    move v7, v5

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v7, v4

    .line 76
    :goto_1
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 81
    .line 82
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v9, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 91
    .line 92
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 93
    .line 94
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getActivityTabModules()Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationResults()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    xor-int/lit8 v11, v0, 0x1

    .line 107
    .line 108
    sget-object v0, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 109
    .line 110
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 119
    .line 120
    filled-new-array {v3}, [Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v0, v3}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    invoke-virtual {v6}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-boolean v13, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->shouldRefreshTimelineSilently:Z

    .line 133
    .line 134
    invoke-virtual {v6}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->readingHistoryState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 139
    .line 140
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    move-object v15, v0

    .line 149
    check-cast v15, Lorg/wikipedia/util/UiState;

    .line 150
    .line 151
    invoke-virtual {v6}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->donationUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 156
    .line 157
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    move-object/from16 v16, v0

    .line 166
    .line 167
    check-cast v16, Lorg/wikipedia/util/UiState;

    .line 168
    .line 169
    invoke-virtual {v6}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->wikiGamesUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 174
    .line 175
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    move-object/from16 v17, v0

    .line 184
    .line 185
    check-cast v17, Lorg/wikipedia/util/UiState;

    .line 186
    .line 187
    invoke-virtual {v6}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->impactUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 192
    .line 193
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    move-object/from16 v18, v0

    .line 202
    .line 203
    check-cast v18, Lorg/wikipedia/util/UiState;

    .line 204
    .line 205
    invoke-virtual {v6}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->timelineFlow:Lkotlinx/coroutines/flow/SafeFlow;

    .line 210
    .line 211
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    if-nez v3, :cond_2

    .line 220
    .line 221
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 222
    .line 223
    if-ne v4, v3, :cond_3

    .line 224
    .line 225
    :cond_2
    new-instance v4, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;

    .line 226
    .line 227
    const/4 v3, 0x7

    .line 228
    invoke-direct {v4, v6, v3}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_3
    move-object/from16 v20, v4

    .line 235
    .line 236
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 237
    .line 238
    const/16 v22, 0x0

    .line 239
    .line 240
    move-object/from16 v19, v0

    .line 241
    .line 242
    move-object/from16 v21, v1

    .line 243
    .line 244
    invoke-virtual/range {v6 .. v22}, Lorg/wikipedia/activitytab/ActivityTabFragment;->ActivityTabScreen(ZLjava/lang/String;Ljava/lang/String;Lorg/wikipedia/activitytab/ActivityTabModules;ZZZZLorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lorg/wikipedia/util/UiState;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_4
    move-object/from16 v21, v1

    .line 249
    .line 250
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 251
    .line 252
    .line 253
    :goto_2
    return-object v2

    .line 254
    :pswitch_0
    move-object/from16 v1, p1

    .line 255
    .line 256
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 257
    .line 258
    move-object/from16 v6, p2

    .line 259
    .line 260
    check-cast v6, Ljava/lang/Integer;

    .line 261
    .line 262
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    and-int/lit8 v7, v6, 0x3

    .line 267
    .line 268
    if-eq v7, v3, :cond_5

    .line 269
    .line 270
    move v4, v5

    .line 271
    :cond_5
    and-int/lit8 v3, v6, 0x1

    .line 272
    .line 273
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_6

    .line 278
    .line 279
    new-instance v3, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;

    .line 280
    .line 281
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;->f$0:Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 282
    .line 283
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda18;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V

    .line 284
    .line 285
    .line 286
    const v0, -0x2cba33af

    .line 287
    .line 288
    .line 289
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const/16 v3, 0x30

    .line 294
    .line 295
    const/4 v4, 0x0

    .line 296
    invoke-static {v4, v0, v1, v3, v5}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 301
    .line 302
    .line 303
    :goto_3
    return-object v2

    .line 304
    nop

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
