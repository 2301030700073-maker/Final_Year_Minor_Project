.class public final Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/preferences/SettingsUpgrader;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static upgradeFolderEntry(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "-NONE-"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public final upgrade(Ljava/util/LinkedHashMap;)V
    .locals 11

    .line 1
    iget p0, p0, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    sget-object v1, Lnet/thunderbird/core/preference/AppTheme;->LIGHT:Lnet/thunderbird/core/preference/AppTheme;

    .line 5
    .line 6
    const-string v2, "theme"

    .line 7
    .line 8
    const-string v3, "SSL_TLS_REQUIRED"

    .line 9
    .line 10
    const-string v4, "STARTTLS_REQUIRED"

    .line 11
    .line 12
    const-string v5, "connectionSecurity"

    .line 13
    .line 14
    const-string v6, "NONE"

    .line 15
    .line 16
    const-string v7, "authenticationType"

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x1

    .line 20
    const/4 v10, 0x0

    .line 21
    packed-switch p0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    const-string/jumbo p0, "username"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v1, v0, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v0, v10

    .line 39
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    :cond_1
    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const-string v0, ""

    .line 51
    .line 52
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const-string p0, "password"

    .line 56
    .line 57
    invoke-interface {p1, p0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void

    .line 61
    :pswitch_0
    invoke-virtual {p1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    instance-of v0, p0, Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    check-cast p0, Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move-object p0, v10

    .line 73
    :goto_1
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_5

    .line 84
    .line 85
    :cond_4
    move v8, v9

    .line 86
    :cond_5
    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    instance-of v0, p0, Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    move-object v10, p0

    .line 95
    check-cast v10, Ljava/lang/String;

    .line 96
    .line 97
    :cond_6
    const-string p0, "AUTOMATIC"

    .line 98
    .line 99
    invoke-static {v10, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    const-string v0, "PLAIN"

    .line 104
    .line 105
    if-eqz p0, :cond_8

    .line 106
    .line 107
    if-eqz v8, :cond_7

    .line 108
    .line 109
    :goto_2
    move-object v10, v0

    .line 110
    goto :goto_3

    .line 111
    :cond_7
    const-string v10, "CRAM_MD5"

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_8
    const-string p0, "LOGIN"

    .line 115
    .line 116
    invoke-static {v10, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-eqz p0, :cond_9

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_9
    :goto_3
    invoke-interface {p1, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_1
    const-string p0, "messageViewReturnToList"

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 134
    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    check-cast p0, Ljava/lang/Boolean;

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_a
    move-object p0, v10

    .line 141
    :goto_4
    const-string v0, "messageViewShowNext"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 148
    .line 149
    if-eqz v1, :cond_b

    .line 150
    .line 151
    move-object v10, v0

    .line 152
    check-cast v10, Ljava/lang/Boolean;

    .line 153
    .line 154
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    const-string v1, "messageViewPostDeleteAction"

    .line 161
    .line 162
    if-eqz p0, :cond_c

    .line 163
    .line 164
    const-string p0, "ReturnToMessageList"

    .line 165
    .line 166
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_c
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-eqz p0, :cond_d

    .line 175
    .line 176
    const-string p0, "ShowNextMessage"

    .line 177
    .line 178
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_d
    const-string p0, "ShowPreviousMessage"

    .line 183
    .line 184
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    :goto_5
    return-void

    .line 188
    :pswitch_2
    const-string p0, "registeredNameColor"

    .line 189
    .line 190
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Ljava/lang/Integer;

    .line 195
    .line 196
    if-eqz v0, :cond_e

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    const v1, -0xffff71

    .line 203
    .line 204
    .line 205
    if-ne v0, v1, :cond_e

    .line 206
    .line 207
    const v0, -0xef6c0b

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    :cond_e
    return-void

    .line 218
    :pswitch_3
    const-string p0, "hideSpecialAccounts"

    .line 219
    .line 220
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, Ljava/lang/Boolean;

    .line 225
    .line 226
    if-eqz p0, :cond_f

    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    if-nez p0, :cond_10

    .line 233
    .line 234
    :cond_f
    move v8, v9

    .line 235
    :cond_10
    const-string p0, "showUnifiedInbox"

    .line 236
    .line 237
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_4
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    check-cast p0, Lnet/thunderbird/core/preference/AppTheme;

    .line 250
    .line 251
    if-ne p0, v1, :cond_11

    .line 252
    .line 253
    sget-object p0, Lnet/thunderbird/core/preference/AppTheme;->FOLLOW_SYSTEM:Lnet/thunderbird/core/preference/AppTheme;

    .line 254
    .line 255
    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    :cond_11
    return-void

    .line 259
    :pswitch_5
    const-string p0, "fontSizeMessageViewContent"

    .line 260
    .line 261
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    check-cast p0, Ljava/lang/Integer;

    .line 266
    .line 267
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    if-eq p0, v9, :cond_15

    .line 272
    .line 273
    if-eq p0, v0, :cond_14

    .line 274
    .line 275
    const/4 v0, 0x4

    .line 276
    if-eq p0, v0, :cond_13

    .line 277
    .line 278
    const/4 v0, 0x5

    .line 279
    if-eq p0, v0, :cond_12

    .line 280
    .line 281
    const/16 p0, 0x64

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_12
    const/16 p0, 0xfa

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_13
    const/16 p0, 0xaf

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_14
    const/16 p0, 0x4b

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_15
    const/16 p0, 0x28

    .line 294
    .line 295
    :goto_6
    const-string v0, "fontSizeMessageViewContentPercent"

    .line 296
    .line 297
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_6
    const-string p0, "messageViewTheme"

    .line 306
    .line 307
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    check-cast v0, Lnet/thunderbird/core/preference/SubTheme;

    .line 312
    .line 313
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    check-cast v2, Lnet/thunderbird/core/preference/AppTheme;

    .line 318
    .line 319
    if-ne v2, v1, :cond_16

    .line 320
    .line 321
    sget-object v1, Lnet/thunderbird/core/preference/SubTheme;->LIGHT:Lnet/thunderbird/core/preference/SubTheme;

    .line 322
    .line 323
    if-eq v0, v1, :cond_17

    .line 324
    .line 325
    :cond_16
    sget-object v1, Lnet/thunderbird/core/preference/AppTheme;->DARK:Lnet/thunderbird/core/preference/AppTheme;

    .line 326
    .line 327
    if-ne v2, v1, :cond_18

    .line 328
    .line 329
    sget-object v1, Lnet/thunderbird/core/preference/SubTheme;->DARK:Lnet/thunderbird/core/preference/SubTheme;

    .line 330
    .line 331
    if-ne v0, v1, :cond_18

    .line 332
    .line 333
    :cond_17
    sget-object v0, Lnet/thunderbird/core/preference/SubTheme;->USE_GLOBAL:Lnet/thunderbird/core/preference/SubTheme;

    .line 334
    .line 335
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    :cond_18
    return-void

    .line 339
    :pswitch_7
    const-string p0, "animations"

    .line 340
    .line 341
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 346
    .line 347
    if-eqz v1, :cond_1a

    .line 348
    .line 349
    check-cast v0, Ljava/lang/Boolean;

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_19

    .line 356
    .line 357
    sget-object v0, Lnet/thunderbird/core/preference/AnimationPreference;->ON:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_19
    sget-object v0, Lnet/thunderbird/core/preference/AnimationPreference;->OFF:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 361
    .line 362
    :goto_7
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    :cond_1a
    return-void

    .line 366
    :pswitch_8
    const-string p0, "sendClientId"

    .line 367
    .line 368
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    const-string v0, "sendClientInfo"

    .line 373
    .line 374
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :pswitch_9
    const-string/jumbo p0, "useCompression.WIFI"

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    check-cast p0, Ljava/lang/Boolean;

    .line 386
    .line 387
    const-string/jumbo v0, "useCompression.MOBILE"

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    check-cast v0, Ljava/lang/Boolean;

    .line 395
    .line 396
    const-string/jumbo v1, "useCompression.OTHER"

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, Ljava/lang/Boolean;

    .line 404
    .line 405
    if-eqz p0, :cond_1b

    .line 406
    .line 407
    if-eqz v0, :cond_1b

    .line 408
    .line 409
    if-eqz v1, :cond_1b

    .line 410
    .line 411
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 412
    .line 413
    .line 414
    move-result p0

    .line 415
    if-eqz p0, :cond_1b

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 418
    .line 419
    .line 420
    move-result p0

    .line 421
    if-eqz p0, :cond_1b

    .line 422
    .line 423
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 424
    .line 425
    .line 426
    move-result p0

    .line 427
    if-eqz p0, :cond_1b

    .line 428
    .line 429
    move v8, v9

    .line 430
    :cond_1b
    const-string/jumbo p0, "useCompression"

    .line 431
    .line 432
    .line 433
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :pswitch_a
    const-string p0, "idleRefreshMinutes"

    .line 442
    .line 443
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    check-cast v1, Ljava/lang/Integer;

    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-ne v1, v9, :cond_1c

    .line 454
    .line 455
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    :cond_1c
    return-void

    .line 463
    :pswitch_b
    const-string p0, "archiveFolderSelection"

    .line 464
    .line 465
    const-string v0, "MANUAL"

    .line 466
    .line 467
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    const-string p0, "draftsFolderSelection"

    .line 471
    .line 472
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    const-string p0, "sentFolderSelection"

    .line 476
    .line 477
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    const-string p0, "spamFolderSelection"

    .line 481
    .line 482
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    const-string p0, "trashFolderSelection"

    .line 486
    .line 487
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :pswitch_c
    const-string p0, "archiveFolderName"

    .line 492
    .line 493
    invoke-static {p0, p1}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;->upgradeFolderEntry(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 494
    .line 495
    .line 496
    const-string p0, "autoExpandFolderName"

    .line 497
    .line 498
    invoke-static {p0, p1}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;->upgradeFolderEntry(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 499
    .line 500
    .line 501
    const-string p0, "draftsFolderName"

    .line 502
    .line 503
    invoke-static {p0, p1}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;->upgradeFolderEntry(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 504
    .line 505
    .line 506
    const-string p0, "sentFolderName"

    .line 507
    .line 508
    invoke-static {p0, p1}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;->upgradeFolderEntry(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 509
    .line 510
    .line 511
    const-string p0, "spamFolderName"

    .line 512
    .line 513
    invoke-static {p0, p1}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;->upgradeFolderEntry(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 514
    .line 515
    .line 516
    const-string p0, "trashFolderName"

    .line 517
    .line 518
    invoke-static {p0, p1}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;->upgradeFolderEntry(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :pswitch_d
    const/16 p0, 0xf

    .line 523
    .line 524
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object p0

    .line 528
    const-string v0, "automaticCheckIntervalMinutes"

    .line 529
    .line 530
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    instance-of v2, v1, Ljava/lang/Integer;

    .line 535
    .line 536
    if-eqz v2, :cond_1d

    .line 537
    .line 538
    move-object v10, v1

    .line 539
    check-cast v10, Ljava/lang/Integer;

    .line 540
    .line 541
    :cond_1d
    if-nez v10, :cond_1e

    .line 542
    .line 543
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    goto :goto_8

    .line 547
    :cond_1e
    const/16 v1, 0x3c

    .line 548
    .line 549
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    if-ne v2, v1, :cond_1f

    .line 554
    .line 555
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    :cond_1f
    :goto_8
    return-void

    .line 559
    :pswitch_e
    invoke-virtual {p1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object p0

    .line 563
    instance-of v0, p0, Ljava/lang/String;

    .line 564
    .line 565
    if-eqz v0, :cond_20

    .line 566
    .line 567
    move-object v10, p0

    .line 568
    check-cast v10, Ljava/lang/String;

    .line 569
    .line 570
    :cond_20
    if-eqz v10, :cond_23

    .line 571
    .line 572
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 573
    .line 574
    .line 575
    move-result p0

    .line 576
    sparse-switch p0, :sswitch_data_0

    .line 577
    .line 578
    .line 579
    goto :goto_9

    .line 580
    :sswitch_0
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result p0

    .line 584
    if-nez p0, :cond_21

    .line 585
    .line 586
    goto :goto_9

    .line 587
    :cond_21
    move-object v3, v6

    .line 588
    goto :goto_9

    .line 589
    :sswitch_1
    const-string p0, "SSL_TLS_OPTIONAL"

    .line 590
    .line 591
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result p0

    .line 595
    goto :goto_9

    .line 596
    :sswitch_2
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result p0

    .line 600
    goto :goto_9

    .line 601
    :sswitch_3
    const-string p0, "STARTTLS_OPTIONAL"

    .line 602
    .line 603
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result p0

    .line 607
    if-nez p0, :cond_22

    .line 608
    .line 609
    goto :goto_9

    .line 610
    :cond_22
    move-object v3, v4

    .line 611
    goto :goto_9

    .line 612
    :sswitch_4
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result p0

    .line 616
    if-nez p0, :cond_22

    .line 617
    .line 618
    :cond_23
    :goto_9
    invoke-interface {p1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    nop

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
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

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    :sswitch_data_0
    .sparse-switch
        -0x5db6383b -> :sswitch_4
        -0x4afd187a -> :sswitch_3
        -0x207f0a0a -> :sswitch_2
        -0xdc5ea49 -> :sswitch_1
        0x24a738 -> :sswitch_0
    .end sparse-switch
.end method
