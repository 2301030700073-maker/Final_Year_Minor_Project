.class public final Lorg/maplibre/android/util/DefaultStyle$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/maplibre/android/util/DefaultStyle$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lorg/maplibre/android/util/DefaultStyle$1;->$r8$classId:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v5, Lorg/wikipedia/gallery/ExtMetadata;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move-object v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    move-object v6, v0

    .line 33
    check-cast v6, Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    move-object v0, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_1
    move-object v7, v0

    .line 50
    check-cast v7, Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    move-object v0, v2

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_2
    move-object v8, v0

    .line 67
    check-cast v8, Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    move-object v0, v2

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    .line 79
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_3
    move-object v9, v0

    .line 84
    check-cast v9, Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    move-object v0, v2

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 95
    .line 96
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_4
    move-object v10, v0

    .line 101
    check-cast v10, Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    move-object v0, v2

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    .line 113
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_5
    move-object v11, v0

    .line 118
    check-cast v11, Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    move-object v0, v2

    .line 127
    goto :goto_6

    .line 128
    :cond_6
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 129
    .line 130
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_6
    move-object v12, v0

    .line 135
    check-cast v12, Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_7

    .line 142
    .line 143
    move-object v0, v2

    .line 144
    goto :goto_7

    .line 145
    :cond_7
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 146
    .line 147
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :goto_7
    move-object v13, v0

    .line 152
    check-cast v13, Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_8

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_8
    sget-object v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 162
    .line 163
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    :goto_8
    move-object v14, v2

    .line 168
    check-cast v14, Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 169
    .line 170
    invoke-direct/range {v5 .. v14}, Lorg/wikipedia/gallery/ExtMetadata;-><init>(Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;Lorg/wikipedia/gallery/ExtMetadata$Values;)V

    .line 171
    .line 172
    .line 173
    return-object v5

    .line 174
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    new-instance v0, Lorg/wikipedia/gallery/ArtistInfo;

    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/gallery/ArtistInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object v0

    .line 191
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance v0, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 195
    .line 196
    sget-object v2, Lorg/wikipedia/feed/topread/TopRead;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    .line 198
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lorg/wikipedia/feed/topread/TopRead;

    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    sget-object v4, Lorg/wikipedia/dataclient/WikiSite;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 209
    .line 210
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 215
    .line 216
    invoke-direct {v0, v2, v3, v1}, Lorg/wikipedia/feed/topread/TopReadCard;-><init>(Lorg/wikipedia/feed/topread/TopRead;ILorg/wikipedia/dataclient/WikiSite;)V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .line 235
    .line 236
    :goto_9
    if-eq v4, v2, :cond_9

    .line 237
    .line 238
    const-class v5, Lorg/wikipedia/feed/topread/TopRead;

    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    add-int/lit8 v4, v4, 0x1

    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_9
    new-instance v1, Lorg/wikipedia/feed/topread/TopRead;

    .line 255
    .line 256
    invoke-direct {v1, v0, v3}, Lorg/wikipedia/feed/topread/TopRead;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 257
    .line 258
    .line 259
    return-object v1

    .line 260
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    .line 275
    .line 276
    :goto_a
    if-eq v4, v2, :cond_a

    .line 277
    .line 278
    const-class v5, Lorg/wikipedia/feed/news/NewsItem;

    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    add-int/lit8 v4, v4, 0x1

    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_a
    new-instance v1, Lorg/wikipedia/feed/news/NewsItem;

    .line 295
    .line 296
    invoke-direct {v1, v0, v3}, Lorg/wikipedia/feed/news/NewsItem;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 297
    .line 298
    .line 299
    return-object v1

    .line 300
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    new-instance v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowItem;

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/feed/didyouknow/DidYouKnowItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-object v0

    .line 317
    :pswitch_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    new-instance v2, Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .line 328
    .line 329
    :goto_b
    if-eq v4, v0, :cond_b

    .line 330
    .line 331
    sget-object v3, Lorg/wikipedia/feed/didyouknow/DidYouKnowItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 332
    .line 333
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    add-int/lit8 v4, v4, 0x1

    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_b
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    sget-object v3, Lorg/wikipedia/dataclient/WikiSite;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 348
    .line 349
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 354
    .line 355
    new-instance v3, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 356
    .line 357
    invoke-direct {v3, v2, v0, v1}, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;-><init>(Ljava/util/List;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 358
    .line 359
    .line 360
    return-object v3

    .line 361
    :pswitch_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    new-instance v0, Lorg/wikipedia/dataclient/page/PageSummary$ViewHistory;

    .line 365
    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/dataclient/page/PageSummary$ViewHistory;-><init>(Ljava/lang/String;F)V

    .line 375
    .line 376
    .line 377
    return-object v0

    .line 378
    :pswitch_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    new-instance v0, Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 382
    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/dataclient/page/PageSummary$Titles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    return-object v0

    .line 395
    :pswitch_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    new-instance v0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 399
    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    invoke-direct {v0, v2, v3, v1}, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;-><init>(Ljava/lang/String;II)V

    .line 413
    .line 414
    .line 415
    return-object v0

    .line 416
    :pswitch_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    new-instance v0, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    .line 420
    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;-><init>(ILjava/lang/String;)V

    .line 430
    .line 431
    .line 432
    return-object v0

    .line 433
    :pswitch_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-nez v0, :cond_c

    .line 441
    .line 442
    move-object v0, v2

    .line 443
    goto :goto_c

    .line 444
    :cond_c
    sget-object v0, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 445
    .line 446
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    :goto_c
    move-object v6, v0

    .line 451
    check-cast v6, Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    .line 452
    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-nez v0, :cond_d

    .line 458
    .line 459
    move-object v0, v2

    .line 460
    goto :goto_d

    .line 461
    :cond_d
    sget-object v0, Lorg/wikipedia/dataclient/page/PageSummary$Titles;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 462
    .line 463
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    :goto_d
    move-object v7, v0

    .line 468
    check-cast v7, Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 469
    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-nez v0, :cond_e

    .line 479
    .line 480
    move-object v0, v2

    .line 481
    goto :goto_e

    .line 482
    :cond_e
    sget-object v0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 483
    .line 484
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    :goto_e
    move-object v9, v0

    .line 489
    check-cast v9, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 490
    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v10

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v11

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    if-nez v0, :cond_f

    .line 504
    .line 505
    move-object v0, v2

    .line 506
    goto :goto_f

    .line 507
    :cond_f
    sget-object v0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 508
    .line 509
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    :goto_f
    move-object v12, v0

    .line 514
    check-cast v12, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 515
    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v13

    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v14

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v15

    .line 528
    const-class v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    move-object/from16 v16, v0

    .line 539
    .line 540
    check-cast v16, Landroid/location/Location;

    .line 541
    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v17

    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 547
    .line 548
    .line 549
    move-result v18

    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 551
    .line 552
    .line 553
    move-result-wide v19

    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v21

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 559
    .line 560
    .line 561
    move-result-wide v22

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 563
    .line 564
    .line 565
    move-result-wide v24

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-nez v0, :cond_11

    .line 571
    .line 572
    :cond_10
    move-object/from16 v26, v2

    .line 573
    .line 574
    goto :goto_11

    .line 575
    :cond_11
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    new-instance v2, Ljava/util/ArrayList;

    .line 580
    .line 581
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 582
    .line 583
    .line 584
    :goto_10
    if-eq v4, v0, :cond_10

    .line 585
    .line 586
    sget-object v3, Lorg/wikipedia/dataclient/page/PageSummary$ViewHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 587
    .line 588
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    add-int/lit8 v4, v4, 0x1

    .line 596
    .line 597
    goto :goto_10

    .line 598
    :goto_11
    new-instance v5, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 599
    .line 600
    invoke-direct/range {v5 .. v26}, Lorg/wikipedia/dataclient/page/PageSummary;-><init>(Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;Lorg/wikipedia/dataclient/page/PageSummary$Titles;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;IJLjava/lang/String;JJLjava/util/ArrayList;)V

    .line 601
    .line 602
    .line 603
    return-object v5

    .line 604
    :pswitch_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v7

    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 612
    .line 613
    .line 614
    move-result v8

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v9

    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v10

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v11

    .line 627
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v12

    .line 631
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v13

    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 636
    .line 637
    .line 638
    move-result v14

    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    if-eqz v0, :cond_12

    .line 644
    .line 645
    move v15, v3

    .line 646
    goto :goto_12

    .line 647
    :cond_12
    move v15, v4

    .line 648
    :goto_12
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    new-instance v2, Ljava/util/ArrayList;

    .line 653
    .line 654
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 655
    .line 656
    .line 657
    :goto_13
    if-eq v4, v0, :cond_13

    .line 658
    .line 659
    sget-object v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 660
    .line 661
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    add-int/lit8 v4, v4, 0x1

    .line 669
    .line 670
    goto :goto_13

    .line 671
    :cond_13
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v17

    .line 675
    new-instance v6, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 676
    .line 677
    move-object/from16 v16, v2

    .line 678
    .line 679
    invoke-direct/range {v6 .. v17}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/ArrayList;Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    return-object v6

    .line 683
    :pswitch_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 687
    .line 688
    const-class v2, Lorg/wikipedia/dataclient/WikiSite;

    .line 689
    .line 690
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    check-cast v2, Landroid/net/Uri;

    .line 699
    .line 700
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    return-object v0

    .line 708
    :pswitch_d
    new-instance v0, Lorg/maplibre/android/util/TileServerOptions;

    .line 709
    .line 710
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/TileServerOptions;-><init>(Landroid/os/Parcel;)V

    .line 711
    .line 712
    .line 713
    return-object v0

    .line 714
    :pswitch_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    .line 716
    .line 717
    new-instance v0, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;

    .line 718
    .line 719
    invoke-direct {v0, v1}, Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;-><init>(Landroid/os/Parcel;)V

    .line 720
    .line 721
    .line 722
    return-object v0

    .line 723
    :pswitch_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    new-instance v0, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;

    .line 727
    .line 728
    invoke-direct {v0, v1}, Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;-><init>(Landroid/os/Parcel;)V

    .line 729
    .line 730
    .line 731
    return-object v0

    .line 732
    :pswitch_10
    new-instance v0, Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 733
    .line 734
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 735
    .line 736
    .line 737
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 738
    .line 739
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 740
    .line 741
    const v2, 0x800035

    .line 742
    .line 743
    .line 744
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 745
    .line 746
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 747
    .line 748
    const v2, 0x800053

    .line 749
    .line 750
    .line 751
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 752
    .line 753
    const/4 v5, -0x1

    .line 754
    iput v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 755
    .line 756
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 757
    .line 758
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 759
    .line 760
    const-wide/16 v5, 0x0

    .line 761
    .line 762
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 763
    .line 764
    const-wide v7, 0x4039800000000000L    # 25.5

    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    iput-wide v7, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 770
    .line 771
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 772
    .line 773
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    .line 774
    .line 775
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 776
    .line 777
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 778
    .line 779
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 780
    .line 781
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 782
    .line 783
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 784
    .line 785
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 786
    .line 787
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 788
    .line 789
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 790
    .line 791
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 792
    .line 793
    const/4 v2, 0x4

    .line 794
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 795
    .line 796
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 797
    .line 798
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 799
    .line 800
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 801
    .line 802
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 803
    .line 804
    const-string v2, ""

    .line 805
    .line 806
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 807
    .line 808
    const-wide/32 v5, 0x100000

    .line 809
    .line 810
    .line 811
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    .line 812
    .line 813
    const-wide/16 v5, 0x5

    .line 814
    .line 815
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    .line 816
    .line 817
    const/16 v2, 0x3c

    .line 818
    .line 819
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    .line 820
    .line 821
    const-class v2, Lorg/maplibre/android/camera/CameraPosition;

    .line 822
    .line 823
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 824
    .line 825
    .line 826
    move-result-object v2

    .line 827
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    check-cast v2, Lorg/maplibre/android/camera/CameraPosition;

    .line 832
    .line 833
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 834
    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    if-eqz v2, :cond_14

    .line 840
    .line 841
    move v2, v3

    .line 842
    goto :goto_14

    .line 843
    :cond_14
    move v2, v4

    .line 844
    :goto_14
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    .line 845
    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    if-eqz v2, :cond_15

    .line 851
    .line 852
    move v2, v3

    .line 853
    goto :goto_15

    .line 854
    :cond_15
    move v2, v4

    .line 855
    :goto_15
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 856
    .line 857
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 858
    .line 859
    .line 860
    move-result v2

    .line 861
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 862
    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    .line 864
    .line 865
    .line 866
    move-result-object v2

    .line 867
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    .line 868
    .line 869
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 870
    .line 871
    .line 872
    move-result v2

    .line 873
    if-eqz v2, :cond_16

    .line 874
    .line 875
    move v2, v3

    .line 876
    goto :goto_16

    .line 877
    :cond_16
    move v2, v4

    .line 878
    :goto_16
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 879
    .line 880
    const-class v2, Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 881
    .line 882
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    check-cast v2, Landroid/graphics/Bitmap;

    .line 891
    .line 892
    if-eqz v2, :cond_17

    .line 893
    .line 894
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 895
    .line 896
    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 897
    .line 898
    .line 899
    iput-object v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    .line 900
    .line 901
    :cond_17
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 902
    .line 903
    .line 904
    move-result v2

    .line 905
    if-eqz v2, :cond_18

    .line 906
    .line 907
    move v2, v3

    .line 908
    goto :goto_17

    .line 909
    :cond_18
    move v2, v4

    .line 910
    :goto_17
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 911
    .line 912
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 913
    .line 914
    .line 915
    move-result v2

    .line 916
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 917
    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    .line 923
    .line 924
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    if-eqz v2, :cond_19

    .line 929
    .line 930
    move v2, v3

    .line 931
    goto :goto_18

    .line 932
    :cond_19
    move v2, v4

    .line 933
    :goto_18
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 934
    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 940
    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    .line 942
    .line 943
    .line 944
    move-result-object v2

    .line 945
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    .line 946
    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 948
    .line 949
    .line 950
    move-result v2

    .line 951
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 952
    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 954
    .line 955
    .line 956
    move-result-wide v5

    .line 957
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 958
    .line 959
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 960
    .line 961
    .line 962
    move-result-wide v5

    .line 963
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 964
    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 966
    .line 967
    .line 968
    move-result-wide v5

    .line 969
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 970
    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 972
    .line 973
    .line 974
    move-result-wide v5

    .line 975
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 976
    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 978
    .line 979
    .line 980
    move-result v2

    .line 981
    if-eqz v2, :cond_1a

    .line 982
    .line 983
    move v2, v3

    .line 984
    goto :goto_19

    .line 985
    :cond_1a
    move v2, v4

    .line 986
    :goto_19
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 987
    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 989
    .line 990
    .line 991
    move-result v2

    .line 992
    if-eqz v2, :cond_1b

    .line 993
    .line 994
    move v2, v3

    .line 995
    goto :goto_1a

    .line 996
    :cond_1b
    move v2, v4

    .line 997
    :goto_1a
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 998
    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1000
    .line 1001
    .line 1002
    move-result v2

    .line 1003
    if-eqz v2, :cond_1c

    .line 1004
    .line 1005
    move v2, v3

    .line 1006
    goto :goto_1b

    .line 1007
    :cond_1c
    move v2, v4

    .line 1008
    :goto_1b
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 1009
    .line 1010
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1011
    .line 1012
    .line 1013
    move-result v2

    .line 1014
    if-eqz v2, :cond_1d

    .line 1015
    .line 1016
    move v2, v3

    .line 1017
    goto :goto_1c

    .line 1018
    :cond_1d
    move v2, v4

    .line 1019
    :goto_1c
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 1020
    .line 1021
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1022
    .line 1023
    .line 1024
    move-result v2

    .line 1025
    if-eqz v2, :cond_1e

    .line 1026
    .line 1027
    move v2, v3

    .line 1028
    goto :goto_1d

    .line 1029
    :cond_1e
    move v2, v4

    .line 1030
    :goto_1d
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 1031
    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1033
    .line 1034
    .line 1035
    move-result v2

    .line 1036
    if-eqz v2, :cond_1f

    .line 1037
    .line 1038
    move v2, v3

    .line 1039
    goto :goto_1e

    .line 1040
    :cond_1f
    move v2, v4

    .line 1041
    :goto_1e
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 1042
    .line 1043
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    if-eqz v2, :cond_20

    .line 1048
    .line 1049
    move v2, v3

    .line 1050
    goto :goto_1f

    .line 1051
    :cond_20
    move v2, v4

    .line 1052
    :goto_1f
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 1053
    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v2

    .line 1058
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    .line 1059
    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1061
    .line 1062
    .line 1063
    move-result v2

    .line 1064
    if-eqz v2, :cond_21

    .line 1065
    .line 1066
    move v2, v3

    .line 1067
    goto :goto_20

    .line 1068
    :cond_21
    move v2, v4

    .line 1069
    :goto_20
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    .line 1070
    .line 1071
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1072
    .line 1073
    .line 1074
    move-result v2

    .line 1075
    if-eqz v2, :cond_22

    .line 1076
    .line 1077
    move v2, v3

    .line 1078
    goto :goto_21

    .line 1079
    :cond_22
    move v2, v4

    .line 1080
    :goto_21
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    .line 1081
    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1083
    .line 1084
    .line 1085
    move-result v2

    .line 1086
    if-eqz v2, :cond_23

    .line 1087
    .line 1088
    move v2, v3

    .line 1089
    goto :goto_22

    .line 1090
    :cond_23
    move v2, v4

    .line 1091
    :goto_22
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 1092
    .line 1093
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1094
    .line 1095
    .line 1096
    move-result v2

    .line 1097
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 1098
    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1100
    .line 1101
    .line 1102
    move-result v2

    .line 1103
    if-eqz v2, :cond_24

    .line 1104
    .line 1105
    move v2, v3

    .line 1106
    goto :goto_23

    .line 1107
    :cond_24
    move v2, v4

    .line 1108
    :goto_23
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 1109
    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1111
    .line 1112
    .line 1113
    move-result v2

    .line 1114
    if-eqz v2, :cond_25

    .line 1115
    .line 1116
    move v2, v3

    .line 1117
    goto :goto_24

    .line 1118
    :cond_25
    move v2, v4

    .line 1119
    :goto_24
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 1120
    .line 1121
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    .line 1126
    .line 1127
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v2

    .line 1131
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    .line 1132
    .line 1133
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 1138
    .line 1139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1140
    .line 1141
    .line 1142
    move-result v2

    .line 1143
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->foregroundLoadColor:I

    .line 1144
    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1146
    .line 1147
    .line 1148
    move-result v2

    .line 1149
    if-eqz v2, :cond_26

    .line 1150
    .line 1151
    move v2, v3

    .line 1152
    goto :goto_25

    .line 1153
    :cond_26
    move v2, v4

    .line 1154
    :goto_25
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 1155
    .line 1156
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1157
    .line 1158
    .line 1159
    move-result v2

    .line 1160
    if-eqz v2, :cond_27

    .line 1161
    .line 1162
    goto :goto_26

    .line 1163
    :cond_27
    move v3, v4

    .line 1164
    :goto_26
    iput-boolean v3, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 1165
    .line 1166
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v2

    .line 1170
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 1171
    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1173
    .line 1174
    .line 1175
    move-result-wide v2

    .line 1176
    iput-wide v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    .line 1177
    .line 1178
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1179
    .line 1180
    .line 1181
    move-result-wide v2

    .line 1182
    iput-wide v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    .line 1183
    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1185
    .line 1186
    .line 1187
    move-result v1

    .line 1188
    iput v1, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    .line 1189
    .line 1190
    return-object v0

    .line 1191
    :pswitch_11
    new-instance v0, Lorg/maplibre/android/location/LocationComponentOptions;

    .line 1192
    .line 1193
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1197
    .line 1198
    .line 1199
    move-result v2

    .line 1200
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    .line 1201
    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1203
    .line 1204
    .line 1205
    move-result v2

    .line 1206
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    .line 1207
    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1209
    .line 1210
    .line 1211
    move-result v2

    .line 1212
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    .line 1213
    .line 1214
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v2

    .line 1218
    iput-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    .line 1219
    .line 1220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1221
    .line 1222
    .line 1223
    move-result v2

    .line 1224
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    .line 1225
    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v2

    .line 1230
    iput-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    .line 1231
    .line 1232
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1233
    .line 1234
    .line 1235
    move-result v2

    .line 1236
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    .line 1237
    .line 1238
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    iput-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    .line 1243
    .line 1244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1245
    .line 1246
    .line 1247
    move-result v2

    .line 1248
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    .line 1249
    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v2

    .line 1254
    iput-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    .line 1255
    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1257
    .line 1258
    .line 1259
    move-result v2

    .line 1260
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    .line 1261
    .line 1262
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v2

    .line 1266
    iput-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    .line 1267
    .line 1268
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1269
    .line 1270
    .line 1271
    move-result v2

    .line 1272
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    .line 1273
    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v2

    .line 1278
    iput-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    .line 1279
    .line 1280
    const-class v2, Ljava/lang/Integer;

    .line 1281
    .line 1282
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v5

    .line 1286
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v5

    .line 1290
    check-cast v5, Ljava/lang/Integer;

    .line 1291
    .line 1292
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    .line 1293
    .line 1294
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v5

    .line 1298
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v5

    .line 1302
    check-cast v5, Ljava/lang/Integer;

    .line 1303
    .line 1304
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    .line 1305
    .line 1306
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v5

    .line 1310
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v5

    .line 1314
    check-cast v5, Ljava/lang/Integer;

    .line 1315
    .line 1316
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    .line 1317
    .line 1318
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v5

    .line 1322
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v5

    .line 1326
    check-cast v5, Ljava/lang/Integer;

    .line 1327
    .line 1328
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    .line 1329
    .line 1330
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v5

    .line 1334
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v5

    .line 1338
    check-cast v5, Ljava/lang/Integer;

    .line 1339
    .line 1340
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    .line 1341
    .line 1342
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1343
    .line 1344
    .line 1345
    move-result v5

    .line 1346
    iput v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    .line 1347
    .line 1348
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1349
    .line 1350
    .line 1351
    move-result v5

    .line 1352
    if-eqz v5, :cond_28

    .line 1353
    .line 1354
    move v5, v3

    .line 1355
    goto :goto_27

    .line 1356
    :cond_28
    move v5, v4

    .line 1357
    :goto_27
    iput-boolean v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    .line 1358
    .line 1359
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1360
    .line 1361
    .line 1362
    move-result-wide v5

    .line 1363
    iput-wide v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout:J

    .line 1364
    .line 1365
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    .line 1366
    .line 1367
    .line 1368
    move-result-object v5

    .line 1369
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->padding:[I

    .line 1370
    .line 1371
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1372
    .line 1373
    .line 1374
    move-result v5

    .line 1375
    iput v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    .line 1376
    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1378
    .line 1379
    .line 1380
    move-result v5

    .line 1381
    iput v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    .line 1382
    .line 1383
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1384
    .line 1385
    .line 1386
    move-result v5

    .line 1387
    if-eqz v5, :cond_29

    .line 1388
    .line 1389
    move v5, v3

    .line 1390
    goto :goto_28

    .line 1391
    :cond_29
    move v5, v4

    .line 1392
    :goto_28
    iput-boolean v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement:Z

    .line 1393
    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1395
    .line 1396
    .line 1397
    move-result v5

    .line 1398
    iput v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold:F

    .line 1399
    .line 1400
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1401
    .line 1402
    .line 1403
    move-result v5

    .line 1404
    iput v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerMoveThreshold:F

    .line 1405
    .line 1406
    const-class v5, Landroid/graphics/RectF;

    .line 1407
    .line 1408
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v5

    .line 1412
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v5

    .line 1416
    check-cast v5, Landroid/graphics/RectF;

    .line 1417
    .line 1418
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingMultiFingerProtectedMoveArea:Landroid/graphics/RectF;

    .line 1419
    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v5

    .line 1424
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    .line 1425
    .line 1426
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v5

    .line 1430
    iput-object v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    .line 1431
    .line 1432
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1433
    .line 1434
    .line 1435
    move-result v5

    .line 1436
    iput v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier:F

    .line 1437
    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1439
    .line 1440
    .line 1441
    move-result v5

    .line 1442
    if-eqz v5, :cond_2a

    .line 1443
    .line 1444
    move v5, v3

    .line 1445
    goto :goto_29

    .line 1446
    :cond_2a
    move v5, v4

    .line 1447
    :goto_29
    iput-boolean v5, v0, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled:Z

    .line 1448
    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 1450
    .line 1451
    .line 1452
    move-result v5

    .line 1453
    if-eqz v5, :cond_2b

    .line 1454
    .line 1455
    goto :goto_2a

    .line 1456
    :cond_2b
    move v3, v4

    .line 1457
    :goto_2a
    iput-boolean v3, v0, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled:Z

    .line 1458
    .line 1459
    const-class v3, Ljava/lang/Boolean;

    .line 1460
    .line 1461
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v4

    .line 1465
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v4

    .line 1469
    check-cast v4, Ljava/lang/Boolean;

    .line 1470
    .line 1471
    iput-object v4, v0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled:Ljava/lang/Boolean;

    .line 1472
    .line 1473
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v3

    .line 1477
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v3

    .line 1481
    check-cast v3, Ljava/lang/Boolean;

    .line 1482
    .line 1483
    iput-object v3, v0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    .line 1484
    .line 1485
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v2

    .line 1489
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v2

    .line 1493
    check-cast v2, Ljava/lang/Integer;

    .line 1494
    .line 1495
    iput-object v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    .line 1496
    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1498
    .line 1499
    .line 1500
    move-result v2

    .line 1501
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration:F

    .line 1502
    .line 1503
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1504
    .line 1505
    .line 1506
    move-result v2

    .line 1507
    iput v2, v0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius:F

    .line 1508
    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1510
    .line 1511
    .line 1512
    move-result v1

    .line 1513
    iput v1, v0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseAlpha:F

    .line 1514
    .line 1515
    return-object v0

    .line 1516
    :pswitch_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1517
    .line 1518
    .line 1519
    new-instance v0, Lorg/maplibre/android/geometry/VisibleRegion;

    .line 1520
    .line 1521
    invoke-direct {v0, v1}, Lorg/maplibre/android/geometry/VisibleRegion;-><init>(Landroid/os/Parcel;)V

    .line 1522
    .line 1523
    .line 1524
    return-object v0

    .line 1525
    :pswitch_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1526
    .line 1527
    .line 1528
    new-instance v0, Lorg/maplibre/android/geometry/ProjectedMeters;

    .line 1529
    .line 1530
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 1534
    .line 1535
    .line 1536
    move-result-wide v2

    .line 1537
    iput-wide v2, v0, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    .line 1538
    .line 1539
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 1540
    .line 1541
    .line 1542
    move-result-wide v1

    .line 1543
    iput-wide v1, v0, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    .line 1544
    .line 1545
    return-object v0

    .line 1546
    :pswitch_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1547
    .line 1548
    .line 1549
    new-instance v0, Lorg/maplibre/android/geometry/LatLngSpan;

    .line 1550
    .line 1551
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 1555
    .line 1556
    .line 1557
    move-result-wide v2

    .line 1558
    iput-wide v2, v0, Lorg/maplibre/android/geometry/LatLngSpan;->latitudeSpan:D

    .line 1559
    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 1561
    .line 1562
    .line 1563
    move-result-wide v1

    .line 1564
    iput-wide v1, v0, Lorg/maplibre/android/geometry/LatLngSpan;->longitudeSpan:D

    .line 1565
    .line 1566
    return-object v0

    .line 1567
    :pswitch_15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1568
    .line 1569
    .line 1570
    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    .line 1571
    .line 1572
    invoke-direct {v0, v1}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/os/Parcel;)V

    .line 1573
    .line 1574
    .line 1575
    new-instance v2, Lorg/maplibre/android/geometry/LatLng;

    .line 1576
    .line 1577
    invoke-direct {v2, v1}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/os/Parcel;)V

    .line 1578
    .line 1579
    .line 1580
    new-instance v3, Lorg/maplibre/android/geometry/LatLng;

    .line 1581
    .line 1582
    invoke-direct {v3, v1}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/os/Parcel;)V

    .line 1583
    .line 1584
    .line 1585
    new-instance v4, Lorg/maplibre/android/geometry/LatLng;

    .line 1586
    .line 1587
    invoke-direct {v4, v1}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/os/Parcel;)V

    .line 1588
    .line 1589
    .line 1590
    new-instance v1, Lorg/maplibre/android/geometry/LatLngQuad;

    .line 1591
    .line 1592
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/maplibre/android/geometry/LatLngQuad;-><init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)V

    .line 1593
    .line 1594
    .line 1595
    return-object v1

    .line 1596
    :pswitch_16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1597
    .line 1598
    .line 1599
    sget-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    .line 1600
    .line 1601
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 1605
    .line 1606
    .line 1607
    move-result-wide v2

    .line 1608
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 1609
    .line 1610
    .line 1611
    move-result-wide v4

    .line 1612
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 1613
    .line 1614
    .line 1615
    move-result-wide v6

    .line 1616
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 1617
    .line 1618
    .line 1619
    move-result-wide v8

    .line 1620
    new-instance v1, Lorg/maplibre/android/geometry/LatLngBounds;

    .line 1621
    .line 1622
    invoke-direct/range {v1 .. v9}, Lorg/maplibre/android/geometry/LatLngBounds;-><init>(DDDD)V

    .line 1623
    .line 1624
    .line 1625
    return-object v1

    .line 1626
    :pswitch_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1627
    .line 1628
    .line 1629
    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    .line 1630
    .line 1631
    invoke-direct {v0, v1}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/os/Parcel;)V

    .line 1632
    .line 1633
    .line 1634
    return-object v0

    .line 1635
    :pswitch_18
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    .line 1636
    .line 1637
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1641
    .line 1642
    .line 1643
    move-result v2

    .line 1644
    iput v2, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 1645
    .line 1646
    const-class v2, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    .line 1647
    .line 1648
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v2

    .line 1652
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v1

    .line 1656
    check-cast v1, Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 1657
    .line 1658
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 1659
    .line 1660
    return-object v0

    .line 1661
    :pswitch_19
    new-instance v0, Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 1662
    .line 1663
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1664
    .line 1665
    .line 1666
    const-class v2, Ljava/lang/Long;

    .line 1667
    .line 1668
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v2

    .line 1672
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v1

    .line 1676
    check-cast v1, Ljava/lang/Long;

    .line 1677
    .line 1678
    iput-object v1, v0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 1679
    .line 1680
    return-object v0

    .line 1681
    :pswitch_1a
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1682
    .line 1683
    .line 1684
    move-result v0

    .line 1685
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1686
    .line 1687
    .line 1688
    move-result v1

    .line 1689
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v0

    .line 1693
    return-object v0

    .line 1694
    :pswitch_1b
    new-instance v0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    .line 1695
    .line 1696
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1697
    .line 1698
    .line 1699
    move-result-wide v1

    .line 1700
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(J)V

    .line 1701
    .line 1702
    .line 1703
    return-object v0

    .line 1704
    :pswitch_1c
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle;

    .line 1705
    .line 1706
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle;-><init>(Landroid/os/Parcel;)V

    .line 1707
    .line 1708
    .line 1709
    return-object v0

    .line 1710
    nop

    .line 1711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/util/DefaultStyle$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lorg/wikipedia/gallery/ExtMetadata;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lorg/wikipedia/gallery/ArtistInfo;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lorg/wikipedia/feed/topread/TopReadCard;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lorg/wikipedia/feed/topread/TopRead;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lorg/wikipedia/feed/news/NewsItem;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lorg/wikipedia/feed/didyouknow/DidYouKnowItem;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lorg/wikipedia/dataclient/page/PageSummary$ViewHistory;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lorg/wikipedia/dataclient/page/PageSummary$Titles;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lorg/wikipedia/dataclient/page/PageSummary$NamespaceContainer;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lorg/wikipedia/dataclient/page/PageSummary;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Lorg/wikipedia/dataclient/WikiSite;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Lorg/maplibre/android/util/TileServerOptions;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    new-array p0, p1, [Lorg/maplibre/android/offline/OfflineGeometryRegionDefinition;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    new-array p0, p1, [Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    new-array p0, p1, [Lorg/maplibre/android/location/LocationComponentOptions;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_12
    new-array p0, p1, [Lorg/maplibre/android/geometry/VisibleRegion;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_13
    new-array p0, p1, [Lorg/maplibre/android/geometry/ProjectedMeters;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_14
    new-array p0, p1, [Lorg/maplibre/android/geometry/LatLngSpan;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_15
    new-array p0, p1, [Lorg/maplibre/android/geometry/LatLngQuad;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_16
    new-array p0, p1, [Lorg/maplibre/android/geometry/LatLngBounds;

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_17
    new-array p0, p1, [Lorg/maplibre/android/geometry/LatLng;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_18
    new-array p0, p1, [Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_19
    new-array p0, p1, [Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1a
    new-array p0, p1, [Lcom/google/android/material/datepicker/Month;

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1b
    new-array p0, p1, [Lcom/google/android/material/datepicker/DateValidatorPointForward;

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1c
    new-array p0, p1, [Lorg/maplibre/android/util/DefaultStyle;

    .line 94
    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
