.class public final synthetic Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x0

    .line 10
    iget-object v0, v0, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 16
    .line 17
    new-array v1, v6, [I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast v0, Lorg/schabi/newpipe/player/PlayerService;

    .line 24
    .line 25
    iget-object v0, v0, Lorg/schabi/newpipe/player/PlayerService;->sessionConnector:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->setCustomErrorMessage(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 32
    .line 33
    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;

    .line 34
    .line 35
    const v4, 0x7f1301d5

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2, v2, v4}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$ProgressEvent;-><init>(III)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->processor:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 47
    .line 48
    sget-object v4, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->FEED_OLDEST_ALLOWED_DATE:Lj$/time/OffsetDateTime;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object v7, v1, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v8, v7, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 62
    .line 63
    new-instance v9, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    invoke-direct {v9, v7, v4, v3}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v8, v6, v5, v9}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->streamTable:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 72
    .line 73
    iget-object v1, v1, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 74
    .line 75
    new-instance v3, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 76
    .line 77
    const/4 v4, 0x4

    .line 78
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v6, v5, v3}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 88
    .line 89
    .line 90
    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;

    .line 91
    .line 92
    iget-object v0, v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedResultsHolder:Lokhttp3/Headers$Builder;

    .line 93
    .line 94
    iget-object v0, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event$SuccessResultEvent;-><init>(Ljava/util/ArrayList;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->onNext(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_2
    check-cast v0, Lorg/schabi/newpipe/fragments/BaseStateFragment;

    .line 104
    .line 105
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->reloadContent()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_3
    check-cast v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

    .line 110
    .line 111
    iget-object v0, v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 112
    .line 113
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->inFlight(Z)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_4
    check-cast v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 118
    .line 119
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->inFlight(Z)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_5
    check-cast v0, Lorg/schabi/newpipe/NewVersionWorker;

    .line 124
    .line 125
    sget-object v1, Lorg/schabi/newpipe/NewVersionWorker;->Companion:Lorg/schabi/newpipe/NewVersionWorker$Companion;

    .line 126
    .line 127
    iget-object v0, v0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 128
    .line 129
    const v1, 0x7f130041

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_6
    check-cast v0, Lorg/schabi/newpipe/MainActivity$2;

    .line 141
    .line 142
    iget-object v0, v0, Lorg/schabi/newpipe/MainActivity$2;->this$0:Lorg/schabi/newpipe/MainActivity;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v3, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 152
    .line 153
    invoke-direct {v3, v1, v4, v2, v5}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3, v6}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_7
    check-cast v0, Lorg/schabi/newpipe/MainActivity;

    .line 164
    .line 165
    iget-object v0, v0, Lorg/schabi/newpipe/MainActivity;->drawerHeaderBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 166
    .line 167
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderServiceView:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 170
    .line 171
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_8
    check-cast v0, Lio/reactivex/rxjava3/android/MainThreadDisposable;

    .line 176
    .line 177
    invoke-virtual {v0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;->onDispose()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_9
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 182
    .line 183
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_a
    check-cast v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 190
    .line 191
    iget-object v1, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 198
    .line 199
    .line 200
    iput-boolean v1, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_b
    check-cast v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 204
    .line 205
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_c
    check-cast v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;

    .line 210
    .line 211
    iput-boolean v6, v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    .line 212
    .line 213
    iget-object v1, v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 216
    .line 217
    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 218
    .line 219
    if-eqz v2, :cond_0

    .line 220
    .line 221
    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_0

    .line 226
    .line 227
    iget v1, v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->continueSettlingToState(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_0
    iget v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    .line 234
    .line 235
    if-ne v2, v3, :cond_1

    .line 236
    .line 237
    iget v0, v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    .line 240
    .line 241
    .line 242
    :cond_1
    :goto_0
    return-void

    .line 243
    :pswitch_d
    check-cast v0, Lorg/acra/util/ProcessFinisher;

    .line 244
    .line 245
    iget-object v1, v0, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v1, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;

    .line 248
    .line 249
    if-eqz v1, :cond_2

    .line 250
    .line 251
    iget-object v2, v0, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v2, Lcom/google/android/material/navigation/NavigationView;

    .line 254
    .line 255
    iget-object v0, v0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 258
    .line 259
    invoke-virtual {v1, v2, v0, v5}, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api33BackCallbackDelegate;->startListeningForBackCallbacks(Lcom/google/android/material/motion/MaterialBackHandler;Landroid/view/View;Z)V

    .line 260
    .line 261
    .line 262
    :cond_2
    return-void

    .line 263
    :pswitch_e
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 264
    .line 265
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_f
    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    .line 270
    .line 271
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->$r8$lambda$0R96mKSWgDxxCYfa0Z6Bs0YmYtQ(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :pswitch_10
    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;

    .line 276
    .line 277
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$p5Le72Gb0piBzsmkmTOSikY6UE0(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_11
    check-cast v0, Lio/reactivex/rxjava3/disposables/Disposable;

    .line 282
    .line 283
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :pswitch_12
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 288
    .line 289
    if-eqz v0, :cond_3

    .line 290
    .line 291
    invoke-interface {v0, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 292
    .line 293
    .line 294
    :cond_3
    return-void

    .line 295
    :pswitch_13
    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 296
    .line 297
    sget-object v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    .line 298
    .line 299
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->reset$1()V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :pswitch_14
    check-cast v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 304
    .line 305
    iget-object v1, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 306
    .line 307
    iget v2, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    .line 308
    .line 309
    if-nez v2, :cond_4

    .line 310
    .line 311
    iput-boolean v5, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 312
    .line 313
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 316
    .line 317
    .line 318
    :cond_4
    iget v2, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    .line 319
    .line 320
    if-nez v2, :cond_5

    .line 321
    .line 322
    iget-boolean v2, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 323
    .line 324
    if-eqz v2, :cond_5

    .line 325
    .line 326
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 327
    .line 328
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 329
    .line 330
    .line 331
    iput-boolean v5, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    .line 332
    .line 333
    :cond_5
    return-void

    .line 334
    :pswitch_15
    move-object v1, v0

    .line 335
    check-cast v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    .line 336
    .line 337
    const-string v0, "fetchFonts result is not OK. ("

    .line 338
    .line 339
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 340
    .line 341
    monitor-enter v2

    .line 342
    :try_start_0
    iget-object v4, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Lkotlin/text/CharsKt;

    .line 343
    .line 344
    if-nez v4, :cond_6

    .line 345
    .line 346
    monitor-exit v2

    .line 347
    goto/16 :goto_7

    .line 348
    .line 349
    :catchall_0
    move-exception v0

    .line 350
    goto/16 :goto_9

    .line 351
    .line 352
    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :try_start_1
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->retrieveFontInfo()Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    iget v4, v2, Landroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    .line 358
    .line 359
    if-ne v4, v3, :cond_7

    .line 360
    .line 361
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 362
    .line 363
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 364
    :try_start_2
    monitor-exit v3

    .line 365
    goto :goto_1

    .line 366
    :catchall_1
    move-exception v0

    .line 367
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 368
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 369
    :catchall_2
    move-exception v0

    .line 370
    goto/16 :goto_5

    .line 371
    .line 372
    :cond_7
    :goto_1
    if-nez v4, :cond_a

    .line 373
    .line 374
    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 375
    .line 376
    sget-object v3, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 377
    .line 378
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget-object v0, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mFontProviderHelper:Lio/noties/markwon/BlockHandlerDef;

    .line 382
    .line 383
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    new-array v0, v5, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 389
    .line 390
    aput-object v2, v0, v6

    .line 391
    .line 392
    sget-object v4, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lokio/Options$Companion;

    .line 393
    .line 394
    const-string v4, "TypefaceCompat.createFromFontInfo"

    .line 395
    .line 396
    invoke-static {v4}, Landroidx/room/Room;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 401
    .line 402
    .line 403
    :try_start_5
    sget-object v4, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Lokio/Options$Companion;

    .line 404
    .line 405
    invoke-virtual {v4, v3, v0, v6}, Lokio/Options$Companion;->createFromFontInfo(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    .line 406
    .line 407
    .line 408
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 409
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 410
    .line 411
    .line 412
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    .line 413
    .line 414
    iget-object v2, v2, Landroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    .line 415
    .line 416
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->mmap(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 417
    .line 418
    .line 419
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 420
    if-eqz v2, :cond_9

    .line 421
    .line 422
    if-eqz v0, :cond_9

    .line 423
    .line 424
    :try_start_7
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 425
    .line 426
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    new-instance v3, Lokhttp3/Dispatcher;

    .line 430
    .line 431
    invoke-static {v2}, Lnet/newpipe/app/AppKt;->read(Ljava/nio/MappedByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-direct {v3, v0, v2}, Lokhttp3/Dispatcher;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 436
    .line 437
    .line 438
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 439
    .line 440
    .line 441
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 442
    .line 443
    .line 444
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 445
    .line 446
    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 447
    :try_start_a
    iget-object v0, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Lkotlin/text/CharsKt;

    .line 448
    .line 449
    if-eqz v0, :cond_8

    .line 450
    .line 451
    invoke-virtual {v0, v3}, Lkotlin/text/CharsKt;->onLoaded(Lokhttp3/Dispatcher;)V

    .line 452
    .line 453
    .line 454
    goto :goto_2

    .line 455
    :catchall_3
    move-exception v0

    .line 456
    goto :goto_3

    .line 457
    :cond_8
    :goto_2
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 458
    :try_start_b
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 459
    .line 460
    .line 461
    goto :goto_7

    .line 462
    :goto_3
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 463
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 464
    :catchall_4
    move-exception v0

    .line 465
    :try_start_e
    sget-object v2, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 466
    .line 467
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 468
    .line 469
    .line 470
    throw v0

    .line 471
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 472
    .line 473
    const-string v2, "Unable to open file."

    .line 474
    .line 475
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v0

    .line 479
    :catchall_5
    move-exception v0

    .line 480
    goto :goto_4

    .line 481
    :catchall_6
    move-exception v0

    .line 482
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 483
    .line 484
    .line 485
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 486
    :goto_4
    :try_start_f
    sget-object v2, Landroidx/core/os/TraceCompat;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 487
    .line 488
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 489
    .line 490
    .line 491
    throw v0

    .line 492
    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    .line 493
    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    const-string v0, ")"

    .line 503
    .line 504
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 515
    :goto_5
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    .line 516
    .line 517
    monitor-enter v3

    .line 518
    :try_start_10
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Lkotlin/text/CharsKt;

    .line 519
    .line 520
    if-eqz v2, :cond_b

    .line 521
    .line 522
    invoke-virtual {v2, v0}, Lkotlin/text/CharsKt;->onFailed(Ljava/lang/Throwable;)V

    .line 523
    .line 524
    .line 525
    goto :goto_6

    .line 526
    :catchall_7
    move-exception v0

    .line 527
    goto :goto_8

    .line 528
    :cond_b
    :goto_6
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 529
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V

    .line 530
    .line 531
    .line 532
    :goto_7
    return-void

    .line 533
    :goto_8
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 534
    throw v0

    .line 535
    :goto_9
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 536
    throw v0

    .line 537
    :pswitch_16
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 538
    .line 539
    const-string v1, "measureAndLayout"

    .line 540
    .line 541
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    :try_start_13
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 545
    .line 546
    invoke-virtual {v1, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 547
    .line 548
    .line 549
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 550
    .line 551
    .line 552
    const-string v1, "checkForSemanticsChanges"

    .line 553
    .line 554
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    :try_start_14
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkForSemanticsChanges()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 558
    .line 559
    .line 560
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 561
    .line 562
    .line 563
    iput-boolean v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->checkingForSemanticsChanges:Z

    .line 564
    .line 565
    return-void

    .line 566
    :catchall_8
    move-exception v0

    .line 567
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 568
    .line 569
    .line 570
    throw v0

    .line 571
    :catchall_9
    move-exception v0

    .line 572
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 573
    .line 574
    .line 575
    throw v0

    .line 576
    :pswitch_17
    check-cast v0, Landroidx/compose/ui/platform/AbstractComposeView;

    .line 577
    .line 578
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AbstractComposeView;->attachedToWindow()V

    .line 579
    .line 580
    .line 581
    return-void

    .line 582
    :pswitch_18
    check-cast v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 583
    .line 584
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui()Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 589
    .line 590
    if-nez v1, :cond_c

    .line 591
    .line 592
    goto/16 :goto_d

    .line 593
    .line 594
    :cond_c
    const-string v1, "ContentCapture:changeChecker"

    .line 595
    .line 596
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    :try_start_15
    invoke-virtual {v2, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    .line 600
    .line 601
    .line 602
    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    .line 603
    .line 604
    iget-object v4, v1, Landroidx/collection/IntObjectMap;->keys:[I

    .line 605
    .line 606
    iget-object v1, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 607
    .line 608
    array-length v5, v1

    .line 609
    sub-int/2addr v5, v3

    .line 610
    if-ltz v5, :cond_10

    .line 611
    .line 612
    move v3, v6

    .line 613
    :goto_a
    aget-wide v7, v1, v3

    .line 614
    .line 615
    not-long v9, v7

    .line 616
    const/4 v11, 0x7

    .line 617
    shl-long/2addr v9, v11

    .line 618
    and-long/2addr v9, v7

    .line 619
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    and-long/2addr v9, v11

    .line 625
    cmp-long v9, v9, v11

    .line 626
    .line 627
    if-eqz v9, :cond_f

    .line 628
    .line 629
    sub-int v9, v3, v5

    .line 630
    .line 631
    not-int v9, v9

    .line 632
    ushr-int/lit8 v9, v9, 0x1f

    .line 633
    .line 634
    const/16 v10, 0x8

    .line 635
    .line 636
    rsub-int/lit8 v9, v9, 0x8

    .line 637
    .line 638
    move v11, v6

    .line 639
    :goto_b
    if-ge v11, v9, :cond_e

    .line 640
    .line 641
    const-wide/16 v12, 0xff

    .line 642
    .line 643
    and-long/2addr v12, v7

    .line 644
    const-wide/16 v14, 0x80

    .line 645
    .line 646
    cmp-long v12, v12, v14

    .line 647
    .line 648
    if-gez v12, :cond_d

    .line 649
    .line 650
    shl-int/lit8 v12, v3, 0x3

    .line 651
    .line 652
    add-int/2addr v12, v11

    .line 653
    aget v14, v4, v12

    .line 654
    .line 655
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui()Landroidx/collection/IntObjectMap;

    .line 656
    .line 657
    .line 658
    move-result-object v12

    .line 659
    invoke-virtual {v12, v14}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 660
    .line 661
    .line 662
    move-result v12

    .line 663
    if-nez v12, :cond_d

    .line 664
    .line 665
    iget-object v12, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->bufferedEvents:Ljava/util/ArrayList;

    .line 666
    .line 667
    new-instance v13, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    .line 668
    .line 669
    move-wide/from16 v19, v7

    .line 670
    .line 671
    iget-wide v6, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->currentSemanticsNodesSnapshotTimestampMillis:J

    .line 672
    .line 673
    sget-object v17, Landroidx/compose/ui/contentcapture/ContentCaptureEventType;->VIEW_DISAPPEAR:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    .line 674
    .line 675
    const/16 v18, 0x0

    .line 676
    .line 677
    move-wide v15, v6

    .line 678
    invoke-direct/range {v13 .. v18}, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;-><init>(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Lcoil3/memory/MemoryCacheService;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    iget-object v6, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->boundsUpdateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 685
    .line 686
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 687
    .line 688
    invoke-interface {v6, v7}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    goto :goto_c

    .line 692
    :cond_d
    move-wide/from16 v19, v7

    .line 693
    .line 694
    :goto_c
    shr-long v7, v19, v10

    .line 695
    .line 696
    add-int/lit8 v11, v11, 0x1

    .line 697
    .line 698
    const/4 v6, 0x0

    .line 699
    goto :goto_b

    .line 700
    :cond_e
    if-ne v9, v10, :cond_10

    .line 701
    .line 702
    :cond_f
    if-eq v3, v5, :cond_10

    .line 703
    .line 704
    add-int/lit8 v3, v3, 0x1

    .line 705
    .line 706
    const/4 v6, 0x0

    .line 707
    goto :goto_a

    .line 708
    :cond_10
    const-string v1, "ContentCapture:sendAppearEvents"

    .line 709
    .line 710
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 711
    .line 712
    .line 713
    :try_start_16
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 722
    .line 723
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->sendContentCaptureAppearEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 724
    .line 725
    .line 726
    :try_start_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui()Landroidx/collection/IntObjectMap;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-virtual {v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkForContentCapturePropertyChanges(Landroidx/collection/IntObjectMap;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->updateSemanticsCopy()V

    .line 737
    .line 738
    .line 739
    const/4 v1, 0x0

    .line 740
    iput-boolean v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkingForSemanticsChanges:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 741
    .line 742
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 743
    .line 744
    .line 745
    :goto_d
    return-void

    .line 746
    :catchall_a
    move-exception v0

    .line 747
    :try_start_18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 748
    .line 749
    .line 750
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 751
    :catchall_b
    move-exception v0

    .line 752
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 753
    .line 754
    .line 755
    throw v0

    .line 756
    :pswitch_19
    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    .line 757
    .line 758
    invoke-static {v0}, Landroidx/compose/material/ripple/RippleHostView;->$r8$lambda$1-ekBTR8n6pqldXkOecN8lq5XRQ(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 759
    .line 760
    .line 761
    return-void

    .line 762
    :pswitch_1a
    check-cast v0, Landroidx/activity/ComponentDialog;

    .line 763
    .line 764
    invoke-static {v0}, Landroidx/activity/ComponentDialog;->$r8$lambda$XxpmZzi8FNPM2sJJA30VCt2mBcQ(Landroidx/activity/ComponentDialog;)V

    .line 765
    .line 766
    .line 767
    return-void

    .line 768
    :pswitch_1b
    check-cast v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    .line 769
    .line 770
    iget-object v1, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 771
    .line 772
    if-eqz v1, :cond_11

    .line 773
    .line 774
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 775
    .line 776
    .line 777
    iput-object v4, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;->currentRunnable:Ljava/lang/Runnable;

    .line 778
    .line 779
    :cond_11
    return-void

    .line 780
    :pswitch_1c
    check-cast v0, Lorg/acra/builder/ReportExecutor;

    .line 781
    .line 782
    const-string v1, "Warning: Acra may behave differently with a debugger attached"

    .line 783
    .line 784
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 785
    .line 786
    .line 787
    iget-object v0, v0, Lorg/acra/builder/ReportExecutor;->context:Lorg/schabi/newpipe/App;

    .line 788
    .line 789
    :try_start_19
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    .line 794
    .line 795
    .line 796
    goto :goto_e

    .line 797
    :catch_0
    move-exception v0

    .line 798
    sget-object v1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 799
    .line 800
    const-string v1, "ACRA"

    .line 801
    .line 802
    const-string v2, "Could not send crash Toast"

    .line 803
    .line 804
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    .line 806
    .line 807
    :goto_e
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 808
    .line 809
    .line 810
    return-void

    .line 811
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
