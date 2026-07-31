.class public final Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;
.super Landroidx/compose/ui/unit/IntRectKt;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final executorService:Ljava/util/concurrent/ExecutorService;

.field public final jobManager:Lcom/fsck/k9/job/K9JobManager;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public final notificationChannelManager:Lcom/fsck/k9/notification/NotificationChannelManager;

.field public final notificationController:Lcom/fsck/k9/notification/NotificationController;

.field public notificationSettingsChanged:Z

.field public final preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Preferences;Ljava/util/concurrent/ExecutorService;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/job/K9JobManager;Lcom/fsck/k9/notification/NotificationChannelManager;Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/controller/MessagingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->preferences:Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->jobManager:Lcom/fsck/k9/job/K9JobManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationChannelManager:Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 17
    .line 18
    return-void
.end method

.method public static loadSpecialFolder(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const-string p1, "MANUAL|"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_1
    const-string p1, "AUTOMATIC|"

    .line 19
    .line 20
    :goto_0
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    :cond_2
    const-string p0, ""

    .line 33
    .line 34
    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static saveSpecialFolderSelection(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "|"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    const-string v1, "AUTOMATIC|"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->MANUAL:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 35
    .line 36
    :goto_1
    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :sswitch_0
    const-string v0, "openpgp_hide_sign_only"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpHideSignOnly()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :sswitch_1
    const-string v0, "subscribed_folders_only"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSubscribedFoldersOnly()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :sswitch_2
    const-string v0, "openpgp_encrypt_subject"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpEncryptSubject()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :sswitch_3
    const-string v0, "ignore_chat_messages"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_3
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isIgnoreChatMessages()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0

    .line 75
    :sswitch_4
    const-string v0, "mark_message_as_read_on_delete"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMarkMessageAsReadOnDelete()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    :sswitch_5
    const-string v0, "reply_after_quote"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_5

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_5
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isReplyAfterQuote()Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0

    .line 105
    :sswitch_6
    const-string v0, "always_show_cc_bcc"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_6

    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_6
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAlwaysShowCcBcc()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    return p0

    .line 120
    :sswitch_7
    const-string v0, "account_notify"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_7

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_7
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifyNewMail()Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    return p0

    .line 135
    :sswitch_8
    const-string v0, "strip_signature"

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_8

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_8
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isStripSignature()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    return p0

    .line 150
    :sswitch_9
    const-string v0, "openpgp_encrypt_all_drafts"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_9

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_9
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpEncryptAllDrafts()Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    return p0

    .line 165
    :sswitch_a
    const-string v0, "default_quoted_text_shown"

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_a

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_a
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isDefaultQuotedTextShown()Z

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    return p0

    .line 180
    :sswitch_b
    const-string v0, "message_read_receipt"

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_b

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_b
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMessageReadReceipt()Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    return p0

    .line 194
    :sswitch_c
    const-string/jumbo v0, "upload_sent_messages"

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_c

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_c
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isUploadSentMessages()Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    return p0

    .line 209
    :sswitch_d
    const-string v0, "account_notify_contacts_mail_only"

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_d

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_d
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifyContactsMailOnly()Z

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    return p0

    .line 223
    :sswitch_e
    const-string v0, "autocrypt_prefer_encrypt"

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-nez p1, :cond_e

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_e
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutocryptPreferEncryptMutual()Z

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    return p0

    .line 237
    :sswitch_f
    const-string v0, "mark_message_as_read_on_view"

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-nez p1, :cond_f

    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_f
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isMarkMessageAsReadOnView()Z

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    return p0

    .line 251
    :sswitch_10
    const-string v0, "account_sync_remote_deletetions"

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-nez p1, :cond_10

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_10
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSyncRemoteDeletions()Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    return p0

    .line 265
    :sswitch_11
    const-string v0, "account_notify_sync"

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-nez p1, :cond_11

    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_11
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySync()Z

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    return p0

    .line 279
    :sswitch_12
    const-string v0, "account_notify_self"

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-nez p1, :cond_12

    .line 286
    .line 287
    :goto_0
    return p2

    .line 288
    :cond_12
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySelfNewMail()Z

    .line 289
    .line 290
    .line 291
    move-result p0

    .line 292
    return p0

    .line 293
    :sswitch_data_0
    .sparse-switch
        -0x6915dc90 -> :sswitch_12
        -0x69159141 -> :sswitch_11
        -0x62f5b553 -> :sswitch_10
        -0x5237e161 -> :sswitch_f
        -0x4cc6edaa -> :sswitch_e
        -0x2a999e94 -> :sswitch_d
        -0x1aaac7ab -> :sswitch_c
        -0x639639 -> :sswitch_b
        0x15753c38 -> :sswitch_a
        0x15c6e8da -> :sswitch_9
        0x1f929851 -> :sswitch_8
        0x2b09ad9b -> :sswitch_7
        0x2f681535 -> :sswitch_6
        0x3c713484 -> :sswitch_5
        0x3d4e5325 -> :sswitch_4
        0x4bb81aa6 -> :sswitch_3
        0x4db03fe2 -> :sswitch_2
        0x4f89b9ab -> :sswitch_1
        0x51f65da1 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    const-string v0, "chip_color"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    return p2
.end method

.method public final getLong(JLjava/lang/String;)J
    .locals 1

    .line 1
    const-string v0, "openpgp_key"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpKey()J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0

    .line 16
    :cond_0
    return-wide p1
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :sswitch_0
    const-string v0, "trash_folder"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p1, p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->loadSpecialFolder(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :sswitch_1
    const-string v0, "auto_select_folder"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutoExpandFolderId()Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p1, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->MANUAL:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 53
    .line 54
    invoke-static {p0, p1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->loadSpecialFolder(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :sswitch_2
    const-string v0, "sent_folder"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_2
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderId()Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p1, p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->loadSpecialFolder(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :sswitch_3
    const-string v0, "expunge_policy"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getExpungePolicy()Lnet/thunderbird/core/android/account/Expunge;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :sswitch_4
    const-string v0, "account_autodownload_size"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_4
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaximumAutoDownloadMessageSize()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :sswitch_5
    const-string v0, "quote_style"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_5

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_5
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuoteStyle()Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :sswitch_6
    const-string v0, "max_push_folders"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_6

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_6
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaxPushFolders()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :sswitch_7
    const-string v0, "message_format"

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_7

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessageFormat()Lnet/thunderbird/core/android/account/MessageFormat;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    return-object p0

    .line 177
    :sswitch_8
    const-string v0, "idle_refresh_period"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_8

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_8
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdleRefreshMinutes()I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :sswitch_9
    const-string v0, "archive_folder"

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_9

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_9
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getArchiveFolderId()Ljava/lang/Long;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getArchiveFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-static {p1, p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->loadSpecialFolder(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    return-object p0

    .line 219
    :sswitch_a
    const-string v0, "account_display_count"

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_a

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_a
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayCount()I

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    return-object p0

    .line 238
    :sswitch_b
    const-string v0, "account_combined_vibration"

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-nez p1, :cond_b

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_b
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iget-object p0, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 253
    .line 254
    sget-object p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->DEFAULT_VIBRATE_PATTERN:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 255
    .line 256
    iget-boolean p1, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 257
    .line 258
    iget-object p2, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 259
    .line 260
    iget p0, p0, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 261
    .line 262
    invoke-static {p1, p2, p0}, Landroidx/appcompat/app/ActionBar;->encode(ZLnet/thunderbird/feature/notification/VibratePattern;I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    return-object p0

    .line 267
    :sswitch_c
    const-string v0, "delete_policy"

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-nez p1, :cond_c

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_c
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDeletePolicy()Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    return-object p0

    .line 286
    :sswitch_d
    const-string v0, "show_pictures_enum"

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-nez p1, :cond_d

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_d
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getShowPictures()Lnet/thunderbird/core/android/account/ShowPictures;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    return-object p0

    .line 305
    :sswitch_e
    const-string v0, "account_ringtone"

    .line 306
    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-nez p1, :cond_e

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_e
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    iget-object p0, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 320
    .line 321
    return-object p0

    .line 322
    :sswitch_f
    const-string v0, "account_message_age"

    .line 323
    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-nez p1, :cond_f

    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_f
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMaximumPolledMessageAge()I

    .line 333
    .line 334
    .line 335
    move-result p0

    .line 336
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    return-object p0

    .line 341
    :sswitch_10
    const-string v0, "account_quote_prefix"

    .line 342
    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-nez p1, :cond_10

    .line 348
    .line 349
    goto :goto_0

    .line 350
    :cond_10
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuotePrefix()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    return-object p0

    .line 355
    :sswitch_11
    const-string v0, "notification_light"

    .line 356
    .line 357
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    if-nez p1, :cond_11

    .line 362
    .line 363
    goto :goto_0

    .line 364
    :cond_11
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 365
    .line 366
    .line 367
    move-result-object p0

    .line 368
    iget-object p0, p0, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 369
    .line 370
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    return-object p0

    .line 375
    :sswitch_12
    const-string v0, "account_remote_search_num_results"

    .line 376
    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result p1

    .line 381
    if-nez p1, :cond_12

    .line 382
    .line 383
    goto :goto_0

    .line 384
    :cond_12
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getRemoteSearchNumResults()I

    .line 385
    .line 386
    .line 387
    move-result p0

    .line 388
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    return-object p0

    .line 393
    :sswitch_13
    const-string v0, "account_check_frequency"

    .line 394
    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    if-nez p1, :cond_13

    .line 400
    .line 401
    goto :goto_0

    .line 402
    :cond_13
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutomaticCheckIntervalMinutes()I

    .line 403
    .line 404
    .line 405
    move-result p0

    .line 406
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    return-object p0

    .line 411
    :sswitch_14
    const-string v0, "account_description"

    .line 412
    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-nez p1, :cond_14

    .line 418
    .line 419
    goto :goto_0

    .line 420
    :cond_14
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getName()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    return-object p0

    .line 425
    :sswitch_15
    const-string v0, "drafts_folder"

    .line 426
    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    if-nez p1, :cond_15

    .line 432
    .line 433
    goto :goto_0

    .line 434
    :cond_15
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    invoke-static {p1, p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->loadSpecialFolder(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    return-object p0

    .line 447
    :sswitch_16
    const-string v0, "spam_folder"

    .line 448
    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    if-nez p1, :cond_16

    .line 454
    .line 455
    :goto_0
    return-object p2

    .line 456
    :cond_16
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderSelection()Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 461
    .line 462
    .line 463
    move-result-object p0

    .line 464
    invoke-static {p1, p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->loadSpecialFolder(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p0

    .line 468
    return-object p0

    .line 469
    :sswitch_data_0
    .sparse-switch
        -0x7e86f1dc -> :sswitch_16
        -0x78d475a5 -> :sswitch_15
        -0x68016f16 -> :sswitch_14
        -0x637f5f2d -> :sswitch_13
        -0x5dfb0ed3 -> :sswitch_12
        -0x58f37b3e -> :sswitch_11
        -0x36020179 -> :sswitch_10
        -0x353ca64b -> :sswitch_f
        -0x18defa8c -> :sswitch_e
        -0x13f80df7 -> :sswitch_d
        -0x88f89ba -> :sswitch_c
        0x2c5812a -> :sswitch_b
        0x18693cc0 -> :sswitch_a
        0x1d4c3a8b -> :sswitch_9
        0x251b0f70 -> :sswitch_8
        0x25ad2f2f -> :sswitch_7
        0x40b3b49b -> :sswitch_6
        0x41b4f22e -> :sswitch_5
        0x4d5f1e77 -> :sswitch_4
        0x55f53efd -> :sswitch_3
        0x60f30ef5 -> :sswitch_2
        0x74262281 -> :sswitch_1
        0x7e2f9755 -> :sswitch_0
    .end sparse-switch
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :sswitch_0
    const-string v0, "openpgp_hide_sign_only"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpHideSignOnly(Z)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :sswitch_1
    const-string v0, "subscribed_folders_only"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSubscribedFoldersOnly()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eq p1, p2, :cond_13

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSubscribedFoldersOnly(Z)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 53
    .line 54
    invoke-direct {p1, v0, v1, p2}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 55
    .line 56
    .line 57
    const-string p2, "refreshFolderList"

    .line 58
    .line 59
    invoke-virtual {v0, p2, p1}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :sswitch_2
    const-string v0, "openpgp_encrypt_subject"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_2
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpEncryptSubject(Z)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :sswitch_3
    const-string v0, "ignore_chat_messages"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_3
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIgnoreChatMessages(Z)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :sswitch_4
    const-string v0, "mark_message_as_read_on_delete"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_4

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_4
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMarkMessageAsReadOnDelete(Z)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :sswitch_5
    const-string v0, "reply_after_quote"

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :cond_5
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setReplyAfterQuote(Z)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :sswitch_6
    const-string v0, "always_show_cc_bcc"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_6

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_6
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAlwaysShowCcBcc(Z)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :sswitch_7
    const-string v0, "account_notify"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_7

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_7
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyNewMail(Z)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :sswitch_8
    const-string v0, "strip_signature"

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_8

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_8
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setStripSignature(Z)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :sswitch_9
    const-string v0, "openpgp_encrypt_all_drafts"

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_9

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_9
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpEncryptAllDrafts(Z)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :sswitch_a
    const-string v0, "default_quoted_text_shown"

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_a

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_a
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDefaultQuotedTextShown(Z)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :sswitch_b
    const-string v0, "message_read_receipt"

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-nez p1, :cond_b

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_b
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageReadReceipt(Z)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :sswitch_c
    const-string/jumbo v0, "upload_sent_messages"

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_c

    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_c
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setUploadSentMessages(Z)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :sswitch_d
    const-string v0, "account_notify_contacts_mail_only"

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-nez p1, :cond_d

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_d
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifyContactsMailOnly(Z)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :sswitch_e
    const-string v0, "autocrypt_prefer_encrypt"

    .line 240
    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-nez p1, :cond_e

    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_e
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutocryptPreferEncryptMutual(Z)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :sswitch_f
    const-string v0, "mark_message_as_read_on_view"

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-nez p1, :cond_f

    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_f
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMarkMessageAsReadOnView(Z)V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :sswitch_10
    const-string v0, "account_sync_remote_deletetions"

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-nez p1, :cond_10

    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_10
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSyncRemoteDeletions(Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :sswitch_11
    const-string v0, "account_notify_sync"

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-nez p1, :cond_11

    .line 285
    .line 286
    goto :goto_0

    .line 287
    :cond_11
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySync(Z)V

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :sswitch_12
    const-string v0, "account_notify_self"

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-nez p1, :cond_12

    .line 298
    .line 299
    :goto_0
    return-void

    .line 300
    :cond_12
    invoke-virtual {v1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setNotifySelfNewMail(Z)V

    .line 301
    .line 302
    .line 303
    :cond_13
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSettingsInBackground()V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :sswitch_data_0
    .sparse-switch
        -0x6915dc90 -> :sswitch_12
        -0x69159141 -> :sswitch_11
        -0x62f5b553 -> :sswitch_10
        -0x5237e161 -> :sswitch_f
        -0x4cc6edaa -> :sswitch_e
        -0x2a999e94 -> :sswitch_d
        -0x1aaac7ab -> :sswitch_c
        -0x639639 -> :sswitch_b
        0x15753c38 -> :sswitch_a
        0x15c6e8da -> :sswitch_9
        0x1f929851 -> :sswitch_8
        0x2b09ad9b -> :sswitch_7
        0x2f681535 -> :sswitch_6
        0x3c713484 -> :sswitch_5
        0x3d4e5325 -> :sswitch_4
        0x4bb81aa6 -> :sswitch_3
        0x4db03fe2 -> :sswitch_2
        0x4f89b9ab -> :sswitch_1
        0x51f65da1 -> :sswitch_0
    .end sparse-switch
.end method

.method public final putInt(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "chip_color"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq p2, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setChipColor(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 25
    .line 26
    sget-object p2, Lnet/thunderbird/feature/notification/NotificationLight;->AccountColor:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 27
    .line 28
    if-ne p1, p2, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationSettingsChanged:Z

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSettingsInBackground()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final putLong(JLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "openpgp_key"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p3, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    invoke-virtual {p3, p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpKey(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSettingsInBackground()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :sswitch_0
    const-string v0, "trash_folder"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_1
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 31
    .line 32
    const-class v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 33
    .line 34
    const-string v4, "setTrashFolderId"

    .line 35
    .line 36
    const-string v5, "setTrashFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/16 v7, 0xc

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSpecialFolderSelection(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :sswitch_1
    const-string v0, "auto_select_folder"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 61
    .line 62
    const-string/jumbo v0, "|"

    .line 63
    .line 64
    .line 65
    invoke-static {p2, v0}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const-string v0, ""

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    :goto_0
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutoExpandFolderId(Ljava/lang/Long;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :sswitch_2
    const-string v0, "sent_folder"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_4

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_4
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 101
    .line 102
    const-class v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 103
    .line 104
    const-string v4, "setSentFolderId"

    .line 105
    .line 106
    const-string v5, "setSentFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V"

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    const/16 v7, 0xa

    .line 110
    .line 111
    const/4 v1, 0x2

    .line 112
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    invoke-static {p2, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSpecialFolderSelection(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :sswitch_3
    const-string v0, "expunge_policy"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_5

    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :cond_5
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 131
    .line 132
    invoke-static {p2}, Lnet/thunderbird/core/android/account/Expunge;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/Expunge;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setExpungePolicy(Lnet/thunderbird/core/android/account/Expunge;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_3

    .line 140
    .line 141
    :sswitch_4
    const-string v0, "account_autodownload_size"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_6

    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_6
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 152
    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaximumAutoDownloadMessageSize(I)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :sswitch_5
    const-string v0, "quote_style"

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_7

    .line 169
    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :cond_7
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 173
    .line 174
    invoke-static {p2}, Lnet/thunderbird/core/android/account/QuoteStyle;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setQuoteStyle(Lnet/thunderbird/core/android/account/QuoteStyle;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :sswitch_6
    const-string v0, "max_push_folders"

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_8

    .line 190
    .line 191
    goto/16 :goto_2

    .line 192
    .line 193
    :cond_8
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 194
    .line 195
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaxPushFolders(I)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    :sswitch_7
    const-string v0, "message_format"

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_9

    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :cond_9
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 215
    .line 216
    invoke-static {p2}, Lnet/thunderbird/core/android/account/MessageFormat;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/MessageFormat;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMessageFormat(Lnet/thunderbird/core/android/account/MessageFormat;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_3

    .line 224
    .line 225
    :sswitch_8
    const-string v0, "idle_refresh_period"

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_a

    .line 232
    .line 233
    goto/16 :goto_2

    .line 234
    .line 235
    :cond_a
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 236
    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setIdleRefreshMinutes(I)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_3

    .line 245
    .line 246
    :sswitch_9
    const-string v0, "archive_folder"

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-nez p1, :cond_b

    .line 253
    .line 254
    goto/16 :goto_2

    .line 255
    .line 256
    :cond_b
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 257
    .line 258
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 259
    .line 260
    const-class v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 261
    .line 262
    const-string v4, "setArchiveFolderId"

    .line 263
    .line 264
    const-string v5, "setArchiveFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V"

    .line 265
    .line 266
    const/4 v6, 0x0

    .line 267
    const/16 v7, 0x8

    .line 268
    .line 269
    const/4 v1, 0x2

    .line 270
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 271
    .line 272
    .line 273
    invoke-static {p2, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSpecialFolderSelection(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_3

    .line 277
    .line 278
    :sswitch_a
    const-string v0, "account_display_count"

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-nez p1, :cond_c

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :cond_c
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 289
    .line 290
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDisplayCount(I)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :sswitch_b
    const-string v0, "account_combined_vibration"

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-nez p1, :cond_d

    .line 306
    .line 307
    goto/16 :goto_2

    .line 308
    .line 309
    :cond_d
    sget-object p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->DEFAULT_VIBRATE_PATTERN:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 310
    .line 311
    invoke-static {p2}, Landroidx/appcompat/app/ActionBar;->decode(Ljava/lang/String;)Lkotlin/Triple;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    iget-object p2, p1, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast p2, Ljava/lang/Boolean;

    .line 318
    .line 319
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    iget-object v0, p1, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v0, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 326
    .line 327
    iget-object p1, p1, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast p1, Ljava/lang/Number;

    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 336
    .line 337
    new-instance v3, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore$$ExternalSyntheticLambda2;

    .line 338
    .line 339
    invoke-direct {v3, p2, v0, p1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore$$ExternalSyntheticLambda2;-><init>(ZLnet/thunderbird/feature/notification/VibratePattern;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->updateNotificationSettings(Lkotlin/jvm/functions/Function1;)V

    .line 343
    .line 344
    .line 345
    iput-boolean v1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationSettingsChanged:Z

    .line 346
    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :sswitch_c
    const-string v0, "delete_policy"

    .line 350
    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-nez p1, :cond_e

    .line 356
    .line 357
    goto/16 :goto_2

    .line 358
    .line 359
    :cond_e
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 360
    .line 361
    invoke-static {p2}, Lnet/thunderbird/core/android/account/DeletePolicy;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDeletePolicy(Lnet/thunderbird/core/android/account/DeletePolicy;)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    :sswitch_d
    const-string v0, "show_pictures_enum"

    .line 371
    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    if-nez p1, :cond_f

    .line 377
    .line 378
    goto/16 :goto_2

    .line 379
    .line 380
    :cond_f
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 381
    .line 382
    invoke-static {p2}, Lnet/thunderbird/core/android/account/ShowPictures;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/android/account/ShowPictures;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setShowPictures(Lnet/thunderbird/core/android/account/ShowPictures;)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_3

    .line 390
    .line 391
    :sswitch_e
    const-string v0, "account_ringtone"

    .line 392
    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    if-nez p1, :cond_10

    .line 398
    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :cond_10
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 402
    .line 403
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    iget-boolean v2, v0, Lnet/thunderbird/feature/notification/NotificationSettings;->isRingEnabled:Z

    .line 408
    .line 409
    if-eqz v2, :cond_11

    .line 410
    .line 411
    iget-object v0, v0, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 412
    .line 413
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-nez v0, :cond_1b

    .line 418
    .line 419
    :cond_11
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 420
    .line 421
    invoke-direct {v0, p2, v1}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->updateNotificationSettings(Lkotlin/jvm/functions/Function1;)V

    .line 425
    .line 426
    .line 427
    iput-boolean v1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationSettingsChanged:Z

    .line 428
    .line 429
    goto/16 :goto_3

    .line 430
    .line 431
    :sswitch_f
    const-string v0, "account_message_age"

    .line 432
    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    if-nez p1, :cond_12

    .line 438
    .line 439
    goto/16 :goto_2

    .line 440
    .line 441
    :cond_12
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 442
    .line 443
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    move-result p2

    .line 447
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setMaximumPolledMessageAge(I)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_3

    .line 451
    .line 452
    :sswitch_10
    const-string v0, "account_quote_prefix"

    .line 453
    .line 454
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-nez p1, :cond_13

    .line 459
    .line 460
    goto/16 :goto_2

    .line 461
    .line 462
    :cond_13
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 463
    .line 464
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setQuotePrefix(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_3

    .line 468
    .line 469
    :sswitch_11
    const-string v0, "notification_light"

    .line 470
    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    if-nez p1, :cond_14

    .line 476
    .line 477
    goto/16 :goto_2

    .line 478
    .line 479
    :cond_14
    invoke-static {p2}, Lnet/thunderbird/feature/notification/NotificationLight;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/notification/NotificationLight;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    iget-object p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 484
    .line 485
    invoke-virtual {p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    iget-object v0, v0, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 490
    .line 491
    if-eq p1, v0, :cond_1b

    .line 492
    .line 493
    new-instance v0, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 494
    .line 495
    const/16 v2, 0x12

    .line 496
    .line 497
    invoke-direct {v0, v2, p1}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->updateNotificationSettings(Lkotlin/jvm/functions/Function1;)V

    .line 501
    .line 502
    .line 503
    iput-boolean v1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->notificationSettingsChanged:Z

    .line 504
    .line 505
    goto/16 :goto_3

    .line 506
    .line 507
    :sswitch_12
    const-string v0, "account_remote_search_num_results"

    .line 508
    .line 509
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result p1

    .line 513
    if-nez p1, :cond_15

    .line 514
    .line 515
    goto/16 :goto_2

    .line 516
    .line 517
    :cond_15
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 518
    .line 519
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result p2

    .line 523
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setRemoteSearchNumResults(I)V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_3

    .line 527
    .line 528
    :sswitch_13
    const-string v0, "account_check_frequency"

    .line 529
    .line 530
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-nez p1, :cond_16

    .line 535
    .line 536
    goto/16 :goto_2

    .line 537
    .line 538
    :cond_16
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 539
    .line 540
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    monitor-enter v2

    .line 545
    :try_start_0
    iget p2, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->automaticCheckIntervalMinutes:I

    .line 546
    .line 547
    iput p1, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->automaticCheckIntervalMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .line 549
    const/4 v0, 0x0

    .line 550
    if-eq p2, p1, :cond_17

    .line 551
    .line 552
    move p1, v1

    .line 553
    goto :goto_1

    .line 554
    :cond_17
    move p1, v0

    .line 555
    :goto_1
    monitor-exit v2

    .line 556
    if-eqz p1, :cond_1b

    .line 557
    .line 558
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->jobManager:Lcom/fsck/k9/job/K9JobManager;

    .line 559
    .line 560
    iget-object p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 561
    .line 562
    iget-object p1, p1, Lcom/fsck/k9/job/K9JobManager;->mailSyncWorkerManager:Lcom/fsck/k9/job/MailSyncWorkerManager;

    .line 563
    .line 564
    const-string v2, "Canceling mail sync worker for %s"

    .line 565
    .line 566
    new-array v1, v1, [Ljava/lang/Object;

    .line 567
    .line 568
    aput-object p2, v1, v0

    .line 569
    .line 570
    invoke-static {v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    iget-object v0, p2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 574
    .line 575
    const-string v1, "MailSync:"

    .line 576
    .line 577
    invoke-static {v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    iget-object v1, p1, Lcom/fsck/k9/job/MailSyncWorkerManager;->workManager:Landroidx/work/impl/WorkManagerImpl;

    .line 582
    .line 583
    iget-object v2, v1, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 584
    .line 585
    iget-object v2, v2, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 586
    .line 587
    const-string v3, "CancelWorkByName_"

    .line 588
    .line 589
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    iget-object v4, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 594
    .line 595
    iget-object v4, v4, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v4, Landroidx/room/TransactionExecutor;

    .line 598
    .line 599
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    new-instance v5, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 603
    .line 604
    const/4 v6, 0x6

    .line 605
    invoke-direct {v5, v6, v0, v1}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    invoke-static {v2, v3, v4, v5}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/SystemClock;

    .line 609
    .line 610
    .line 611
    invoke-virtual {p1, p2}, Lcom/fsck/k9/job/MailSyncWorkerManager;->scheduleMailSync(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 612
    .line 613
    .line 614
    goto :goto_3

    .line 615
    :catchall_0
    move-exception v0

    .line 616
    move-object p0, v0

    .line 617
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    throw p0

    .line 619
    :sswitch_14
    const-string v0, "account_description"

    .line 620
    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result p1

    .line 625
    if-nez p1, :cond_18

    .line 626
    .line 627
    goto :goto_2

    .line 628
    :cond_18
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 629
    .line 630
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setName(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    goto :goto_3

    .line 634
    :sswitch_15
    const-string v0, "drafts_folder"

    .line 635
    .line 636
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result p1

    .line 640
    if-nez p1, :cond_19

    .line 641
    .line 642
    goto :goto_2

    .line 643
    :cond_19
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 644
    .line 645
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 646
    .line 647
    const-class v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 648
    .line 649
    const-string v4, "setDraftsFolderId"

    .line 650
    .line 651
    const-string v5, "setDraftsFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V"

    .line 652
    .line 653
    const/4 v6, 0x0

    .line 654
    const/16 v7, 0x9

    .line 655
    .line 656
    const/4 v1, 0x2

    .line 657
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 658
    .line 659
    .line 660
    invoke-static {p2, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSpecialFolderSelection(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 661
    .line 662
    .line 663
    goto :goto_3

    .line 664
    :sswitch_16
    const-string v0, "spam_folder"

    .line 665
    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    if-nez p1, :cond_1a

    .line 671
    .line 672
    :goto_2
    return-void

    .line 673
    :cond_1a
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 674
    .line 675
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 676
    .line 677
    const-class v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 678
    .line 679
    const-string v4, "setSpamFolderId"

    .line 680
    .line 681
    const-string v5, "setSpamFolderId(Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)V"

    .line 682
    .line 683
    const/4 v6, 0x0

    .line 684
    const/16 v7, 0xb

    .line 685
    .line 686
    const/4 v1, 0x2

    .line 687
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 688
    .line 689
    .line 690
    invoke-static {p2, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSpecialFolderSelection(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 691
    .line 692
    .line 693
    :cond_1b
    :goto_3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSettingsInBackground()V

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :sswitch_data_0
    .sparse-switch
        -0x7e86f1dc -> :sswitch_16
        -0x78d475a5 -> :sswitch_15
        -0x68016f16 -> :sswitch_14
        -0x637f5f2d -> :sswitch_13
        -0x5dfb0ed3 -> :sswitch_12
        -0x58f37b3e -> :sswitch_11
        -0x36020179 -> :sswitch_10
        -0x353ca64b -> :sswitch_f
        -0x18defa8c -> :sswitch_e
        -0x13f80df7 -> :sswitch_d
        -0x88f89ba -> :sswitch_c
        0x2c5812a -> :sswitch_b
        0x18693cc0 -> :sswitch_a
        0x1d4c3a8b -> :sswitch_9
        0x251b0f70 -> :sswitch_8
        0x25ad2f2f -> :sswitch_7
        0x40b3b49b -> :sswitch_6
        0x41b4f22e -> :sswitch_5
        0x4d5f1e77 -> :sswitch_4
        0x55f53efd -> :sswitch_3
        0x60f30ef5 -> :sswitch_2
        0x74262281 -> :sswitch_1
        0x7e2f9755 -> :sswitch_0
    .end sparse-switch
.end method

.method public final saveSettingsInBackground()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
