.class public final synthetic Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/eygraber/uri/uris/StringUri;


# direct methods
.method public synthetic constructor <init>(Lcom/eygraber/uri/uris/StringUri;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/uris/StringUri;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/16 v3, 0x3f

    .line 7
    .line 8
    const/16 v4, 0x2f

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, -0x1

    .line 14
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/uris/StringUri;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->fragmentPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_0
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->fragmentPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 33
    .line 34
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->cachedFsi$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Number;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sget-object v1, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 58
    .line 59
    if-ne v0, v8, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 63
    .line 64
    add-int/2addr v0, v7

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    :goto_0
    invoke-static {v6}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_2
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->queryPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 75
    .line 76
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_3
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->queryPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 88
    .line 89
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_4
    iget-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/StringUri;->getCachedSsi()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-static {v0, v3, v1, v2}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ne v1, v8, :cond_1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->cachedFsi$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 114
    .line 115
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/lang/Number;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-ne p0, v8, :cond_2

    .line 126
    .line 127
    add-int/2addr v1, v7

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    if-ge p0, v1, :cond_3

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    add-int/2addr v1, v7

    .line 137
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    :goto_1
    sget-object p0, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 142
    .line 143
    invoke-static {v6}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :pswitch_5
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->pathPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 149
    .line 150
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    check-cast p0, Lcom/eygraber/uri/parts/PathPart;

    .line 155
    .line 156
    iget-object p0, p0, Lcom/eygraber/uri/parts/PathPart;->pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 157
    .line 158
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    check-cast p0, Lcom/eygraber/uri/PathSegments;

    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_6
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->pathPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 166
    .line 167
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Lcom/eygraber/uri/parts/PathPart;

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :pswitch_7
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->pathPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 179
    .line 180
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    check-cast p0, Lcom/eygraber/uri/parts/PathPart;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :pswitch_8
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/StringUri;->getCachedSsi()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 196
    .line 197
    if-le v0, v8, :cond_6

    .line 198
    .line 199
    add-int/lit8 v1, v0, 0x1

    .line 200
    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-ne v1, v2, :cond_4

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eq v1, v4, :cond_5

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_5
    invoke-static {p0, v0}, Landroidx/room/util/RelationUtil;->parsePath(Ljava/lang/String;I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    goto :goto_2

    .line 220
    :cond_6
    invoke-static {p0, v0}, Landroidx/room/util/RelationUtil;->parsePath(Ljava/lang/String;I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    :goto_2
    sget-object p0, Lcom/eygraber/uri/parts/PathPart;->NULL:Lcom/eygraber/uri/parts/PathPart;

    .line 225
    .line 226
    invoke-static {v6}, Landroidx/core/util/DebugUtils;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/PathPart;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :pswitch_9
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->authorityPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 232
    .line 233
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    return-object p0

    .line 244
    :pswitch_a
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->authorityPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 245
    .line 246
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    return-object p0

    .line 257
    :pswitch_b
    iget-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/StringUri;->getCachedSsi()I

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    add-int/lit8 v5, p0, 0x2

    .line 271
    .line 272
    if-le v2, v5, :cond_8

    .line 273
    .line 274
    add-int/lit8 v7, p0, 0x1

    .line 275
    .line 276
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-ne v7, v4, :cond_8

    .line 281
    .line 282
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    if-ne v5, v4, :cond_8

    .line 287
    .line 288
    add-int/lit8 p0, p0, 0x3

    .line 289
    .line 290
    move v5, p0

    .line 291
    :goto_3
    if-ge v5, v2, :cond_7

    .line 292
    .line 293
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    if-eq v6, v4, :cond_7

    .line 298
    .line 299
    const/16 v7, 0x5c

    .line 300
    .line 301
    if-eq v6, v7, :cond_7

    .line 302
    .line 303
    if-eq v6, v1, :cond_7

    .line 304
    .line 305
    if-eq v6, v3, :cond_7

    .line 306
    .line 307
    add-int/lit8 v5, v5, 0x1

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_7
    invoke-virtual {v0, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    :cond_8
    sget-object p0, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 315
    .line 316
    invoke-static {v6}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    return-object p0

    .line 321
    :pswitch_c
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/StringUri;->getCachedSsi()I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    iget-object v1, p0, Lcom/eygraber/uri/uris/StringUri;->cachedFsi$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 326
    .line 327
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    check-cast v1, Ljava/lang/Number;

    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    sget-object v2, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 338
    .line 339
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 340
    .line 341
    add-int/2addr v0, v7

    .line 342
    if-ne v1, v8, :cond_9

    .line 343
    .line 344
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    goto :goto_4

    .line 349
    :cond_9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    :goto_4
    invoke-static {p0}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    return-object p0

    .line 358
    :pswitch_d
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/StringUri;->getCachedSsi()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-ne v0, v8, :cond_a

    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_a
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    :goto_5
    return-object v6

    .line 372
    :pswitch_e
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/StringUri;->getCachedSsi()I

    .line 373
    .line 374
    .line 375
    move-result p0

    .line 376
    if-ne p0, v8, :cond_b

    .line 377
    .line 378
    move v5, v7

    .line 379
    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    return-object p0

    .line 384
    :pswitch_f
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/StringUri;->getCachedSsi()I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 389
    .line 390
    if-ne v0, v8, :cond_c

    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    add-int/2addr v0, v7

    .line 398
    if-ne v1, v0, :cond_d

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_d
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    if-ne p0, v4, :cond_e

    .line 406
    .line 407
    :goto_6
    move v5, v7

    .line 408
    :cond_e
    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    return-object p0

    .line 413
    :pswitch_10
    iget-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/StringUri;->getCachedSsi()I

    .line 416
    .line 417
    .line 418
    move-result p0

    .line 419
    invoke-static {v0, v1, p0, v2}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 420
    .line 421
    .line 422
    move-result p0

    .line 423
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    return-object p0

    .line 428
    :pswitch_11
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 429
    .line 430
    const/16 v0, 0x3a

    .line 431
    .line 432
    const/4 v1, 0x6

    .line 433
    invoke-static {p0, v0, v5, v1}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 434
    .line 435
    .line 436
    move-result p0

    .line 437
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    return-object p0

    .line 442
    nop

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
.end method
