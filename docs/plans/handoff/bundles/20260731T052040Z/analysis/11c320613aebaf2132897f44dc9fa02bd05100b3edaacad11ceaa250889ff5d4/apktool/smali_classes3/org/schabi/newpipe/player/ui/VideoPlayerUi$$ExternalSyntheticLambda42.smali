.class public final synthetic Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->f$1:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 12
    .line 13
    check-cast v2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->listener:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;

    .line 26
    .line 27
    check-cast v2, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 28
    .line 29
    invoke-static {p0, v2, p1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->$r8$lambda$8xG-TH_4AMKiaiL7pGyV687EkvU(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    .line 34
    .line 35
    check-cast v2, Landroidx/appcompat/app/AlertDialog;

    .line 36
    .line 37
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ALL_ACTIONS:[I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    aget p1, v0, p1

    .line 44
    .line 45
    iput p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->updateInfo()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    .line 55
    .line 56
    check-cast v2, Landroid/widget/CheckBox;

    .line 57
    .line 58
    iget-object p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->onToggleCompactSlot:Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    iget p0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->i:I

    .line 61
    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p1, p0, v2}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_3
    check-cast p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;

    .line 71
    .line 72
    check-cast v2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mList:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;

    .line 77
    .line 78
    iget-object p1, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    iget v0, v2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->serviceId:I

    .line 83
    .line 84
    iget-object v1, v2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->kioskId:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, p1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 87
    .line 88
    new-instance v2, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    .line 89
    .line 90
    invoke-direct {v2, v0, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;-><init>(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_4
    check-cast p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 102
    .line 103
    check-cast v2, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 104
    .line 105
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    .line 106
    .line 107
    if-eqz p0, :cond_2

    .line 108
    .line 109
    invoke-interface {p0, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;->selected(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    return-void

    .line 113
    :pswitch_5
    check-cast p0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 114
    .line 115
    check-cast v2, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    .line 116
    .line 117
    iget-object p1, v2, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->infoItem:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 118
    .line 119
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_6
    check-cast p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistItemHolder;

    .line 124
    .line 125
    check-cast v2, Lorg/schabi/newpipe/database/LocalItem;

    .line 126
    .line 127
    iget-object p0, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 128
    .line 129
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 132
    .line 133
    if-eqz p0, :cond_3

    .line 134
    .line 135
    invoke-interface {p0, v2}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    return-void

    .line 139
    :pswitch_7
    check-cast p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    .line 140
    .line 141
    check-cast v2, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 142
    .line 143
    iget-object p0, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 144
    .line 145
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast p0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 148
    .line 149
    if-eqz p0, :cond_4

    .line 150
    .line 151
    invoke-interface {p0, v2}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    return-void

    .line 155
    :pswitch_8
    check-cast p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    .line 156
    .line 157
    check-cast v2, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 158
    .line 159
    iget-object p0, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 160
    .line 161
    iget-object p0, p0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 164
    .line 165
    if-eqz p0, :cond_5

    .line 166
    .line 167
    invoke-interface {p0, v2}, Lorg/schabi/newpipe/util/OnClickGesture;->selected(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    return-void

    .line 171
    :pswitch_9
    check-cast p0, Lorg/schabi/newpipe/info_list/holder/StreamMiniInfoItemHolder;

    .line 172
    .line 173
    check-cast v2, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 174
    .line 175
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 176
    .line 177
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p0, Lokhttp3/ConnectionPool;

    .line 180
    .line 181
    if-eqz p0, :cond_6

    .line 182
    .line 183
    invoke-virtual {p0, v2}, Lokhttp3/ConnectionPool;->selected(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    return-void

    .line 187
    :pswitch_a
    check-cast p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;

    .line 188
    .line 189
    check-cast v2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    .line 190
    .line 191
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 192
    .line 193
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    if-eqz p0, :cond_7

    .line 198
    .line 199
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->selected(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    return-void

    .line 203
    :pswitch_b
    check-cast p0, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;

    .line 204
    .line 205
    check-cast v2, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 206
    .line 207
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/InfoItemHolder;->itemBuilder:Lcoil3/ComponentRegistry$Builder;

    .line 208
    .line 209
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;

    .line 212
    .line 213
    if-eqz p0, :cond_8

    .line 214
    .line 215
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->selected(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_8
    return-void

    .line 219
    :pswitch_c
    check-cast p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    .line 220
    .line 221
    check-cast v2, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 222
    .line 223
    sget p1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->$r8$clinit:I

    .line 224
    .line 225
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderUrl()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-static {p1, v0, v1, v2}, Landroidx/sqlite/SQLite;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .line 243
    .line 244
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    move-object p1, v0

    .line 247
    const-string v0, "Opening channel fragment"

    .line 248
    .line 249
    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    :goto_0
    return-void

    .line 253
    :pswitch_d
    check-cast p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    .line 254
    .line 255
    check-cast v2, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 256
    .line 257
    sget p1, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->$r8$clinit:I

    .line 258
    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-static {p0, v2}, Landroidx/sqlite/SQLite;->openCommentAuthorIfPresent(Landroidx/fragment/app/FragmentActivity;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_e
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 268
    .line 269
    check-cast v2, Ljava/util/function/Consumer;

    .line 270
    .line 271
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 272
    .line 273
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 274
    .line 275
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-nez p1, :cond_9

    .line 280
    .line 281
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 282
    .line 283
    if-eqz p0, :cond_9

    .line 284
    .line 285
    invoke-interface {v2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_9
    return-void

    .line 289
    :pswitch_f
    check-cast p0, Landroid/content/Context;

    .line 290
    .line 291
    check-cast v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 292
    .line 293
    sget-object p1, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-static {p0, v2}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->getErrorActivityIntent(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)Landroid/content/Intent;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_10
    check-cast p0, Lcom/google/android/material/snackbar/Snackbar;

    .line 307
    .line 308
    check-cast v2, Landroid/view/View$OnClickListener;

    .line 309
    .line 310
    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :pswitch_11
    check-cast p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 318
    .line 319
    check-cast v2, Ljava/lang/Runnable;

    .line 320
    .line 321
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 322
    .line 323
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 327
    .line 328
    iget v0, v0, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 329
    .line 330
    const/16 v2, 0x80

    .line 331
    .line 332
    if-ne v0, v2, :cond_a

    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_a
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->controlsVisibilityHandler:Landroid/os/Handler;

    .line 336
    .line 337
    const/4 v2, 0x0

    .line 338
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    const-wide/16 v2, 0x12c

    .line 342
    .line 343
    invoke-virtual {p0, v2, v3, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showHideShadow(JZ)V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 347
    .line 348
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 349
    .line 350
    new-instance v8, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 351
    .line 352
    const/16 v0, 0x16

    .line 353
    .line 354
    invoke-direct {v8, p0, p1, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 355
    .line 356
    .line 357
    const/4 v2, 0x1

    .line 358
    const-wide/16 v3, 0x12c

    .line 359
    .line 360
    sget-object v5, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 361
    .line 362
    const-wide/16 v6, 0x0

    .line 363
    .line 364
    invoke-static/range {v1 .. v8}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 365
    .line 366
    .line 367
    :goto_1
    return-void

    .line 368
    nop

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
