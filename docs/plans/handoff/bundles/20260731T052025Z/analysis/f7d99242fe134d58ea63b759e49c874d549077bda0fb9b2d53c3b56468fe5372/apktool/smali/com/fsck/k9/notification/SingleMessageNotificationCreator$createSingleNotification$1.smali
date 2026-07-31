.class public final Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

.field public final synthetic $isGroupSummary:Z

.field public final synthetic $singleNotificationData:Lcom/fsck/k9/notification/SingleNotificationData;

.field public I$0:I

.field public L$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public L$1:Lcom/fsck/k9/notification/NotificationContent;

.field public L$2:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

.field public L$3:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

.field public L$4:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

.field public L$5:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

.field public label:I

.field public final synthetic this$0:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/BaseNotificationData;Lcom/fsck/k9/notification/SingleNotificationData;Lcom/fsck/k9/notification/SingleMessageNotificationCreator;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->$baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->$singleNotificationData:Lcom/fsck/k9/notification/SingleNotificationData;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->this$0:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->$isGroupSummary:Z

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->this$0:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 4
    .line 5
    iget-boolean v4, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->$isGroupSummary:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->$baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->$singleNotificationData:Lcom/fsck/k9/notification/SingleNotificationData;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;-><init>(Lcom/fsck/k9/notification/BaseNotificationData;Lcom/fsck/k9/notification/SingleNotificationData;Lcom/fsck/k9/notification/SingleMessageNotificationCreator;ZLkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->this$0:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 8
    .line 9
    iget v4, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->label:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iget-boolean v6, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->$isGroupSummary:Z

    .line 13
    .line 14
    iget-object v7, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->$baseNotificationData:Lcom/fsck/k9/notification/BaseNotificationData;

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    iget-object v9, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->$singleNotificationData:Lcom/fsck/k9/notification/SingleNotificationData;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    if-ne v4, v8, :cond_0

    .line 22
    .line 23
    iget v1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->I$0:I

    .line 24
    .line 25
    iget-object v4, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$5:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 26
    .line 27
    iget-object v10, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$4:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 28
    .line 29
    iget-object v11, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$3:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 30
    .line 31
    iget-object v12, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$2:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 32
    .line 33
    iget-object v13, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$1:Lcom/fsck/k9/notification/NotificationContent;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object v14, v13

    .line 41
    move v13, v1

    .line 42
    move-object v1, v12

    .line 43
    move-object v12, v4

    .line 44
    move-object v4, v0

    .line 45
    move-object/from16 v0, p1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v5

    .line 54
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v4, v7, Lcom/fsck/k9/notification/BaseNotificationData;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 58
    .line 59
    iget v10, v9, Lcom/fsck/k9/notification/SingleNotificationData;->notificationId:I

    .line 60
    .line 61
    iget-object v13, v9, Lcom/fsck/k9/notification/SingleNotificationData;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 62
    .line 63
    sget-object v11, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MESSAGES:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 64
    .line 65
    invoke-virtual {v3, v4, v11}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    const-string v12, "email"

    .line 70
    .line 71
    iput-object v12, v11, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v12, v7, Lcom/fsck/k9/notification/BaseNotificationData;->groupKey:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v12, v11, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 76
    .line 77
    iput-boolean v6, v11, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 78
    .line 79
    iput v8, v11, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 80
    .line 81
    const v12, 0x7f0800fb

    .line 82
    .line 83
    .line 84
    iget-object v14, v11, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 85
    .line 86
    iput v12, v14, Landroid/app/Notification;->icon:I

    .line 87
    .line 88
    iput-object v4, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 89
    .line 90
    iput-object v13, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$1:Lcom/fsck/k9/notification/NotificationContent;

    .line 91
    .line 92
    iput-object v1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$2:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 93
    .line 94
    iput-object v1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$3:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 95
    .line 96
    iput-object v1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$4:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 97
    .line 98
    iput-object v1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->L$5:Lcom/fsck/k9/notification/SingleMessageNotificationCreator;

    .line 99
    .line 100
    iput v10, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->I$0:I

    .line 101
    .line 102
    iput v8, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$createSingleNotification$1;->label:I

    .line 103
    .line 104
    invoke-static {v1, v11, v13, v0}, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->access$setAvatar(Lcom/fsck/k9/notification/SingleMessageNotificationCreator;Landroidx/core/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationContent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 109
    .line 110
    if-ne v0, v11, :cond_2

    .line 111
    .line 112
    return-object v11

    .line 113
    :cond_2
    move-object v11, v1

    .line 114
    move-object v12, v11

    .line 115
    move-object v14, v13

    .line 116
    move v13, v10

    .line 117
    move-object v10, v12

    .line 118
    :goto_0
    check-cast v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 119
    .line 120
    iget v15, v7, Lcom/fsck/k9/notification/BaseNotificationData;->color:I

    .line 121
    .line 122
    iput v15, v0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 123
    .line 124
    iget-object v15, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 125
    .line 126
    move-object/from16 v16, v5

    .line 127
    .line 128
    move/from16 v17, v6

    .line 129
    .line 130
    iget-wide v5, v9, Lcom/fsck/k9/notification/SingleNotificationData;->timestamp:J

    .line 131
    .line 132
    iget-boolean v8, v9, Lcom/fsck/k9/notification/SingleNotificationData;->isSilent:Z

    .line 133
    .line 134
    move-object/from16 p0, v12

    .line 135
    .line 136
    iget-object v12, v9, Lcom/fsck/k9/notification/SingleNotificationData;->content:Lcom/fsck/k9/notification/NotificationContent;

    .line 137
    .line 138
    iput-wide v5, v15, Landroid/app/Notification;->when:J

    .line 139
    .line 140
    iget-object v5, v14, Lcom/fsck/k9/notification/NotificationContent;->summary:Ljava/lang/CharSequence;

    .line 141
    .line 142
    iget-object v6, v14, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 143
    .line 144
    move-object/from16 v19, v3

    .line 145
    .line 146
    iget-object v3, v6, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    iget-object v5, v14, Lcom/fsck/k9/notification/NotificationContent;->sender:Lcom/fsck/k9/mail/Address;

    .line 152
    .line 153
    iget-object v5, v5, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    iput-object v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 160
    .line 161
    iget-object v5, v14, Lcom/fsck/k9/notification/NotificationContent;->subject:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    iput-object v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 168
    .line 169
    iget-object v5, v7, Lcom/fsck/k9/notification/BaseNotificationData;->accountName:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    iput-object v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 176
    .line 177
    iget-object v5, v14, Lcom/fsck/k9/notification/NotificationContent;->preview:Ljava/lang/CharSequence;

    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v14, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 183
    .line 184
    move-object/from16 p0, v5

    .line 185
    .line 186
    const/4 v5, 0x1

    .line 187
    invoke-direct {v14, v5}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-static/range {p0 .. p0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    iput-object v5, v14, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 195
    .line 196
    invoke-virtual {v0, v14}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/work/WorkRequest$Builder;)V

    .line 197
    .line 198
    .line 199
    iget-object v5, v2, Lcom/fsck/k9/notification/K9NotificationActionCreator;->context:Landroid/content/Context;

    .line 200
    .line 201
    iget-object v14, v2, Lcom/fsck/k9/notification/K9NotificationActionCreator;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 202
    .line 203
    check-cast v14, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 204
    .line 205
    invoke-virtual {v14}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    iget-object v14, v14, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 210
    .line 211
    iget-object v14, v14, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 212
    .line 213
    iget-boolean v14, v14, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isShowUnifiedInbox:Z

    .line 214
    .line 215
    move/from16 p0, v14

    .line 216
    .line 217
    if-eqz p0, :cond_3

    .line 218
    .line 219
    iget-object v14, v2, Lcom/fsck/k9/notification/K9NotificationActionCreator;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 220
    .line 221
    invoke-virtual {v14, v3}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    move-object/from16 v20, v7

    .line 226
    .line 227
    move/from16 p1, v8

    .line 228
    .line 229
    iget-wide v7, v6, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 230
    .line 231
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-static {v7}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    iget-object v8, v14, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 240
    .line 241
    iget-object v8, v8, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v8, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 244
    .line 245
    invoke-virtual {v8, v7}, Lcom/fsck/k9/storage/messages/K9MessageStore;->areAllIncludedInUnifiedInbox(Ljava/util/Collection;)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_4

    .line 250
    .line 251
    const/4 v7, 0x1

    .line 252
    goto :goto_1

    .line 253
    :cond_3
    move-object/from16 v20, v7

    .line 254
    .line 255
    move/from16 p1, v8

    .line 256
    .line 257
    :cond_4
    const/4 v7, 0x0

    .line 258
    :goto_1
    sget-object v8, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 259
    .line 260
    const/4 v8, 0x0

    .line 261
    invoke-static {v5, v7, v8}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->actionDisplayMessageTemplateIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    const-string v14, "message_reference"

    .line 266
    .line 267
    invoke-virtual {v6}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-virtual {v7, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    const-string v14, "data:,messageView/"

    .line 279
    .line 280
    invoke-virtual {v14, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    const/high16 v8, 0x8000000

    .line 292
    .line 293
    const/4 v14, 0x0

    .line 294
    invoke-static {v5, v14, v7, v8, v14}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    iput-object v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 302
    .line 303
    iget-object v2, v2, Lcom/fsck/k9/notification/K9NotificationActionCreator;->context:Landroid/content/Context;

    .line 304
    .line 305
    new-instance v5, Landroid/content/Intent;

    .line 306
    .line 307
    const-class v7, Lcom/fsck/k9/notification/NotificationActionService;

    .line 308
    .line 309
    invoke-direct {v5, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .line 311
    .line 312
    const-string v8, "ACTION_DISMISS"

    .line 313
    .line 314
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    .line 316
    .line 317
    const-string v8, "accountUuid"

    .line 318
    .line 319
    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    .line 321
    .line 322
    const-string v3, "messageReference"

    .line 323
    .line 324
    invoke-virtual {v6}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v14

    .line 328
    invoke-virtual {v5, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    const-string v6, "data:,dismiss/"

    .line 336
    .line 337
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 346
    .line 347
    .line 348
    invoke-static {v2, v5}, Landroidx/core/app/NavUtils;->getService(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    iput-object v2, v15, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 356
    .line 357
    iget-object v2, v10, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 358
    .line 359
    iget-object v3, v10, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 360
    .line 361
    iget-object v3, v3, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 362
    .line 363
    iget-object v5, v9, Lcom/fsck/k9/notification/SingleNotificationData;->actions:Ljava/util/ArrayList;

    .line 364
    .line 365
    iget-object v6, v12, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 366
    .line 367
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    const/4 v15, 0x2

    .line 376
    if-eqz v10, :cond_b

    .line 377
    .line 378
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    check-cast v10, Lcom/fsck/k9/notification/NotificationAction;

    .line 383
    .line 384
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 385
    .line 386
    .line 387
    move-result v10

    .line 388
    if-eqz v10, :cond_a

    .line 389
    .line 390
    const/4 v14, 0x1

    .line 391
    if-eq v10, v14, :cond_9

    .line 392
    .line 393
    if-eq v10, v15, :cond_8

    .line 394
    .line 395
    const/4 v14, 0x3

    .line 396
    if-eq v10, v14, :cond_7

    .line 397
    .line 398
    const/4 v14, 0x4

    .line 399
    if-eq v10, v14, :cond_6

    .line 400
    .line 401
    const/4 v14, 0x5

    .line 402
    if-ne v10, v14, :cond_5

    .line 403
    .line 404
    const v10, 0x7f1204e8

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v10

    .line 411
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    iget-object v14, v2, Lcom/fsck/k9/notification/K9NotificationActionCreator;->context:Landroid/content/Context;

    .line 415
    .line 416
    new-instance v15, Landroid/content/Intent;

    .line 417
    .line 418
    invoke-direct {v15, v14, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .line 420
    .line 421
    move-object/from16 v25, v5

    .line 422
    .line 423
    const-string v5, "ACTION_STAR"

    .line 424
    .line 425
    invoke-virtual {v15, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    .line 427
    .line 428
    iget-object v5, v6, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v15, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v6}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    filled-new-array {v5}, [Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    move-object/from16 v26, v7

    .line 446
    .line 447
    const-string v7, "messageReferences"

    .line 448
    .line 449
    invoke-virtual {v15, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v6}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    const-string v7, "data:,star/"

    .line 457
    .line 458
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    invoke-virtual {v15, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 467
    .line 468
    .line 469
    invoke-static {v14, v15}, Landroidx/core/app/NavUtils;->getService(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    const v7, 0x7f080118

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v7, v10, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 480
    .line 481
    .line 482
    :goto_3
    move-object/from16 v5, v25

    .line 483
    .line 484
    move-object/from16 v7, v26

    .line 485
    .line 486
    goto :goto_2

    .line 487
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 488
    .line 489
    .line 490
    return-object v16

    .line 491
    :cond_6
    move-object/from16 v25, v5

    .line 492
    .line 493
    move-object/from16 v26, v7

    .line 494
    .line 495
    const v5, 0x7f1204e7

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2, v6}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createMarkMessageAsSpamPendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    const v10, 0x7f08010e

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v10, v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 513
    .line 514
    .line 515
    goto :goto_3

    .line 516
    :cond_7
    move-object/from16 v25, v5

    .line 517
    .line 518
    move-object/from16 v26, v7

    .line 519
    .line 520
    const v5, 0x7f1204e0

    .line 521
    .line 522
    .line 523
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2, v6}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createArchiveMessagePendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 531
    .line 532
    .line 533
    move-result-object v7

    .line 534
    const v10, 0x7f0800be

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v10, v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 538
    .line 539
    .line 540
    goto :goto_3

    .line 541
    :cond_8
    move-object/from16 v25, v5

    .line 542
    .line 543
    move-object/from16 v26, v7

    .line 544
    .line 545
    const v5, 0x7f1204e2

    .line 546
    .line 547
    .line 548
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2, v6}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createDeleteMessagePendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    const v10, 0x7f0800d7

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, v10, v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 563
    .line 564
    .line 565
    goto :goto_3

    .line 566
    :cond_9
    move-object/from16 v25, v5

    .line 567
    .line 568
    move-object/from16 v26, v7

    .line 569
    .line 570
    const v5, 0x7f1204e5

    .line 571
    .line 572
    .line 573
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v6}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createMarkMessageAsReadPendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    const v10, 0x7f0800fa

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v10, v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 588
    .line 589
    .line 590
    goto :goto_3

    .line 591
    :cond_a
    move-object/from16 v25, v5

    .line 592
    .line 593
    move-object/from16 v26, v7

    .line 594
    .line 595
    const v5, 0x7f1204e6

    .line 596
    .line 597
    .line 598
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, v6}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createReplyPendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 606
    .line 607
    .line 608
    move-result-object v7

    .line 609
    const v10, 0x7f08010c

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v10, v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_3

    .line 616
    .line 617
    :cond_b
    iget-object v2, v11, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 618
    .line 619
    iget-object v3, v11, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 620
    .line 621
    iget-object v3, v3, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 622
    .line 623
    new-instance v5, Landroidx/collection/LruCache;

    .line 624
    .line 625
    invoke-direct {v5}, Landroidx/collection/LruCache;-><init>()V

    .line 626
    .line 627
    .line 628
    iget-object v6, v9, Lcom/fsck/k9/notification/SingleNotificationData;->wearActions:Ljava/util/List;

    .line 629
    .line 630
    iget-object v7, v12, Lcom/fsck/k9/notification/NotificationContent;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 631
    .line 632
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 633
    .line 634
    .line 635
    move-result-object v6

    .line 636
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 637
    .line 638
    .line 639
    move-result v8

    .line 640
    if-eqz v8, :cond_1b

    .line 641
    .line 642
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    check-cast v8, Lcom/fsck/k9/notification/WearNotificationAction;

    .line 647
    .line 648
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 649
    .line 650
    .line 651
    move-result v8

    .line 652
    const-string v10, ""

    .line 653
    .line 654
    if-eqz v8, :cond_18

    .line 655
    .line 656
    const/4 v14, 0x1

    .line 657
    if-eq v8, v14, :cond_15

    .line 658
    .line 659
    if-eq v8, v15, :cond_12

    .line 660
    .line 661
    const/4 v14, 0x3

    .line 662
    if-eq v8, v14, :cond_f

    .line 663
    .line 664
    const/4 v11, 0x4

    .line 665
    if-ne v8, v11, :cond_e

    .line 666
    .line 667
    const v8, 0x7f1204e7

    .line 668
    .line 669
    .line 670
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v12

    .line 674
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2, v7}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createMarkMessageAsSpamPendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 678
    .line 679
    .line 680
    move-result-object v25

    .line 681
    move-object/from16 v8, v16

    .line 682
    .line 683
    const v11, 0x7f08010e

    .line 684
    .line 685
    .line 686
    invoke-static {v8, v10, v11}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 687
    .line 688
    .line 689
    move-result-object v23

    .line 690
    new-instance v26, Landroid/os/Bundle;

    .line 691
    .line 692
    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    .line 693
    .line 694
    .line 695
    invoke-static {v12}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 696
    .line 697
    .line 698
    move-result-object v24

    .line 699
    new-instance v8, Ljava/util/ArrayList;

    .line 700
    .line 701
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .line 703
    .line 704
    new-instance v10, Ljava/util/ArrayList;

    .line 705
    .line 706
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 710
    .line 711
    .line 712
    move-result v12

    .line 713
    if-eqz v12, :cond_c

    .line 714
    .line 715
    goto :goto_5

    .line 716
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 717
    .line 718
    .line 719
    move-result v12

    .line 720
    new-array v12, v12, [Landroidx/core/app/RemoteInput;

    .line 721
    .line 722
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v8

    .line 726
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 727
    .line 728
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    if-eqz v8, :cond_d

    .line 733
    .line 734
    const/16 v27, 0x0

    .line 735
    .line 736
    goto :goto_6

    .line 737
    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 738
    .line 739
    .line 740
    move-result v8

    .line 741
    new-array v8, v8, [Landroidx/core/app/RemoteInput;

    .line 742
    .line 743
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v8

    .line 747
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 748
    .line 749
    move-object/from16 v27, v8

    .line 750
    .line 751
    :goto_6
    new-instance v22, Landroidx/core/app/NotificationCompat$Action;

    .line 752
    .line 753
    const/16 v28, 0x1

    .line 754
    .line 755
    move/from16 v29, v28

    .line 756
    .line 757
    invoke-direct/range {v22 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZZ)V

    .line 758
    .line 759
    .line 760
    move-object/from16 v8, v22

    .line 761
    .line 762
    invoke-virtual {v5, v8}, Landroidx/collection/LruCache;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 763
    .line 764
    .line 765
    :goto_7
    const/16 v16, 0x0

    .line 766
    .line 767
    goto/16 :goto_4

    .line 768
    .line 769
    :cond_e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 770
    .line 771
    .line 772
    const/4 v8, 0x0

    .line 773
    return-object v8

    .line 774
    :cond_f
    move-object/from16 v8, v16

    .line 775
    .line 776
    const v11, 0x7f08010e

    .line 777
    .line 778
    .line 779
    const v12, 0x7f1204e0

    .line 780
    .line 781
    .line 782
    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v21

    .line 786
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    invoke-virtual {v2, v7}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createArchiveMessagePendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 790
    .line 791
    .line 792
    move-result-object v25

    .line 793
    const v11, 0x7f0800be

    .line 794
    .line 795
    .line 796
    invoke-static {v8, v10, v11}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 797
    .line 798
    .line 799
    move-result-object v23

    .line 800
    new-instance v26, Landroid/os/Bundle;

    .line 801
    .line 802
    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    .line 803
    .line 804
    .line 805
    invoke-static/range {v21 .. v21}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 806
    .line 807
    .line 808
    move-result-object v24

    .line 809
    new-instance v8, Ljava/util/ArrayList;

    .line 810
    .line 811
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .line 813
    .line 814
    new-instance v10, Ljava/util/ArrayList;

    .line 815
    .line 816
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 820
    .line 821
    .line 822
    move-result v21

    .line 823
    if-eqz v21, :cond_10

    .line 824
    .line 825
    goto :goto_8

    .line 826
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 827
    .line 828
    .line 829
    move-result v11

    .line 830
    new-array v11, v11, [Landroidx/core/app/RemoteInput;

    .line 831
    .line 832
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v8

    .line 836
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 837
    .line 838
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 839
    .line 840
    .line 841
    move-result v8

    .line 842
    if-eqz v8, :cond_11

    .line 843
    .line 844
    const/16 v27, 0x0

    .line 845
    .line 846
    goto :goto_9

    .line 847
    :cond_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 848
    .line 849
    .line 850
    move-result v8

    .line 851
    new-array v8, v8, [Landroidx/core/app/RemoteInput;

    .line 852
    .line 853
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v8

    .line 857
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 858
    .line 859
    move-object/from16 v27, v8

    .line 860
    .line 861
    :goto_9
    new-instance v22, Landroidx/core/app/NotificationCompat$Action;

    .line 862
    .line 863
    const/16 v28, 0x1

    .line 864
    .line 865
    move/from16 v29, v28

    .line 866
    .line 867
    invoke-direct/range {v22 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZZ)V

    .line 868
    .line 869
    .line 870
    move-object/from16 v8, v22

    .line 871
    .line 872
    invoke-virtual {v5, v8}, Landroidx/collection/LruCache;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 873
    .line 874
    .line 875
    goto :goto_7

    .line 876
    :cond_12
    const v8, 0x7f1204e2

    .line 877
    .line 878
    .line 879
    const v12, 0x7f1204e0

    .line 880
    .line 881
    .line 882
    const/4 v14, 0x3

    .line 883
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v11

    .line 887
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v2, v7}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createDeleteMessagePendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 891
    .line 892
    .line 893
    move-result-object v25

    .line 894
    const/4 v8, 0x0

    .line 895
    const v12, 0x7f0800d7

    .line 896
    .line 897
    .line 898
    invoke-static {v8, v10, v12}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 899
    .line 900
    .line 901
    move-result-object v23

    .line 902
    new-instance v26, Landroid/os/Bundle;

    .line 903
    .line 904
    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    .line 905
    .line 906
    .line 907
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 908
    .line 909
    .line 910
    move-result-object v24

    .line 911
    new-instance v8, Ljava/util/ArrayList;

    .line 912
    .line 913
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .line 915
    .line 916
    new-instance v10, Ljava/util/ArrayList;

    .line 917
    .line 918
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 922
    .line 923
    .line 924
    move-result v11

    .line 925
    if-eqz v11, :cond_13

    .line 926
    .line 927
    goto :goto_a

    .line 928
    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 929
    .line 930
    .line 931
    move-result v11

    .line 932
    new-array v11, v11, [Landroidx/core/app/RemoteInput;

    .line 933
    .line 934
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v8

    .line 938
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 939
    .line 940
    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 941
    .line 942
    .line 943
    move-result v8

    .line 944
    if-eqz v8, :cond_14

    .line 945
    .line 946
    const/16 v27, 0x0

    .line 947
    .line 948
    goto :goto_b

    .line 949
    :cond_14
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 950
    .line 951
    .line 952
    move-result v8

    .line 953
    new-array v8, v8, [Landroidx/core/app/RemoteInput;

    .line 954
    .line 955
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v8

    .line 959
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 960
    .line 961
    move-object/from16 v27, v8

    .line 962
    .line 963
    :goto_b
    new-instance v22, Landroidx/core/app/NotificationCompat$Action;

    .line 964
    .line 965
    const/16 v28, 0x1

    .line 966
    .line 967
    move/from16 v29, v28

    .line 968
    .line 969
    invoke-direct/range {v22 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZZ)V

    .line 970
    .line 971
    .line 972
    move-object/from16 v8, v22

    .line 973
    .line 974
    invoke-virtual {v5, v8}, Landroidx/collection/LruCache;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 975
    .line 976
    .line 977
    goto/16 :goto_7

    .line 978
    .line 979
    :cond_15
    const v8, 0x7f1204e5

    .line 980
    .line 981
    .line 982
    const v12, 0x7f0800d7

    .line 983
    .line 984
    .line 985
    const/4 v14, 0x3

    .line 986
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v11

    .line 990
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    .line 992
    .line 993
    invoke-virtual {v2, v7}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createMarkMessageAsReadPendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 994
    .line 995
    .line 996
    move-result-object v25

    .line 997
    const/4 v8, 0x0

    .line 998
    const v12, 0x7f0800fa

    .line 999
    .line 1000
    .line 1001
    invoke-static {v8, v10, v12}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v23

    .line 1005
    new-instance v26, Landroid/os/Bundle;

    .line 1006
    .line 1007
    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v24

    .line 1014
    new-instance v8, Ljava/util/ArrayList;

    .line 1015
    .line 1016
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .line 1018
    .line 1019
    new-instance v10, Ljava/util/ArrayList;

    .line 1020
    .line 1021
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v11

    .line 1028
    if-eqz v11, :cond_16

    .line 1029
    .line 1030
    goto :goto_c

    .line 1031
    :cond_16
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1032
    .line 1033
    .line 1034
    move-result v11

    .line 1035
    new-array v11, v11, [Landroidx/core/app/RemoteInput;

    .line 1036
    .line 1037
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v8

    .line 1041
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 1042
    .line 1043
    :goto_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1044
    .line 1045
    .line 1046
    move-result v8

    .line 1047
    if-eqz v8, :cond_17

    .line 1048
    .line 1049
    const/16 v27, 0x0

    .line 1050
    .line 1051
    goto :goto_d

    .line 1052
    :cond_17
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1053
    .line 1054
    .line 1055
    move-result v8

    .line 1056
    new-array v8, v8, [Landroidx/core/app/RemoteInput;

    .line 1057
    .line 1058
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v8

    .line 1062
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 1063
    .line 1064
    move-object/from16 v27, v8

    .line 1065
    .line 1066
    :goto_d
    new-instance v22, Landroidx/core/app/NotificationCompat$Action;

    .line 1067
    .line 1068
    const/16 v28, 0x1

    .line 1069
    .line 1070
    move/from16 v29, v28

    .line 1071
    .line 1072
    invoke-direct/range {v22 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZZ)V

    .line 1073
    .line 1074
    .line 1075
    move-object/from16 v8, v22

    .line 1076
    .line 1077
    invoke-virtual {v5, v8}, Landroidx/collection/LruCache;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 1078
    .line 1079
    .line 1080
    goto/16 :goto_7

    .line 1081
    .line 1082
    :cond_18
    const v8, 0x7f1204e6

    .line 1083
    .line 1084
    .line 1085
    const v12, 0x7f0800fa

    .line 1086
    .line 1087
    .line 1088
    const/4 v14, 0x3

    .line 1089
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v11

    .line 1093
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v2, v7}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createReplyPendingIntent(Lapp/k9mail/legacy/message/controller/MessageReference;)Landroid/app/PendingIntent;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v25

    .line 1100
    const/4 v8, 0x0

    .line 1101
    const v12, 0x7f08010c

    .line 1102
    .line 1103
    .line 1104
    invoke-static {v8, v10, v12}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v23

    .line 1108
    new-instance v26, Landroid/os/Bundle;

    .line 1109
    .line 1110
    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    .line 1111
    .line 1112
    .line 1113
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v24

    .line 1117
    new-instance v10, Ljava/util/ArrayList;

    .line 1118
    .line 1119
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .line 1121
    .line 1122
    new-instance v11, Ljava/util/ArrayList;

    .line 1123
    .line 1124
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1128
    .line 1129
    .line 1130
    move-result v16

    .line 1131
    if-eqz v16, :cond_19

    .line 1132
    .line 1133
    goto :goto_e

    .line 1134
    :cond_19
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1135
    .line 1136
    .line 1137
    move-result v8

    .line 1138
    new-array v8, v8, [Landroidx/core/app/RemoteInput;

    .line 1139
    .line 1140
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v8

    .line 1144
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 1145
    .line 1146
    :goto_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v8

    .line 1150
    if-eqz v8, :cond_1a

    .line 1151
    .line 1152
    const/16 v27, 0x0

    .line 1153
    .line 1154
    goto :goto_f

    .line 1155
    :cond_1a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1156
    .line 1157
    .line 1158
    move-result v8

    .line 1159
    new-array v8, v8, [Landroidx/core/app/RemoteInput;

    .line 1160
    .line 1161
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v8

    .line 1165
    check-cast v8, [Landroidx/core/app/RemoteInput;

    .line 1166
    .line 1167
    move-object/from16 v27, v8

    .line 1168
    .line 1169
    :goto_f
    new-instance v22, Landroidx/core/app/NotificationCompat$Action;

    .line 1170
    .line 1171
    const/16 v28, 0x1

    .line 1172
    .line 1173
    move/from16 v29, v28

    .line 1174
    .line 1175
    invoke-direct/range {v22 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZZ)V

    .line 1176
    .line 1177
    .line 1178
    move-object/from16 v8, v22

    .line 1179
    .line 1180
    invoke-virtual {v5, v8}, Landroidx/collection/LruCache;->addAction(Landroidx/core/app/NotificationCompat$Action;)V

    .line 1181
    .line 1182
    .line 1183
    goto/16 :goto_7

    .line 1184
    .line 1185
    :cond_1b
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/collection/LruCache;)V

    .line 1186
    .line 1187
    .line 1188
    move-object/from16 v2, v20

    .line 1189
    .line 1190
    iget-object v3, v2, Lcom/fsck/k9/notification/BaseNotificationData;->appearance:Lcom/fsck/k9/notification/NotificationAppearance;

    .line 1191
    .line 1192
    move/from16 v5, p1

    .line 1193
    .line 1194
    invoke-static {v0, v5, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->setAppearance(Landroidx/core/app/NotificationCompat$Builder;ZLcom/fsck/k9/notification/NotificationAppearance;)V

    .line 1195
    .line 1196
    .line 1197
    iget-boolean v3, v9, Lcom/fsck/k9/notification/SingleNotificationData;->addLockScreenNotification:Z

    .line 1198
    .line 1199
    if-eqz v3, :cond_1c

    .line 1200
    .line 1201
    iget-object v1, v1, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->lockScreenNotificationCreator:Lcom/fsck/k9/notification/LockScreenNotificationCreator;

    .line 1202
    .line 1203
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/notification/LockScreenNotificationCreator;->configureLockScreenNotification(Landroidx/core/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/BaseNotificationData;)V

    .line 1204
    .line 1205
    .line 1206
    goto :goto_10

    .line 1207
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1208
    .line 1209
    .line 1210
    :goto_10
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1215
    .line 1216
    .line 1217
    if-eqz v17, :cond_1d

    .line 1218
    .line 1219
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v1

    .line 1223
    new-array v2, v15, [Ljava/lang/Object;

    .line 1224
    .line 1225
    const/4 v14, 0x0

    .line 1226
    aput-object v1, v2, v14

    .line 1227
    .line 1228
    const/16 v18, 0x1

    .line 1229
    .line 1230
    aput-object v0, v2, v18

    .line 1231
    .line 1232
    const-string v1, "Creating single summary notification (silent=%b): %s"

    .line 1233
    .line 1234
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    .line 1236
    .line 1237
    :cond_1d
    move-object/from16 v1, v19

    .line 1238
    .line 1239
    invoke-virtual {v1, v4, v13, v0}, Lcom/fsck/k9/notification/NotificationHelper;->notify(Lnet/thunderbird/core/android/account/LegacyAccountDto;ILandroid/app/Notification;)V

    .line 1240
    .line 1241
    .line 1242
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1243
    .line 1244
    return-object v0
.end method
