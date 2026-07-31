.class public final synthetic Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x0

    .line 8
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/talk/TalkTopicHolder;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object v6

    .line 25
    :pswitch_0
    check-cast p0, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;

    .line 26
    .line 27
    new-instance v0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;

    .line 28
    .line 29
    iget-object p0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_1
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 36
    .line 37
    new-instance v0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;

    .line 38
    .line 39
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;-><init>(Landroidx/lifecycle/ViewModel;I)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_2
    check-cast p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;

    .line 44
    .line 45
    sget v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;->$r8$clinit:I

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 48
    .line 49
    .line 50
    return-object v6

    .line 51
    :pswitch_3
    check-cast p0, Lorg/wikipedia/settings/LicenseActivity;

    .line 52
    .line 53
    sget v0, Lorg/wikipedia/settings/LicenseActivity;->$r8$clinit:I

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 60
    .line 61
    .line 62
    return-object v6

    .line 63
    :pswitch_4
    check-cast p0, Lorg/wikipedia/settings/AboutActivity;

    .line 64
    .line 65
    sget v0, Lorg/wikipedia/settings/AboutActivity;->$r8$clinit:I

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 72
    .line 73
    .line 74
    return-object v6

    .line 75
    :pswitch_5
    check-cast p0, Lorg/wikipedia/search/HybridSearchOnboardingActivity;

    .line 76
    .line 77
    sget v0, Lorg/wikipedia/search/HybridSearchOnboardingActivity;->$r8$clinit:I

    .line 78
    .line 79
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-eqz v7, :cond_1

    .line 84
    .line 85
    const/4 v13, 0x0

    .line 86
    const/16 v14, 0xf6

    .line 87
    .line 88
    const-string v8, "click"

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    const-string v11, "learn_more"

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    invoke-static/range {v7 .. v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 96
    .line 97
    .line 98
    :cond_1
    const v0, 0x7f1202bf

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 116
    .line 117
    .line 118
    return-object v6

    .line 119
    :pswitch_6
    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 120
    .line 121
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 122
    .line 123
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :pswitch_7
    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 139
    .line 140
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_8
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 150
    .line 151
    new-instance v0, Lorg/wikipedia/events/NewRecommendedReadingListEvent;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    sget v0, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListMode;->RECOMMENDED:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 166
    .line 167
    invoke-static {v0, v1, v5}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/ReadingListMode;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p0, v0, v5}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 172
    .line 173
    .line 174
    return-object v6

    .line 175
    :pswitch_9
    check-cast p0, Lorg/wikipedia/random/RandomViewModel;

    .line 176
    .line 177
    iget-boolean v0, p0, Lorg/wikipedia/random/RandomViewModel;->loading:Z

    .line 178
    .line 179
    if-nez v0, :cond_2

    .line 180
    .line 181
    iget-object v0, p0, Lorg/wikipedia/random/RandomViewModel;->loadError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 182
    .line 183
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lorg/wikipedia/random/RandomViewModel;->loadMore()V

    .line 187
    .line 188
    .line 189
    :cond_2
    return-object v6

    .line 190
    :pswitch_a
    check-cast p0, Lorg/wikipedia/random/RandomActivity;

    .line 191
    .line 192
    sget v0, Lorg/wikipedia/random/RandomActivity;->$r8$clinit:I

    .line 193
    .line 194
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 199
    .line 200
    .line 201
    return-object v6

    .line 202
    :pswitch_b
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 203
    .line 204
    new-instance v0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;

    .line 205
    .line 206
    iget-object v1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 207
    .line 208
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lorg/wikipedia/page/PageTitle;)V

    .line 209
    .line 210
    .line 211
    return-object v0

    .line 212
    :pswitch_c
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 213
    .line 214
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->donationReminderLauncher:Landroidx/fragment/app/Fragment$10;

    .line 215
    .line 216
    sget v1, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 217
    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-static {p0, v3}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt;->newIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {v0, p0, v5}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 227
    .line 228
    .line 229
    return-object v6

    .line 230
    :pswitch_d
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 231
    .line 232
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iget-object v1, p0, Lorg/wikipedia/history/HistoryViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 241
    .line 242
    new-instance v2, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 243
    .line 244
    const/16 v3, 0x9

    .line 245
    .line 246
    invoke-direct {v2, v3, p0, v5}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v0, v1, v5, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 250
    .line 251
    .line 252
    return-object v6

    .line 253
    :pswitch_e
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 254
    .line 255
    sget v0, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 256
    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    const-string v1, "on_this_day_game_result"

    .line 262
    .line 263
    invoke-static {v0, v1, v3}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {p0, v0, v5}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 268
    .line 269
    .line 270
    return-object v6

    .line 271
    :pswitch_f
    check-cast p0, Lorg/wikipedia/games/GamesHubFragment;

    .line 272
    .line 273
    iget-object p0, p0, Lorg/wikipedia/games/GamesHubFragment;->onThisDayGameArchiveCalendarHelper:Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 274
    .line 275
    if-eqz p0, :cond_3

    .line 276
    .line 277
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 278
    .line 279
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    new-instance v1, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;

    .line 284
    .line 285
    invoke-direct {v1, p0, v5}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;Lkotlin/coroutines/Continuation;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v0, v5, v5, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 289
    .line 290
    .line 291
    return-object v6

    .line 292
    :cond_3
    const-string p0, "onThisDayGameArchiveCalendarHelper"

    .line 293
    .line 294
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v5

    .line 298
    :pswitch_10
    check-cast p0, Lorg/wikipedia/gallery/GalleryActivity;

    .line 299
    .line 300
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 301
    .line 302
    if-eqz p0, :cond_4

    .line 303
    .line 304
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->infoContainer:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast p0, Landroid/widget/LinearLayout;

    .line 307
    .line 308
    const/16 v0, 0x8

    .line 309
    .line 310
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    return-object v6

    .line 314
    :cond_4
    const-string p0, "binding"

    .line 315
    .line 316
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v5

    .line 320
    :pswitch_11
    check-cast p0, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity;

    .line 321
    .line 322
    sget v0, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity;->$r8$clinit:I

    .line 323
    .line 324
    const/4 v0, -0x1

    .line 325
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 329
    .line 330
    .line 331
    return-object v6

    .line 332
    :pswitch_12
    check-cast p0, Lorg/wikipedia/feed/HomeFragment;

    .line 333
    .line 334
    iget-object v7, p0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 335
    .line 336
    const/4 v13, 0x0

    .line 337
    const/16 v14, 0xf4

    .line 338
    .line 339
    const-string v8, "click"

    .line 340
    .line 341
    const-string v9, "home_feed_feedback"

    .line 342
    .line 343
    const/4 v10, 0x0

    .line 344
    const-string v11, "feedback_cancel"

    .line 345
    .line 346
    const/4 v12, 0x0

    .line 347
    invoke-static/range {v7 .. v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 348
    .line 349
    .line 350
    return-object v6

    .line 351
    :pswitch_13
    check-cast p0, Lorg/wikipedia/feed/ForYouModule;

    .line 352
    .line 353
    invoke-virtual {p0}, Lorg/wikipedia/feed/ForYouModule;->getCards()Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 358
    .line 359
    .line 360
    move-result p0

    .line 361
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    return-object p0

    .line 366
    :pswitch_14
    check-cast p0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 367
    .line 368
    new-instance v0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;

    .line 369
    .line 370
    iget-object v1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->searchQuery:Ljava/lang/String;

    .line 371
    .line 372
    iget-object p0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 373
    .line 374
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 375
    .line 376
    .line 377
    return-object v0

    .line 378
    :pswitch_15
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 379
    .line 380
    new-instance v0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;

    .line 381
    .line 382
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->searchQuery:Ljava/lang/String;

    .line 383
    .line 384
    invoke-direct {v0, p0}, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    return-object v0

    .line 388
    :pswitch_16
    check-cast p0, Lorg/wikipedia/edit/EditSectionActivity;

    .line 389
    .line 390
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 391
    .line 392
    .line 393
    return-object v6

    .line 394
    :pswitch_17
    check-cast p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 395
    .line 396
    iget-object v0, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->displayFormatter:Lkotlin/jvm/functions/Function1;

    .line 397
    .line 398
    iget-object p0, p0, Lorg/wikipedia/donate/donationreminder/SelectableOption;->selectedValue:Ljava/lang/Number;

    .line 399
    .line 400
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    check-cast p0, Ljava/lang/String;

    .line 405
    .line 406
    return-object p0

    .line 407
    :pswitch_18
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 408
    .line 409
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 410
    .line 411
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->rootView:Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 412
    .line 413
    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda0;

    .line 414
    .line 415
    invoke-direct {v1, p0, v4}, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;I)V

    .line 416
    .line 417
    .line 418
    const-wide/16 v2, 0x1f4

    .line 419
    .line 420
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    .line 422
    .line 423
    return-object v6

    .line 424
    :pswitch_19
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 425
    .line 426
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 427
    .line 428
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->timestamp:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-static {p0}, Lj$/time/Instant;->parse(Ljava/lang/CharSequence;)Lj$/time/Instant;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/LocalDateTime;

    .line 442
    .line 443
    .line 444
    move-result-object p0

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    return-object p0

    .line 449
    :pswitch_1a
    check-cast p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;

    .line 450
    .line 451
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->views:Lkotlinx/serialization/json/JsonElement;

    .line 452
    .line 453
    instance-of v0, p0, Lkotlinx/serialization/json/JsonObject;

    .line 454
    .line 455
    if-eqz v0, :cond_5

    .line 456
    .line 457
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    new-instance v2, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 463
    .line 464
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 465
    .line 466
    sget-object v4, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 467
    .line 468
    invoke-direct {v2, v3, v4, v1}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v2, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object p0

    .line 475
    check-cast p0, Ljava/util/Map;

    .line 476
    .line 477
    goto :goto_0

    .line 478
    :cond_5
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 479
    .line 480
    :goto_0
    return-object p0

    .line 481
    :pswitch_1b
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 482
    .line 483
    new-instance v0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;

    .line 484
    .line 485
    new-instance v5, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;

    .line 486
    .line 487
    sget-object v6, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 488
    .line 489
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    invoke-virtual {v6}, Lorg/wikipedia/database/AppDatabase;->historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    invoke-direct {v5, v6}, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;-><init>(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V

    .line 498
    .line 499
    .line 500
    new-instance v6, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;

    .line 501
    .line 502
    invoke-static {}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->getWikiSiteForTimeline()Lorg/wikipedia/dataclient/WikiSite;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 511
    .line 512
    .line 513
    move-result-object v9

    .line 514
    invoke-virtual {v9}, Lorg/wikipedia/database/AppDatabase;->historyEntryWithImageDao()Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    invoke-direct {v6, v7, v8, v9}, Lorg/wikipedia/activitytab/timeline/UserContribPagingSource;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;)V

    .line 519
    .line 520
    .line 521
    new-instance v7, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;

    .line 522
    .line 523
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 524
    .line 525
    .line 526
    move-result-object v8

    .line 527
    invoke-virtual {v8}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-direct {v7, v8}, Lorg/wikipedia/activitytab/timeline/ReadingListPagingSource;-><init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V

    .line 532
    .line 533
    .line 534
    new-array v2, v2, [Lorg/wikipedia/activitytab/timeline/TimelineSource;

    .line 535
    .line 536
    aput-object v5, v2, v3

    .line 537
    .line 538
    aput-object v7, v2, v1

    .line 539
    .line 540
    aput-object v6, v2, v4

    .line 541
    .line 542
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-direct {v0, v1}, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;-><init>(Ljava/util/List;)V

    .line 547
    .line 548
    .line 549
    iput-object v0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->currentTimelinePagingSource:Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;

    .line 550
    .line 551
    return-object v0

    .line 552
    :pswitch_1c
    check-cast p0, Lorg/wikipedia/games/WikiGames;

    .line 553
    .line 554
    invoke-static {p0}, Lorg/wikipedia/games/WikiGames;->supportLanguages_delegate$lambda$0(Lorg/wikipedia/games/WikiGames;)Ljava/util/ArrayList;

    .line 555
    .line 556
    .line 557
    move-result-object p0

    .line 558
    return-object p0

    .line 559
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
