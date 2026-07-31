.class public final synthetic Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;
.implements Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lorg/wikipedia/views/SearchActionProvider$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;

    .line 11
    .line 12
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 13
    .line 14
    sget v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->$r8$clinit:I

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 20
    .line 21
    if-ne p1, v1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 24
    .line 25
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 26
    .line 27
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setYearInReviewModelData(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;->proceed()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :sswitch_0
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFilterActivity;

    .line 35
    .line 36
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 37
    .line 38
    sget v0, Lorg/wikipedia/watchlist/WatchlistFilterActivity;->$r8$clinit:I

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/watchlist/WatchlistFilterActivity;->setUpRecyclerView$3()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :sswitch_1
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;

    .line 48
    .line 49
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 50
    .line 51
    sget-object v0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->NAMESPACE_LIST:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 57
    .line 58
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 63
    .line 64
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterLangCode()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterLangCode()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "commons"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getUserContribFilterLangCode()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string/jumbo v0, "wikidata"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const v0, 0x7f12069d

    .line 113
    .line 114
    .line 115
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribFilterActivity;->binding:Lorg/wikipedia/databinding/ActivityWatchlistFiltersBinding;

    .line 119
    .line 120
    if-eqz p1, :cond_2

    .line 121
    .line 122
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityWatchlistFiltersBinding;->watchlistFiltersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;

    .line 125
    .line 126
    invoke-direct {v0, p0, p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$RecyclerAdapter;-><init>(Lorg/wikipedia/usercontrib/UserContribFilterActivity;Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    const-string p0, "binding"

    .line 134
    .line 135
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v2

    .line 139
    :sswitch_2
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 140
    .line 141
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 142
    .line 143
    sget v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;->$r8$clinit:I

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 149
    .line 150
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance v0, Lkotlin/io/LinesSequence;

    .line 155
    .line 156
    const/4 v1, 0x2

    .line 157
    invoke-direct {v0, v1, p1}, Lkotlin/io/LinesSequence;-><init>(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;->appLanguagesPreFilterList:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Ljava/lang/Iterable;

    .line 167
    .line 168
    new-instance v3, Lkotlin/io/FileTreeWalk;

    .line 169
    .line 170
    invoke-direct {v3, v1, v2, v0}, Lkotlin/io/FileTreeWalk;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    const/16 v1, 0x1a

    .line 176
    .line 177
    invoke-direct {v0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 178
    .line 179
    .line 180
    new-instance v1, Lkotlin/sequences/TransformingSequence;

    .line 181
    .line 182
    invoke-direct {v1, v3, v0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    const/16 v10, 0xff

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    const/4 v2, 0x0

    .line 213
    const/4 v3, 0x0

    .line 214
    const/4 v4, 0x0

    .line 215
    const/4 v5, 0x0

    .line 216
    const/4 v6, 0x0

    .line 217
    const/4 v7, 0x0

    .line 218
    invoke-static/range {v1 .. v10}, Lokhttp3/Cookie$Companion;->getActionDataString$default(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const-string v1, "filters_state_change"

    .line 223
    .line 224
    const-string v2, "pt_filters"

    .line 225
    .line 226
    invoke-static {v1, v2, v0}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 230
    .line 231
    .line 232
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 245
    .line 246
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast p1, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-nez p1, :cond_3

    .line 257
    .line 258
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    const v0, 0x7f120665

    .line 270
    .line 271
    .line 272
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;->setUpRecyclerView$2()V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :sswitch_3
    check-cast p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 280
    .line 281
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 287
    .line 288
    const/16 v1, 0x61

    .line 289
    .line 290
    if-ne v0, v1, :cond_6

    .line 291
    .line 292
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 293
    .line 294
    if-eqz p1, :cond_4

    .line 295
    .line 296
    const-string v0, "returnLinkTitle"

    .line 297
    .line 298
    const-class v1, Lorg/wikipedia/page/PageTitle;

    .line 299
    .line 300
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Landroid/os/Parcelable;

    .line 305
    .line 306
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_4
    move-object p1, v2

    .line 310
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    const/4 v10, 0x0

    .line 314
    const/16 v11, 0x1fc

    .line 315
    .line 316
    const-string v3, "search_click"

    .line 317
    .line 318
    const-string v4, "rrl_interests_select"

    .line 319
    .line 320
    const/4 v5, 0x0

    .line 321
    const/4 v6, 0x0

    .line 322
    const/4 v7, 0x0

    .line 323
    const/4 v8, 0x0

    .line 324
    const/4 v9, 0x0

    .line 325
    invoke-static/range {v3 .. v11}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 333
    .line 334
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 339
    .line 340
    if-eqz v1, :cond_5

    .line 341
    .line 342
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_5
    move-object v0, v2

    .line 346
    :goto_1
    if-eqz v0, :cond_6

    .line 347
    .line 348
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 349
    .line 350
    invoke-static {p1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 355
    .line 356
    iget-object v3, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 357
    .line 358
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    iget-object v3, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 363
    .line 364
    invoke-static {v3, p1}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    new-instance v3, Lorg/wikipedia/util/Resource$Success;

    .line 369
    .line 370
    const/16 v4, 0x39

    .line 371
    .line 372
    invoke-static {v0, v1, p1, v4}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->copy$default(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;Ljava/util/ArrayList;Ljava/util/LinkedHashSet;I)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-direct {v3, p1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    :cond_6
    return-void

    .line 383
    :sswitch_4
    check-cast p0, Lorg/wikipedia/search/SearchFragment;

    .line 384
    .line 385
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 386
    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 391
    .line 392
    const/4 v3, -0x1

    .line 393
    if-ne v0, v3, :cond_b

    .line 394
    .line 395
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 396
    .line 397
    iget-object v3, p0, Lorg/wikipedia/search/SearchFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 398
    .line 399
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    :try_start_0
    sget-object v4, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 408
    .line 409
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    new-instance v5, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 413
    .line 414
    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 415
    .line 416
    invoke-direct {v5, v6, v1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v5, v0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    goto :goto_2

    .line 424
    :catch_0
    move-exception v0

    .line 425
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 426
    .line 427
    .line 428
    move-object v0, v2

    .line 429
    :goto_2
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment;->initialLanguageList:Ljava/lang/String;

    .line 430
    .line 431
    if-eqz v1, :cond_a

    .line 432
    .line 433
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-nez v0, :cond_7

    .line 438
    .line 439
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    const/16 v1, 0x62

    .line 444
    .line 445
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 446
    .line 447
    .line 448
    :cond_7
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 449
    .line 450
    const/4 v0, 0x0

    .line 451
    if-eqz p1, :cond_9

    .line 452
    .line 453
    const-string v1, "activity_result_lang_position_data"

    .line 454
    .line 455
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-eqz v2, :cond_8

    .line 460
    .line 461
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    goto :goto_3

    .line 466
    :cond_8
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 475
    .line 476
    check-cast p1, Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result p1

    .line 482
    if-eqz p1, :cond_9

    .line 483
    .line 484
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 493
    .line 494
    check-cast p1, Ljava/util/ArrayList;

    .line 495
    .line 496
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 497
    .line 498
    .line 499
    move-result p1

    .line 500
    goto :goto_3

    .line 501
    :cond_9
    move p1, v0

    .line 502
    :goto_3
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 503
    .line 504
    const v1, 0x7f12067b

    .line 505
    .line 506
    .line 507
    invoke-static {v1, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 508
    .line 509
    .line 510
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 511
    .line 512
    .line 513
    move-result p1

    .line 514
    invoke-virtual {p0, p1}, Lorg/wikipedia/search/SearchFragment;->setUpLanguageScroll(I)V

    .line 515
    .line 516
    .line 517
    goto :goto_4

    .line 518
    :cond_a
    const-string p0, "initialLanguageList"

    .line 519
    .line 520
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw v2

    .line 524
    :cond_b
    :goto_4
    return-void

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public onDeleted(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lorg/wikipedia/readinglist/LongPressMenu;->deleteOrShowDialog$lambda$0$0(Lorg/wikipedia/readinglist/LongPressMenu;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onFinish(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/views/PageItemView;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/PageItemView;->setViewsRead(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lorg/wikipedia/settings/PreferenceMultiLine;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const p1, 0x7f1201df

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1

    .line 38
    :pswitch_0
    check-cast p0, Lorg/wikipedia/settings/SettingsPreferenceLoader;

    .line 39
    .line 40
    iget-object p0, p0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Landroid/content/Intent;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .line 52
    .line 53
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v3, 0x1a

    .line 56
    .line 57
    const-string v4, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 58
    .line 59
    if-lt v2, v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v2, "android.provider.extra.APP_PACKAGE"

    .line 73
    .line 74
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "app_package"

    .line 90
    .line 91
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 103
    .line 104
    const-string v2, "app_uid"

    .line 105
    .line 106
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->onQueryChange(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;->onQueryChange(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7f12007f

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/views/EditNoticesDialog;

    .line 12
    .line 13
    const-string v0, "Link clicked was "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lorg/wikipedia/util/log/L;->LEVEL_V:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v0, v2}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/views/EditNoticesDialog;->wikiSite:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 34
    .line 35
    invoke-static {p1, p0}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :sswitch_0
    check-cast p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 51
    .line 52
    sget p1, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->$r8$clinit:I

    .line 53
    .line 54
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    .line 55
    .line 56
    iget-object v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;

    .line 63
    .line 64
    iget-object v0, v0, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lorg/wikipedia/page/PageTitle;->copy$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/PageTitle;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    sget-object v3, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 78
    .line 79
    if-ne v2, v3, :cond_0

    .line 80
    .line 81
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 82
    .line 83
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v0}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v1, v0}, Lorg/wikipedia/page/PageTitle;->setNamespace(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v2, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 98
    .line 99
    if-ne v0, v2, :cond_1

    .line 100
    .line 101
    const-string v0, ""

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lorg/wikipedia/page/PageTitle;->setNamespace(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    const/16 v0, 0x25

    .line 107
    .line 108
    invoke-direct {p1, v0, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Landroid/content/Intent;

    .line 116
    .line 117
    const-string v2, "org.wikipedia.load_in_new_tab"

    .line 118
    .line 119
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-class v2, Lorg/wikipedia/page/PageActivity;

    .line 123
    .line 124
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v2, "org.wikipedia.history.historyentry"

    .line 129
    .line 130
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v1, "title"

    .line 135
    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :sswitch_1
    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :sswitch_2
    check-cast p0, Landroid/app/Activity;

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
