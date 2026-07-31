.class public final Lcom/fsck/k9/notification/NotificationContentCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

.field public final messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

.field public final resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/K9NotificationResourceProvider;Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final createFromMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/notification/NotificationContent;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/fsck/k9/notification/NotificationContentCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/fsck/k9/notification/NotificationContentCreator;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 13
    .line 14
    invoke-virtual {v3}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 19
    .line 20
    iget-boolean v4, v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactName:Z

    .line 21
    .line 22
    iget v5, v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->contactNameColor:I

    .line 23
    .line 24
    iget-boolean v6, v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isChangeContactNameColor:Z

    .line 25
    .line 26
    iget-boolean v3, v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object v4, v0, Lcom/fsck/k9/notification/NotificationContentCreator;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v4, v7

    .line 35
    :goto_0
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const/4 v9, 0x1

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x4

    .line 42
    if-eqz v8, :cond_2

    .line 43
    .line 44
    array-length v12, v8

    .line 45
    if-nez v12, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    move-object/from16 v12, p1

    .line 49
    .line 50
    invoke-virtual {v12, v8}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    if-nez v12, :cond_3

    .line 55
    .line 56
    invoke-static {v8}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    check-cast v8, Lcom/fsck/k9/mail/Address;

    .line 61
    .line 62
    sget-object v10, Lcom/fsck/k9/helper/MessageHelper;->SPOOF_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    .line 64
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v8, v3, v6, v5, v4}, Lcom/fsck/k9/helper/FileHelper;->toFriendly(Lcom/fsck/k9/mail/Address;ZZILapp/k9mail/core/android/common/contact/ContactRepository;)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v4, Lcom/fsck/k9/mail/Address;

    .line 76
    .line 77
    iget-object v5, v8, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {v4, v11, v5, v3}, Lcom/fsck/k9/mail/Address;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    move-object v14, v4

    .line 83
    goto :goto_4

    .line 84
    :cond_2
    :goto_2
    move v12, v10

    .line 85
    :cond_3
    if-eqz v12, :cond_5

    .line 86
    .line 87
    sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 88
    .line 89
    invoke-virtual {v1, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    if-eqz v8, :cond_5

    .line 94
    .line 95
    array-length v12, v8

    .line 96
    if-nez v12, :cond_4

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    invoke-static {v8}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Lcom/fsck/k9/mail/Address;

    .line 104
    .line 105
    sget-object v13, Lcom/fsck/k9/helper/MessageHelper;->SPOOF_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 106
    .line 107
    invoke-static {v8}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    check-cast v8, Lcom/fsck/k9/mail/Address;

    .line 115
    .line 116
    invoke-static {v8, v3, v6, v5, v4}, Lcom/fsck/k9/helper/FileHelper;->toFriendly(Lcom/fsck/k9/mail/Address;ZZILapp/k9mail/core/android/common/contact/ContactRepository;)Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-array v4, v9, [Ljava/lang/Object;

    .line 128
    .line 129
    aput-object v3, v4, v10

    .line 130
    .line 131
    const v3, 0x7f12045c

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance v4, Lcom/fsck/k9/mail/Address;

    .line 142
    .line 143
    iget-object v5, v12, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {v4, v11, v5, v3}, Lcom/fsck/k9/mail/Address;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    :goto_3
    new-instance v4, Lcom/fsck/k9/mail/Address;

    .line 150
    .line 151
    const v3, 0x7f120314

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const-string v5, "no.sender@example.com"

    .line 162
    .line 163
    invoke-direct {v4, v11, v5, v3}, Lcom/fsck/k9/mail/Address;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :goto_4
    new-instance v12, Lcom/fsck/k9/notification/NotificationContent;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/fsck/k9/notification/NotificationContentCreator;->getMessageSubject(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    iget v3, v1, Lcom/fsck/k9/mailstore/LocalMessage;->previewType:I

    .line 181
    .line 182
    if-eqz v3, :cond_e

    .line 183
    .line 184
    invoke-static {v3}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_9

    .line 189
    .line 190
    if-eq v3, v9, :cond_8

    .line 191
    .line 192
    const/4 v4, 0x2

    .line 193
    if-eq v3, v4, :cond_7

    .line 194
    .line 195
    const/4 v2, 0x3

    .line 196
    if-ne v3, v2, :cond_6

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_6
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 200
    .line 201
    .line 202
    return-object v7

    .line 203
    :cond_7
    const v3, 0x7f120541

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_8
    iget-object v7, v1, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    .line 215
    .line 216
    :cond_9
    :goto_5
    iget-object v2, v1, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 217
    .line 218
    if-eqz v2, :cond_a

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_b

    .line 225
    .line 226
    :cond_a
    if-eqz v7, :cond_b

    .line 227
    .line 228
    move-object/from16 v16, v7

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_b
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 232
    .line 233
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Lcom/fsck/k9/notification/NotificationContentCreator;->getMessageSubject(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 241
    .line 242
    .line 243
    if-eqz v7, :cond_c

    .line 244
    .line 245
    const/16 v3, 0xa

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 251
    .line 252
    .line 253
    :cond_c
    move-object/from16 v16, v2

    .line 254
    .line 255
    :goto_6
    invoke-virtual {v0, v1}, Lcom/fsck/k9/notification/NotificationContentCreator;->getMessageSubject(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iget-object v1, v14, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 260
    .line 261
    if-nez v1, :cond_d

    .line 262
    .line 263
    move-object/from16 v17, v0

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_d
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 267
    .line 268
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, " "

    .line 275
    .line 276
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 280
    .line 281
    .line 282
    move-object/from16 v17, v2

    .line 283
    .line 284
    :goto_7
    invoke-direct/range {v12 .. v17}, Lcom/fsck/k9/notification/NotificationContent;-><init>(Lapp/k9mail/legacy/message/controller/MessageReference;Lcom/fsck/k9/mail/Address;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    return-object v12

    .line 288
    :cond_e
    const-string v0, "previewType == null"

    .line 289
    .line 290
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-object v7
.end method

.method public final getMessageSubject(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/notification/NotificationContentCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 16
    .line 17
    const p1, 0x7f120315

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    return-object p1
.end method
