.class public final Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/message/CryptoStatus;


# instance fields
.field public final attachErrorStateOrNull:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

.field public final autocryptPendingIntent:Landroid/app/PendingIntent;

.field public final cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

.field public final displayType:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public final isEncryptAllDrafts:Z

.field public final isEncryptSubject:Z

.field public final isEncryptionEnabled:Z

.field public final isOpenPgpConfigured:Z

.field public final isPgpInlineModeEnabled:Z

.field public final isRecipientsPreferEncryptMutual:Z

.field public final isReplyToEncrypted:Z

.field public final isSenderPreferEncryptMutual:Z

.field public final isSignOnly:Z

.field public final openPgpKeyId:Ljava/lang/Long;

.field public final openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

.field public final recipientAddresses:Ljava/util/ArrayList;

.field public final recipientAddressesAsArray:[Ljava/lang/String;

.field public final recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

.field public final sendErrorStateOrNull:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

.field public final specialModeDisplayType:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;


# direct methods
.method public constructor <init>(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;Ljava/lang/Long;Ljava/util/ArrayList;ZZZZZLcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    move-object/from16 v7, p9

    .line 16
    .line 17
    move-object/from16 v8, p10

    .line 18
    .line 19
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 26
    .line 27
    iput-object v2, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    .line 28
    .line 29
    iput-object v3, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:Ljava/util/ArrayList;

    .line 30
    .line 31
    iput-boolean v4, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 32
    .line 33
    iput-boolean v5, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSenderPreferEncryptMutual:Z

    .line 34
    .line 35
    iput-boolean v6, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isReplyToEncrypted:Z

    .line 36
    .line 37
    move/from16 v9, p7

    .line 38
    .line 39
    iput-boolean v9, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptAllDrafts:Z

    .line 40
    .line 41
    move/from16 v9, p8

    .line 42
    .line 43
    iput-boolean v9, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptSubject:Z

    .line 44
    .line 45
    iput-object v7, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 46
    .line 47
    iput-object v8, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    iget-object v10, v8, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->type:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v10, v9

    .line 56
    :goto_0
    const/4 v11, 0x0

    .line 57
    if-eqz v8, :cond_1

    .line 58
    .line 59
    iget-object v12, v8, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->type:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 60
    .line 61
    iget-boolean v12, v12, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isMutual:Z

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v12, v11

    .line 65
    :goto_1
    iput-boolean v12, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isRecipientsPreferEncryptMutual:Z

    .line 66
    .line 67
    sget-object v13, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 68
    .line 69
    const/4 v14, 0x1

    .line 70
    if-ne v7, v13, :cond_2

    .line 71
    .line 72
    move v13, v14

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move v13, v11

    .line 75
    :goto_2
    sget-object v15, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 76
    .line 77
    if-eq v7, v15, :cond_3

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    .line 80
    .line 81
    .line 82
    move-result v16

    .line 83
    if-eqz v16, :cond_3

    .line 84
    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    if-eqz v12, :cond_3

    .line 88
    .line 89
    move v5, v14

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    move v5, v11

    .line 92
    :goto_3
    if-eq v7, v15, :cond_4

    .line 93
    .line 94
    if-eqz v6, :cond_4

    .line 95
    .line 96
    move v6, v14

    .line 97
    goto :goto_4

    .line 98
    :cond_4
    move v6, v11

    .line 99
    :goto_4
    sget-object v12, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UNCONFIGURED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 100
    .line 101
    if-eq v1, v12, :cond_5

    .line 102
    .line 103
    move v15, v14

    .line 104
    goto :goto_5

    .line 105
    :cond_5
    move v15, v11

    .line 106
    :goto_5
    iput-boolean v15, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isOpenPgpConfigured:Z

    .line 107
    .line 108
    sget-object v15, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 109
    .line 110
    if-ne v7, v15, :cond_6

    .line 111
    .line 112
    move v7, v14

    .line 113
    goto :goto_6

    .line 114
    :cond_6
    move v7, v11

    .line 115
    :goto_6
    iput-boolean v7, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSignOnly:Z

    .line 116
    .line 117
    if-ne v1, v12, :cond_8

    .line 118
    .line 119
    :cond_7
    :goto_7
    move v5, v11

    .line 120
    goto :goto_a

    .line 121
    :cond_8
    if-eqz v7, :cond_9

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_9
    if-eqz v13, :cond_a

    .line 125
    .line 126
    :goto_8
    move v5, v14

    .line 127
    goto :goto_a

    .line 128
    :cond_a
    if-eqz v5, :cond_b

    .line 129
    .line 130
    :goto_9
    goto :goto_8

    .line 131
    :cond_b
    if-eqz v6, :cond_7

    .line 132
    .line 133
    goto :goto_9

    .line 134
    :goto_a
    iput-boolean v5, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z

    .line 135
    .line 136
    new-array v6, v11, [Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, [Ljava/lang/String;

    .line 143
    .line 144
    iput-object v3, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddressesAsArray:[Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    sget-object v6, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 151
    .line 152
    if-eqz v3, :cond_f

    .line 153
    .line 154
    if-eq v3, v14, :cond_e

    .line 155
    .line 156
    const/4 v11, 0x2

    .line 157
    if-eq v3, v11, :cond_d

    .line 158
    .line 159
    const/4 v11, 0x3

    .line 160
    if-eq v3, v11, :cond_d

    .line 161
    .line 162
    const/4 v11, 0x4

    .line 163
    if-ne v3, v11, :cond_c

    .line 164
    .line 165
    move-object v3, v9

    .line 166
    goto :goto_b

    .line 167
    :cond_c
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 168
    .line 169
    .line 170
    throw v9

    .line 171
    :cond_d
    move-object v3, v6

    .line 172
    goto :goto_b

    .line 173
    :cond_e
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 174
    .line 175
    goto :goto_b

    .line 176
    :cond_f
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 177
    .line 178
    :goto_b
    const/4 v11, -0x1

    .line 179
    if-nez v10, :cond_10

    .line 180
    .line 181
    move v13, v11

    .line 182
    goto :goto_c

    .line 183
    :cond_10
    sget-object v13, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 184
    .line 185
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    aget v13, v13, v15

    .line 190
    .line 191
    :goto_c
    if-eq v13, v11, :cond_11

    .line 192
    .line 193
    if-eq v13, v14, :cond_11

    .line 194
    .line 195
    move-object v11, v9

    .line 196
    goto :goto_d

    .line 197
    :cond_11
    move-object v11, v6

    .line 198
    :goto_d
    if-nez v5, :cond_12

    .line 199
    .line 200
    move-object v6, v9

    .line 201
    goto :goto_e

    .line 202
    :cond_12
    if-nez v10, :cond_13

    .line 203
    .line 204
    goto :goto_e

    .line 205
    :cond_13
    iget-boolean v6, v10, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt:Z

    .line 206
    .line 207
    if-nez v6, :cond_14

    .line 208
    .line 209
    sget-object v6, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ENABLED_ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 210
    .line 211
    goto :goto_e

    .line 212
    :cond_14
    iget-boolean v6, v10, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isConfirmed:Z

    .line 213
    .line 214
    if-eqz v6, :cond_15

    .line 215
    .line 216
    sget-object v6, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ENABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 217
    .line 218
    goto :goto_e

    .line 219
    :cond_15
    sget-object v6, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ENABLED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 220
    .line 221
    :goto_e
    if-eqz v7, :cond_16

    .line 222
    .line 223
    sget-object v13, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 224
    .line 225
    goto :goto_f

    .line 226
    :cond_16
    move-object v13, v9

    .line 227
    :goto_f
    if-eqz v10, :cond_17

    .line 228
    .line 229
    iget-boolean v10, v10, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt:Z

    .line 230
    .line 231
    if-ne v10, v14, :cond_17

    .line 232
    .line 233
    sget-object v10, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->AVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 234
    .line 235
    goto :goto_10

    .line 236
    :cond_17
    move-object v10, v9

    .line 237
    :goto_10
    if-nez v3, :cond_1c

    .line 238
    .line 239
    if-nez v11, :cond_1b

    .line 240
    .line 241
    if-nez v6, :cond_1a

    .line 242
    .line 243
    if-nez v13, :cond_19

    .line 244
    .line 245
    if-nez v10, :cond_18

    .line 246
    .line 247
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 248
    .line 249
    goto :goto_11

    .line 250
    :cond_18
    move-object v3, v10

    .line 251
    goto :goto_11

    .line 252
    :cond_19
    move-object v3, v13

    .line 253
    goto :goto_11

    .line 254
    :cond_1a
    move-object v3, v6

    .line 255
    goto :goto_11

    .line 256
    :cond_1b
    move-object v3, v11

    .line 257
    :cond_1c
    :goto_11
    iput-object v3, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->displayType:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 258
    .line 259
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->NONE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 260
    .line 261
    sget-object v6, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->OK:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 262
    .line 263
    if-eq v1, v6, :cond_1d

    .line 264
    .line 265
    goto :goto_12

    .line 266
    :cond_1d
    if-eqz v7, :cond_1e

    .line 267
    .line 268
    if-eqz v4, :cond_1e

    .line 269
    .line 270
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY_PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 271
    .line 272
    goto :goto_12

    .line 273
    :cond_1e
    if-eqz v7, :cond_1f

    .line 274
    .line 275
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 276
    .line 277
    goto :goto_12

    .line 278
    :cond_1f
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    if-eqz v10, :cond_20

    .line 283
    .line 284
    if-eqz v4, :cond_20

    .line 285
    .line 286
    sget-object v3, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 287
    .line 288
    :cond_20
    :goto_12
    iput-object v3, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->specialModeDisplayType:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 289
    .line 290
    if-eqz v8, :cond_21

    .line 291
    .line 292
    iget-object v3, v8, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->intent:Landroid/app/PendingIntent;

    .line 293
    .line 294
    goto :goto_13

    .line 295
    :cond_21
    move-object v3, v9

    .line 296
    :goto_13
    iput-object v3, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->autocryptPendingIntent:Landroid/app/PendingIntent;

    .line 297
    .line 298
    if-eq v1, v6, :cond_22

    .line 299
    .line 300
    sget-object v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->PROVIDER_ERROR:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    .line 301
    .line 302
    goto :goto_14

    .line 303
    :cond_22
    if-nez v2, :cond_24

    .line 304
    .line 305
    if-nez v5, :cond_23

    .line 306
    .line 307
    if-eqz v7, :cond_24

    .line 308
    .line 309
    :cond_23
    sget-object v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->KEY_CONFIG_ERROR:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    .line 310
    .line 311
    goto :goto_14

    .line 312
    :cond_24
    if-eqz v5, :cond_25

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-nez v2, :cond_25

    .line 319
    .line 320
    sget-object v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;->ENABLED_ERROR:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    .line 321
    .line 322
    goto :goto_14

    .line 323
    :cond_25
    move-object v2, v9

    .line 324
    :goto_14
    iput-object v2, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->sendErrorStateOrNull:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    .line 325
    .line 326
    if-ne v1, v12, :cond_26

    .line 327
    .line 328
    goto :goto_15

    .line 329
    :cond_26
    if-eqz v4, :cond_27

    .line 330
    .line 331
    sget-object v9, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;->IS_INLINE:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 332
    .line 333
    :cond_27
    :goto_15
    iput-object v9, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->attachErrorStateOrNull:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 334
    .line 335
    return-void
.end method


# virtual methods
.method public final allRecipientsCanEncrypt()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->type:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-boolean v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 41
    .line 42
    iget-boolean v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-boolean v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSenderPreferEncryptMutual:Z

    .line 48
    .line 49
    iget-boolean v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSenderPreferEncryptMutual:Z

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-boolean v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isReplyToEncrypted:Z

    .line 55
    .line 56
    iget-boolean v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isReplyToEncrypted:Z

    .line 57
    .line 58
    if-eq v0, v1, :cond_7

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_7
    iget-boolean v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptAllDrafts:Z

    .line 62
    .line 63
    iget-boolean v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptAllDrafts:Z

    .line 64
    .line 65
    if-eq v0, v1, :cond_8

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_8
    iget-boolean v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptSubject:Z

    .line 69
    .line 70
    iget-boolean v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptSubject:Z

    .line 71
    .line 72
    if-eq v0, v1, :cond_9

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_9
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 76
    .line 77
    iget-object v1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 78
    .line 79
    if-eq v0, v1, :cond_a

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_a
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 85
    .line 86
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_b

    .line 91
    .line 92
    :goto_0
    const/4 p0, 0x0

    .line 93
    return p0

    .line 94
    :cond_b
    :goto_1
    const/4 p0, 0x1

    .line 95
    return p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    :goto_0
    add-int/2addr v0, v3

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v3, v0, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/ArrayList;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-boolean v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 30
    .line 31
    const/16 v4, 0x4d5

    .line 32
    .line 33
    const/16 v5, 0x4cf

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    move v3, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v3, v4

    .line 40
    :goto_1
    add-int/2addr v0, v3

    .line 41
    mul-int/2addr v0, v1

    .line 42
    iget-boolean v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSenderPreferEncryptMutual:Z

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    move v3, v5

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v3, v4

    .line 49
    :goto_2
    add-int/2addr v0, v3

    .line 50
    mul-int/2addr v0, v1

    .line 51
    iget-boolean v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isReplyToEncrypted:Z

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    move v3, v5

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    move v3, v4

    .line 58
    :goto_3
    add-int/2addr v0, v3

    .line 59
    mul-int/2addr v0, v1

    .line 60
    iget-boolean v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptAllDrafts:Z

    .line 61
    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    move v3, v5

    .line 65
    goto :goto_4

    .line 66
    :cond_4
    move v3, v4

    .line 67
    :goto_4
    add-int/2addr v0, v3

    .line 68
    mul-int/2addr v0, v1

    .line 69
    iget-boolean v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptSubject:Z

    .line 70
    .line 71
    if-eqz v3, :cond_5

    .line 72
    .line 73
    move v4, v5

    .line 74
    :cond_5
    add-int/2addr v0, v4

    .line 75
    mul-int/2addr v0, v1

    .line 76
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    add-int/2addr v3, v0

    .line 83
    mul-int/2addr v3, v1

    .line 84
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 85
    .line 86
    if-nez p0, :cond_6

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_6
    invoke-virtual {p0}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :goto_5
    add-int/2addr v3, v2

    .line 94
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ComposeCryptoStatus(openPgpProviderState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", openPgpKeyId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->openPgpKeyId:Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", recipientAddresses="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddresses:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isPgpInlineModeEnabled="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isSenderPreferEncryptMutual="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", isReplyToEncrypted="

    .line 49
    .line 50
    const-string v2, ", isEncryptAllDrafts="

    .line 51
    .line 52
    iget-boolean v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSenderPreferEncryptMutual:Z

    .line 53
    .line 54
    iget-boolean v4, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isReplyToEncrypted:Z

    .line 55
    .line 56
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, ", isEncryptSubject="

    .line 60
    .line 61
    const-string v2, ", cryptoMode="

    .line 62
    .line 63
    iget-boolean v3, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptAllDrafts:Z

    .line 64
    .line 65
    iget-boolean v4, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptSubject:Z

    .line 66
    .line 67
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->cryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", recipientAutocryptStatus="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, ")"

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method
