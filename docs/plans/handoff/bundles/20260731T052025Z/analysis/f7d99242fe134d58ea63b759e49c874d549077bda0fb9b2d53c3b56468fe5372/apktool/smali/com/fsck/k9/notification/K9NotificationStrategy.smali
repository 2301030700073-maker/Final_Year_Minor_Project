.class public final Lcom/fsck/k9/notification/K9NotificationStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;


# direct methods
.method public constructor <init>(Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/K9NotificationStrategy;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/K9NotificationStrategy;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final shouldNotifyForMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Z)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/notification/K9NotificationStrategy;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 8
    .line 9
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 16
    .line 17
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isNotificationDuringQuietTimeEnabled:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 27
    .line 28
    iget-boolean v1, v0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isQuietTimeEnabled:Z

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-class v1, Lkotlin/time/Clock;

    .line 34
    .line 35
    invoke-static {v1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lkotlin/time/Clock;

    .line 40
    .line 41
    iget-object v3, v0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeStarts:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, v0, Lnet/thunderbird/core/preference/notification/NotificationPreference;->quietTimeEnds:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/fsck/k9/sasl/OAuthBearer;->access$parseTime(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {v0}, Lcom/fsck/k9/sasl/OAuthBearer;->access$parseTime(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v3, v0, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v1}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    .line 70
    .line 71
    const/16 v1, 0xb

    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    mul-int/lit8 v1, v1, 0x3c

    .line 78
    .line 79
    const/16 v5, 0xc

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    add-int/2addr v4, v1

    .line 86
    if-le v3, v0, :cond_2

    .line 87
    .line 88
    if-ge v4, v3, :cond_3

    .line 89
    .line 90
    if-gt v4, v0, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    if-gt v4, v0, :cond_4

    .line 94
    .line 95
    if-gt v3, v4, :cond_4

    .line 96
    .line 97
    :cond_3
    :goto_0
    const-string p0, "No notification: Quiet time is active"

    .line 98
    .line 99
    new-array p1, v2, [Ljava/lang/Object;

    .line 100
    .line 101
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return v2

    .line 105
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifyNewMail()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    const-string p0, "No notification: Notifications are disabled"

    .line 112
    .line 113
    new-array p1, v2, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return v2

    .line 119
    :cond_5
    iget-boolean v0, p2, Lcom/fsck/k9/mailstore/LocalFolder;->visible:Z

    .line 120
    .line 121
    if-nez v0, :cond_6

    .line 122
    .line 123
    const-string p0, "No notification: Message is in folder not being displayed"

    .line 124
    .line 125
    new-array p1, v2, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return v2

    .line 131
    :cond_6
    iget-boolean p2, p2, Lcom/fsck/k9/mailstore/LocalFolder;->notificationsEnabled:Z

    .line 132
    .line 133
    if-nez p2, :cond_7

    .line 134
    .line 135
    const-string p0, "No notification: Notifications are not enabled for this folder"

    .line 136
    .line 137
    new-array p1, v2, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return v2

    .line 143
    :cond_7
    if-eqz p4, :cond_8

    .line 144
    .line 145
    const-string p0, "No notification: Message is old"

    .line 146
    .line 147
    new-array p1, v2, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return v2

    .line 153
    :cond_8
    sget-object p2, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 154
    .line 155
    iget-object p4, p3, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 156
    .line 157
    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_9

    .line 162
    .line 163
    const-string p0, "No notification: Message is marked as read"

    .line 164
    .line 165
    new-array p1, v2, [Ljava/lang/Object;

    .line 166
    .line 167
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return v2

    .line 171
    :cond_9
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isIgnoreChatMessages()Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-eqz p2, :cond_b

    .line 176
    .line 177
    const-string p2, "Chat-Version"

    .line 178
    .line 179
    iget-object p4, p3, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 180
    .line 181
    invoke-virtual {p4, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    array-length p2, p2

    .line 189
    if-nez p2, :cond_a

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_a
    const-string p0, "No notification: Notifications for chat messages are disabled"

    .line 193
    .line 194
    new-array p1, v2, [Ljava/lang/Object;

    .line 195
    .line 196
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    return v2

    .line 200
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySelfNewMail()Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-nez p2, :cond_c

    .line 205
    .line 206
    invoke-virtual {p3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_c

    .line 215
    .line 216
    const-string p0, "No notification: Notifications for messages from yourself are disabled"

    .line 217
    .line 218
    new-array p1, v2, [Ljava/lang/Object;

    .line 219
    .line 220
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    return v2

    .line 224
    :cond_c
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifyContactsMailOnly()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_12

    .line 229
    .line 230
    invoke-virtual {p3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    new-instance p2, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    :cond_d
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result p3

    .line 257
    if-eqz p3, :cond_e

    .line 258
    .line 259
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p3

    .line 263
    check-cast p3, Lcom/fsck/k9/mail/Address;

    .line 264
    .line 265
    iget-object p3, p3, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {p3}, Lnet/thunderbird/core/common/mail/TokensKt;->toEmailAddressOrNull(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    if-eqz p3, :cond_d

    .line 272
    .line 273
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_e
    iget-object p0, p0, Lcom/fsck/k9/notification/K9NotificationStrategy;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 278
    .line 279
    check-cast p0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 280
    .line 281
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_f

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-eqz p2, :cond_11

    .line 297
    .line 298
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    check-cast p2, Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 303
    .line 304
    invoke-virtual {p0, p2}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->hasContactFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Z

    .line 305
    .line 306
    .line 307
    move-result p2

    .line 308
    if-eqz p2, :cond_10

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_11
    :goto_4
    const-string p0, "No notification: Message is not from a known contact"

    .line 312
    .line 313
    new-array p1, v2, [Ljava/lang/Object;

    .line 314
    .line 315
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    return v2

    .line 319
    :cond_12
    :goto_5
    const/4 p0, 0x1

    .line 320
    return p0
.end method
