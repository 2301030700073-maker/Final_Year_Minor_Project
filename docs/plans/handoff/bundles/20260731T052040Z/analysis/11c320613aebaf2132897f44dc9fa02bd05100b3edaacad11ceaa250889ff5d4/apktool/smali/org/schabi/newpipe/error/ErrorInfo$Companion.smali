.class public final Lorg/schabi/newpipe/error/ErrorInfo$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;
    .locals 5

    .line 1
    instance-of v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 2
    .line 3
    const v1, 0x7f1303d7

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    instance-of v4, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 17
    .line 18
    if-eqz v4, :cond_3

    .line 19
    .line 20
    check-cast v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 21
    .line 22
    iget p0, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 23
    .line 24
    const/16 p1, 0x193

    .line 25
    .line 26
    if-ne p0, p1, :cond_2

    .line 27
    .line 28
    sget-object p0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 29
    .line 30
    iget p0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, p0, :cond_1

    .line 40
    .line 41
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 42
    .line 43
    const p1, 0x7f130547

    .line 44
    .line 45
    .line 46
    new-array p2, v2, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_1
    :goto_0
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 53
    .line 54
    const p1, 0x7f1303d3

    .line 55
    .line 56
    .line 57
    new-array p2, v2, [Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_2
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 64
    .line 65
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    filled-new-array {p0}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const p2, 0x7f1303d4

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p0, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_3
    instance-of v4, v3, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    .line 81
    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    check-cast v3, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    instance-of v3, v3, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 91
    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :cond_4
    iget p0, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    .line 100
    .line 101
    if-nez p0, :cond_5

    .line 102
    .line 103
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 104
    .line 105
    new-array p1, v2, [Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {p0, p1, v1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_5
    const/4 p1, 0x2

    .line 112
    if-ne p0, p1, :cond_6

    .line 113
    .line 114
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 115
    .line 116
    const p1, 0x7f1303d6

    .line 117
    .line 118
    .line 119
    new-array p2, v2, [Ljava/lang/String;

    .line 120
    .line 121
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_6
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 126
    .line 127
    const p1, 0x7f1303d8

    .line 128
    .line 129
    .line 130
    new-array p2, v2, [Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_7
    instance-of v0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$StreamInfoLoadException;

    .line 137
    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    check-cast p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$StreamInfoLoadException;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getMessage(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/Integer;)Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :cond_8
    instance-of v0, p0, Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException;

    .line 152
    .line 153
    if-eqz v0, :cond_9

    .line 154
    .line 155
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 156
    .line 157
    new-array p1, v2, [Ljava/lang/String;

    .line 158
    .line 159
    invoke-direct {p0, p1, v1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    return-object p0

    .line 163
    :cond_9
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    .line 164
    .line 165
    if-eqz v0, :cond_c

    .line 166
    .line 167
    check-cast p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    if-eqz p0, :cond_b

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_a

    .line 180
    .line 181
    const/4 p0, 0x0

    .line 182
    :cond_a
    if-eqz p0, :cond_b

    .line 183
    .line 184
    new-instance p1, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 185
    .line 186
    sget-object v0, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getServiceName(Ljava/lang/Integer;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    filled-new-array {p2, p0}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    const p2, 0x7f13001d

    .line 200
    .line 201
    .line 202
    invoke-direct {p1, p0, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    return-object p1

    .line 206
    :cond_b
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 207
    .line 208
    const p1, 0x7f13001c

    .line 209
    .line 210
    .line 211
    new-array p2, v2, [Ljava/lang/String;

    .line 212
    .line 213
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    return-object p0

    .line 217
    :cond_c
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;

    .line 218
    .line 219
    if-eqz v0, :cond_d

    .line 220
    .line 221
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 222
    .line 223
    const p1, 0x7f13042b

    .line 224
    .line 225
    .line 226
    new-array p2, v2, [Ljava/lang/String;

    .line 227
    .line 228
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    return-object p0

    .line 232
    :cond_d
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;

    .line 233
    .line 234
    if-eqz v0, :cond_e

    .line 235
    .line 236
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 237
    .line 238
    const p1, 0x7f1301f5

    .line 239
    .line 240
    .line 241
    new-array p2, v2, [Ljava/lang/String;

    .line 242
    .line 243
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 244
    .line 245
    .line 246
    return-object p0

    .line 247
    :cond_e
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    .line 248
    .line 249
    if-eqz v0, :cond_f

    .line 250
    .line 251
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 252
    .line 253
    const p1, 0x7f1303a4

    .line 254
    .line 255
    .line 256
    new-array p2, v2, [Ljava/lang/String;

    .line 257
    .line 258
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    return-object p0

    .line 262
    :cond_f
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/PrivateContentException;

    .line 263
    .line 264
    if-eqz v0, :cond_10

    .line 265
    .line 266
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 267
    .line 268
    const p1, 0x7f1303fe

    .line 269
    .line 270
    .line 271
    new-array p2, v2, [Ljava/lang/String;

    .line 272
    .line 273
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 274
    .line 275
    .line 276
    return-object p0

    .line 277
    :cond_10
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/SoundCloudGoPlusContentException;

    .line 278
    .line 279
    if-eqz v0, :cond_11

    .line 280
    .line 281
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 282
    .line 283
    const p1, 0x7f1304bc

    .line 284
    .line 285
    .line 286
    new-array p2, v2, [Ljava/lang/String;

    .line 287
    .line 288
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    return-object p0

    .line 292
    :cond_11
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/UnsupportedContentInCountryException;

    .line 293
    .line 294
    if-eqz v0, :cond_12

    .line 295
    .line 296
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 297
    .line 298
    const p1, 0x7f130514

    .line 299
    .line 300
    .line 301
    new-array p2, v2, [Ljava/lang/String;

    .line 302
    .line 303
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    return-object p0

    .line 307
    :cond_12
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;

    .line 308
    .line 309
    if-eqz v0, :cond_13

    .line 310
    .line 311
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 312
    .line 313
    const p1, 0x7f130546

    .line 314
    .line 315
    .line 316
    new-array p2, v2, [Ljava/lang/String;

    .line 317
    .line 318
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    return-object p0

    .line 322
    :cond_13
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/SignInConfirmNotBotException;

    .line 323
    .line 324
    if-eqz v0, :cond_14

    .line 325
    .line 326
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 327
    .line 328
    invoke-static {p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion;->getServiceName(Ljava/lang/Integer;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    const-string p2, "https://newpipe.net/FAQ/#ip-banned-youtube"

    .line 333
    .line 334
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    const p2, 0x7f1304b6

    .line 339
    .line 340
    .line 341
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 342
    .line 343
    .line 344
    return-object p0

    .line 345
    :cond_14
    instance-of p2, p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 346
    .line 347
    if-eqz p2, :cond_15

    .line 348
    .line 349
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 350
    .line 351
    const p1, 0x7f1300b8

    .line 352
    .line 353
    .line 354
    new-array p2, v2, [Ljava/lang/String;

    .line 355
    .line 356
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    return-object p0

    .line 360
    :cond_15
    instance-of p2, p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    .line 361
    .line 362
    if-eqz p2, :cond_16

    .line 363
    .line 364
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 365
    .line 366
    const p1, 0x7f1300b9

    .line 367
    .line 368
    .line 369
    new-array p2, v2, [Ljava/lang/String;

    .line 370
    .line 371
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    return-object p0

    .line 375
    :cond_16
    instance-of p2, p0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    .line 376
    .line 377
    if-eqz p2, :cond_17

    .line 378
    .line 379
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 380
    .line 381
    const p1, 0x7f130410

    .line 382
    .line 383
    .line 384
    new-array p2, v2, [Ljava/lang/String;

    .line 385
    .line 386
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 387
    .line 388
    .line 389
    return-object p0

    .line 390
    :cond_17
    if-eqz p0, :cond_18

    .line 391
    .line 392
    const/4 p2, 0x1

    .line 393
    new-array v0, p2, [Ljava/lang/Class;

    .line 394
    .line 395
    const-class v1, Ljava/io/IOException;

    .line 396
    .line 397
    aput-object v1, v0, v2

    .line 398
    .line 399
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    check-cast v0, [Ljava/lang/Class;

    .line 404
    .line 405
    invoke-static {p0, p2, v0}, Lkotlin/text/CharsKt;->hasCause(Ljava/lang/Throwable;Z[Ljava/lang/Class;)Z

    .line 406
    .line 407
    .line 408
    move-result p2

    .line 409
    if-eqz p2, :cond_18

    .line 410
    .line 411
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 412
    .line 413
    const p1, 0x7f130349

    .line 414
    .line 415
    .line 416
    new-array p2, v2, [Ljava/lang/String;

    .line 417
    .line 418
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 419
    .line 420
    .line 421
    return-object p0

    .line 422
    :cond_18
    instance-of p0, p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 423
    .line 424
    if-eqz p0, :cond_19

    .line 425
    .line 426
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 427
    .line 428
    const p1, 0x7f1303a5

    .line 429
    .line 430
    .line 431
    new-array p2, v2, [Ljava/lang/String;

    .line 432
    .line 433
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 434
    .line 435
    .line 436
    return-object p0

    .line 437
    :cond_19
    sget-object p0, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    .line 438
    .line 439
    if-ne p1, p0, :cond_1a

    .line 440
    .line 441
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 442
    .line 443
    const p1, 0x7f13003b

    .line 444
    .line 445
    .line 446
    new-array p2, v2, [Ljava/lang/String;

    .line 447
    .line 448
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 449
    .line 450
    .line 451
    return-object p0

    .line 452
    :cond_1a
    sget-object p0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENTS:Lorg/schabi/newpipe/error/UserAction;

    .line 453
    .line 454
    if-ne p1, p0, :cond_1b

    .line 455
    .line 456
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 457
    .line 458
    const p1, 0x7f13016f

    .line 459
    .line 460
    .line 461
    new-array p2, v2, [Ljava/lang/String;

    .line 462
    .line 463
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 464
    .line 465
    .line 466
    return-object p0

    .line 467
    :cond_1b
    sget-object p0, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_CHANGE:Lorg/schabi/newpipe/error/UserAction;

    .line 468
    .line 469
    if-ne p1, p0, :cond_1c

    .line 470
    .line 471
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 472
    .line 473
    const p1, 0x7f1304dc

    .line 474
    .line 475
    .line 476
    new-array p2, v2, [Ljava/lang/String;

    .line 477
    .line 478
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 479
    .line 480
    .line 481
    return-object p0

    .line 482
    :cond_1c
    sget-object p0, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_UPDATE:Lorg/schabi/newpipe/error/UserAction;

    .line 483
    .line 484
    if-ne p1, p0, :cond_1d

    .line 485
    .line 486
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 487
    .line 488
    const p1, 0x7f1304dd

    .line 489
    .line 490
    .line 491
    new-array p2, v2, [Ljava/lang/String;

    .line 492
    .line 493
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 494
    .line 495
    .line 496
    return-object p0

    .line 497
    :cond_1d
    sget-object p0, Lorg/schabi/newpipe/error/UserAction;->LOAD_IMAGE:Lorg/schabi/newpipe/error/UserAction;

    .line 498
    .line 499
    if-ne p1, p0, :cond_1e

    .line 500
    .line 501
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 502
    .line 503
    const p1, 0x7f1300c5

    .line 504
    .line 505
    .line 506
    new-array p2, v2, [Ljava/lang/String;

    .line 507
    .line 508
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 509
    .line 510
    .line 511
    return-object p0

    .line 512
    :cond_1e
    sget-object p0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    .line 513
    .line 514
    if-ne p1, p0, :cond_1f

    .line 515
    .line 516
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 517
    .line 518
    const p1, 0x7f1300c6

    .line 519
    .line 520
    .line 521
    new-array p2, v2, [Ljava/lang/String;

    .line 522
    .line 523
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 524
    .line 525
    .line 526
    return-object p0

    .line 527
    :cond_1f
    new-instance p0, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 528
    .line 529
    const p1, 0x7f13016c

    .line 530
    .line 531
    .line 532
    new-array p2, v2, [Ljava/lang/String;

    .line 533
    .line 534
    invoke-direct {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;-><init>([Ljava/lang/String;I)V

    .line 535
    .line 536
    .line 537
    return-object p0
.end method

.method public static getServiceName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 22
    .line 23
    iget v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    :goto_1
    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object p0, v1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 41
    .line 42
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    const-string p0, "<unknown_service>"

    .line 46
    .line 47
    return-object p0
.end method

.method public static isContentSurelyNotAvailable(Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/AgeRestrictedContentException;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/GeographicRestrictionException;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/PaidContentException;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/PrivateContentException;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/SoundCloudGoPlusContentException;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    instance-of v0, p0, Lorg/schabi/newpipe/extractor/exceptions/UnsupportedContentInCountryException;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    instance-of p0, p0, Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 40
    return p0
.end method
