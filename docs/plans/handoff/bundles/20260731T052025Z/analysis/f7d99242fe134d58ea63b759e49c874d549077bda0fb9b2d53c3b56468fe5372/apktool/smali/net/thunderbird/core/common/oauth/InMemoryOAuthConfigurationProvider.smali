.class public final Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final hostnameMapping:Lkotlin/collections/builders/MapBuilder;


# direct methods
.method public constructor <init>(Lapp/k9mail/auth/K9OAuthConfigurationFactory;)V
    .locals 22

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "imap.aol.com"

    .line 10
    .line 11
    const-string v2, "smtp.aol.com"

    .line 12
    .line 13
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 22
    .line 23
    const-string v8, "mail-w"

    .line 24
    .line 25
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v6, "https://api.login.aol.com/oauth2/get_token"

    .line 30
    .line 31
    const-string v7, "com.fsck.k9://oauth2redirect"

    .line 32
    .line 33
    const-string v3, "dj0yJmk9dUNqYXZhYWxOYkdRJmQ9WVdrOU1YQnZVRFZoY1ZrbWNHbzlNQT09JnM9Y29uc3VtZXJzZWNyZXQmc3Y9MCZ4PWIw"

    .line 34
    .line 35
    const-string v5, "https://api.login.aol.com/oauth2/request_auth"

    .line 36
    .line 37
    invoke-direct/range {v2 .. v7}, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lkotlin/Pair;

    .line 41
    .line 42
    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "imap.fastmail.com"

    .line 46
    .line 47
    const-string v2, "smtp.fastmail.com"

    .line 48
    .line 49
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v9, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 58
    .line 59
    const-string v2, "https://www.fastmail.com/dev/protocol-imap"

    .line 60
    .line 61
    const-string v4, "https://www.fastmail.com/dev/protocol-smtp"

    .line 62
    .line 63
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    const-string v13, "https://api.fastmail.com/oauth/refresh"

    .line 72
    .line 73
    const-string v14, "com.fsck.k9://oauth2redirect"

    .line 74
    .line 75
    const-string v10, "353641ae"

    .line 76
    .line 77
    const-string v12, "https://api.fastmail.com/oauth/authorize"

    .line 78
    .line 79
    invoke-direct/range {v9 .. v14}, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lkotlin/Pair;

    .line 83
    .line 84
    invoke-direct {v2, v1, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "smtp.gmail.com"

    .line 88
    .line 89
    const-string v4, "smtp.googlemail.com"

    .line 90
    .line 91
    const-string v5, "imap.gmail.com"

    .line 92
    .line 93
    const-string v6, "imap.googlemail.com"

    .line 94
    .line 95
    filled-new-array {v5, v6, v1, v4}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v9, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 104
    .line 105
    const-string v4, "https://mail.google.com/"

    .line 106
    .line 107
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    const-string v13, "https://oauth2.googleapis.com/token"

    .line 112
    .line 113
    const-string v14, "com.fsck.k9:/oauth2redirect"

    .line 114
    .line 115
    const-string v10, "262622259280-hhmh92rhklkg2k1tjil69epo0o9a12jm.apps.googleusercontent.com"

    .line 116
    .line 117
    const-string v12, "https://accounts.google.com/o/oauth2/v2/auth"

    .line 118
    .line 119
    invoke-direct/range {v9 .. v14}, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v4, Lkotlin/Pair;

    .line 123
    .line 124
    invoke-direct {v4, v1, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const-string v1, "smtp.office365.com"

    .line 128
    .line 129
    const-string v5, "smtp-mail.outlook.com"

    .line 130
    .line 131
    const-string v6, "outlook.office365.com"

    .line 132
    .line 133
    filled-new-array {v6, v1, v5}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    new-instance v9, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 142
    .line 143
    const-string v14, "https://outlook.office.com/SMTP.Send"

    .line 144
    .line 145
    const-string v15, "offline_access"

    .line 146
    .line 147
    const-string v10, "profile"

    .line 148
    .line 149
    const-string v11, "openid"

    .line 150
    .line 151
    const-string v12, "email"

    .line 152
    .line 153
    const-string v13, "https://outlook.office.com/IMAP.AccessAsUser.All"

    .line 154
    .line 155
    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    const-string v13, "https://login.microsoftonline.com/common/oauth2/v2.0/token"

    .line 164
    .line 165
    const-string v14, "msauth://com.fsck.k9/Dx8yUsuhyU3dYYba1aA16Wxu5eM%3D"

    .line 166
    .line 167
    const-string v10, "e647013a-ada4-4114-b419-e43d250f99c5"

    .line 168
    .line 169
    const-string v12, "https://login.microsoftonline.com/common/oauth2/v2.0/authorize"

    .line 170
    .line 171
    invoke-direct/range {v9 .. v14}, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v5, Lkotlin/Pair;

    .line 175
    .line 176
    invoke-direct {v5, v1, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    const-string v1, "imap.mail.yahoo.com"

    .line 180
    .line 181
    const-string v6, "smtp.mail.yahoo.com"

    .line 182
    .line 183
    filled-new-array {v1, v6}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    new-instance v9, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 192
    .line 193
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    const-string v13, "https://api.login.yahoo.com/oauth2/get_token"

    .line 198
    .line 199
    const-string v14, "com.fsck.k9://oauth2redirect"

    .line 200
    .line 201
    const-string v10, "dj0yJmk9aHNUb3d2MW5TQnpRJmQ9WVdrOWVYbHpaRWM0YkdnbWNHbzlNQT09JnM9Y29uc3VtZXJzZWNyZXQmc3Y9MCZ4PWIz"

    .line 202
    .line 203
    const-string v12, "https://api.login.yahoo.com/oauth2/request_auth"

    .line 204
    .line 205
    invoke-direct/range {v9 .. v14}, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    new-instance v6, Lkotlin/Pair;

    .line 209
    .line 210
    invoke-direct {v6, v1, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    const-string v1, "mail.tb.pro"

    .line 214
    .line 215
    const-string v7, "mail.thundermail.com"

    .line 216
    .line 217
    filled-new-array {v1, v7}, [Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    new-instance v7, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 226
    .line 227
    const-string v13, "openid"

    .line 228
    .line 229
    const-string v14, "profile"

    .line 230
    .line 231
    const-string v15, "email"

    .line 232
    .line 233
    const-string v8, "offline_access"

    .line 234
    .line 235
    filled-new-array {v13, v14, v15, v8}, [Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-static {v9}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    const-string v11, "https://auth.tb.pro/realms/tbpro/protocol/openid-connect/token"

    .line 244
    .line 245
    const-string v12, "com.fsck.k9://oauth2redirect"

    .line 246
    .line 247
    move-object v10, v8

    .line 248
    const-string v8, "mobile-android-k9mail"

    .line 249
    .line 250
    move-object/from16 v16, v10

    .line 251
    .line 252
    const-string v10, "https://auth.tb.pro/realms/tbpro/protocol/openid-connect/auth"

    .line 253
    .line 254
    move-object/from16 p1, v2

    .line 255
    .line 256
    move-object/from16 v2, v16

    .line 257
    .line 258
    invoke-direct/range {v7 .. v12}, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    new-instance v8, Lkotlin/Pair;

    .line 262
    .line 263
    invoke-direct {v8, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    const-string v1, "mail.stage-thundermail.com"

    .line 267
    .line 268
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    new-instance v16, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 273
    .line 274
    filled-new-array {v13, v14, v15, v2}, [Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v18

    .line 282
    const-string v20, "https://auth-stage.tb.pro/realms/tbpro/protocol/openid-connect/token"

    .line 283
    .line 284
    const-string v21, "com.fsck.k9://oauth2redirect"

    .line 285
    .line 286
    const-string v17, "mobile-android-k9mail"

    .line 287
    .line 288
    const-string v19, "https://auth-stage.tb.pro/realms/tbpro/protocol/openid-connect/auth"

    .line 289
    .line 290
    invoke-direct/range {v16 .. v21}, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    move-object/from16 v2, v16

    .line 294
    .line 295
    new-instance v7, Lkotlin/Pair;

    .line 296
    .line 297
    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    const/4 v1, 0x7

    .line 301
    new-array v1, v1, [Lkotlin/Pair;

    .line 302
    .line 303
    const/4 v2, 0x0

    .line 304
    aput-object v3, v1, v2

    .line 305
    .line 306
    const/4 v2, 0x1

    .line 307
    aput-object p1, v1, v2

    .line 308
    .line 309
    const/4 v2, 0x2

    .line 310
    aput-object v4, v1, v2

    .line 311
    .line 312
    const/4 v2, 0x3

    .line 313
    aput-object v5, v1, v2

    .line 314
    .line 315
    const/4 v2, 0x4

    .line 316
    aput-object v6, v1, v2

    .line 317
    .line 318
    const/4 v2, 0x5

    .line 319
    aput-object v8, v1, v2

    .line 320
    .line 321
    const/4 v2, 0x6

    .line 322
    aput-object v7, v1, v2

    .line 323
    .line 324
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eqz v2, :cond_1

    .line 341
    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    check-cast v2, Ljava/util/Map$Entry;

    .line 347
    .line 348
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    check-cast v3, Ljava/util/List;

    .line 353
    .line 354
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    check-cast v2, Lnet/thunderbird/core/common/oauth/OAuthConfiguration;

    .line 359
    .line 360
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_0

    .line 369
    .line 370
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    check-cast v4, Ljava/lang/String;

    .line 375
    .line 376
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 377
    .line 378
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v4, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    move-object/from16 v1, p0

    .line 394
    .line 395
    iput-object v0, v1, Lnet/thunderbird/core/common/oauth/InMemoryOAuthConfigurationProvider;->hostnameMapping:Lkotlin/collections/builders/MapBuilder;

    .line 396
    .line 397
    return-void
.end method
