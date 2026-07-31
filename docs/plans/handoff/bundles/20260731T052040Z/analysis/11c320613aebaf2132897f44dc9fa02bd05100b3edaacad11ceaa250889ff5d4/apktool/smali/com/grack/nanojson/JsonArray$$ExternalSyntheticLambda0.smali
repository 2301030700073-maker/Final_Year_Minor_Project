.class public final synthetic Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget p0, p0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string/jumbo v0, "topicChannelDetailsRenderer"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "tabRenderer"

    .line 7
    .line 8
    .line 9
    const-class v2, Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    const-string/jumbo p0, "showingResultsForRenderer"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_0
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 28
    .line 29
    const-string/jumbo p0, "thumbnailBadgeViewModel"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :pswitch_1
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 38
    .line 39
    const-string/jumbo p0, "thumbnailOverlayBadgeViewModel"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :pswitch_2
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 48
    .line 49
    :try_start_0
    const-string p0, "comments-section"

    .line 50
    .line 51
    const-string v0, "itemSectionRenderer.targetId"

    .line 52
    .line 53
    invoke-static {p1, v0, v2}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    return v4

    .line 64
    :pswitch_3
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 65
    .line 66
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :pswitch_4
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 72
    .line 73
    const-string p0, "content"

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string p1, "sectionListRenderer"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p1, "contents"

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string v0, "itemSectionRenderer"

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-ne p1, v5, :cond_0

    .line 110
    .line 111
    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    const-string p1, "messageRenderer"

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-nez p0, :cond_1

    .line 122
    .line 123
    :cond_0
    move v4, v5

    .line 124
    :cond_1
    return v4

    .line 125
    :pswitch_5
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    return p0

    .line 132
    :pswitch_6
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 133
    .line 134
    const-string p0, "appendContinuationItemsAction"

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    return p0

    .line 141
    :pswitch_7
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    return p0

    .line 146
    :pswitch_8
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    return p0

    .line 153
    :pswitch_9
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 154
    .line 155
    const-string p0, "clientResource"

    .line 156
    .line 157
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    const-string p1, "imageName"

    .line 162
    .line 163
    invoke-virtual {p0, p1, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const-string p1, "CHECK_CIRCLE_FILLED"

    .line 168
    .line 169
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_2

    .line 174
    .line 175
    const-string p1, "AUDIO_BADGE"

    .line 176
    .line 177
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_2

    .line 182
    .line 183
    const-string p1, "MUSIC_FILLED"

    .line 184
    .line 185
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-eqz p0, :cond_3

    .line 190
    .line 191
    :cond_2
    move v4, v5

    .line 192
    :cond_3
    return v4

    .line 193
    :pswitch_a
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 194
    .line 195
    const-string/jumbo p0, "url"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    xor-int/2addr p0, v5

    .line 207
    return p0

    .line 208
    :pswitch_b
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 209
    .line 210
    const-string p0, "imageType"

    .line 211
    .line 212
    const-string v0, "image"

    .line 213
    .line 214
    const-string v1, "element"

    .line 215
    .line 216
    const-string/jumbo v2, "type"

    .line 217
    .line 218
    .line 219
    invoke-static {p1, v1, v2, p0, v0}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    const-string/jumbo p1, "sources"

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    new-instance p1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    .line 235
    .line 236
    const/16 v0, 0x13

    .line 237
    .line 238
    invoke-direct {p1, v0}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(I)V

    .line 239
    .line 240
    .line 241
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    return p0

    .line 246
    :pswitch_c
    check-cast p1, Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    xor-int/2addr p0, v5

    .line 253
    return p0

    .line 254
    :pswitch_d
    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    .line 255
    .line 256
    const-string p0, "acont"

    .line 257
    .line 258
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getKey()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    return p0

    .line 267
    :pswitch_e
    instance-of p0, p1, Lcom/grack/nanojson/JsonObject;

    .line 268
    .line 269
    if-eqz p0, :cond_4

    .line 270
    .line 271
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 272
    .line 273
    const-string/jumbo p0, "singleActionEmergencySupportRenderer"

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result p0

    .line 280
    if-eqz p0, :cond_4

    .line 281
    .line 282
    move v4, v5

    .line 283
    :cond_4
    return v4

    .line 284
    :pswitch_f
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 285
    .line 286
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    return p0

    .line 291
    :pswitch_10
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    return p0

    .line 298
    :pswitch_11
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 299
    .line 300
    const-string p0, "channelAgeGateRenderer"

    .line 301
    .line 302
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    return p0

    .line 307
    :pswitch_12
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 308
    .line 309
    const-string p0, "path"

    .line 310
    .line 311
    invoke-virtual {p1, p0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    xor-int/2addr p0, v5

    .line 320
    return p0

    .line 321
    :pswitch_13
    check-cast p1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKioskExtractor;

    .line 322
    .line 323
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKioskExtractor;->getDuration()J

    .line 324
    .line 325
    .line 326
    move-result-wide p0

    .line 327
    const-wide/16 v0, 0x0

    .line 328
    .line 329
    cmp-long p0, p0, v0

    .line 330
    .line 331
    if-lez p0, :cond_5

    .line 332
    .line 333
    move v4, v5

    .line 334
    :cond_5
    return v4

    .line 335
    :pswitch_14
    check-cast p1, Ljava/util/Map$Entry;

    .line 336
    .line 337
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    instance-of p0, p0, Lcom/grack/nanojson/JsonObject;

    .line 342
    .line 343
    return p0

    .line 344
    :pswitch_15
    check-cast p1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;

    .line 345
    .line 346
    const-string p0, "dash"

    .line 347
    .line 348
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;->urlKey:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result p0

    .line 354
    xor-int/2addr p0, v5

    .line 355
    return p0

    .line 356
    :pswitch_16
    check-cast p1, Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result p0

    .line 362
    xor-int/2addr p0, v5

    .line 363
    return p0

    .line 364
    :pswitch_17
    check-cast p1, Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    xor-int/2addr p0, v5

    .line 371
    return p0

    .line 372
    :pswitch_18
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 373
    .line 374
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p0

    .line 378
    return p0

    .line 379
    :pswitch_19
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    xor-int/2addr p0, v5

    .line 386
    return p0

    .line 387
    :pswitch_1a
    check-cast p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 388
    .line 389
    invoke-static {p1}, Lkotlin/math/MathKt;->isStreamsTab(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Z

    .line 390
    .line 391
    .line 392
    move-result p0

    .line 393
    return p0

    .line 394
    :pswitch_1b
    check-cast p1, Ljava/lang/String;

    .line 395
    .line 396
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result p0

    .line 400
    return p0

    .line 401
    :pswitch_1c
    const-class p0, Lcom/grack/nanojson/JsonObject;

    .line 402
    .line 403
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result p0

    .line 407
    return p0

    .line 408
    nop

    .line 409
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
