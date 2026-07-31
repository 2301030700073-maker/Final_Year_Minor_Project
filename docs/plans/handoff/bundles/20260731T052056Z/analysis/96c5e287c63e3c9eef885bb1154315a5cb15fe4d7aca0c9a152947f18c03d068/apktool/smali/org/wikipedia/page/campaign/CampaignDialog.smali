.class public final Lorg/wikipedia/page/campaign/CampaignDialog;
.super Lokio/PriorityQueue;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;


# instance fields
.field public final campaignId:Ljava/lang/String;

.field public final campaignIdOriginal:Ljava/lang/String;

.field public final context:Landroidx/appcompat/app/AppCompatActivity;

.field public dialog:Landroidx/appcompat/app/AlertDialog;

.field public final onNeutralButtonClick:Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/donate/Campaign;Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-direct/range {p0 .. p1}, Lokio/PriorityQueue;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lorg/wikipedia/page/campaign/CampaignDialog;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    move-object/from16 v3, p3

    .line 13
    .line 14
    iput-object v3, v0, Lorg/wikipedia/page/campaign/CampaignDialog;->onNeutralButtonClick:Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lorg/wikipedia/dataclient/donate/Campaign;->getIdForLang(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iput-object v3, v0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignIdOriginal:Ljava/lang/String;

    .line 31
    .line 32
    sget v4, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->validReadCountOnSeconds:I

    .line 33
    .line 34
    invoke-static {v3}, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->getCampaignId(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iput-object v3, v0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignId:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v4, Lorg/wikipedia/page/campaign/CampaignDialogView;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Lorg/wikipedia/page/campaign/CampaignDialogView;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v0}, Lorg/wikipedia/page/campaign/CampaignDialogView;->setCallback(Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 49
    .line 50
    const v1, 0x7f1205cf

    .line 51
    .line 52
    .line 53
    const-wide/16 v5, 0x0

    .line 54
    .line 55
    invoke-static {v5, v6, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    invoke-static {v5, v6}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v1, v5}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lj$/time/Duration;->toDays()J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    const-wide/16 v7, 0x1

    .line 76
    .line 77
    cmp-long v1, v5, v7

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    const/4 v6, 0x1

    .line 81
    if-ltz v1, :cond_0

    .line 82
    .line 83
    iget-object v1, v2, Lorg/wikipedia/dataclient/donate/Campaign;->endDateTime:Lj$/time/LocalDateTime;

    .line 84
    .line 85
    if-eqz v1, :cond_0

    .line 86
    .line 87
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-virtual {v9, v7, v8}, Lj$/time/LocalDateTime;->plusDays(J)Lj$/time/LocalDateTime;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v1, v7}, Lj$/time/LocalDateTime;->isAfter(Lj$/time/chrono/ChronoLocalDateTime;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-ne v1, v6, :cond_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getIgnoreDateForAnnouncements()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    .line 108
    :goto_0
    move v1, v6

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    move v1, v5

    .line 111
    :goto_1
    invoke-virtual {v4, v1}, Lorg/wikipedia/page/campaign/CampaignDialogView;->setShowNeutralButton(Z)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v2, v1}, Lorg/wikipedia/dataclient/donate/Campaign;->getAssetsForLang(Ljava/lang/String;)Lorg/wikipedia/dataclient/donate/Campaign$Assets;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-nez v1, :cond_2

    .line 127
    .line 128
    goto/16 :goto_c

    .line 129
    .line 130
    :cond_2
    iget-object v7, v1, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->footer:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v9, v1, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->id:Ljava/lang/String;

    .line 133
    .line 134
    iget v10, v1, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->weight:F

    .line 135
    .line 136
    iget-object v8, v1, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->text:Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v8, :cond_4

    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-nez v11, :cond_3

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    invoke-static {v8, v3}, Lorg/wikipedia/dataclient/donate/CampaignCollection;->replaceParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    move-object v11, v8

    .line 152
    goto :goto_3

    .line 153
    :cond_4
    :goto_2
    const/4 v11, 0x0

    .line 154
    :goto_3
    if-eqz v7, :cond_6

    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-nez v8, :cond_5

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_5
    invoke-static {v7, v3}, Lorg/wikipedia/dataclient/donate/CampaignCollection;->replaceParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    move-object v12, v7

    .line 168
    goto :goto_5

    .line 169
    :cond_6
    :goto_4
    const/4 v12, 0x0

    .line 170
    :goto_5
    iget-object v1, v1, Lorg/wikipedia/dataclient/donate/Campaign$Assets;->actions:[Lorg/wikipedia/dataclient/donate/Campaign$Action;

    .line 171
    .line 172
    new-instance v7, Ljava/util/ArrayList;

    .line 173
    .line 174
    array-length v8, v1

    .line 175
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .line 177
    .line 178
    array-length v8, v1

    .line 179
    move v13, v5

    .line 180
    :goto_6
    if-ge v13, v8, :cond_9

    .line 181
    .line 182
    aget-object v14, v1, v13

    .line 183
    .line 184
    new-instance v15, Lorg/wikipedia/dataclient/donate/Campaign$Action;

    .line 185
    .line 186
    iget-object v2, v14, Lorg/wikipedia/dataclient/donate/Campaign$Action;->title:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v14, v14, Lorg/wikipedia/dataclient/donate/Campaign$Action;->url:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v2, v3}, Lorg/wikipedia/dataclient/donate/CampaignCollection;->replaceParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-eqz v14, :cond_8

    .line 195
    .line 196
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v16

    .line 200
    if-nez v16, :cond_7

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_7
    invoke-static {v14, v3}, Lorg/wikipedia/dataclient/donate/CampaignCollection;->replaceParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    goto :goto_8

    .line 208
    :cond_8
    :goto_7
    const/4 v14, 0x0

    .line 209
    :goto_8
    invoke-direct {v15, v2, v14}, Lorg/wikipedia/dataclient/donate/Campaign$Action;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    add-int/lit8 v13, v13, 0x1

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_9
    new-array v1, v5, [Lorg/wikipedia/dataclient/donate/Campaign$Action;

    .line 219
    .line 220
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    move-object v13, v1

    .line 225
    check-cast v13, [Lorg/wikipedia/dataclient/donate/Campaign$Action;

    .line 226
    .line 227
    new-instance v8, Lorg/wikipedia/dataclient/donate/Campaign$Assets;

    .line 228
    .line 229
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/dataclient/donate/Campaign$Assets;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;[Lorg/wikipedia/dataclient/donate/Campaign$Action;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v4, Lorg/wikipedia/page/campaign/CampaignDialogView;->binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 233
    .line 234
    if-eqz v11, :cond_c

    .line 235
    .line 236
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_a

    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_a
    iget-object v2, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v2, Landroid/widget/TextView;

    .line 246
    .line 247
    sget-object v3, Landroidx/core/text/method/LinkMovementMethodCompat;->sInstance:Landroidx/core/text/method/LinkMovementMethodCompat;

    .line 248
    .line 249
    if-nez v3, :cond_b

    .line 250
    .line 251
    new-instance v3, Landroidx/core/text/method/LinkMovementMethodCompat;

    .line 252
    .line 253
    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 254
    .line 255
    .line 256
    sput-object v3, Landroidx/core/text/method/LinkMovementMethodCompat;->sInstance:Landroidx/core/text/method/LinkMovementMethodCompat;

    .line 257
    .line 258
    :cond_b
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 259
    .line 260
    .line 261
    iget-object v2, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v2, Landroid/widget/TextView;

    .line 264
    .line 265
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 266
    .line 267
    invoke-static {v11}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    :cond_c
    :goto_9
    if-eqz v12, :cond_e

    .line 275
    .line 276
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_d

    .line 281
    .line 282
    goto :goto_a

    .line 283
    :cond_d
    iget-object v2, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v2, Landroid/widget/TextView;

    .line 286
    .line 287
    new-instance v3, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 288
    .line 289
    new-instance v7, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 290
    .line 291
    const/16 v8, 0x1b

    .line 292
    .line 293
    invoke-direct {v7, v8, v4}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-direct {v3, v7}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 300
    .line 301
    .line 302
    iget-object v2, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v2, Landroid/widget/TextView;

    .line 305
    .line 306
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 307
    .line 308
    invoke-static {v12}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    :cond_e
    :goto_a
    iget-object v2, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v2, Landroid/widget/LinearLayout;

    .line 318
    .line 319
    iget-object v3, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 322
    .line 323
    iget-object v7, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 326
    .line 327
    iget-object v8, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v8, Landroid/widget/ImageView;

    .line 330
    .line 331
    iget-object v9, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 334
    .line 335
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    new-instance v2, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;

    .line 339
    .line 340
    invoke-direct {v2, v4, v5}, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/page/campaign/CampaignDialogView;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    .line 345
    .line 346
    new-array v2, v6, [Landroid/view/View;

    .line 347
    .line 348
    aput-object v8, v2, v5

    .line 349
    .line 350
    aget-object v2, v2, v5

    .line 351
    .line 352
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    invoke-static {v2, v8}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    const/16 v2, 0x8

    .line 360
    .line 361
    :try_start_0
    array-length v8, v13

    .line 362
    const/4 v10, 0x3

    .line 363
    if-lt v8, v10, :cond_11

    .line 364
    .line 365
    aget-object v8, v13, v5

    .line 366
    .line 367
    aget-object v10, v13, v6

    .line 368
    .line 369
    const/4 v11, 0x2

    .line 370
    aget-object v12, v13, v11

    .line 371
    .line 372
    iget-object v13, v8, Lorg/wikipedia/dataclient/donate/Campaign$Action;->title:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    iget-object v8, v8, Lorg/wikipedia/dataclient/donate/Campaign$Action;->url:Ljava/lang/String;

    .line 378
    .line 379
    if-eqz v8, :cond_f

    .line 380
    .line 381
    new-instance v13, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 382
    .line 383
    const/16 v14, 0x11

    .line 384
    .line 385
    invoke-direct {v13, v14, v4, v8}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    .line 390
    .line 391
    :cond_f
    iget-object v7, v10, Lorg/wikipedia/dataclient/donate/Campaign$Action;->title:Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    .line 395
    .line 396
    iget-boolean v7, v4, Lorg/wikipedia/page/campaign/CampaignDialogView;->showNeutralButton:Z

    .line 397
    .line 398
    if-eqz v7, :cond_10

    .line 399
    .line 400
    goto :goto_b

    .line 401
    :cond_10
    move v5, v2

    .line 402
    :goto_b
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    new-instance v5, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;

    .line 406
    .line 407
    invoke-direct {v5, v4, v6}, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/page/campaign/CampaignDialogView;I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v9, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    iget-object v5, v12, Lorg/wikipedia/dataclient/donate/Campaign$Action;->title:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    new-instance v5, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;

    .line 419
    .line 420
    invoke-direct {v5, v4, v11}, Lorg/wikipedia/page/campaign/CampaignDialogView$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/page/campaign/CampaignDialogView;I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .line 425
    .line 426
    goto :goto_c

    .line 427
    :catch_0
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v1, Landroid/widget/LinearLayout;

    .line 430
    .line 431
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    :cond_11
    :goto_c
    iget-object v1, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 437
    .line 438
    iput-object v4, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 439
    .line 440
    iget-object v0, v0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignId:Ljava/lang/String;

    .line 441
    .line 442
    const/4 v1, 0x4

    .line 443
    const-string v2, "impression"

    .line 444
    .line 445
    const-string v3, "article_banner"

    .line 446
    .line 447
    const/4 v4, 0x0

    .line 448
    invoke-static {v1, v2, v3, v4, v0}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    return-void
.end method


# virtual methods
.method public final dismissDialog(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignIdOriginal:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setAnnouncementShownDialogs(Ljava/util/Set;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final show()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 1
    invoke-super {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 6
    .line 7
    return-object v0
.end method
