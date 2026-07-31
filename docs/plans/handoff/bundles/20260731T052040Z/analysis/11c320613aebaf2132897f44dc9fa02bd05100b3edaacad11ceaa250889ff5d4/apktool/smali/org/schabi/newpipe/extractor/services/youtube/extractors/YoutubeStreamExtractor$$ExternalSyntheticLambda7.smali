.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 6
    .line 7
    const-string/jumbo v2, "thumbnails"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "sources"

    .line 11
    .line 12
    .line 13
    const-string v4, "image"

    .line 14
    .line 15
    const-string v5, "pageHeaderViewModel"

    .line 16
    .line 17
    const-string/jumbo v6, "tabRenderer"

    .line 18
    .line 19
    .line 20
    const-class v7, Ljava/lang/String;

    .line 21
    .line 22
    const-string v8, "itemSectionRenderer"

    .line 23
    .line 24
    const-string/jumbo v10, "text"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v11, "thumbnailOverlayTimeStatusRenderer"

    .line 28
    .line 29
    .line 30
    const-string v12, "badges"

    .line 31
    .line 32
    const-string v13, "content"

    .line 33
    .line 34
    const/4 v14, 0x0

    .line 35
    const-string v15, "contents"

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    packed-switch v0, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    move-object v0, v1

    .line 42
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 43
    .line 44
    const-string/jumbo v1, "thumbnailBottomOverlayViewModel"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v12}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :pswitch_0
    move-object v0, v1

    .line 61
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 62
    .line 63
    const-string v1, "badgeViewModel"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "badgeStyle"

    .line 70
    .line 71
    invoke-virtual {v0, v1, v9}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0

    .line 76
    :pswitch_1
    move-object v0, v1

    .line 77
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 78
    .line 79
    const-string v1, "clientResource"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "imageName"

    .line 86
    .line 87
    invoke-virtual {v0, v1, v9}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :pswitch_2
    move-object v0, v1

    .line 93
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 94
    .line 95
    invoke-virtual {v0, v12}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    :pswitch_3
    move-object v0, v1

    .line 105
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 106
    .line 107
    invoke-virtual {v0, v11}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    :pswitch_4
    move-object v0, v1

    .line 113
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 114
    .line 115
    invoke-virtual {v0, v11}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0, v14}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0

    .line 128
    :pswitch_5
    move-object v0, v1

    .line 129
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 130
    .line 131
    const-string v1, "metadataBadgeRenderer"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string/jumbo v1, "style"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1, v9}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0

    .line 145
    :pswitch_6
    move-object v0, v1

    .line 146
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 147
    .line 148
    const-string v1, "metadataRowRenderer"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v15}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :pswitch_7
    move-object v0, v1

    .line 164
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 165
    .line 166
    const-string v1, "macroMarkersListItemRenderer"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0

    .line 173
    :pswitch_8
    move-object v0, v1

    .line 174
    check-cast v0, Lj$/time/LocalDate;

    .line 175
    .line 176
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 177
    .line 178
    invoke-virtual {v0}, Lj$/time/LocalDate;->atStartOfDay()Lj$/time/LocalDateTime;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const/4 v2, 0x1

    .line 183
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/LocalDateTime;Z)V

    .line 184
    .line 185
    .line 186
    return-object v1

    .line 187
    :pswitch_9
    move-object v0, v1

    .line 188
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 189
    .line 190
    const-string v1, "segmentedLikeDislikeButtonRenderer"

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string v1, "likeButton"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string/jumbo v1, "toggleButtonRenderer"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0

    .line 210
    :pswitch_a
    move-object v0, v1

    .line 211
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 212
    .line 213
    const-string v1, "segmentedLikeDislikeButtonViewModel"

    .line 214
    .line 215
    const-string v2, "likeButtonViewModel"

    .line 216
    .line 217
    const-string/jumbo v3, "toggleButtonViewModel"

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v1, v2, v2, v3}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const-string v1, "defaultButtonViewModel"

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v1, "buttonViewModel"

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    return-object v0

    .line 241
    :pswitch_b
    move-object v0, v1

    .line 242
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 243
    .line 244
    const-string v1, ""

    .line 245
    .line 246
    invoke-virtual {v0, v10, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    return-object v0

    .line 251
    :pswitch_c
    move-object v0, v1

    .line 252
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 253
    .line 254
    const-string v1, "runs"

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    return-object v0

    .line 265
    :pswitch_d
    move-object v0, v1

    .line 266
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 267
    .line 268
    const-string v1, "playlistSidebarPrimaryInfoRenderer"

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    return-object v0

    .line 275
    :pswitch_e
    move-object v0, v1

    .line 276
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 277
    .line 278
    const-string v1, "playlistSidebarSecondaryInfoRenderer"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    const-string/jumbo v1, "videoOwner"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const-string/jumbo v1, "videoOwnerRenderer"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    return-object v0

    .line 299
    :pswitch_f
    move-object v0, v1

    .line 300
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 301
    .line 302
    invoke-virtual {v0, v15}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0, v14}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    return-object v0

    .line 311
    :pswitch_10
    move-object v0, v1

    .line 312
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 313
    .line 314
    invoke-virtual {v0, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    return-object v0

    .line 319
    :pswitch_11
    move-object v0, v1

    .line 320
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 321
    .line 322
    const-string v1, "musicResponsiveListItemRenderer"

    .line 323
    .line 324
    invoke-virtual {v0, v9, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    return-object v0

    .line 329
    :pswitch_12
    move-object v0, v1

    .line 330
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 331
    .line 332
    :try_start_0
    invoke-virtual {v0, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v0, v15}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v0, v14}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const-string v1, "continuationItemRenderer.continuationEndpoint.continuationCommand.token"

    .line 345
    .line 346
    invoke-static {v0, v1, v7}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .line 352
    move-object v9, v0

    .line 353
    :catch_0
    return-object v9

    .line 354
    :pswitch_13
    move-object v0, v1

    .line 355
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 356
    .line 357
    const-string v1, "continuationCommand"

    .line 358
    .line 359
    const-string/jumbo v2, "token"

    .line 360
    .line 361
    .line 362
    const-string v3, "continuationEndpoint"

    .line 363
    .line 364
    invoke-static {v0, v3, v1, v2, v9}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    return-object v0

    .line 369
    :pswitch_14
    move-object v0, v1

    .line 370
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 371
    .line 372
    const-string v1, "continuationItemRenderer"

    .line 373
    .line 374
    invoke-virtual {v0, v9, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    return-object v0

    .line 379
    :pswitch_15
    move-object v0, v1

    .line 380
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 381
    .line 382
    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    return-object v0

    .line 387
    :pswitch_16
    move-object v0, v1

    .line 388
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 389
    .line 390
    const-string v1, "appendContinuationItemsAction"

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    return-object v0

    .line 397
    :pswitch_17
    invoke-virtual {v7, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Ljava/lang/String;

    .line 402
    .line 403
    return-object v0

    .line 404
    :pswitch_18
    move-object v0, v1

    .line 405
    check-cast v0, Lcom/grack/nanojson/JsonArray;

    .line 406
    .line 407
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    return-object v0

    .line 412
    :pswitch_19
    move-object v0, v1

    .line 413
    check-cast v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    .line 414
    .line 415
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    .line 416
    .line 417
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    .line 418
    .line 419
    const-string v6, "banner"

    .line 420
    .line 421
    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->PAGE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    .line 422
    .line 423
    if-ne v1, v7, :cond_1

    .line 424
    .line 425
    invoke-virtual {v0, v13}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {v0, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_0

    .line 438
    .line 439
    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    const-string v1, "imageBannerViewModel"

    .line 444
    .line 445
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    goto :goto_0

    .line 458
    :cond_0
    new-instance v0, Lcom/grack/nanojson/JsonArray;

    .line 459
    .line 460
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .line 462
    .line 463
    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    .line 473
    :pswitch_1a
    move-object v0, v1

    .line 474
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 475
    .line 476
    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    return-object v0

    .line 481
    :pswitch_1b
    move-object v0, v1

    .line 482
    check-cast v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    .line 483
    .line 484
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    .line 485
    .line 486
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    .line 491
    .line 492
    const/4 v6, 0x1

    .line 493
    if-eq v1, v6, :cond_5

    .line 494
    .line 495
    const/4 v6, 0x3

    .line 496
    const-string v7, "avatar"

    .line 497
    .line 498
    if-eq v1, v6, :cond_2

    .line 499
    .line 500
    invoke-virtual {v0, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    goto :goto_1

    .line 509
    :cond_2
    invoke-virtual {v0, v13}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {v0, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    const-string v1, "contentPreviewImageViewModel"

    .line 522
    .line 523
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_3

    .line 528
    .line 529
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    goto :goto_1

    .line 542
    :cond_3
    const-string v1, "decoratedAvatarViewModel"

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    if-eqz v2, :cond_4

    .line 549
    .line 550
    const-string v2, "avatarViewModel"

    .line 551
    .line 552
    invoke-static {v0, v1, v7, v2, v4}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    goto :goto_1

    .line 561
    :cond_4
    new-instance v0, Lcom/grack/nanojson/JsonArray;

    .line 562
    .line 563
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .line 565
    .line 566
    goto :goto_1

    .line 567
    :cond_5
    const-string v1, "boxArt"

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    :goto_1
    return-object v0

    .line 578
    :pswitch_1c
    move-object v0, v1

    .line 579
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 580
    .line 581
    const-string v1, "engagementPanelSectionListRenderer"

    .line 582
    .line 583
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-virtual {v0, v13}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    const-string v1, "macroMarkersListRenderer"

    .line 592
    .line 593
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-virtual {v0, v15}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    return-object v0

    .line 602
    nop

    .line 603
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

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
