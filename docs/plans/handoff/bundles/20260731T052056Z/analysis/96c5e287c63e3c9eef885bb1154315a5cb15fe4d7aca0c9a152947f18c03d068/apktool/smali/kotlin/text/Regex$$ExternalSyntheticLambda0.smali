.class public final synthetic Lkotlin/text/Regex$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 12
    .line 13
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroidx/compose/runtime/State;

    .line 16
    .line 17
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 18
    .line 19
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lorg/wikipedia/util/Resource;

    .line 24
    .line 25
    instance-of p0, p0, Lorg/wikipedia/util/Resource$Loading;

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    const-string v3, "back_click"

    .line 30
    .line 31
    const-string v4, "discover_settings"

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    const/16 v11, 0x1fc

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-static/range {v3 .. v11}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 58
    .line 59
    const/16 v4, 0xc

    .line 60
    .line 61
    invoke-direct {v3, v4, p0, v2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x2

    .line 65
    invoke-static {v0, v1, v2, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 66
    .line 67
    .line 68
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_0
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 74
    .line 75
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Ljava/util/List;

    .line 78
    .line 79
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 80
    .line 81
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->currentRecommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->updateRecommendedReadingListSource(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 93
    .line 94
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListSourceTitlesWithOffset(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    const-string v1, "built_undo_click"

    .line 98
    .line 99
    const-string v2, "discover_settings"

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    const/16 v9, 0x1fc

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    const/4 v7, 0x0

    .line 109
    invoke-static/range {v1 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_1
    const-string p0, "currentRecommendedReadingListSource"

    .line 116
    .line 117
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v2

    .line 121
    :pswitch_1
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 124
    .line 125
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 128
    .line 129
    invoke-virtual {v0, p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->updateGameState(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->animateQuestionsIn()V

    .line 133
    .line 134
    .line 135
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 141
    .line 142
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Lorg/wikipedia/feed/model/WikiGameCard;

    .line 145
    .line 146
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p0

    .line 152
    :pswitch_3
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 155
    .line 156
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p0, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;

    .line 159
    .line 160
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p0

    .line 166
    :pswitch_4
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 169
    .line 170
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Lorg/wikipedia/feed/model/RandomCard;

    .line 173
    .line 174
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_5
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 183
    .line 184
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p0, Lorg/wikipedia/feed/model/PlacesOfInterestCard;

    .line 187
    .line 188
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 192
    .line 193
    return-object p0

    .line 194
    :pswitch_6
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 197
    .line 198
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p0, Lorg/wikipedia/feed/news/NewsItem;

    .line 201
    .line 202
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 206
    .line 207
    return-object p0

    .line 208
    :pswitch_7
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 211
    .line 212
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p0, Lorg/wikipedia/feed/model/BasedOnInterestCard;

    .line 215
    .line 216
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 220
    .line 221
    return-object p0

    .line 222
    :pswitch_8
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 225
    .line 226
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p0, Lorg/wikipedia/feed/image/FeaturedImage;

    .line 229
    .line 230
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 234
    .line 235
    return-object p0

    .line 236
    :pswitch_9
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 239
    .line 240
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast p0, Lorg/wikipedia/feed/model/DiscoverCard;

    .line 243
    .line 244
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 248
    .line 249
    return-object p0

    .line 250
    :pswitch_a
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 253
    .line 254
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast p0, Lorg/wikipedia/feed/model/ContinueReadingCard;

    .line 257
    .line 258
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_b
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 267
    .line 268
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast p0, Lorg/wikipedia/feed/model/BecauseYouReadCard;

    .line 271
    .line 272
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 276
    .line 277
    return-object p0

    .line 278
    :pswitch_c
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 281
    .line 282
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast p0, Lorg/wikipedia/feed/HomeTab;

    .line 285
    .line 286
    invoke-interface {v0, p0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 290
    .line 291
    return-object p0

    .line 292
    :pswitch_d
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 295
    .line 296
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p0, Lorg/wikipedia/feed/HomeTab;

    .line 299
    .line 300
    new-instance v1, Lorg/wikipedia/feed/HomeAction$RefreshTab;

    .line 301
    .line 302
    invoke-direct {v1, p0}, Lorg/wikipedia/feed/HomeAction$RefreshTab;-><init>(Lorg/wikipedia/feed/HomeTab;)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 309
    .line 310
    return-object p0

    .line 311
    :pswitch_e
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 314
    .line 315
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast p0, Lorg/wikipedia/feed/news/NewsCard;

    .line 318
    .line 319
    new-instance v1, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;

    .line 320
    .line 321
    invoke-direct {v1, p0}, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;-><init>(Lorg/wikipedia/feed/model/Card;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 328
    .line 329
    return-object p0

    .line 330
    :pswitch_f
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 333
    .line 334
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    .line 337
    .line 338
    new-instance v1, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;

    .line 339
    .line 340
    invoke-direct {v1, p0}, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;-><init>(Lorg/wikipedia/feed/model/Card;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 347
    .line 348
    return-object p0

    .line 349
    :pswitch_10
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 352
    .line 353
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->toggleDonationReminders(Z)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->saveReminder()V

    .line 361
    .line 362
    .line 363
    sget v0, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 364
    .line 365
    invoke-static {}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->thankYouMessageForSettings()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 373
    .line 374
    return-object p0

    .line 375
    :pswitch_11
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v0, Lorg/wikipedia/donate/donationreminder/DonationReminderDropDownMenuItem;

    .line 378
    .line 379
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 382
    .line 383
    iget-object v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderDropDownMenuItem;->onClick:Lkotlin/jvm/functions/Function0;

    .line 384
    .line 385
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 389
    .line 390
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 394
    .line 395
    return-object p0

    .line 396
    :pswitch_12
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 399
    .line 400
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast p0, Lorg/wikipedia/categories/db/Category;

    .line 403
    .line 404
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 408
    .line 409
    return-object p0

    .line 410
    :pswitch_13
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 413
    .line 414
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 417
    .line 418
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 419
    .line 420
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast p0, Lokhttp3/internal/http2/Settings;

    .line 423
    .line 424
    invoke-virtual {v1, v0, p0}, Lokhttp3/internal/http2/Http2Connection$Listener;->onSettings(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V

    .line 425
    .line 426
    .line 427
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 428
    .line 429
    return-object p0

    .line 430
    :pswitch_14
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 433
    .line 434
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast p0, Lokhttp3/internal/http2/Settings;

    .line 437
    .line 438
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 439
    .line 440
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 441
    .line 442
    .line 443
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 444
    .line 445
    move-object v5, v0

    .line 446
    check-cast v5, Lokhttp3/internal/http2/Http2Connection;

    .line 447
    .line 448
    iget-object v6, v5, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 449
    .line 450
    monitor-enter v6

    .line 451
    :try_start_0
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 452
    :try_start_1
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 453
    .line 454
    new-instance v7, Lokhttp3/internal/http2/Settings;

    .line 455
    .line 456
    invoke-direct {v7}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    move v8, v3

    .line 463
    :goto_0
    const/16 v9, 0xa

    .line 464
    .line 465
    if-ge v8, v9, :cond_3

    .line 466
    .line 467
    shl-int v9, v1, v8

    .line 468
    .line 469
    iget v10, v0, Lokhttp3/internal/http2/Settings;->set:I

    .line 470
    .line 471
    and-int/2addr v9, v10

    .line 472
    if-eqz v9, :cond_2

    .line 473
    .line 474
    iget-object v9, v0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 475
    .line 476
    aget v9, v9, v8

    .line 477
    .line 478
    invoke-virtual {v7, v8, v9}, Lokhttp3/internal/http2/Settings;->set(II)V

    .line 479
    .line 480
    .line 481
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 482
    .line 483
    goto :goto_0

    .line 484
    :cond_3
    move v8, v3

    .line 485
    :goto_1
    if-ge v8, v9, :cond_5

    .line 486
    .line 487
    shl-int v10, v1, v8

    .line 488
    .line 489
    iget v11, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 490
    .line 491
    and-int/2addr v10, v11

    .line 492
    if-eqz v10, :cond_4

    .line 493
    .line 494
    iget-object v10, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 495
    .line 496
    aget v10, v10, v8

    .line 497
    .line 498
    invoke-virtual {v7, v8, v10}, Lokhttp3/internal/http2/Settings;->set(II)V

    .line 499
    .line 500
    .line 501
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 502
    .line 503
    goto :goto_1

    .line 504
    :cond_5
    iput-object v7, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 505
    .line 506
    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 507
    .line 508
    .line 509
    move-result p0

    .line 510
    int-to-long v7, p0

    .line 511
    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 512
    .line 513
    .line 514
    move-result p0

    .line 515
    int-to-long v0, p0

    .line 516
    sub-long/2addr v7, v0

    .line 517
    const-wide/16 v0, 0x0

    .line 518
    .line 519
    cmp-long p0, v7, v0

    .line 520
    .line 521
    if-eqz p0, :cond_7

    .line 522
    .line 523
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/LinkedHashMap;

    .line 524
    .line 525
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_6

    .line 530
    .line 531
    goto :goto_2

    .line 532
    :cond_6
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/LinkedHashMap;

    .line 533
    .line 534
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    new-array v1, v3, [Lokhttp3/internal/http2/Http2Stream;

    .line 539
    .line 540
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    move-object v2, v0

    .line 545
    check-cast v2, [Lokhttp3/internal/http2/Http2Stream;

    .line 546
    .line 547
    goto :goto_2

    .line 548
    :catchall_0
    move-exception v0

    .line 549
    move-object p0, v0

    .line 550
    goto :goto_5

    .line 551
    :cond_7
    :goto_2
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast v0, Lokhttp3/internal/http2/Settings;

    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    iput-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 559
    .line 560
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->settingsListenerQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 561
    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .line 566
    .line 567
    iget-object v9, v5, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 568
    .line 569
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    const-string v9, " onSettings"

    .line 573
    .line 574
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    new-instance v9, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 582
    .line 583
    const/16 v10, 0x9

    .line 584
    .line 585
    invoke-direct {v9, v10, v5, v4}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    invoke-static {v0, v1, v9}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    .line 590
    .line 591
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 592
    :try_start_3
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 593
    .line 594
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v1, Lokhttp3/internal/http2/Settings;

    .line 597
    .line 598
    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 599
    .line 600
    .line 601
    goto :goto_3

    .line 602
    :catchall_1
    move-exception v0

    .line 603
    move-object p0, v0

    .line 604
    goto :goto_6

    .line 605
    :catch_0
    move-exception v0

    .line 606
    :try_start_4
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 607
    .line 608
    invoke-virtual {v5, v1, v1, v0}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 609
    .line 610
    .line 611
    :goto_3
    monitor-exit v6

    .line 612
    if-eqz v2, :cond_9

    .line 613
    .line 614
    array-length v0, v2

    .line 615
    :goto_4
    if-ge v3, v0, :cond_9

    .line 616
    .line 617
    aget-object v1, v2, v3

    .line 618
    .line 619
    monitor-enter v1

    .line 620
    :try_start_5
    iget-wide v4, v1, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    .line 621
    .line 622
    add-long/2addr v4, v7

    .line 623
    iput-wide v4, v1, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    .line 624
    .line 625
    if-lez p0, :cond_8

    .line 626
    .line 627
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 628
    .line 629
    .line 630
    :cond_8
    monitor-exit v1

    .line 631
    add-int/lit8 v3, v3, 0x1

    .line 632
    .line 633
    goto :goto_4

    .line 634
    :catchall_2
    move-exception v0

    .line 635
    move-object p0, v0

    .line 636
    monitor-exit v1

    .line 637
    throw p0

    .line 638
    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 639
    .line 640
    return-object p0

    .line 641
    :goto_5
    :try_start_6
    monitor-exit v5

    .line 642
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 643
    :goto_6
    monitor-exit v6

    .line 644
    throw p0

    .line 645
    :pswitch_15
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 646
    .line 647
    move-object v1, v0

    .line 648
    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    .line 649
    .line 650
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast p0, Lokhttp3/internal/http2/Http2Stream;

    .line 653
    .line 654
    :try_start_7
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 655
    .line 656
    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$Listener;->onStream(Lokhttp3/internal/http2/Http2Stream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 657
    .line 658
    .line 659
    goto :goto_7

    .line 660
    :catch_1
    move-exception v0

    .line 661
    sget-object v2, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 662
    .line 663
    sget-object v2, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 664
    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    const-string v4, "Http2Connection.Listener failure for "

    .line 668
    .line 669
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    const/4 v3, 0x4

    .line 682
    invoke-virtual {v2, v1, v3, v0}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 683
    .line 684
    .line 685
    :try_start_8
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 686
    .line 687
    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 688
    .line 689
    .line 690
    :catch_2
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 691
    .line 692
    return-object p0

    .line 693
    :pswitch_16
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 696
    .line 697
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 698
    .line 699
    check-cast p0, Lkotlinx/serialization/json/Json;

    .line 700
    .line 701
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 702
    .line 703
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 704
    .line 705
    .line 706
    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)V

    .line 707
    .line 708
    .line 709
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    .line 710
    .line 711
    .line 712
    move-result p0

    .line 713
    move v4, v3

    .line 714
    :goto_8
    if-ge v4, p0, :cond_f

    .line 715
    .line 716
    invoke-interface {v0, v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementAnnotations(I)Ljava/util/List;

    .line 717
    .line 718
    .line 719
    move-result-object v5

    .line 720
    new-instance v6, Ljava/util/ArrayList;

    .line 721
    .line 722
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .line 724
    .line 725
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 726
    .line 727
    .line 728
    move-result-object v5

    .line 729
    :cond_a
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 730
    .line 731
    .line 732
    move-result v7

    .line 733
    if-eqz v7, :cond_b

    .line 734
    .line 735
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v7

    .line 739
    instance-of v8, v7, Lkotlinx/serialization/json/JsonNames;

    .line 740
    .line 741
    if-eqz v8, :cond_a

    .line 742
    .line 743
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    goto :goto_9

    .line 747
    :cond_b
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v5

    .line 751
    check-cast v5, Lkotlinx/serialization/json/JsonNames;

    .line 752
    .line 753
    if-eqz v5, :cond_e

    .line 754
    .line 755
    invoke-interface {v5}, Lkotlinx/serialization/json/JsonNames;->names()[Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v5

    .line 759
    if-eqz v5, :cond_e

    .line 760
    .line 761
    array-length v6, v5

    .line 762
    move v7, v3

    .line 763
    :goto_a
    if-ge v7, v6, :cond_e

    .line 764
    .line 765
    aget-object v8, v5, v7

    .line 766
    .line 767
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Landroidx/room/Room;

    .line 768
    .line 769
    .line 770
    move-result-object v9

    .line 771
    sget-object v10, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    .line 772
    .line 773
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v9

    .line 777
    if-eqz v9, :cond_c

    .line 778
    .line 779
    const-string v9, "enum value"

    .line 780
    .line 781
    goto :goto_b

    .line 782
    :cond_c
    const-string v9, "property"

    .line 783
    .line 784
    :goto_b
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    move-result v10

    .line 788
    if-nez v10, :cond_d

    .line 789
    .line 790
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 791
    .line 792
    .line 793
    move-result-object v9

    .line 794
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    add-int/lit8 v7, v7, 0x1

    .line 798
    .line 799
    goto :goto_a

    .line 800
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    const-string v3, "The suggested name \'"

    .line 803
    .line 804
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    const-string v3, "\' for "

    .line 811
    .line 812
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    const/16 v3, 0x20

    .line 819
    .line 820
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-interface {v0, v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v4

    .line 827
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const-string v4, " is already one of the names for "

    .line 831
    .line 832
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-static {v8, v1}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    check-cast v1, Ljava/lang/Number;

    .line 846
    .line 847
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 848
    .line 849
    .line 850
    move-result v1

    .line 851
    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    const-string v1, " in "

    .line 859
    .line 860
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object p0

    .line 870
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    .line 871
    .line 872
    const/4 v1, -0x1

    .line 873
    invoke-static {v1, p0, v2, v2, v2}, Lkotlinx/serialization/json/internal/WriteModeKt;->formatDecodingException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object p0

    .line 877
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    throw v0

    .line 881
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 882
    .line 883
    goto/16 :goto_8

    .line 884
    .line 885
    :cond_f
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 886
    .line 887
    .line 888
    move-result p0

    .line 889
    if-eqz p0, :cond_10

    .line 890
    .line 891
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 892
    .line 893
    :cond_10
    return-object v1

    .line 894
    :pswitch_17
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 895
    .line 896
    check-cast v0, Ljava/lang/String;

    .line 897
    .line 898
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 899
    .line 900
    check-cast p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 901
    .line 902
    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$3:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 903
    .line 904
    new-array v2, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 905
    .line 906
    new-instance v3, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 907
    .line 908
    const/16 v4, 0x1a

    .line 909
    .line 910
    invoke-direct {v3, v4, p0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 911
    .line 912
    .line 913
    invoke-static {v0, v1, v2, v3}, Lkotlin/text/RegexKt;->buildSerialDescriptor(Ljava/lang/String;Landroidx/room/Room;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 914
    .line 915
    .line 916
    move-result-object p0

    .line 917
    return-object p0

    .line 918
    :pswitch_18
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 919
    .line 920
    check-cast v0, Lkotlinx/serialization/internal/EnumSerializer;

    .line 921
    .line 922
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast p0, Ljava/lang/String;

    .line 925
    .line 926
    new-instance v1, Lkotlinx/serialization/internal/EnumDescriptor;

    .line 927
    .line 928
    iget-object v0, v0, Lkotlinx/serialization/internal/EnumSerializer;->values:[Ljava/lang/Enum;

    .line 929
    .line 930
    array-length v2, v0

    .line 931
    invoke-direct {v1, v2, p0}, Lkotlinx/serialization/internal/EnumDescriptor;-><init>(ILjava/lang/String;)V

    .line 932
    .line 933
    .line 934
    array-length p0, v0

    .line 935
    move v2, v3

    .line 936
    :goto_c
    if-ge v2, p0, :cond_11

    .line 937
    .line 938
    aget-object v4, v0, v2

    .line 939
    .line 940
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v4

    .line 944
    invoke-virtual {v1, v4, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 945
    .line 946
    .line 947
    add-int/lit8 v2, v2, 0x1

    .line 948
    .line 949
    goto :goto_c

    .line 950
    :cond_11
    return-object v1

    .line 951
    :pswitch_19
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 952
    .line 953
    check-cast v0, Ljava/lang/String;

    .line 954
    .line 955
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 956
    .line 957
    check-cast p0, Lkotlinx/serialization/SealedClassSerializer;

    .line 958
    .line 959
    sget-object v1, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;->INSTANCE$1:Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    .line 960
    .line 961
    new-array v2, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 962
    .line 963
    new-instance v4, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda1;

    .line 964
    .line 965
    invoke-direct {v4, p0, v3}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda1;-><init>(Lkotlinx/serialization/SealedClassSerializer;I)V

    .line 966
    .line 967
    .line 968
    invoke-static {v0, v1, v2, v4}, Lkotlin/text/RegexKt;->buildSerialDescriptor(Ljava/lang/String;Landroidx/room/Room;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 969
    .line 970
    .line 971
    move-result-object p0

    .line 972
    return-object p0

    .line 973
    :pswitch_1a
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 974
    .line 975
    check-cast v0, Lcoil3/gif/AnimatedImageDecoder;

    .line 976
    .line 977
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 980
    .line 981
    invoke-static {v0, p0}, Lcoil3/gif/AnimatedImageDecoder;->decode$lambda$0(Lcoil3/gif/AnimatedImageDecoder;Lkotlin/jvm/internal/Ref$BooleanRef;)Landroid/graphics/drawable/Drawable;

    .line 982
    .line 983
    .line 984
    move-result-object p0

    .line 985
    return-object p0

    .line 986
    :pswitch_1b
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 987
    .line 988
    check-cast v0, Lcoil3/fetch/Fetcher$Factory;

    .line 989
    .line 990
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 991
    .line 992
    check-cast p0, Lkotlin/reflect/KClass;

    .line 993
    .line 994
    new-instance v1, Lkotlin/Pair;

    .line 995
    .line 996
    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 997
    .line 998
    .line 999
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1000
    .line 1001
    .line 1002
    move-result-object p0

    .line 1003
    return-object p0

    .line 1004
    :pswitch_1c
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1005
    .line 1006
    check-cast v0, Lkotlin/text/Regex;

    .line 1007
    .line 1008
    iget-object p0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1009
    .line 1010
    check-cast p0, Ljava/lang/CharSequence;

    .line 1011
    .line 1012
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    .line 1014
    .line 1015
    iget-object v0, v0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    .line 1016
    .line 1017
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1022
    .line 1023
    .line 1024
    invoke-static {v0, v3, p0}, Lkotlin/text/RegexKt;->findNext(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p0

    .line 1028
    return-object p0

    .line 1029
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
