.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lkotlinx/coroutines/android/HandlerContext;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-lez v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-lez v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->updateBitmap()V

    .line 42
    .line 43
    .line 44
    :cond_0
    new-array v4, v1, [I

    .line 45
    .line 46
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 47
    .line 48
    .line 49
    aget v5, v4, v3

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    div-int/2addr v6, v1

    .line 56
    add-int/2addr v6, v5

    .line 57
    aget v4, v4, v2

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    div-int/2addr p0, v1

    .line 64
    add-int/2addr p0, v4

    .line 65
    new-instance v1, Landroid/graphics/Point;

    .line 66
    .line 67
    invoke-direct {v1, v6, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 68
    .line 69
    .line 70
    iget p0, v1, Landroid/graphics/Point;->x:I

    .line 71
    .line 72
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 73
    .line 74
    iget-object v4, v0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->positionInWindow:[I

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 77
    .line 78
    .line 79
    aget v3, v4, v3

    .line 80
    .line 81
    sub-int/2addr p0, v3

    .line 82
    iput p0, v0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->highlightX:I

    .line 83
    .line 84
    aget p0, v4, v2

    .line 85
    .line 86
    sub-int/2addr v1, p0

    .line 87
    iput v1, v0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->highlightY:I

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_1
    const-string v0, "Removing some notifications for account %s"

    .line 94
    .line 95
    iget-object v4, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v4, Lcom/fsck/k9/controller/MessagingController;

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 102
    .line 103
    iget-object v4, v4, Lcom/fsck/k9/controller/MessagingController;->notificationOperations:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 104
    .line 105
    iget-object v5, v4, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v5, Lcom/fsck/k9/notification/NotificationController;

    .line 108
    .line 109
    iget-object v6, v5, Lcom/fsck/k9/notification/NotificationController;->newMailNotificationController:Lcom/fsck/k9/notification/NewMailNotificationController;

    .line 110
    .line 111
    iget-object v7, v4, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v7, Lcom/fsck/k9/Preferences;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v8, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 119
    .line 120
    const-string v9, "unified_folders"

    .line 121
    .line 122
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_4

    .line 127
    .line 128
    invoke-virtual {v7}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_7

    .line 141
    .line 142
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 147
    .line 148
    iget-object v7, v4, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v7, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 151
    .line 152
    invoke-virtual {v7, v5}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    new-instance v8, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 157
    .line 158
    invoke-direct {v8, v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 159
    .line 160
    .line 161
    iget-object v7, v7, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 162
    .line 163
    iget-object v7, v7, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v7, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 166
    .line 167
    invoke-virtual {v7, v8}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolders(Lapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    new-instance v8, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-eqz v9, :cond_3

    .line 185
    .line 186
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    if-eqz v9, :cond_2

    .line 191
    .line 192
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_3
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    move-object v8, v7

    .line 201
    check-cast v8, Ljava/util/Collection;

    .line 202
    .line 203
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-nez v8, :cond_1

    .line 208
    .line 209
    new-instance v8, Lcom/fsck/k9/controller/NotificationOperations$$ExternalSyntheticLambda2;

    .line 210
    .line 211
    invoke-direct {v8, v7, v3}, Lcom/fsck/k9/controller/NotificationOperations$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;I)V

    .line 212
    .line 213
    .line 214
    iget-object v7, v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 215
    .line 216
    new-array v9, v2, [Ljava/lang/Object;

    .line 217
    .line 218
    aput-object v7, v9, v3

    .line 219
    .line 220
    invoke-static {v0, v9}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v5, v3, v8}, Lcom/fsck/k9/notification/NewMailNotificationController;->removeNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/jvm/functions/Function1;)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_4
    iget-object v1, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 228
    .line 229
    const-string v4, "new_messages"

    .line 230
    .line 231
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_5

    .line 236
    .line 237
    invoke-virtual {v7}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_7

    .line 250
    .line 251
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 256
    .line 257
    invoke-virtual {v5, v0, v3}, Lcom/fsck/k9/notification/NotificationController;->clearNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_5
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getAccountUuids()Ljava/util/Set;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-ne v1, v2, :cond_7

    .line 270
    .line 271
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-ne v1, v2, :cond_7

    .line 280
    .line 281
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getAccountUuids()Ljava/util/Set;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Ljava/lang/Iterable;

    .line 286
    .line 287
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    check-cast v1, Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v7, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-nez v1, :cond_6

    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_6
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getFolderIds()Ljava/util/ArrayList;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    check-cast p0, Ljava/lang/Number;

    .line 309
    .line 310
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 311
    .line 312
    .line 313
    move-result-wide v4

    .line 314
    new-instance p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 315
    .line 316
    const/4 v7, 0x4

    .line 317
    invoke-direct {p0, v7, v4, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(IJ)V

    .line 318
    .line 319
    .line 320
    iget-object v4, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 321
    .line 322
    new-array v2, v2, [Ljava/lang/Object;

    .line 323
    .line 324
    aput-object v4, v2, v3

    .line 325
    .line 326
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v1, v3, p0}, Lcom/fsck/k9/notification/NewMailNotificationController;->removeNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/jvm/functions/Function1;)V

    .line 330
    .line 331
    .line 332
    :cond_7
    :goto_3
    return-void

    .line 333
    :pswitch_2
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 336
    .line 337
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 340
    .line 341
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 342
    .line 343
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :pswitch_3
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 348
    .line 349
    move-object v2, v0

    .line 350
    check-cast v2, Lorg/jsoup/parser/ParseError;

    .line 351
    .line 352
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 353
    .line 354
    move-object v5, p0

    .line 355
    check-cast v5, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 356
    .line 357
    iget-object p0, v2, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v5, p0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    if-nez v6, :cond_8

    .line 364
    .line 365
    const-string p0, "doHighlight"

    .line 366
    .line 367
    const-string v0, "Preference not found on given screen"

    .line 368
    .line 369
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_8
    iget-object v3, v5, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 374
    .line 375
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    instance-of v0, p0, Landroidx/preference/PreferenceGroupAdapter;

    .line 380
    .line 381
    if-eqz v0, :cond_9

    .line 382
    .line 383
    check-cast p0, Landroidx/preference/PreferenceGroupAdapter;

    .line 384
    .line 385
    invoke-virtual {p0, v6}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    const/4 p0, -0x1

    .line 390
    if-eq v4, p0, :cond_9

    .line 391
    .line 392
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 393
    .line 394
    .line 395
    new-instance v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;

    .line 396
    .line 397
    invoke-direct/range {v1 .. v6}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceResult$$ExternalSyntheticLambda1;-><init>(Lorg/jsoup/parser/ParseError;Landroidx/recyclerview/widget/RecyclerView;ILcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;Landroidx/preference/Preference;)V

    .line 398
    .line 399
    .line 400
    const-wide/16 v4, 0xc8

    .line 401
    .line 402
    invoke-virtual {v3, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    .line 404
    .line 405
    goto :goto_4

    .line 406
    :cond_9
    invoke-static {v5, v6}, Lorg/jsoup/parser/ParseError;->highlightFallback(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;Landroidx/preference/Preference;)V

    .line 407
    .line 408
    .line 409
    :goto_4
    return-void

    .line 410
    :pswitch_4
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v0, Landroidx/work/impl/WorkDatabase;

    .line 413
    .line 414
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    .line 417
    .line 418
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 426
    .line 427
    new-instance v1, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 428
    .line 429
    const/16 v4, 0x8

    .line 430
    .line 431
    invoke-direct {v1, v4}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 432
    .line 433
    .line 434
    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    check-cast v0, Ljava/util/List;

    .line 439
    .line 440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    if-eqz v1, :cond_a

    .line 449
    .line 450
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    check-cast v1, Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {p0, v1}, Landroidx/work/impl/utils/EnqueueUtilsKt;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    goto :goto_5

    .line 460
    :cond_a
    return-void

    .line 461
    :pswitch_5
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    .line 464
    .line 465
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast p0, Ljava/util/UUID;

    .line 468
    .line 469
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p0

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    invoke-static {v0, p0}, Landroidx/work/impl/utils/EnqueueUtilsKt;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :pswitch_6
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v0, Ljava/util/List;

    .line 483
    .line 484
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 487
    .line 488
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    if-eqz v1, :cond_b

    .line 497
    .line 498
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    check-cast v1, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 503
    .line 504
    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 505
    .line 506
    invoke-virtual {v1, v2}, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->onConstraintChanged(Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    goto :goto_6

    .line 510
    :cond_b
    return-void

    .line 511
    :pswitch_7
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v0, Lokhttp3/Dispatcher;

    .line 514
    .line 515
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 516
    .line 517
    check-cast p0, Landroidx/work/impl/StartStopToken;

    .line 518
    .line 519
    iget-object v0, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v0, Lcom/beetstra/jutf7/Base64Util;

    .line 522
    .line 523
    const/4 v1, 0x3

    .line 524
    invoke-virtual {v0, p0, v1}, Lcom/beetstra/jutf7/Base64Util;->stopWork(Landroidx/work/impl/StartStopToken;I)V

    .line 525
    .line 526
    .line 527
    return-void

    .line 528
    :pswitch_8
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 531
    .line 532
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast p0, Landroidx/window/layout/WindowLayoutInfo;

    .line 535
    .line 536
    iget-object v0, v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->callback:Landroidx/core/util/Consumer;

    .line 537
    .line 538
    invoke-interface {v0, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    :pswitch_9
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v0, Ljava/lang/Runnable;

    .line 545
    .line 546
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 547
    .line 548
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 549
    .line 550
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .line 552
    .line 553
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :catchall_0
    move-exception v0

    .line 558
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 559
    .line 560
    .line 561
    throw v0

    .line 562
    :pswitch_a
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v0, Landroidx/core/content/res/CamUtils;

    .line 565
    .line 566
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast p0, Landroid/graphics/Typeface;

    .line 569
    .line 570
    invoke-virtual {v0, p0}, Landroidx/core/content/res/CamUtils;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    :pswitch_b
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v0, Landroidx/compose/ui/platform/WrappedComposition;

    .line 577
    .line 578
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast p0, Landroidx/lifecycle/Lifecycle;

    .line 581
    .line 582
    iget-boolean v1, v0, Landroidx/compose/ui/platform/WrappedComposition;->disposed:Z

    .line 583
    .line 584
    if-nez v1, :cond_c

    .line 585
    .line 586
    iput-object p0, v0, Landroidx/compose/ui/platform/WrappedComposition;->addedToLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 587
    .line 588
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 589
    .line 590
    .line 591
    :cond_c
    return-void

    .line 592
    :pswitch_c
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v0, Landroidx/work/impl/Processor;

    .line 595
    .line 596
    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 597
    .line 598
    check-cast p0, Landroidx/work/impl/model/WorkGenerationalId;

    .line 599
    .line 600
    iget-object v1, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 601
    .line 602
    monitor-enter v1

    .line 603
    :try_start_1
    iget-object v0, v0, Landroidx/work/impl/Processor;->mOuterListeners:Ljava/util/ArrayList;

    .line 604
    .line 605
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    if-eqz v2, :cond_d

    .line 614
    .line 615
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    check-cast v2, Landroidx/work/impl/ExecutionListener;

    .line 620
    .line 621
    invoke-interface {v2, p0, v3}, Landroidx/work/impl/ExecutionListener;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 622
    .line 623
    .line 624
    goto :goto_7

    .line 625
    :catchall_1
    move-exception v0

    .line 626
    move-object p0, v0

    .line 627
    goto :goto_8

    .line 628
    :cond_d
    monitor-exit v1

    .line 629
    return-void

    .line 630
    :goto_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 631
    throw p0

    .line 632
    nop

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
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
