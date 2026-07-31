.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    const-string/jumbo v1, "subscribeActual failed"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 17
    .line 18
    check-cast v5, [Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 19
    .line 20
    aget-object p1, v5, p2

    .line 21
    .line 22
    iget p1, p1, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->tabId:I

    .line 23
    .line 24
    invoke-static {p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->typeFrom(I)Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string p2, "Tab id not found: "

    .line 35
    .line 36
    invoke-static {p1, p2}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    const/16 v5, 0x18

    .line 45
    .line 46
    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    .line 47
    .line 48
    const-string v3, "Choosing tabs on settings"

    .line 49
    .line 50
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    packed-switch p1, :pswitch_data_1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_0
    new-instance p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    .line 78
    .line 79
    invoke-direct {p1}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance p2, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 83
    .line 84
    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string p2, "select_feed_group"

    .line 94
    .line 95
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_1
    new-instance p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    .line 100
    .line 101
    invoke-direct {p1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance p2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 105
    .line 106
    const/16 v0, 0x10

    .line 107
    .line 108
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    iput-object p2, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-string p2, "select_playlist"

    .line 118
    .line 119
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :pswitch_2
    new-instance p1, Lorg/schabi/newpipe/settings/SelectChannelFragment;

    .line 124
    .line 125
    invoke-direct {p1}, Lorg/schabi/newpipe/settings/SelectChannelFragment;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance p2, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 129
    .line 130
    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    .line 131
    .line 132
    .line 133
    iput-object p2, p1, Lorg/schabi/newpipe/settings/SelectChannelFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string p2, "select_channel"

    .line 140
    .line 141
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_3
    new-instance p1, Lorg/schabi/newpipe/settings/SelectKioskFragment;

    .line 146
    .line 147
    invoke-direct {p1}, Lorg/schabi/newpipe/settings/SelectKioskFragment;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance p2, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 151
    .line 152
    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;)V

    .line 153
    .line 154
    .line 155
    iput-object p2, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 156
    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    const-string p2, "select_kiosk"

    .line 162
    .line 163
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_0
    return-void

    .line 167
    :pswitch_4
    check-cast p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 168
    .line 169
    check-cast v5, Lorg/jsoup/parser/TokenData;

    .line 170
    .line 171
    iget-object p1, v5, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string p2, "http"

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    const-string v0, "https://"

    .line 194
    .line 195
    if-nez p2, :cond_1

    .line 196
    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    :cond_1
    const-string p2, "/$"

    .line 202
    .line 203
    const-string v5, ""

    .line 204
    .line 205
    invoke-virtual {p1, p2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-nez p2, :cond_2

    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const p2, 0x7f1303b3

    .line 220
    .line 221
    .line 222
    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_2
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 231
    .line 232
    invoke-virtual {p2}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_4

    .line 245
    .line 246
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 251
    .line 252
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_3

    .line 259
    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const p2, 0x7f1303b0

    .line 265
    .line 266
    .line 267
    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_4
    move-object v2, p1

    .line 276
    :goto_1
    if-nez v2, :cond_5

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_5
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->binding:Lcoil3/ComponentRegistry$Builder;

    .line 280
    .line 281
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast p1, Landroid/widget/ProgressBar;

    .line 284
    .line 285
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    new-instance p1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda3;

    .line 289
    .line 290
    invoke-direct {p1, v2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 294
    .line 295
    const/4 v0, 0x3

    .line 296
    invoke-direct {p2, p1, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 300
    .line 301
    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    new-instance v0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;

    .line 310
    .line 311
    invoke-direct {v0, p0, v4}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;I)V

    .line 312
    .line 313
    .line 314
    new-instance v2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;

    .line 315
    .line 316
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;I)V

    .line 317
    .line 318
    .line 319
    new-instance v3, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 320
    .line 321
    invoke-direct {v3, v0, v2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 322
    .line 323
    .line 324
    :try_start_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 325
    .line 326
    invoke-direct {v0, v3, p2}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .line 331
    .line 332
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 333
    .line 334
    invoke-virtual {p0, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 335
    .line 336
    .line 337
    :goto_2
    return-void

    .line 338
    :catchall_0
    move-exception v0

    .line 339
    move-object p0, v0

    .line 340
    invoke-static {p0, v1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    throw p0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    move-object p0, v0

    .line 347
    throw p0

    .line 348
    :pswitch_5
    check-cast p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    .line 349
    .line 350
    check-cast v5, Landroid/content/Context;

    .line 351
    .line 352
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 353
    .line 354
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->savedInstanceListKey:Ljava/lang/String;

    .line 359
    .line 360
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    sget-object p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->DEFAULT_INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 372
    .line 373
    invoke-static {p2, p1}, Landroidx/room/Room;->selectInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Landroid/content/Context;)V

    .line 374
    .line 375
    .line 376
    iput-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->selectedInstance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 377
    .line 378
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 379
    .line 380
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    const-string p2, "key_main_page_change"

    .line 385
    .line 386
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    .line 392
    .line 393
    iget-object p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->instanceListAdapter:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 394
    .line 395
    invoke-static {v5}, Landroidx/room/Room;->getInstanceList(Landroid/content/Context;)Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :pswitch_6
    check-cast p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    .line 404
    .line 405
    check-cast v5, Landroid/net/Uri;

    .line 406
    .line 407
    sget p2, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->$r8$clinit:I

    .line 408
    .line 409
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 413
    .line 414
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    iget-object p2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportDataPathKey:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 432
    .line 433
    .line 434
    move-result-object p0

    .line 435
    invoke-static {p0}, Landroidx/sqlite/SQLite;->restartApp(Landroid/app/Activity;)V

    .line 436
    .line 437
    .line 438
    return-void

    .line 439
    :pswitch_7
    check-cast v5, Landroid/content/SharedPreferences;

    .line 440
    .line 441
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 442
    .line 443
    sget-object p1, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 444
    .line 445
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    const p2, 0x7f1301e6

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    invoke-interface {p1, p0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 460
    .line 461
    .line 462
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :pswitch_8
    check-cast p0, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;

    .line 467
    .line 468
    check-cast v5, Lorg/jsoup/parser/TokenData;

    .line 469
    .line 470
    iget-object p1, v5, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 473
    .line 474
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    new-instance p2, Lokhttp3/Dispatcher;

    .line 483
    .line 484
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-direct {p2, v0}, Lokhttp3/Dispatcher;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const v2, 0x7f1303db

    .line 500
    .line 501
    .line 502
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    iget-object p0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    .line 507
    .line 508
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    if-eqz v2, :cond_6

    .line 513
    .line 514
    sget-object p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;

    .line 515
    .line 516
    goto :goto_3

    .line 517
    :cond_6
    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda7;

    .line 518
    .line 519
    invoke-direct {v2, p2, p0, p1, v4}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda7;-><init>(Lokhttp3/Dispatcher;Ljava/util/List;Ljava/lang/String;I)V

    .line 520
    .line 521
    .line 522
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;

    .line 523
    .line 524
    invoke-direct {p0, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 525
    .line 526
    .line 527
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 528
    .line 529
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    :goto_3
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    new-instance p2, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda5;

    .line 538
    .line 539
    invoke-direct {p2, v0, v3}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda5;-><init>(Landroid/widget/Toast;I)V

    .line 540
    .line 541
    .line 542
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 543
    .line 544
    sget-object v2, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 545
    .line 546
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 547
    .line 548
    invoke-direct {v3, p2, v0, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 549
    .line 550
    .line 551
    :try_start_1
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 552
    .line 553
    invoke-direct {p2, v3, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 557
    .line 558
    .line 559
    return-void

    .line 560
    :catchall_1
    move-exception v0

    .line 561
    move-object p0, v0

    .line 562
    invoke-static {p0, v1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 563
    .line 564
    .line 565
    move-result-object p0

    .line 566
    throw p0

    .line 567
    :catch_1
    move-exception v0

    .line 568
    move-object p0, v0

    .line 569
    throw p0

    .line 570
    :pswitch_9
    check-cast p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 571
    .line 572
    check-cast v5, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    .line 573
    .line 574
    sget p1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->$r8$clinit:I

    .line 575
    .line 576
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 577
    .line 578
    if-nez p1, :cond_7

    .line 579
    .line 580
    goto :goto_6

    .line 581
    :cond_7
    iget-object p2, p1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 584
    .line 585
    .line 586
    move-result v0

    .line 587
    const/4 v1, -0x1

    .line 588
    if-eq v0, v1, :cond_8

    .line 589
    .line 590
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->hasHeader()Z

    .line 594
    .line 595
    .line 596
    move-result p2

    .line 597
    add-int/2addr p2, v0

    .line 598
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 599
    .line 600
    .line 601
    goto :goto_4

    .line 602
    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 603
    .line 604
    .line 605
    :goto_4
    instance-of p1, v5, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 606
    .line 607
    if-eqz p1, :cond_9

    .line 608
    .line 609
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/ArrayList;

    .line 610
    .line 611
    new-instance p2, Landroid/util/Pair;

    .line 612
    .line 613
    invoke-interface {v5}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getUid()J

    .line 614
    .line 615
    .line 616
    move-result-wide v0

    .line 617
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 622
    .line 623
    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    goto :goto_5

    .line 630
    :cond_9
    instance-of p1, v5, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 631
    .line 632
    if-eqz p1, :cond_a

    .line 633
    .line 634
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->deletedItems:Ljava/util/ArrayList;

    .line 635
    .line 636
    new-instance p2, Landroid/util/Pair;

    .line 637
    .line 638
    check-cast v5, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 639
    .line 640
    iget-wide v0, v5, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    .line 641
    .line 642
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 647
    .line 648
    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    :cond_a
    :goto_5
    iget-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 655
    .line 656
    if-eqz p1, :cond_b

    .line 657
    .line 658
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnectionPool;->setHasChangesToSave()V

    .line 659
    .line 660
    .line 661
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->saveImmediate()V

    .line 662
    .line 663
    .line 664
    :cond_b
    :goto_6
    return-void

    .line 665
    :pswitch_a
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 666
    .line 667
    check-cast v5, Ljava/util/List;

    .line 668
    .line 669
    sget-object p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 670
    .line 671
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    .line 672
    .line 673
    iget-object p1, p1, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 674
    .line 675
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 676
    .line 677
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    .line 678
    .line 679
    .line 680
    move-result p1

    .line 681
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 682
    .line 683
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 684
    .line 685
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 690
    .line 691
    invoke-virtual {p0, p2, v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startOnExternalPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 692
    .line 693
    .line 694
    return-void

    .line 695
    :pswitch_b
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 696
    .line 697
    check-cast v5, Ljava/util/ArrayList;

    .line 698
    .line 699
    sget-object p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 700
    .line 701
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    .line 702
    .line 703
    iget-object p1, p1, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 704
    .line 705
    iget-object p1, p1, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 706
    .line 707
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    .line 708
    .line 709
    .line 710
    move-result p1

    .line 711
    iget-object p2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 712
    .line 713
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 714
    .line 715
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 720
    .line 721
    invoke-virtual {p0, p2, v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startOnExternalPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 722
    .line 723
    .line 724
    return-void

    .line 725
    :pswitch_c
    check-cast p0, Lorg/schabi/newpipe/download/DownloadDialog;

    .line 726
    .line 727
    check-cast v5, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 728
    .line 729
    sget p2, Lorg/schabi/newpipe/download/DownloadDialog;->$r8$clinit:I

    .line 730
    .line 731
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 732
    .line 733
    .line 734
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 735
    .line 736
    invoke-virtual {p1, v5}, Lus/shandian/giga/service/DownloadManager;->forgetMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {p0, v5}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    .line 740
    .line 741
    .line 742
    return-void

    .line 743
    :pswitch_d
    check-cast p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 744
    .line 745
    check-cast v5, Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    .line 746
    .line 747
    invoke-static {p0, v5, p1, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->$r8$lambda$_KijcbSG-UYltWgc231fFfVUDkI(Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V

    .line 748
    .line 749
    .line 750
    return-void

    .line 751
    :pswitch_e
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 752
    .line 753
    check-cast v5, [Z

    .line 754
    .line 755
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 756
    .line 757
    const-string/jumbo p2, "viewModel"

    .line 758
    .line 759
    .line 760
    if-eqz p1, :cond_e

    .line 761
    .line 762
    aget-boolean v0, v5, v4

    .line 763
    .line 764
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 765
    .line 766
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 771
    .line 772
    .line 773
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Lorg/schabi/newpipe/App;

    .line 774
    .line 775
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    .line 781
    .line 782
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    const v4, 0x7f1301dc

    .line 790
    .line 791
    .line 792
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 797
    .line 798
    .line 799
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 800
    .line 801
    .line 802
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 803
    .line 804
    if-eqz p1, :cond_d

    .line 805
    .line 806
    aget-boolean v0, v5, v3

    .line 807
    .line 808
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPartiallyPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 809
    .line 810
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Lorg/schabi/newpipe/App;

    .line 818
    .line 819
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    const v3, 0x7f1301d9

    .line 834
    .line 835
    .line 836
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object p1

    .line 840
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 841
    .line 842
    .line 843
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 844
    .line 845
    .line 846
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->viewModel:Lorg/schabi/newpipe/local/feed/FeedViewModel;

    .line 847
    .line 848
    if-eqz p0, :cond_c

    .line 849
    .line 850
    const/4 p1, 0x2

    .line 851
    aget-boolean p1, v5, p1

    .line 852
    .line 853
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showFutureItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 854
    .line 855
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 860
    .line 861
    .line 862
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Lorg/schabi/newpipe/App;

    .line 863
    .line 864
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 865
    .line 866
    .line 867
    move-result-object p2

    .line 868
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 869
    .line 870
    .line 871
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 872
    .line 873
    .line 874
    move-result-object p2

    .line 875
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 876
    .line 877
    .line 878
    const v0, 0x7f1301d6

    .line 879
    .line 880
    .line 881
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object p0

    .line 885
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 886
    .line 887
    .line 888
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 889
    .line 890
    .line 891
    return-void

    .line 892
    :cond_c
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    throw v2

    .line 896
    :cond_d
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    throw v2

    .line 900
    :cond_e
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    throw v2

    .line 904
    nop

    .line 905
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
