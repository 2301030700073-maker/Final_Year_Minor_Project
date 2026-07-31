.class public final Lcom/fsck/k9/message/PgpMessageBuilder;
.super Lcom/fsck/k9/message/MessageBuilder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final autocryptOpenPgpApiInteractor:Lcom/mikepenz/fastadapter/VerboseLogger;

.field public final autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

.field public cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

.field public currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

.field public messageContentBodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

.field public openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/VerboseLogger;Lcom/fsck/k9/mail/BoundaryGenerator;Lcom/bumptech/glide/GlideBuilder$1;Lcom/mikepenz/fastadapter/VerboseLogger;Lcom/fsck/k9/resources/K9CoreResourceProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/fsck/k9/message/MessageBuilder;-><init>(Lcom/mikepenz/fastadapter/VerboseLogger;Lcom/fsck/k9/mail/BoundaryGenerator;Lcom/fsck/k9/resources/K9CoreResourceProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOpenPgpApiInteractor:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final buildMessageInternal()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 2
    .line 3
    if-nez v0, :cond_11

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 6
    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    check-cast v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/message/MessageBuilder;->build()Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/fsck/k9/message/MessageBuilder;->queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 26
    .line 27
    check-cast v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 30
    .line 31
    sget-object v2, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->OK:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 32
    .line 33
    if-ne v1, v2, :cond_f

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object v2, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    aget-object v2, v2, v3

    .line 47
    .line 48
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 49
    .line 50
    iget-object v5, v2, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v6, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOpenPgpApiInteractor:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v6, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v7, "org.openintents.openpgp.action.GET_KEY"

    .line 60
    .line 61
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v7, "key_id"

    .line 65
    .line 66
    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-static {v4, v6, v5}, Lcom/mikepenz/fastadapter/VerboseLogger;->getKeyMaterialFromApi(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Ljava/lang/String;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 80
    .line 81
    check-cast v4, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 82
    .line 83
    iget-boolean v4, v4, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSenderPreferEncryptMutual:Z

    .line 84
    .line 85
    iget-object v5, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_4

    .line 103
    .line 104
    const-string v5, "Autocrypt: addr="

    .line 105
    .line 106
    const-string v6, "; "

    .line 107
    .line 108
    invoke-static {v5, v2, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v4, :cond_1

    .line 113
    .line 114
    const-string v4, "prefer-encrypt=mutual; "

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    :cond_1
    const-string v4, "keydata="

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 125
    .line 126
    array-length v4, v0

    .line 127
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v4, Lokio/ByteString;

    .line 132
    .line 133
    array-length v5, v0

    .line 134
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {v4, v0}, Lokio/ByteString;-><init>([B)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Lokio/ByteString;->base64()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    add-int/lit8 v5, v5, -0x1

    .line 155
    .line 156
    const/16 v6, 0x4c

    .line 157
    .line 158
    invoke-static {v3, v5, v6}, Lokio/Options$Companion;->getProgressionLastElement(III)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-ltz v5, :cond_3

    .line 163
    .line 164
    move v6, v3

    .line 165
    :goto_0
    const-string v7, "\r\n "

    .line 166
    .line 167
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    add-int/lit8 v7, v6, 0x4c

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-gt v7, v8, :cond_2

    .line 177
    .line 178
    invoke-virtual {v4, v0, v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    invoke-virtual {v4, v0, v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    :goto_1
    if-eq v6, v5, :cond_3

    .line 190
    .line 191
    move v6, v7

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v2, "Autocrypt"

    .line 205
    .line 206
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 207
    .line 208
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_4
    const-string p0, "arbitrary parameters not supported"

    .line 213
    .line 214
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 219
    .line 220
    if-eqz v0, :cond_e

    .line 221
    .line 222
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    check-cast v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 228
    .line 229
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 230
    .line 231
    iget-boolean v2, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSignOnly:Z

    .line 232
    .line 233
    const/4 v4, 0x1

    .line 234
    sget-object v5, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 235
    .line 236
    sget-object v12, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 237
    .line 238
    if-eqz v2, :cond_7

    .line 239
    .line 240
    new-instance v6, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;

    .line 241
    .line 242
    iget-boolean v9, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isReplyToEncrypted:Z

    .line 243
    .line 244
    if-eq v1, v5, :cond_6

    .line 245
    .line 246
    move v10, v4

    .line 247
    goto :goto_3

    .line 248
    :cond_6
    move v10, v3

    .line 249
    :goto_3
    iget-boolean v11, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 250
    .line 251
    const/4 v7, 0x0

    .line 252
    const/4 v8, 0x1

    .line 253
    invoke-direct/range {v6 .. v12}, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;-><init>(ZZZZZLjava/util/Map;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_7
    new-instance v6, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;

    .line 258
    .line 259
    iget-boolean v7, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z

    .line 260
    .line 261
    iget-boolean v9, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isReplyToEncrypted:Z

    .line 262
    .line 263
    if-eq v1, v5, :cond_8

    .line 264
    .line 265
    move v10, v4

    .line 266
    goto :goto_4

    .line 267
    :cond_8
    move v10, v3

    .line 268
    :goto_4
    iget-boolean v11, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 269
    .line 270
    const/4 v8, 0x0

    .line 271
    invoke-direct/range {v6 .. v12}, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;-><init>(ZZZZZLjava/util/Map;)V

    .line 272
    .line 273
    .line 274
    :goto_5
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v2, "encrypt"

    .line 279
    .line 280
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-boolean v2, v6, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isEncrypt:Z

    .line 284
    .line 285
    if-eqz v2, :cond_9

    .line 286
    .line 287
    const-string v2, "=yes; "

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_9
    const-string v2, "=no; "

    .line 291
    .line 292
    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget-boolean v2, v6, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isReply:Z

    .line 296
    .line 297
    if-eqz v2, :cond_a

    .line 298
    .line 299
    const-string v2, "_is-reply-to-encrypted=yes; "

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    :cond_a
    iget-boolean v2, v6, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isSignOnly:Z

    .line 305
    .line 306
    if-eqz v2, :cond_b

    .line 307
    .line 308
    const-string v2, "_sign-only=yes; "

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    :cond_b
    iget-boolean v2, v6, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isByChoice:Z

    .line 314
    .line 315
    if-eqz v2, :cond_c

    .line 316
    .line 317
    const-string v2, "_by-choice=yes; "

    .line 318
    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    :cond_c
    iget-boolean v2, v6, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isPgpInline:Z

    .line 323
    .line 324
    if-eqz v2, :cond_d

    .line 325
    .line 326
    const-string v2, "_pgp-inline=yes; "

    .line 327
    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 336
    .line 337
    const-string v2, "Autocrypt-Draft-State"

    .line 338
    .line 339
    invoke-virtual {v0, v2, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_e
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/PgpMessageBuilder;->startOrContinueBuildMessage(Landroid/content/Intent;)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :cond_f
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 348
    .line 349
    const-string v1, "OpenPGP Provider is not ready!"

    .line 350
    .line 351
    invoke-direct {v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/MessageBuilder;->queueMessageBuildException(Lnet/thunderbird/core/common/exception/MessagingException;)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/MessageBuilder;->queueMessageBuildException(Lnet/thunderbird/core/common/exception/MessagingException;)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :cond_10
    const-string p0, "PgpMessageBuilder must have cryptoStatus set before building!"

    .line 364
    .line 365
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    return-void

    .line 369
    :cond_11
    const-string p0, "message can only be built once!"

    .line 370
    .line 371
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    return-void
.end method

.method public final buildMessageOnActivityResult(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/PgpMessageBuilder;->startOrContinueBuildMessage(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "build message from activity result must not be called individually"

    .line 10
    .line 11
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final buildOpenPgpApiIntent(ZZZZ)Landroid/content/Intent;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    new-instance p2, Landroid/content/Intent;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p4, "org.openintents.openpgp.action.SIGN_AND_ENCRYPT"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p4, "org.openintents.openpgp.action.ENCRYPT"

    .line 18
    .line 19
    :goto_0
    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    new-array p4, v1, [J

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-wide v2, p4, v4

    .line 30
    .line 31
    const-string v2, "key_ids"

    .line 32
    .line 33
    invoke-virtual {p2, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    if-nez p3, :cond_3

    .line 37
    .line 38
    iget-object p0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 39
    .line 40
    check-cast p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-array p3, v4, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, [Ljava/lang/String;

    .line 51
    .line 52
    const-string/jumbo p3, "user_ids"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 60
    .line 61
    if-eqz p4, :cond_2

    .line 62
    .line 63
    const-string p0, "org.openintents.openpgp.action.SIGN"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string p0, "org.openintents.openpgp.action.DETACHED_SIGN"

    .line 67
    .line 68
    :goto_1
    invoke-direct {p2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 72
    .line 73
    const-string p0, "sign_key_id"

    .line 74
    .line 75
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    :cond_4
    const-string p0, "ascii_armor"

    .line 79
    .line 80
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    return-object p2
.end method

.method public final createBodyPartFromMessageContent()Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 7
    .line 8
    const/4 v2, 0x7

    .line 9
    invoke-direct {v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .line 38
    .line 39
    iget-object v5, v5, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x0

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 63
    .line 64
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string v7, "content-"

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_1

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    array-length v7, v6

    .line 81
    :goto_1
    if-ge v5, v7, :cond_1

    .line 82
    .line 83
    aget-object v8, v6, v5

    .line 84
    .line 85
    invoke-virtual {v1, v4, v8}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    new-instance v2, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 94
    .line 95
    invoke-direct {v2, v1, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mailstore/LocalFolder$8;Lcom/fsck/k9/mail/Body;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 101
    .line 102
    const-string v3, "Content-Type"

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    array-length v4, v0

    .line 109
    if-lez v4, :cond_3

    .line 110
    .line 111
    aget-object v0, v0, v5

    .line 112
    .line 113
    invoke-virtual {v1, v3, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-boolean v0, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 123
    .line 124
    const-string v3, "X-K9mail-Identity"

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    aget-object v0, v0, v5

    .line 131
    .line 132
    invoke-virtual {v1, v3, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 136
    .line 137
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 138
    .line 139
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->removeHeader(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    return-object v2
.end method

.method public final launchOpenPgpApiIntent(Landroid/content/Intent;Lcom/fsck/k9/mail/internet/MimeBodyPart;ZZZ)Landroid/app/PendingIntent;
    .locals 9

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    const-string v1, "result_code"

    .line 4
    .line 5
    new-instance v2, Lcom/fsck/k9/message/PgpMessageBuilder$1;

    .line 6
    .line 7
    invoke-direct {v2, p5, p2}, Lcom/fsck/k9/message/PgpMessageBuilder$1;-><init>(ZLcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 8
    .line 9
    .line 10
    const-string p5, "7bit"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    :try_start_0
    new-instance p3, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    move-object p4, p5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p4, "8bit"

    .line 23
    .line 24
    :goto_0
    invoke-direct {p3, p4}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p4, "body"

    .line 28
    .line 29
    sget-object v5, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    .line 30
    .line 31
    invoke-static {p4, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    iput-object p4, p3, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {p4}, Ljava/io/File;->deleteOnExit()V

    .line 38
    .line 39
    .line 40
    new-instance p4, Ljava/io/FileOutputStream;

    .line 41
    .line 42
    iget-object v5, p3, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 43
    .line 44
    invoke-direct {p4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    .line 48
    .line 49
    invoke-direct {v5, p4}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p0

    .line 54
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 55
    .line 56
    const-string p2, "could not allocate temp file for storage!"

    .line 57
    .line 58
    invoke-direct {p1, p2, v3, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    move-object p3, v4

    .line 63
    move-object v5, p3

    .line 64
    :goto_1
    iget-object p4, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 65
    .line 66
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    :try_start_1
    const-string v6, "progress_messenger"

    .line 70
    .line 71
    invoke-virtual {p1, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->startPumpThread()Landroid/os/ParcelFileDescriptor;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    iget-object v6, p4, Lorg/openintents/openpgp/util/OpenPgpApi;->mPipeIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    iget-object v7, p4, Lorg/openintents/openpgp/util/OpenPgpApi;->mService:Lorg/openintents/openpgp/IOpenPgpService2;

    .line 87
    .line 88
    invoke-interface {v7, v6}, Lorg/openintents/openpgp/IOpenPgpService2;->createOutputPipe(I)Landroid/os/ParcelFileDescriptor;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 93
    .line 94
    invoke-direct {v8, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 95
    .line 96
    .line 97
    new-instance v7, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;

    .line 98
    .line 99
    invoke-direct {v7, v8, v5}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catch_1
    move-exception p1

    .line 107
    goto :goto_3

    .line 108
    :cond_2
    move v6, v3

    .line 109
    move-object v7, v4

    .line 110
    :goto_2
    invoke-virtual {p4, p1, v2, v6}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz v7, :cond_3

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :goto_3
    const-string p4, "Exception in executeApi call"

    .line 121
    .line 122
    new-array v2, v3, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {p1, p4, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    new-instance p4, Landroid/content/Intent;

    .line 128
    .line 129
    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    new-instance v2, Lorg/openintents/openpgp/OpenPgpError;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {v2, p1}, Lorg/openintents/openpgp/OpenPgpError;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    move-object p1, p4

    .line 148
    :cond_3
    :goto_4
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result p4

    .line 152
    if-eqz p4, :cond_10

    .line 153
    .line 154
    const/4 v0, 0x1

    .line 155
    if-eq p4, v0, :cond_6

    .line 156
    .line 157
    const/4 p0, 0x2

    .line 158
    if-ne p4, p0, :cond_5

    .line 159
    .line 160
    const-string p0, "intent"

    .line 161
    .line 162
    const-class p2, Landroid/app/PendingIntent;

    .line 163
    .line 164
    invoke-static {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Landroid/app/PendingIntent;

    .line 169
    .line 170
    if-eqz p0, :cond_4

    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_4
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 174
    .line 175
    const-string p1, "openpgp api needs user interaction, but returned no pendingintent!"

    .line 176
    .line 177
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_5
    const-string p0, "unreachable code segment reached"

    .line 182
    .line 183
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v4

    .line 187
    :cond_6
    const-string p4, "Content-Type"

    .line 188
    .line 189
    if-nez p3, :cond_c

    .line 190
    .line 191
    iget-object p3, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 192
    .line 193
    check-cast p3, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 194
    .line 195
    iget-boolean v1, p3, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 196
    .line 197
    if-nez v1, :cond_b

    .line 198
    .line 199
    iget-boolean v1, p3, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z

    .line 200
    .line 201
    if-nez v1, :cond_b

    .line 202
    .line 203
    iget-object p3, p3, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 204
    .line 205
    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 206
    .line 207
    if-eq p3, v2, :cond_8

    .line 208
    .line 209
    if-eqz v1, :cond_7

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_7
    const-string p0, "call to mimeBuildSignedMessage while signing isn\'t enabled!"

    .line 213
    .line 214
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-object v4

    .line 218
    :cond_8
    :goto_5
    const-string p3, "detached_signature"

    .line 219
    .line 220
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    if-eqz p3, :cond_a

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/fsck/k9/message/MessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    const-string v2, "signed"

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, p2}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 236
    .line 237
    .line 238
    new-instance p2, Lcom/fsck/k9/mailstore/FileBackedBody;

    .line 239
    .line 240
    invoke-direct {p2, v0, p3, p5}, Lcom/fsck/k9/mailstore/FileBackedBody;-><init>(ILjava/io/Serializable;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string p3, "application/pgp-signature; name=\"signature.asc\""

    .line 244
    .line 245
    invoke-static {p2, p3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {v1, p2}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 250
    .line 251
    .line 252
    iget-object p2, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 253
    .line 254
    invoke-static {p2, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 255
    .line 256
    .line 257
    iget-object p2, v1, Lcom/fsck/k9/mail/internet/MimeMultipart;->boundary:Ljava/lang/String;

    .line 258
    .line 259
    const-string p3, "multipart/signed; boundary=\""

    .line 260
    .line 261
    const-string p5, "\";\r\n  protocol=\"application/pgp-signature\""

    .line 262
    .line 263
    invoke-static {p3, p2, p5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    const-string p3, "signature_micalg"

    .line 268
    .line 269
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result p5

    .line 273
    if-eqz p5, :cond_9

    .line 274
    .line 275
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    new-instance p3, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string p5, "; micalg=\""

    .line 282
    .line 283
    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string p1, "\""

    .line 290
    .line 291
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    goto :goto_6

    .line 303
    :cond_9
    const-string p1, "missing micalg parameter for pgp multipart/signed!"

    .line 304
    .line 305
    new-array p3, v3, [Ljava/lang/Object;

    .line 306
    .line 307
    invoke-static {p1, p3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :goto_6
    iget-object p0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 311
    .line 312
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 313
    .line 314
    invoke-virtual {p0, p4, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_a
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 319
    .line 320
    const-string p1, "didn\'t find expected RESULT_DETACHED_SIGNATURE in api call result"

    .line 321
    .line 322
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw p0

    .line 326
    :cond_b
    const-string p0, "encryption or pgp/inline is enabled, but no output part!"

    .line 327
    .line 328
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    return-object v4

    .line 332
    :cond_c
    iget-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 333
    .line 334
    if-nez p1, :cond_f

    .line 335
    .line 336
    iget-object p1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 337
    .line 338
    check-cast p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 339
    .line 340
    iget-boolean p2, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 341
    .line 342
    if-eqz p2, :cond_f

    .line 343
    .line 344
    if-eqz p2, :cond_e

    .line 345
    .line 346
    iget-boolean p1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z

    .line 347
    .line 348
    if-nez p1, :cond_d

    .line 349
    .line 350
    const-string p1, "quoted-printable"

    .line 351
    .line 352
    invoke-interface {p3, p1}, Lcom/fsck/k9/mail/Body;->setEncoding(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :cond_d
    iget-object p0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 356
    .line 357
    invoke-static {p0, p3}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 358
    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_e
    const-string p0, "call to mimeBuildInlineMessage while pgp/inline isn\'t enabled!"

    .line 362
    .line 363
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    return-object v4

    .line 367
    :cond_f
    invoke-virtual {p0}, Lcom/fsck/k9/message/MessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    const-string p2, "encrypted"

    .line 372
    .line 373
    invoke-virtual {p1, p2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    new-instance p2, Lcom/fsck/k9/mail/internet/TextBody;

    .line 377
    .line 378
    const-string p5, "Version: 1"

    .line 379
    .line 380
    invoke-direct {p2, p5}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-string p5, "application/pgp-encrypted"

    .line 384
    .line 385
    invoke-static {p2, p5}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    invoke-virtual {p1, p2}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 390
    .line 391
    .line 392
    const-string p2, "application/octet-stream; name=\"encrypted.asc\""

    .line 393
    .line 394
    invoke-static {p3, p2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    const-string p3, "inline; filename=\"encrypted.asc\""

    .line 399
    .line 400
    iget-object p5, p2, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 401
    .line 402
    const-string v0, "Content-Disposition"

    .line 403
    .line 404
    invoke-virtual {p5, v0, p3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, p2}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 408
    .line 409
    .line 410
    iget-object p2, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 411
    .line 412
    invoke-static {p2, p1}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 413
    .line 414
    .line 415
    iget-object p1, p1, Lcom/fsck/k9/mail/internet/MimeMultipart;->boundary:Ljava/lang/String;

    .line 416
    .line 417
    const-string p2, "multipart/encrypted; boundary=\""

    .line 418
    .line 419
    const-string p3, "\";\r\n  protocol=\"application/pgp-encrypted\""

    .line 420
    .line 421
    invoke-static {p2, p1, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iget-object p0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 426
    .line 427
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 428
    .line 429
    invoke-virtual {p0, p4, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    :goto_7
    return-object v4

    .line 433
    :cond_10
    const-class p0, Lorg/openintents/openpgp/OpenPgpError;

    .line 434
    .line 435
    invoke-static {p1, v0, p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    check-cast p0, Lorg/openintents/openpgp/OpenPgpError;

    .line 440
    .line 441
    if-nez p0, :cond_11

    .line 442
    .line 443
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 444
    .line 445
    const-string p1, "internal openpgp api error"

    .line 446
    .line 447
    invoke-direct {p0, p1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw p0

    .line 451
    :cond_11
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 452
    .line 453
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 454
    .line 455
    invoke-direct {p1, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw p1
.end method

.method public final maybeAddGossipHeadersToBodyPart()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 14
    .line 15
    check-cast v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    new-array v3, v2, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, [Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 36
    .line 37
    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    array-length v3, v1

    .line 44
    move v4, v2

    .line 45
    :goto_0
    if-ge v4, v3, :cond_1

    .line 46
    .line 47
    aget-object v5, v1, v4

    .line 48
    .line 49
    iget-object v5, v5, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    new-array v1, v1, [Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, [Ljava/lang/String;

    .line 68
    .line 69
    array-length v1, v0

    .line 70
    const/4 v3, 0x2

    .line 71
    if-lt v1, v3, :cond_5

    .line 72
    .line 73
    iget-object v1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->messageContentBodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 74
    .line 75
    array-length v3, v0

    .line 76
    move v4, v2

    .line 77
    :goto_1
    if-ge v4, v3, :cond_5

    .line 78
    .line 79
    aget-object v5, v0, v4

    .line 80
    .line 81
    iget-object v6, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 82
    .line 83
    iget-object v7, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOpenPgpApiInteractor:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v7, Landroid/content/Intent;

    .line 89
    .line 90
    const-string v8, "org.openintents.openpgp.action.GET_KEY"

    .line 91
    .line 92
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v8, "user_id"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-static {v6, v7, v5}, Lcom/mikepenz/fastadapter/VerboseLogger;->getKeyMaterialFromApi(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Ljava/lang/String;)[B

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-nez v6, :cond_2

    .line 106
    .line 107
    const/4 v6, 0x1

    .line 108
    new-array v6, v6, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object v5, v6, v2

    .line 111
    .line 112
    const-string v5, "Failed fetching gossip key material for address %s"

    .line 113
    .line 114
    invoke-static {v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_2
    iget-object v7, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v8, "Autocrypt-Gossip: addr="

    .line 129
    .line 130
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v5, "; keydata="

    .line 137
    .line 138
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 142
    .line 143
    array-length v5, v6

    .line 144
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    new-instance v6, Lokio/ByteString;

    .line 149
    .line 150
    array-length v8, v5

    .line 151
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-direct {v6, v5}, Lokio/ByteString;-><init>([B)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Lokio/ByteString;->base64()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    add-int/lit8 v8, v8, -0x1

    .line 172
    .line 173
    const/16 v9, 0x4c

    .line 174
    .line 175
    invoke-static {v2, v8, v9}, Lokio/Options$Companion;->getProgressionLastElement(III)I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-ltz v8, :cond_4

    .line 180
    .line 181
    move v9, v2

    .line 182
    :goto_2
    const-string v10, "\r\n "

    .line 183
    .line 184
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    add-int/lit8 v10, v9, 0x4c

    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-gt v10, v11, :cond_3

    .line 194
    .line 195
    invoke-virtual {v6, v5, v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    invoke-virtual {v6, v5, v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    :goto_3
    if-eq v9, v8, :cond_4

    .line 207
    .line 208
    move v9, v10

    .line 209
    goto :goto_2

    .line 210
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    const-string v6, "Autocrypt-Gossip"

    .line 222
    .line 223
    iget-object v7, v1, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 224
    .line 225
    invoke-virtual {v7, v6, v5}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_5
    :goto_5
    return-void
.end method

.method public final moveSubjectIntoEncryptedPayload()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 4
    .line 5
    const-string v1, "Subject"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v2, v0

    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->messageContentBodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "; protected-headers=\"v1\""

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v2, v2, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 27
    .line 28
    const-string v4, "Content-Type"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->messageContentBodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    aget-object v0, v0, v3

    .line 37
    .line 38
    iget-object v2, v2, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 39
    .line 40
    invoke-virtual {v2, v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 44
    .line 45
    const-string v0, "[...]"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final startOrContinueBuildMessage(Landroid/content/Intent;)V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2
    .line 3
    :try_start_1
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_5

    .line 5
    .line 6
    :try_start_2
    iget-object v2, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 7
    .line 8
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;
    :try_end_2
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_2 .. :try_end_2} :catch_4

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v2, v3, :cond_1

    .line 13
    .line 14
    :try_start_3
    iget-boolean v1, v1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v4

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v1, v5

    .line 22
    :goto_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z
    :try_end_3
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    move v1, v5

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    move-object p1, v0

    .line 32
    move-object v6, p0

    .line 33
    goto/16 :goto_10

    .line 34
    .line 35
    :cond_2
    move v1, v4

    .line 36
    :goto_2
    :try_start_4
    move-object v2, v0

    .line 37
    check-cast v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 38
    .line 39
    iget-boolean v2, v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z
    :try_end_4
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_4 .. :try_end_4} :catch_5

    .line 40
    .line 41
    if-nez v2, :cond_4

    .line 42
    .line 43
    :try_start_5
    iget-boolean v2, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    move-object v2, v0

    .line 48
    check-cast v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 49
    .line 50
    iget-boolean v2, v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptAllDrafts:Z
    :try_end_5
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move v2, v4

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    :goto_3
    move v2, v5

    .line 58
    :goto_4
    :try_start_6
    check-cast v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 59
    .line 60
    iget-boolean v0, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z
    :try_end_6
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_6 .. :try_end_6} :catch_5

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    :try_start_7
    iget-boolean v0, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 65
    .line 66
    if-nez v0, :cond_5

    .line 67
    .line 68
    move v11, v5

    .line 69
    goto :goto_5

    .line 70
    :cond_5
    move v11, v4

    .line 71
    :goto_5
    if-nez v1, :cond_6

    .line 72
    .line 73
    if-nez v2, :cond_6

    .line 74
    .line 75
    iget-object p1, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/MessageBuilder;->queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    :try_end_7
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_7 .. :try_end_7} :catch_0

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    :try_start_8
    const-string v0, "text/plain"

    .line 82
    .line 83
    iget-object v3, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v0, v3}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_8
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_8 .. :try_end_8} :catch_4

    .line 93
    if-eqz v11, :cond_8

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_7
    :try_start_9
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 99
    .line 100
    const-string v0, "Attachments are not supported in PGP/INLINE format!"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_8
    :goto_6
    if-eqz v2, :cond_a

    .line 107
    .line 108
    iget-boolean v0, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 109
    .line 110
    if-nez v0, :cond_a

    .line 111
    .line 112
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 113
    .line 114
    check-cast v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_9

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_9
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 126
    .line 127
    const-string v0, "Must have recipients to build message!"

    .line 128
    .line 129
    invoke-direct {p1, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
    :try_end_9
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_9 .. :try_end_9} :catch_0

    .line 133
    :cond_a
    :goto_7
    :try_start_a
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->messageContentBodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;
    :try_end_a
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_a .. :try_end_a} :catch_4

    .line 134
    .line 135
    if-nez v0, :cond_c

    .line 136
    .line 137
    :try_start_b
    invoke-virtual {p0}, Lcom/fsck/k9/message/PgpMessageBuilder;->createBodyPartFromMessageContent()Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->messageContentBodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 142
    .line 143
    if-nez v11, :cond_c

    .line 144
    .line 145
    iget-object v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->cryptoStatus:Lcom/fsck/k9/message/CryptoStatus;

    .line 146
    .line 147
    check-cast v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 148
    .line 149
    iget-boolean v0, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptSubject:Z

    .line 150
    .line 151
    if-eqz v0, :cond_b

    .line 152
    .line 153
    if-eqz v2, :cond_b

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/fsck/k9/message/PgpMessageBuilder;->moveSubjectIntoEncryptedPayload()V

    .line 156
    .line 157
    .line 158
    :cond_b
    invoke-virtual {p0}, Lcom/fsck/k9/message/PgpMessageBuilder;->maybeAddGossipHeadersToBodyPart()V

    .line 159
    .line 160
    .line 161
    :cond_c
    if-nez p1, :cond_d

    .line 162
    .line 163
    iget-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 164
    .line 165
    invoke-virtual {p0, v1, v2, p1, v11}, Lcom/fsck/k9/message/PgpMessageBuilder;->buildOpenPgpApiIntent(ZZZZ)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    move-result-object p1
    :try_end_b
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_b .. :try_end_b} :catch_0

    .line 169
    :cond_d
    move-object v7, p1

    .line 170
    :try_start_c
    iget-object v8, p0, Lcom/fsck/k9/message/PgpMessageBuilder;->messageContentBodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;
    :try_end_c
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_c .. :try_end_c} :catch_4

    .line 171
    .line 172
    if-nez v2, :cond_f

    .line 173
    .line 174
    if-eqz v11, :cond_e

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_e
    move v9, v4

    .line 178
    goto :goto_9

    .line 179
    :cond_f
    :goto_8
    move v9, v5

    .line 180
    :goto_9
    if-nez v2, :cond_11

    .line 181
    .line 182
    if-nez v11, :cond_10

    .line 183
    .line 184
    goto :goto_b

    .line 185
    :cond_10
    move v10, v4

    .line 186
    :goto_a
    move-object v6, p0

    .line 187
    goto :goto_c

    .line 188
    :cond_11
    :goto_b
    move v10, v5

    .line 189
    goto :goto_a

    .line 190
    :goto_c
    :try_start_d
    invoke-virtual/range {v6 .. v11}, Lcom/fsck/k9/message/PgpMessageBuilder;->launchOpenPgpApiIntent(Landroid/content/Intent;Lcom/fsck/k9/mail/internet/MimeBodyPart;ZZZ)Landroid/app/PendingIntent;

    .line 191
    .line 192
    .line 193
    move-result-object p0
    :try_end_d
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_d .. :try_end_d} :catch_3

    .line 194
    if-eqz p0, :cond_12

    .line 195
    .line 196
    :try_start_e
    iget-object p1, v6, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;
    :try_end_e
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_e .. :try_end_e} :catch_2

    .line 197
    .line 198
    :try_start_f
    monitor-enter p1
    :try_end_f
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_f .. :try_end_f} :catch_1

    .line 199
    :try_start_10
    iput-object p0, v6, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 200
    .line 201
    iput v5, v6, Lcom/fsck/k9/message/MessageBuilder;->queuedRequestCode:I

    .line 202
    .line 203
    monitor-exit p1

    .line 204
    return-void

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    move-object p0, v0

    .line 207
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 208
    :try_start_11
    throw p0
    :try_end_11
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_11 .. :try_end_11} :catch_1

    .line 209
    :catch_1
    move-exception v0

    .line 210
    goto :goto_e

    .line 211
    :goto_d
    move-object p1, p0

    .line 212
    goto :goto_10

    .line 213
    :catch_2
    move-exception v0

    .line 214
    :goto_e
    move-object p0, v0

    .line 215
    goto :goto_d

    .line 216
    :cond_12
    :try_start_12
    iget-object p0, v6, Lcom/fsck/k9/message/PgpMessageBuilder;->currentProcessedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 217
    .line 218
    invoke-virtual {v6, p0}, Lcom/fsck/k9/message/MessageBuilder;->queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    :try_end_12
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_12 .. :try_end_12} :catch_3

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :catch_3
    move-exception v0

    .line 223
    :goto_f
    move-object p1, v0

    .line 224
    goto :goto_10

    .line 225
    :catch_4
    move-exception v0

    .line 226
    move-object v6, p0

    .line 227
    goto :goto_f

    .line 228
    :catch_5
    move-exception v0

    .line 229
    move-object v6, p0

    .line 230
    goto :goto_e

    .line 231
    :goto_10
    invoke-virtual {v6, p1}, Lcom/fsck/k9/message/MessageBuilder;->queueMessageBuildException(Lnet/thunderbird/core/common/exception/MessagingException;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method
