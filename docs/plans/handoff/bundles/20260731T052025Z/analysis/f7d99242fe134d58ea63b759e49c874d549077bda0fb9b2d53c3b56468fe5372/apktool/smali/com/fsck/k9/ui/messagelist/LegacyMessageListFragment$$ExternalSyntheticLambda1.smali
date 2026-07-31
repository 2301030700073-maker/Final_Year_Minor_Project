.class public final synthetic Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->relativeDateTimeFormatter$delegate:Lkotlin/Lazy;

    .line 15
    .line 16
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessageListSettings()Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1, p0}, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;->formatDate(JLnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListInfo;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListInfo;->messageListItems:Ljava/util/List;

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isThreadDisplay:Z

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 52
    .line 53
    if-eqz p0, :cond_0

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
    goto/16 :goto_7

    .line 63
    .line 64
    :cond_0
    const-string p0, "fragmentListener"

    .line 65
    .line 66
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v2

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteSearchAllowed()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-boolean v4, v4, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->isManualSearch:Z

    .line 89
    .line 90
    if-nez v4, :cond_2

    .line 91
    .line 92
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->allAccounts:Z

    .line 93
    .line 94
    if-nez v4, :cond_3

    .line 95
    .line 96
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleAccountMode:Z

    .line 97
    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isSingleFolderMode:Z

    .line 101
    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isRemoteFolder()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    move v4, v3

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 114
    :goto_1
    invoke-virtual {v1, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 115
    .line 116
    .line 117
    :cond_4
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->isThreadDisplay:Z

    .line 118
    .line 119
    if-eqz v1, :cond_8

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_8

    .line 126
    .line 127
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 132
    .line 133
    iget-object v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    invoke-static {v1}, Lcom/fsck/k9/helper/Utility;->stripSubject(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    move-object v1, v2

    .line 143
    :goto_2
    if-eqz v1, :cond_6

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_7

    .line 150
    .line 151
    :cond_6
    const v1, 0x7f120315

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    :cond_7
    iput-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->threadTitle:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateTitle()V

    .line 161
    .line 162
    .line 163
    :cond_8
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 164
    .line 165
    const-string v4, "adapter"

    .line 166
    .line 167
    if-eqz v1, :cond_12

    .line 168
    .line 169
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    iget-object v6, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 174
    .line 175
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    check-cast v6, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 180
    .line 181
    const-string v7, "display_in_app_notifications"

    .line 182
    .line 183
    invoke-virtual {v6, v7}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-interface {v6}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->isEnabled()Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_9

    .line 192
    .line 193
    sget-object v6, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$InAppNotificationBannerList;->INSTANCE:Lcom/fsck/k9/ui/messagelist/MessageListViewItem$InAppNotificationBannerList;

    .line 194
    .line 195
    invoke-virtual {v5, v6}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    .line 199
    .line 200
    const/16 v7, 0xa

    .line 201
    .line 202
    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    if-eqz v9, :cond_a

    .line 218
    .line 219
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    check-cast v9, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 224
    .line 225
    new-instance v10, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 226
    .line 227
    invoke-direct {v10, v9}, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_a
    invoke-virtual {v5, v6}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 235
    .line 236
    .line 237
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v1, v5}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setViewItems(Ljava/util/AbstractList;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->rememberedSelected:Ljava/util/Set;

    .line 245
    .line 246
    if-eqz v1, :cond_d

    .line 247
    .line 248
    iput-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->rememberedSelected:Ljava/util/Set;

    .line 249
    .line 250
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 251
    .line 252
    if-eqz v5, :cond_c

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_b

    .line 259
    .line 260
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 261
    .line 262
    invoke-virtual {v5, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_b
    iget-object v2, v5, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->messagesMap:Ljava/util/Map;

    .line 267
    .line 268
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v1, Ljava/lang/Iterable;

    .line 273
    .line 274
    check-cast v2, Ljava/lang/Iterable;

    .line 275
    .line 276
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v5, v1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->setSelected(Ljava/util/Set;)V

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v2

    .line 288
    :cond_d
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_e

    .line 306
    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 312
    .line 313
    iget-object v2, v2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_e
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Ljava/lang/Iterable;

    .line 324
    .line 325
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_f

    .line 334
    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 340
    .line 341
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getMessagingController()Lcom/fsck/k9/controller/MessagingControllerWrapper;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 346
    .line 347
    invoke-virtual {v2, v1}, Lcom/fsck/k9/controller/MessagingControllerWrapper;->checkAuthenticationProblem(Lnet/thunderbird/feature/account/AccountId;)V

    .line 348
    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_f
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->resetActionMode()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->computeBatchDirection()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-eqz v0, :cond_10

    .line 362
    .line 363
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 364
    .line 365
    .line 366
    :cond_10
    iput-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->initialMessageListLoad:Z

    .line 367
    .line 368
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 369
    .line 370
    if-eqz v0, :cond_11

    .line 371
    .line 372
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListInfo;->hasMoreMessages:Z

    .line 373
    .line 374
    iput-boolean p1, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    .line 375
    .line 376
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->updateFooterText()V

    .line 377
    .line 378
    .line 379
    :cond_11
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 380
    .line 381
    return-object p0

    .line 382
    :cond_12
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw v2

    .line 386
    nop

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
