.class public final Lcom/fsck/k9/notification/NewMailNotificationController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final newMailNotificationManager:Lcom/fsck/k9/notification/NewMailNotificationManager;

.field public final notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field public final singleMessageNotificationCreator:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

.field public final summaryNotificationCreator:Lcom/fsck/k9/notification/SummaryNotificationCreator;


# direct methods
.method public constructor <init>(Landroidx/core/app/NotificationManagerCompat;Lcom/fsck/k9/notification/NewMailNotificationManager;Lcom/fsck/k9/notification/SummaryNotificationCreator;Lcom/fsck/k9/notification/SingleMessageNotificationCreator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/NewMailNotificationController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/NewMailNotificationController;->newMailNotificationManager:Lcom/fsck/k9/notification/NewMailNotificationManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/notification/NewMailNotificationController;->summaryNotificationCreator:Lcom/fsck/k9/notification/SummaryNotificationCreator;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/notification/NewMailNotificationController;->singleMessageNotificationCreator:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final processNewMailNotificationData(Lcom/fsck/k9/notification/NewMailNotificationData;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/fsck/k9/notification/NewMailNotificationData;->cancelNotificationIds:Ljava/util/List;

    .line 6
    .line 7
    iget-object v4, v1, Lcom/fsck/k9/notification/NewMailNotificationData;->baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v5, v0, Lcom/fsck/k9/notification/NewMailNotificationController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 30
    .line 31
    invoke-virtual {v5, v3}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, v1, Lcom/fsck/k9/notification/NewMailNotificationData;->singleNotificationData:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v9, 0x3

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    move-object v5, v3

    .line 55
    check-cast v5, Lcom/fsck/k9/notification/SingleNotificationData;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v6, v0, Lcom/fsck/k9/notification/NewMailNotificationController;->singleMessageNotificationCreator:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 61
    .line 62
    iget-object v11, v6, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 63
    .line 64
    new-instance v3, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;-><init>(Lcom/fsck/k9/notification/BaseNotificationData;Lcom/fsck/k9/notification/SingleNotificationData;Lcom/fsck/k9/notification/SingleMessageNotificationCreator;ZLkotlin/coroutines/Continuation;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v11, v10, v10, v3, v9}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v1, v1, Lcom/fsck/k9/notification/NewMailNotificationData;->summaryNotificationData:Lcom/fsck/k9/notification/SummaryNotificationData;

    .line 75
    .line 76
    if-eqz v1, :cond_16

    .line 77
    .line 78
    instance-of v2, v1, Lcom/fsck/k9/notification/SummarySingleNotificationData;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/fsck/k9/notification/NewMailNotificationController;->summaryNotificationCreator:Lcom/fsck/k9/notification/SummaryNotificationCreator;

    .line 81
    .line 82
    move v3, v7

    .line 83
    const/4 v7, 0x1

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    check-cast v1, Lcom/fsck/k9/notification/SummarySingleNotificationData;

    .line 87
    .line 88
    iget-object v5, v1, Lcom/fsck/k9/notification/SummarySingleNotificationData;->singleNotificationData:Lcom/fsck/k9/notification/SingleNotificationData;

    .line 89
    .line 90
    iget-object v6, v0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->singleMessageNotificationCreator:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 91
    .line 92
    iget-object v0, v6, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 93
    .line 94
    new-instance v3, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;

    .line 95
    .line 96
    const/4 v8, 0x0

    .line 97
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;-><init>(Lcom/fsck/k9/notification/BaseNotificationData;Lcom/fsck/k9/notification/SingleNotificationData;Lcom/fsck/k9/notification/SingleMessageNotificationCreator;ZLkotlin/coroutines/Continuation;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v10, v10, v3, v9}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    instance-of v2, v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;

    .line 105
    .line 106
    if-eqz v2, :cond_15

    .line 107
    .line 108
    check-cast v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;

    .line 109
    .line 110
    iget v2, v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->additionalMessagesCount:I

    .line 111
    .line 112
    iget-object v5, v0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 113
    .line 114
    iget-object v6, v0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 115
    .line 116
    iget-object v8, v4, Lcom/fsck/k9/notification/BaseNotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 117
    .line 118
    iget-object v9, v4, Lcom/fsck/k9/notification/BaseNotificationData;->accountName:Ljava/lang/String;

    .line 119
    .line 120
    iget v11, v4, Lcom/fsck/k9/notification/BaseNotificationData;->newMessagesCount:I

    .line 121
    .line 122
    iget-object v12, v0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 123
    .line 124
    iget-object v12, v12, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v14

    .line 134
    const/4 v15, 0x1

    .line 135
    new-array v10, v15, [Ljava/lang/Object;

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    aput-object v14, v10, v3

    .line 139
    .line 140
    const v14, 0x7f100008

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13, v14, v11, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget-boolean v11, v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->isSilent:Z

    .line 151
    .line 152
    iget-object v13, v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->content:Ljava/util/List;

    .line 153
    .line 154
    iget-object v14, v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->messageReferences:Ljava/util/ArrayList;

    .line 155
    .line 156
    move/from16 p1, v15

    .line 157
    .line 158
    const/4 v15, 0x2

    .line 159
    if-lez v2, :cond_3

    .line 160
    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v16

    .line 165
    move/from16 v17, v3

    .line 166
    .line 167
    new-array v3, v15, [Ljava/lang/Object;

    .line 168
    .line 169
    aput-object v16, v3, v17

    .line 170
    .line 171
    aput-object v9, v3, p1

    .line 172
    .line 173
    const v15, 0x7f1204f0

    .line 174
    .line 175
    .line 176
    invoke-virtual {v12, v15, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    move/from16 v17, v3

    .line 185
    .line 186
    move-object v3, v9

    .line 187
    :goto_2
    sget-object v15, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MESSAGES:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 188
    .line 189
    invoke-virtual {v5, v8, v15}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    iget-object v7, v8, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 194
    .line 195
    move-object/from16 v18, v3

    .line 196
    .line 197
    iget-object v3, v15, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 198
    .line 199
    move-object/from16 v19, v9

    .line 200
    .line 201
    const-string v9, "email"

    .line 202
    .line 203
    iput-object v9, v15, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v9, v4, Lcom/fsck/k9/notification/BaseNotificationData;->groupKey:Ljava/lang/String;

    .line 206
    .line 207
    iput-object v9, v15, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 208
    .line 209
    const/4 v9, 0x1

    .line 210
    iput-boolean v9, v15, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 211
    .line 212
    iput v9, v15, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 213
    .line 214
    const v9, 0x7f0800fb

    .line 215
    .line 216
    .line 217
    iput v9, v3, Landroid/app/Notification;->icon:I

    .line 218
    .line 219
    iget v9, v4, Lcom/fsck/k9/notification/BaseNotificationData;->color:I

    .line 220
    .line 221
    iput v9, v15, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 222
    .line 223
    move-object/from16 v20, v10

    .line 224
    .line 225
    iget-wide v9, v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->timestamp:J

    .line 226
    .line 227
    iput-wide v9, v3, Landroid/app/Notification;->when:J

    .line 228
    .line 229
    iput v2, v15, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 230
    .line 231
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Ljava/lang/CharSequence;

    .line 236
    .line 237
    invoke-virtual {v15, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    invoke-static/range {v20 .. v20}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    iput-object v2, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 245
    .line 246
    invoke-static/range {v19 .. v19}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iput-object v2, v15, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 251
    .line 252
    new-instance v2, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 253
    .line 254
    move/from16 v9, v17

    .line 255
    .line 256
    invoke-direct {v2, v9}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 257
    .line 258
    .line 259
    new-instance v9, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .line 263
    .line 264
    iput-object v9, v2, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 265
    .line 266
    invoke-static/range {v20 .. v20}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    iput-object v9, v2, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 271
    .line 272
    invoke-static/range {v18 .. v18}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    iput-object v9, v2, Landroidx/work/WorkRequest$Builder;->tags:Ljava/lang/Object;

    .line 277
    .line 278
    move/from16 v9, p1

    .line 279
    .line 280
    iput-boolean v9, v2, Landroidx/work/WorkRequest$Builder;->backoffCriteriaSet:Z

    .line 281
    .line 282
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-eqz v10, :cond_5

    .line 291
    .line 292
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    check-cast v10, Ljava/lang/CharSequence;

    .line 297
    .line 298
    if-eqz v10, :cond_4

    .line 299
    .line 300
    iget-object v13, v2, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v13, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-static {v10}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_5
    invoke-virtual {v15, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/work/WorkRequest$Builder;)V

    .line 313
    .line 314
    .line 315
    iget-object v2, v6, Lcom/fsck/k9/notification/K9NotificationActionCreator;->context:Landroid/content/Context;

    .line 316
    .line 317
    new-instance v9, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 318
    .line 319
    const/4 v10, 0x2

    .line 320
    invoke-direct {v9, v10, v14}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    new-instance v13, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 324
    .line 325
    const/16 v10, 0xf

    .line 326
    .line 327
    invoke-direct {v13, v10}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 328
    .line 329
    .line 330
    new-instance v10, Lkotlin/sequences/TakeWhileSequence;

    .line 331
    .line 332
    move-object/from16 v18, v5

    .line 333
    .line 334
    const/4 v5, 0x2

    .line 335
    invoke-direct {v10, v9, v13, v5}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 336
    .line 337
    .line 338
    invoke-static {v10}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    iget-object v9, v6, Lcom/fsck/k9/notification/K9NotificationActionCreator;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 343
    .line 344
    check-cast v9, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 345
    .line 346
    invoke-virtual {v9}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    iget-object v9, v9, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 351
    .line 352
    iget-object v9, v9, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 353
    .line 354
    iget-boolean v9, v9, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 355
    .line 356
    const-string v10, "1"

    .line 357
    .line 358
    if-eqz v9, :cond_6

    .line 359
    .line 360
    move-object v9, v5

    .line 361
    check-cast v9, Ljava/util/Collection;

    .line 362
    .line 363
    iget-object v13, v6, Lcom/fsck/k9/notification/K9NotificationActionCreator;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 364
    .line 365
    invoke-virtual {v13, v8}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 366
    .line 367
    .line 368
    move-result-object v13

    .line 369
    iget-object v13, v13, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 370
    .line 371
    iget-object v13, v13, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v13, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 374
    .line 375
    invoke-virtual {v13, v9}, Lcom/fsck/k9/storage/messages/K9MessageStore;->areAllIncludedInUnifiedInbox(Ljava/util/Collection;)Z

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    if-eqz v9, :cond_6

    .line 380
    .line 381
    sget-object v5, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 382
    .line 383
    new-instance v5, Landroid/content/Intent;

    .line 384
    .line 385
    const-class v9, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 386
    .line 387
    invoke-direct {v5, v2, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .line 389
    .line 390
    sget-object v9, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 391
    .line 392
    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v13

    .line 396
    check-cast v13, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 397
    .line 398
    invoke-virtual {v13}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersTitle()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    check-cast v9, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 406
    .line 407
    invoke-virtual {v9}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersDetail()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    new-instance v9, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 411
    .line 412
    invoke-direct {v9}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v13, "unified_folders"

    .line 416
    .line 417
    iput-object v13, v9, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 418
    .line 419
    sget-object v13, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->INTEGRATE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 420
    .line 421
    move-object/from16 v19, v0

    .line 422
    .line 423
    sget-object v0, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 424
    .line 425
    invoke-virtual {v9, v13, v10, v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 426
    .line 427
    .line 428
    const-string v0, "account_uuid"

    .line 429
    .line 430
    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    .line 432
    .line 433
    const-string v0, "search_bytes"

    .line 434
    .line 435
    invoke-static {v9}, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->serialize(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)[B

    .line 436
    .line 437
    .line 438
    move-result-object v9

    .line 439
    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 440
    .line 441
    .line 442
    const-string v0, "no_threading"

    .line 443
    .line 444
    const/4 v9, 0x0

    .line 445
    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    .line 447
    .line 448
    const/high16 v0, 0x20000000

    .line 449
    .line 450
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    .line 452
    .line 453
    const/high16 v0, 0x4000000

    .line 454
    .line 455
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    .line 457
    .line 458
    const/high16 v0, 0x10000000

    .line 459
    .line 460
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    .line 462
    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string v9, "data:,unifiedInbox/"

    .line 466
    .line 467
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 482
    .line 483
    .line 484
    goto :goto_4

    .line 485
    :cond_6
    move-object/from16 v19, v0

    .line 486
    .line 487
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    const/4 v9, 0x1

    .line 492
    if-ne v0, v9, :cond_7

    .line 493
    .line 494
    check-cast v5, Ljava/lang/Iterable;

    .line 495
    .line 496
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Ljava/lang/Number;

    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 503
    .line 504
    .line 505
    move-result-wide v9

    .line 506
    invoke-virtual {v6, v8, v9, v10}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createMessageListIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Landroid/content/Intent;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    goto :goto_4

    .line 511
    :cond_7
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 512
    .line 513
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 514
    .line 515
    invoke-direct {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 516
    .line 517
    .line 518
    const-string v5, "new_messages"

    .line 519
    .line 520
    iput-object v5, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 521
    .line 522
    invoke-virtual {v0, v7}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    sget-object v5, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->NEW_MESSAGE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 526
    .line 527
    sget-object v9, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 528
    .line 529
    invoke-virtual {v0, v5, v10, v9}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 530
    .line 531
    .line 532
    const/4 v5, 0x1

    .line 533
    const/4 v9, 0x0

    .line 534
    invoke-static {v2, v0, v9, v5}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->intentDisplaySearch(Landroid/content/Context;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZZ)Landroid/content/Intent;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    const-string v5, "data:,newMessages/"

    .line 539
    .line 540
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 549
    .line 550
    .line 551
    move-object v5, v0

    .line 552
    :goto_4
    const/high16 v0, 0x8000000

    .line 553
    .line 554
    const/4 v9, 0x0

    .line 555
    invoke-static {v2, v9, v5, v0, v9}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    iput-object v0, v15, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 563
    .line 564
    new-instance v0, Landroid/content/Intent;

    .line 565
    .line 566
    const-class v5, Lcom/fsck/k9/notification/NotificationActionService;

    .line 567
    .line 568
    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .line 570
    .line 571
    const-string v9, "ACTION_DISMISS"

    .line 572
    .line 573
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    .line 575
    .line 576
    const-string v9, "accountUuid"

    .line 577
    .line 578
    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    .line 580
    .line 581
    move v13, v11

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 583
    .line 584
    .line 585
    move-result-wide v10

    .line 586
    move/from16 p0, v13

    .line 587
    .line 588
    new-instance v13, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    move-object/from16 v20, v4

    .line 591
    .line 592
    const-string v4, "data:,dismissAll/"

    .line 593
    .line 594
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v4, "/"

    .line 601
    .line 602
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v10

    .line 612
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 613
    .line 614
    .line 615
    move-result-object v10

    .line 616
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 617
    .line 618
    .line 619
    invoke-static {v2, v0}, Landroidx/core/app/NavUtils;->getService(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    iput-object v0, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 627
    .line 628
    iget-object v0, v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->actions:Ljava/util/List;

    .line 629
    .line 630
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    const v10, 0x7f0800fa

    .line 639
    .line 640
    .line 641
    const v11, 0x7f0800d7

    .line 642
    .line 643
    .line 644
    if-eqz v3, :cond_a

    .line 645
    .line 646
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    check-cast v3, Lcom/fsck/k9/notification/SummaryNotificationAction;

    .line 651
    .line 652
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    if-eqz v3, :cond_9

    .line 657
    .line 658
    const/4 v13, 0x1

    .line 659
    if-ne v3, v13, :cond_8

    .line 660
    .line 661
    const v3, 0x7f1204e2

    .line 662
    .line 663
    .line 664
    invoke-virtual {v12, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v6, v8, v14}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createDeleteAllPendingIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;)Landroid/app/PendingIntent;

    .line 672
    .line 673
    .line 674
    move-result-object v10

    .line 675
    invoke-virtual {v15, v11, v3, v10}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 676
    .line 677
    .line 678
    goto :goto_5

    .line 679
    :cond_8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 680
    .line 681
    .line 682
    return-void

    .line 683
    :cond_9
    const v3, 0x7f1204e5

    .line 684
    .line 685
    .line 686
    invoke-virtual {v12, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v6, v8, v14}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createMarkAllAsReadPendingIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;)Landroid/app/PendingIntent;

    .line 694
    .line 695
    .line 696
    move-result-object v11

    .line 697
    invoke-virtual {v15, v10, v3, v11}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 698
    .line 699
    .line 700
    goto :goto_5

    .line 701
    :cond_a
    new-instance v0, Landroidx/collection/LruCache;

    .line 702
    .line 703
    invoke-direct {v0}, Landroidx/collection/LruCache;-><init>()V

    .line 704
    .line 705
    .line 706
    iget-object v3, v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->wearActions:Ljava/util/List;

    .line 707
    .line 708
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 713
    .line 714
    .line 715
    move-result v13

    .line 716
    if-eqz v13, :cond_14

    .line 717
    .line 718
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v13

    .line 722
    check-cast v13, Lcom/fsck/k9/notification/SummaryWearNotificationAction;

    .line 723
    .line 724
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 725
    .line 726
    .line 727
    move-result v13

    .line 728
    const-string v10, ""

    .line 729
    .line 730
    if-eqz v13, :cond_11

    .line 731
    .line 732
    const/4 v11, 0x1

    .line 733
    if-eq v13, v11, :cond_e

    .line 734
    .line 735
    const/4 v11, 0x2

    .line 736
    if-ne v13, v11, :cond_d

    .line 737
    .line 738
    const v11, 0x7f1204e1

    .line 739
    .line 740
    .line 741
    invoke-virtual {v12, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v11

    .line 745
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    new-instance v13, Landroid/content/Intent;

    .line 749
    .line 750
    invoke-direct {v13, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 751
    .line 752
    .line 753
    move-object/from16 v21, v3

    .line 754
    .line 755
    const-string v3, "ACTION_ARCHIVE"

    .line 756
    .line 757
    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v13, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    .line 762
    .line 763
    const-string v3, "messageReferences"

    .line 764
    .line 765
    move-object/from16 v22, v5

    .line 766
    .line 767
    invoke-static {v14}, Landroidx/work/Data$Companion;->toMessageReferenceStringList(Ljava/util/List;)Ljava/util/ArrayList;

    .line 768
    .line 769
    .line 770
    move-result-object v5

    .line 771
    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 772
    .line 773
    .line 774
    move-object v3, v6

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 776
    .line 777
    .line 778
    move-result-wide v5

    .line 779
    move-object/from16 v23, v3

    .line 780
    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    .line 782
    .line 783
    move-object/from16 v24, v9

    .line 784
    .line 785
    const-string v9, "data:,archiveAll/"

    .line 786
    .line 787
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    invoke-virtual {v13, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 808
    .line 809
    .line 810
    invoke-static {v2, v13}, Landroidx/core/app/NavUtils;->getService(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    .line 811
    .line 812
    .line 813
    move-result-object v28

    .line 814
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 815
    .line 816
    .line 817
    const v3, 0x7f0800be

    .line 818
    .line 819
    .line 820
    const/4 v5, 0x0

    .line 821
    invoke-static {v5, v10, v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 822
    .line 823
    .line 824
    move-result-object v26

    .line 825
    new-instance v29, Landroid/os/Bundle;

    .line 826
    .line 827
    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 828
    .line 829
    .line 830
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 831
    .line 832
    .line 833
    move-result-object v27

    .line 834
    new-instance v3, Ljava/util/ArrayList;

    .line 835
    .line 836
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .line 838
    .line 839
    new-instance v5, Ljava/util/ArrayList;

    .line 840
    .line 841
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 845
    .line 846
    .line 847
    move-result v6

    .line 848
    if-eqz v6, :cond_b

    .line 849
    .line 850
    goto :goto_7

    .line 851
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 852
    .line 853
    .line 854
    move-result v6

    .line 855
    new-array v6, v6, [Landroidx/core/app/RemoteInput;

    .line 856
    .line 857
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v3

    .line 861
    check-cast v3, [Landroidx/core/app/RemoteInput;

    .line 862
    .line 863
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 864
    .line 865
    .line 866
    move-result v3

    .line 867
    if-eqz v3, :cond_c

    .line 868
    .line 869
    const/16 v30, 0x0

    .line 870
    .line 871
    goto :goto_8

    .line 872
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 873
    .line 874
    .line 875
    move-result v3

    .line 876
    new-array v3, v3, [Landroidx/core/app/RemoteInput;

    .line 877
    .line 878
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v3

    .line 882
    check-cast v3, [Landroidx/core/app/RemoteInput;

    .line 883
    .line 884
    move-object/from16 v30, v3

    .line 885
    .line 886
    :goto_8
    new-instance v25, Landroidx/core/app/NotificationCompat$Action;

    .line 887
    .line 888
    const/16 v31, 0x1

    .line 889
    .line 890
    move/from16 v32, v31

    .line 891
    .line 892
    invoke-direct/range {v25 .. v32}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZZ)V

    .line 893
    .line 894
    .line 895
    move-object/from16 v3, v25

    .line 896
    .line 897
    invoke-virtual {v0, v3}, Landroidx/collection/LruCache;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 898
    .line 899
    .line 900
    move-object/from16 v3, v21

    .line 901
    .line 902
    move-object/from16 v5, v22

    .line 903
    .line 904
    move-object/from16 v6, v23

    .line 905
    .line 906
    move-object/from16 v9, v24

    .line 907
    .line 908
    const v10, 0x7f0800fa

    .line 909
    .line 910
    .line 911
    const v11, 0x7f0800d7

    .line 912
    .line 913
    .line 914
    goto/16 :goto_6

    .line 915
    .line 916
    :cond_d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 917
    .line 918
    .line 919
    return-void

    .line 920
    :cond_e
    move-object/from16 v21, v3

    .line 921
    .line 922
    move-object/from16 v22, v5

    .line 923
    .line 924
    move-object/from16 v23, v6

    .line 925
    .line 926
    move-object/from16 v24, v9

    .line 927
    .line 928
    const v3, 0x7f1204e3

    .line 929
    .line 930
    .line 931
    invoke-virtual {v12, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    move-object/from16 v5, v23

    .line 939
    .line 940
    invoke-virtual {v5, v8, v14}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createDeleteAllPendingIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;)Landroid/app/PendingIntent;

    .line 941
    .line 942
    .line 943
    move-result-object v28

    .line 944
    const/4 v6, 0x0

    .line 945
    const v9, 0x7f0800d7

    .line 946
    .line 947
    .line 948
    invoke-static {v6, v10, v9}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 949
    .line 950
    .line 951
    move-result-object v26

    .line 952
    new-instance v29, Landroid/os/Bundle;

    .line 953
    .line 954
    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 955
    .line 956
    .line 957
    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 958
    .line 959
    .line 960
    move-result-object v27

    .line 961
    new-instance v3, Ljava/util/ArrayList;

    .line 962
    .line 963
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .line 965
    .line 966
    new-instance v6, Ljava/util/ArrayList;

    .line 967
    .line 968
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .line 970
    .line 971
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 972
    .line 973
    .line 974
    move-result v10

    .line 975
    if-eqz v10, :cond_f

    .line 976
    .line 977
    goto :goto_9

    .line 978
    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 979
    .line 980
    .line 981
    move-result v10

    .line 982
    new-array v10, v10, [Landroidx/core/app/RemoteInput;

    .line 983
    .line 984
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v3

    .line 988
    check-cast v3, [Landroidx/core/app/RemoteInput;

    .line 989
    .line 990
    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 991
    .line 992
    .line 993
    move-result v3

    .line 994
    if-eqz v3, :cond_10

    .line 995
    .line 996
    const/16 v30, 0x0

    .line 997
    .line 998
    goto :goto_a

    .line 999
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1000
    .line 1001
    .line 1002
    move-result v3

    .line 1003
    new-array v3, v3, [Landroidx/core/app/RemoteInput;

    .line 1004
    .line 1005
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v3

    .line 1009
    check-cast v3, [Landroidx/core/app/RemoteInput;

    .line 1010
    .line 1011
    move-object/from16 v30, v3

    .line 1012
    .line 1013
    :goto_a
    new-instance v25, Landroidx/core/app/NotificationCompat$Action;

    .line 1014
    .line 1015
    const/16 v31, 0x1

    .line 1016
    .line 1017
    move/from16 v32, v31

    .line 1018
    .line 1019
    invoke-direct/range {v25 .. v32}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZZ)V

    .line 1020
    .line 1021
    .line 1022
    move-object/from16 v3, v25

    .line 1023
    .line 1024
    invoke-virtual {v0, v3}, Landroidx/collection/LruCache;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 1025
    .line 1026
    .line 1027
    move-object v6, v5

    .line 1028
    move v11, v9

    .line 1029
    move-object/from16 v3, v21

    .line 1030
    .line 1031
    move-object/from16 v5, v22

    .line 1032
    .line 1033
    move-object/from16 v9, v24

    .line 1034
    .line 1035
    const v10, 0x7f0800fa

    .line 1036
    .line 1037
    .line 1038
    goto/16 :goto_6

    .line 1039
    .line 1040
    :cond_11
    move-object/from16 v21, v3

    .line 1041
    .line 1042
    move-object/from16 v22, v5

    .line 1043
    .line 1044
    move-object v5, v6

    .line 1045
    move-object/from16 v24, v9

    .line 1046
    .line 1047
    move v9, v11

    .line 1048
    const v3, 0x7f1204e4

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v12, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v3

    .line 1055
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v5, v8, v14}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createMarkAllAsReadPendingIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/ArrayList;)Landroid/app/PendingIntent;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v28

    .line 1062
    const/4 v6, 0x0

    .line 1063
    const v11, 0x7f0800fa

    .line 1064
    .line 1065
    .line 1066
    invoke-static {v6, v10, v11}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v26

    .line 1070
    new-instance v29, Landroid/os/Bundle;

    .line 1071
    .line 1072
    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v27

    .line 1079
    new-instance v3, Ljava/util/ArrayList;

    .line 1080
    .line 1081
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .line 1083
    .line 1084
    new-instance v10, Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v13

    .line 1093
    if-eqz v13, :cond_12

    .line 1094
    .line 1095
    goto :goto_b

    .line 1096
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1097
    .line 1098
    .line 1099
    move-result v13

    .line 1100
    new-array v13, v13, [Landroidx/core/app/RemoteInput;

    .line 1101
    .line 1102
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v3

    .line 1106
    check-cast v3, [Landroidx/core/app/RemoteInput;

    .line 1107
    .line 1108
    :goto_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    if-eqz v3, :cond_13

    .line 1113
    .line 1114
    move-object/from16 v30, v6

    .line 1115
    .line 1116
    goto :goto_c

    .line 1117
    :cond_13
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1118
    .line 1119
    .line 1120
    move-result v3

    .line 1121
    new-array v3, v3, [Landroidx/core/app/RemoteInput;

    .line 1122
    .line 1123
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    check-cast v3, [Landroidx/core/app/RemoteInput;

    .line 1128
    .line 1129
    move-object/from16 v30, v3

    .line 1130
    .line 1131
    :goto_c
    new-instance v25, Landroidx/core/app/NotificationCompat$Action;

    .line 1132
    .line 1133
    const/16 v31, 0x1

    .line 1134
    .line 1135
    move/from16 v32, v31

    .line 1136
    .line 1137
    invoke-direct/range {v25 .. v32}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZZ)V

    .line 1138
    .line 1139
    .line 1140
    move-object/from16 v3, v25

    .line 1141
    .line 1142
    invoke-virtual {v0, v3}, Landroidx/collection/LruCache;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 1143
    .line 1144
    .line 1145
    move-object v6, v5

    .line 1146
    move v10, v11

    .line 1147
    move-object/from16 v3, v21

    .line 1148
    .line 1149
    move-object/from16 v5, v22

    .line 1150
    .line 1151
    move v11, v9

    .line 1152
    move-object/from16 v9, v24

    .line 1153
    .line 1154
    goto/16 :goto_6

    .line 1155
    .line 1156
    :cond_14
    invoke-virtual {v15, v0}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/collection/LruCache;)V

    .line 1157
    .line 1158
    .line 1159
    move-object/from16 v4, v20

    .line 1160
    .line 1161
    iget-object v0, v4, Lcom/fsck/k9/notification/BaseNotificationData;->appearance:Lcom/fsck/k9/notification/NotificationAppearance;

    .line 1162
    .line 1163
    move/from16 v13, p0

    .line 1164
    .line 1165
    invoke-static {v15, v13, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->setAppearance(Landroidx/core/app/NotificationCompat$Builder;ZLcom/fsck/k9/notification/NotificationAppearance;)V

    .line 1166
    .line 1167
    .line 1168
    move-object/from16 v0, v19

    .line 1169
    .line 1170
    iget-object v0, v0, Lcom/fsck/k9/notification/SummaryNotificationCreator;->lockScreenNotificationCreator:Lcom/fsck/k9/notification/LockScreenNotificationCreator;

    .line 1171
    .line 1172
    invoke-virtual {v0, v15, v4}, Lcom/fsck/k9/notification/LockScreenNotificationCreator;->configureLockScreenNotification(Landroidx/core/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/BaseNotificationData;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v15}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1180
    .line 1181
    .line 1182
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2

    .line 1186
    const/4 v5, 0x2

    .line 1187
    new-array v3, v5, [Ljava/lang/Object;

    .line 1188
    .line 1189
    const/16 v17, 0x0

    .line 1190
    .line 1191
    aput-object v2, v3, v17

    .line 1192
    .line 1193
    const/4 v5, 0x1

    .line 1194
    aput-object v0, v3, v5

    .line 1195
    .line 1196
    const-string v2, "Creating inbox-style summary notification (silent=%b): %s"

    .line 1197
    .line 1198
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    .line 1200
    .line 1201
    iget v1, v1, Lcom/fsck/k9/notification/SummaryInboxNotificationData;->notificationId:I

    .line 1202
    .line 1203
    move-object/from16 v2, v18

    .line 1204
    .line 1205
    invoke-virtual {v2, v8, v1, v0}, Lcom/fsck/k9/notification/NotificationHelper;->notify(Lnet/thunderbird/core/android/account/LegacyAccountDto;ILandroid/app/Notification;)V

    .line 1206
    .line 1207
    .line 1208
    return-void

    .line 1209
    :cond_15
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1210
    .line 1211
    .line 1212
    :cond_16
    return-void
.end method

.method public final declared-synchronized removeNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/notification/NewMailNotificationController;->newMailNotificationManager:Lcom/fsck/k9/notification/NewMailNotificationManager;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/notification/NewMailNotificationManager;->removeNewMailNotifications(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLkotlin/jvm/functions/Function1;)Lcom/fsck/k9/notification/NewMailNotificationData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/NewMailNotificationController;->processNewMailNotificationData(Lcom/fsck/k9/notification/NewMailNotificationData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method
