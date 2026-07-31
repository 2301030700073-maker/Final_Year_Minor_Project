.class public final synthetic Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 22
    .line 23
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 24
    .line 25
    check-cast p0, Landroid/widget/ScrollView;

    .line 26
    .line 27
    const/16 v0, 0x82

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateAndNotifyAdapter()V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :pswitch_2
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 61
    .line 62
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;

    .line 63
    .line 64
    invoke-direct {v1, p0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;Landroidx/fragment/app/Fragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    .line 69
    .line 70
    iput-boolean v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resettingViewPager:Z

    .line 71
    .line 72
    :cond_2
    return-void

    .line 73
    :pswitch_3
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 82
    .line 83
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lorg/wikipedia/language/AppLanguageState;->setAppLanguageCodes(Ljava/util/ArrayList;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const-string p0, "adapter"

    .line 108
    .line 109
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v1

    .line 113
    :cond_4
    :goto_0
    return-void

    .line 114
    :pswitch_4
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_7

    .line 131
    .line 132
    :cond_5
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    move v2, v3

    .line 138
    :cond_7
    :goto_1
    invoke-virtual {p0, v0, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists(Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    :cond_8
    return-void

    .line 142
    :pswitch_5
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 149
    .line 150
    if-eqz v0, :cond_9

    .line 151
    .line 152
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->getShareButton()Landroid/widget/ImageView;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    const v0, 0x7f12079d

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const/4 v7, 0x1

    .line 167
    const/16 v8, 0x60

    .line 168
    .line 169
    const/4 v6, 0x0

    .line 170
    invoke-static/range {v3 .. v8}, Lorg/wikipedia/util/ShareUtil;->showTooltip$default(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ZZI)Lcom/skydoves/balloon/Balloon;

    .line 171
    .line 172
    .line 173
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 174
    .line 175
    const p0, 0x7f120660

    .line 176
    .line 177
    .line 178
    invoke-static {p0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_9
    const-string p0, "headerView"

    .line 183
    .line 184
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v1

    .line 188
    :pswitch_6
    check-cast p0, Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 189
    .line 190
    invoke-static {p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->$r8$lambda$JsKPNH6QBiO8bic3lWZDsoafAvo(Lorg/wikipedia/page/leadimages/PageHeaderView;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_7
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 195
    .line 196
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    const-wide/16 v5, 0x1

    .line 205
    .line 206
    invoke-virtual {v4, v5, v6}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    sget-object v5, Lj$/time/LocalTime;->MIDNIGHT:Lj$/time/LocalTime;

    .line 211
    .line 212
    invoke-static {v4, v5}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-static {v0, v4}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    iget-object v4, v4, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v4, Landroid/widget/TextView;

    .line 231
    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v0}, Lj$/time/Duration;->toHoursPart()I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v0}, Lj$/time/Duration;->toMinutesPart()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-virtual {v0}, Lj$/time/Duration;->toSecondsPart()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const/4 v8, 0x3

    .line 261
    new-array v9, v8, [Ljava/lang/Object;

    .line 262
    .line 263
    aput-object v6, v9, v3

    .line 264
    .line 265
    aput-object v7, v9, v2

    .line 266
    .line 267
    const/4 v6, 0x2

    .line 268
    aput-object v0, v9, v6

    .line 269
    .line 270
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const-string v6, "%02d:%02d:%02d"

    .line 275
    .line 276
    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    new-array v2, v2, [Ljava/lang/Object;

    .line 281
    .line 282
    aput-object v0, v2, v3

    .line 283
    .line 284
    const v0, 0x7f1204d4

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->handler:Landroid/os/Handler;

    .line 295
    .line 296
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->timeUpdateRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 297
    .line 298
    if-eqz p0, :cond_a

    .line 299
    .line 300
    const-wide/16 v1, 0x3e8

    .line 301
    .line 302
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_a
    const-string p0, "timeUpdateRunnable"

    .line 307
    .line 308
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v1

    .line 312
    :pswitch_8
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 313
    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_b

    .line 319
    .line 320
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionContainer1:Landroid/widget/LinearLayout;

    .line 326
    .line 327
    iget-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionScroll1:Landroid/widget/ScrollView;

    .line 333
    .line 334
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    const/high16 v2, 0x41800000    # 16.0f

    .line 339
    .line 340
    invoke-static {v2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    sub-int/2addr v1, v3

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionContainer2:Landroid/widget/LinearLayout;

    .line 354
    .line 355
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 356
    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionScroll2:Landroid/widget/ScrollView;

    .line 361
    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 363
    .line 364
    .line 365
    move-result p0

    .line 366
    invoke-static {v2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    sub-int/2addr p0, v1

    .line 371
    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 372
    .line 373
    .line 374
    :cond_b
    return-void

    .line 375
    :pswitch_9
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 376
    .line 377
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_c

    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_c
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 389
    .line 390
    iget v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->age:I

    .line 391
    .line 392
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    const/4 v2, 0x5

    .line 401
    neg-int v0, v0

    .line 402
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->loadOnThisDay(Ljava/util/Calendar;)V

    .line 406
    .line 407
    .line 408
    :goto_2
    return-void

    .line 409
    :pswitch_a
    check-cast p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 410
    .line 411
    sget v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->$r8$clinit:I

    .line 412
    .line 413
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-nez v0, :cond_d

    .line 418
    .line 419
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->showMediaSettingsFragment()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0, v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->adjustRefreshViewLayoutParams(Z)V

    .line 423
    .line 424
    .line 425
    :cond_d
    return-void

    .line 426
    :pswitch_b
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 427
    .line 428
    sget v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->$r8$clinit:I

    .line 429
    .line 430
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_e

    .line 435
    .line 436
    iput-boolean v2, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->allowScrollToCursor:Z

    .line 437
    .line 438
    :cond_e
    return-void

    .line 439
    :pswitch_c
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 440
    .line 441
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-nez v0, :cond_f

    .line 446
    .line 447
    goto :goto_3

    .line 448
    :cond_f
    const-string v0, "pt_tooltip"

    .line 449
    .line 450
    const-string v1, ""

    .line 451
    .line 452
    const-string v2, "impression"

    .line 453
    .line 454
    invoke-virtual {p0, v2, v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    const v0, 0x7f120548

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    const/4 v11, 0x2

    .line 472
    const/16 v12, 0x38

    .line 473
    .line 474
    const/4 v6, 0x1

    .line 475
    const/4 v7, 0x0

    .line 476
    const/4 v8, 0x0

    .line 477
    const/4 v9, 0x1

    .line 478
    const/4 v10, 0x1

    .line 479
    invoke-static/range {v4 .. v12}, Lorg/wikipedia/util/ShareUtil;->getTooltip$default(Landroid/content/Context;Ljava/lang/String;ZIZZIII)Lcom/skydoves/balloon/Balloon;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    iget-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 484
    .line 485
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresDamagingButton:Lcom/google/android/material/button/MaterialButton;

    .line 489
    .line 490
    invoke-virtual {v0, v1, v3}, Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    const v1, 0x7f120549

    .line 498
    .line 499
    .line 500
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    const/16 v12, 0xb8

    .line 508
    .line 509
    const/4 v10, 0x2

    .line 510
    invoke-static/range {v4 .. v12}, Lorg/wikipedia/util/ShareUtil;->getTooltip$default(Landroid/content/Context;Ljava/lang/String;ZIZZIII)Lcom/skydoves/balloon/Balloon;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 515
    .line 516
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->oresGoodFaithButton:Lcom/google/android/material/button/MaterialButton;

    .line 520
    .line 521
    new-instance v2, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;

    .line 522
    .line 523
    invoke-direct {v2, v0, v1, p0, v3}, Lcom/skydoves/balloon/Balloon$relayShowAlignBottom$$inlined$relay$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0, v2}, Lcom/skydoves/balloon/Balloon;->setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 527
    .line 528
    .line 529
    :goto_3
    return-void

    .line 530
    :pswitch_d
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 531
    .line 532
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-nez v0, :cond_10

    .line 537
    .line 538
    goto/16 :goto_5

    .line 539
    .line 540
    :cond_10
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-nez v0, :cond_11

    .line 545
    .line 546
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 547
    .line 548
    const v0, 0x7f12069b

    .line 549
    .line 550
    .line 551
    invoke-static {v0, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    add-int/2addr v4, v2

    .line 556
    invoke-static {v0, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 557
    .line 558
    .line 559
    :cond_11
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 560
    .line 561
    new-instance v0, Ljava/util/Date;

    .line 562
    .line 563
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 567
    .line 568
    .line 569
    move-result-wide v4

    .line 570
    const v0, 0x7f120622

    .line 571
    .line 572
    .line 573
    invoke-static {v4, v5, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 574
    .line 575
    .line 576
    const v0, 0x7f12068f

    .line 577
    .line 578
    .line 579
    invoke-static {v0, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 580
    .line 581
    .line 582
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 583
    .line 584
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 588
    .line 589
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 590
    .line 591
    invoke-virtual {v0, v3}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSaveState(Z)V

    .line 592
    .line 593
    .line 594
    new-array v0, v3, [Ljava/lang/Object;

    .line 595
    .line 596
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 597
    .line 598
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    const v5, 0x7f12067f

    .line 607
    .line 608
    .line 609
    invoke-static {v0, v3, v4, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 614
    .line 615
    .line 616
    move-result-object v4

    .line 617
    invoke-static {v4, v3, v0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    const-string v2, "invokeSource"

    .line 622
    .line 623
    if-eqz v0, :cond_12

    .line 624
    .line 625
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 630
    .line 631
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 632
    .line 633
    if-eq v0, v4, :cond_12

    .line 634
    .line 635
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editSuccessLauncher:Landroidx/fragment/app/Fragment$10;

    .line 636
    .line 637
    sget v4, Lorg/wikipedia/descriptions/DescriptionEditSuccessActivity;->$r8$clinit:I

    .line 638
    .line 639
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 644
    .line 645
    .line 646
    move-result-object p0

    .line 647
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 648
    .line 649
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 650
    .line 651
    .line 652
    new-instance v6, Landroid/content/Intent;

    .line 653
    .line 654
    const-class v7, Lorg/wikipedia/descriptions/DescriptionEditSuccessActivity;

    .line 655
    .line 656
    invoke-direct {v6, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v6, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 660
    .line 661
    .line 662
    move-result-object p0

    .line 663
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 667
    .line 668
    .line 669
    invoke-static {v5, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 670
    .line 671
    .line 672
    goto/16 :goto_5

    .line 673
    .line 674
    :cond_12
    new-instance v0, Landroid/content/Intent;

    .line 675
    .line 676
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 677
    .line 678
    .line 679
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 680
    .line 681
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 682
    .line 683
    .line 684
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 687
    .line 688
    invoke-virtual {v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    const-string v3, "addedContribution"

    .line 693
    .line 694
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    .line 696
    .line 697
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 702
    .line 703
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 704
    .line 705
    .line 706
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 711
    .line 712
    const-string v2, "intentAction"

    .line 713
    .line 714
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 715
    .line 716
    .line 717
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    const/4 v2, -0x1

    .line 722
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    new-instance v2, Landroidx/paging/HintHandler;

    .line 741
    .line 742
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 743
    .line 744
    .line 745
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 746
    .line 747
    const/16 v3, 0x23

    .line 748
    .line 749
    if-lt v1, v3, :cond_13

    .line 750
    .line 751
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 752
    .line 753
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 754
    .line 755
    .line 756
    goto :goto_4

    .line 757
    :cond_13
    const/16 v3, 0x1e

    .line 758
    .line 759
    if-lt v1, v3, :cond_14

    .line 760
    .line 761
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 762
    .line 763
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 764
    .line 765
    .line 766
    goto :goto_4

    .line 767
    :cond_14
    const/16 v3, 0x1a

    .line 768
    .line 769
    if-lt v1, v3, :cond_15

    .line 770
    .line 771
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 772
    .line 773
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 774
    .line 775
    .line 776
    goto :goto_4

    .line 777
    :cond_15
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 778
    .line 779
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 780
    .line 781
    .line 782
    :goto_4
    invoke-virtual {v1}, Lcoil3/util/UtilsKt;->hide()V

    .line 783
    .line 784
    .line 785
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 786
    .line 787
    .line 788
    move-result-object p0

    .line 789
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 790
    .line 791
    .line 792
    :goto_5
    return-void

    .line 793
    :pswitch_e
    check-cast p0, [Ljava/lang/Object;

    .line 794
    .line 795
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 796
    .line 797
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    aget-object p0, p0, v3

    .line 802
    .line 803
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object p0

    .line 807
    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 808
    .line 809
    .line 810
    move-result-object p0

    .line 811
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 812
    .line 813
    .line 814
    return-void

    .line 815
    :pswitch_f
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 816
    .line 817
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    if-nez v0, :cond_16

    .line 826
    .line 827
    invoke-virtual {p0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->callback()Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;

    .line 828
    .line 829
    .line 830
    move-result-object p0

    .line 831
    if-eqz p0, :cond_16

    .line 832
    .line 833
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 834
    .line 835
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 836
    .line 837
    invoke-virtual {p0, v0}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 838
    .line 839
    .line 840
    :cond_16
    return-void

    .line 841
    :pswitch_10
    check-cast p0, Lorg/wikipedia/activity/BaseActivity;

    .line 842
    .line 843
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-nez v0, :cond_17

    .line 848
    .line 849
    invoke-virtual {p0}, Lorg/wikipedia/activity/BaseActivity;->onUnreadNotification()V

    .line 850
    .line 851
    .line 852
    :cond_17
    return-void

    .line 853
    :pswitch_11
    check-cast p0, Lorg/wikipedia/main/MainFragment;

    .line 854
    .line 855
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    if-eqz v0, :cond_18

    .line 860
    .line 861
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 862
    .line 863
    .line 864
    move-result-object v1

    .line 865
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 866
    .line 867
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 868
    .line 869
    .line 870
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 871
    .line 872
    check-cast v0, Lorg/wikipedia/navtab/NavTabLayout;

    .line 873
    .line 874
    sget-object v2, Lorg/wikipedia/navtab/NavTab;->HOME:Lorg/wikipedia/navtab/NavTab;

    .line 875
    .line 876
    invoke-virtual {v2}, Lorg/wikipedia/navtab/NavTab;->getId()I

    .line 877
    .line 878
    .line 879
    move-result v2

    .line 880
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    .line 886
    .line 887
    const v0, 0x7f1202b9

    .line 888
    .line 889
    .line 890
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    .line 896
    .line 897
    const/4 v5, 0x0

    .line 898
    const/16 v6, 0x60

    .line 899
    .line 900
    const/4 v4, 0x1

    .line 901
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/util/ShareUtil;->showTooltip$default(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ZZI)Lcom/skydoves/balloon/Balloon;

    .line 902
    .line 903
    .line 904
    :cond_18
    return-void

    .line 905
    :pswitch_data_0
    .packed-switch 0x0
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
