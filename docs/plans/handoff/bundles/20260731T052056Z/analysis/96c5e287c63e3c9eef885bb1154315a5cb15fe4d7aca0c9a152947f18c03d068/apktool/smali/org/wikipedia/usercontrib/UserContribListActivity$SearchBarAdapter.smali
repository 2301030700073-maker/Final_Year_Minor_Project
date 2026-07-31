.class public final Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1
    iget p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribListActivity$StatsViewHolder;

    .line 10
    .line 11
    iget-object p0, p1, Lorg/wikipedia/usercontrib/UserContribListActivity$StatsViewHolder;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 12
    .line 13
    sget v2, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v2, v2, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userContribStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lorg/wikipedia/util/Resource;

    .line 26
    .line 27
    instance-of v3, v2, Lorg/wikipedia/util/Resource$Success;

    .line 28
    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    iget-object p1, p1, Lorg/wikipedia/usercontrib/UserContribListActivity$StatsViewHolder;->view:Lorg/wikipedia/usercontrib/UserContribStatsView;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v3, v3, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userName:Ljava/lang/String;

    .line 38
    .line 39
    check-cast v2, Lorg/wikipedia/util/Resource$Success;

    .line 40
    .line 41
    iget-object v2, v2, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;

    .line 44
    .line 45
    iget-object v4, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v5, v5, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;->langCode:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const-string v6, "commons"

    .line 66
    .line 67
    invoke-virtual {p0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    const-string v7, "en"

    .line 72
    .line 73
    const-string v8, ":"

    .line 74
    .line 75
    if-eqz v6, :cond_0

    .line 76
    .line 77
    new-instance p0, Lorg/wikipedia/page/PageTitle;

    .line 78
    .line 79
    invoke-static {v7}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6, v8, v5}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v6, Lorg/wikipedia/dataclient/WikiSite;

    .line 88
    .line 89
    const-string v7, "https://commons.wikimedia.org/"

    .line 90
    .line 91
    invoke-direct {v6, v7}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v5, v6, p2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const-string/jumbo v6, "wikidata"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_1

    .line 106
    .line 107
    new-instance p0, Lorg/wikipedia/page/PageTitle;

    .line 108
    .line 109
    invoke-static {v7}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-static {v6, v8, v5}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    new-instance v6, Lorg/wikipedia/dataclient/WikiSite;

    .line 118
    .line 119
    const-string v7, "https://www.wikidata.org/"

    .line 120
    .line 121
    invoke-direct {v6, v7}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v5, v6, p2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    new-instance v6, Lorg/wikipedia/page/PageTitle;

    .line 129
    .line 130
    invoke-static {p0}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-static {v7, v8, v5}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    sget-object v7, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {p0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-direct {v6, v5, p0, p2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    move-object p0, v6

    .line 151
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-object p2, p1, Lorg/wikipedia/usercontrib/UserContribStatsView;->binding:Lorg/wikipedia/databinding/ViewUserContribStatsBinding;

    .line 161
    .line 162
    iget-object v5, p2, Lorg/wikipedia/databinding/ViewUserContribStatsBinding;->userNameView:Landroid/widget/TextView;

    .line 163
    .line 164
    iget-object v6, p2, Lorg/wikipedia/databinding/ViewUserContribStatsBinding;->editCountsView:Landroid/widget/TextView;

    .line 165
    .line 166
    sget-object v7, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    const-string v8, "\'>"

    .line 177
    .line 178
    const-string v9, "</a>"

    .line 179
    .line 180
    const-string v10, "<a href=\'"

    .line 181
    .line 182
    invoke-static {v10, p0, v8, v3, v9}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    new-array v3, v0, [Ljava/lang/Object;

    .line 187
    .line 188
    aput-object p0, v3, v1

    .line 189
    .line 190
    const p0, 0x7f1209d4

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, p0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p2, Lorg/wikipedia/databinding/ViewUserContribStatsBinding;->userNameView:Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 207
    .line 208
    .line 209
    iget p0, v2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;->totalEdits:I

    .line 210
    .line 211
    if-ltz p0, :cond_2

    .line 212
    .line 213
    sget-object p2, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 214
    .line 215
    iget-object p2, v2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;->registrationDate:Ljava/util/Date;

    .line 216
    .line 217
    const-string/jumbo v3, "yyyy"

    .line 218
    .line 219
    .line 220
    invoke-static {v3, p2}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    iget-object v2, v2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;->projectName:Ljava/lang/String;

    .line 240
    .line 241
    const/4 v4, 0x3

    .line 242
    new-array v4, v4, [Ljava/lang/Object;

    .line 243
    .line 244
    aput-object v3, v4, v1

    .line 245
    .line 246
    aput-object p2, v4, v0

    .line 247
    .line 248
    const/4 p2, 0x2

    .line 249
    aput-object v2, v4, p2

    .line 250
    .line 251
    const p2, 0x7f10000a

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, p2, p0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_2
    const/16 p0, 0x8

    .line 263
    .line 264
    invoke-virtual {v6, p0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    :cond_3
    :goto_1
    return-void

    .line 268
    :pswitch_0
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribListActivity$EmptyMessagesViewHolder;

    .line 269
    .line 270
    iget-object p0, p1, Lorg/wikipedia/usercontrib/UserContribListActivity$EmptyMessagesViewHolder;->binding:Lokio/internal/DefaultSocket;

    .line 271
    .line 272
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast p0, Landroid/widget/TextView;

    .line 275
    .line 276
    sget-object p2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 277
    .line 278
    iget-object p1, p1, Lorg/wikipedia/usercontrib/UserContribListActivity$EmptyMessagesViewHolder;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 279
    .line 280
    const p2, 0x7f120520

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :pswitch_1
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder;

    .line 296
    .line 297
    iget-object p0, p1, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder;->binding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 298
    .line 299
    iget-object v2, p0, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->rootView:Lorg/wikipedia/views/WikiCardView;

    .line 300
    .line 301
    iget-object v3, p1, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 302
    .line 303
    sget v4, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 304
    .line 305
    invoke-virtual {v3}, Lorg/wikipedia/usercontrib/UserContribListActivity;->getViewModel()Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    iget-object v4, v4, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userContribStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 310
    .line 311
    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    check-cast v4, Lorg/wikipedia/util/Resource;

    .line 316
    .line 317
    instance-of v4, v4, Lorg/wikipedia/util/Resource$Success;

    .line 318
    .line 319
    if-eqz v4, :cond_6

    .line 320
    .line 321
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterButton:Landroid/widget/ImageView;

    .line 322
    .line 323
    new-instance v4, Landroid/util/TypedValue;

    .line 324
    .line 325
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    const v6, 0x7f040061

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v6, v4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_4

    .line 340
    .line 341
    move-object p2, v4

    .line 342
    :cond_4
    if-eqz p2, :cond_5

    .line 343
    .line 344
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 345
    .line 346
    invoke-virtual {v2, p2}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 350
    .line 351
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0;

    .line 352
    .line 353
    invoke-direct {p2, v3, v1}, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    .line 358
    .line 359
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0;

    .line 360
    .line 361
    invoke-direct {p1, v3, v0}, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    .line 366
    .line 367
    new-array p1, v0, [Landroid/view/View;

    .line 368
    .line 369
    aput-object p0, p1, v1

    .line 370
    .line 371
    aget-object p0, p1, v1

    .line 372
    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    .line 385
    .line 386
    goto :goto_2

    .line 387
    :cond_5
    const-string p0, "Attribute not found; ID=2130968673"

    .line 388
    .line 389
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    :cond_6
    :goto_2
    return-void

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    iget p2, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/usercontrib/UserContribListActivity$StatsViewHolder;

    .line 9
    .line 10
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribStatsView;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lorg/wikipedia/usercontrib/UserContribStatsView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/usercontrib/UserContribListActivity$StatsViewHolder;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lorg/wikipedia/usercontrib/UserContribStatsView;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_0
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribListActivity$EmptyMessagesViewHolder;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0, p1}, Lokio/internal/DefaultSocket;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lokio/internal/DefaultSocket;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/usercontrib/UserContribListActivity$EmptyMessagesViewHolder;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lokio/internal/DefaultSocket;)V

    .line 30
    .line 31
    .line 32
    return-object p2

    .line 33
    :pswitch_1
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p1}, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarViewHolder;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;)V

    .line 44
    .line 45
    .line 46
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
