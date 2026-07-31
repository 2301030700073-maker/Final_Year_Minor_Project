.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;
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
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;->$r8$classId:I

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
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;->$r8$classId:I

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
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;->$r8$classId:I

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
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;->$r8$classId:I

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
    .locals 8

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const-string/jumbo v0, "thumbnailOverlayTimeStatusRenderer"

    .line 4
    .line 5
    .line 6
    const-string v1, "iconType"

    .line 7
    .line 8
    const-string v2, "badgeStyle"

    .line 9
    .line 10
    const-string v3, "THUMBNAIL_OVERLAY_BADGE_STYLE_LIVE"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const-string v5, "icon"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x1

    .line 17
    packed-switch p0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 21
    .line 22
    const-string/jumbo p0, "title"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    xor-int/2addr p0, v7

    .line 30
    return p0

    .line 31
    :pswitch_0
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 32
    .line 33
    const-string p0, "content"

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :pswitch_1
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 41
    .line 42
    const-string p0, "selected"

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :pswitch_2
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 50
    .line 51
    const-string p0, "richItemRenderer"

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :pswitch_3
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 59
    .line 60
    const-string p0, "appendContinuationItemsAction"

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :pswitch_4
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    xor-int/2addr p0, v7

    .line 74
    return p0

    .line 75
    :pswitch_5
    const-class p0, Lcom/grack/nanojson/JsonArray;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :pswitch_6
    check-cast p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    .line 83
    .line 84
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    return p0

    .line 89
    :pswitch_7
    check-cast p1, [Ljava/lang/String;

    .line 90
    .line 91
    array-length p0, p1

    .line 92
    const/4 p1, 0x3

    .line 93
    if-lt p0, p1, :cond_0

    .line 94
    .line 95
    move v4, v7

    .line 96
    :cond_0
    return v4

    .line 97
    :pswitch_8
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 98
    .line 99
    invoke-virtual {p1, v2, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string/jumbo p1, "sources"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;

    .line 126
    .line 127
    const/16 v0, 0x1b

    .line 128
    .line 129
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda7;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;

    .line 137
    .line 138
    const/16 v0, 0x12

    .line 139
    .line 140
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$$ExternalSyntheticLambda6;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    :goto_0
    return v7

    .line 148
    :pswitch_9
    const-string p0, "BADGE_MEMBERS_ONLY"

    .line 149
    .line 150
    check-cast p1, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    return p0

    .line 157
    :pswitch_a
    const-string p0, "LIVE"

    .line 158
    .line 159
    check-cast p1, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    return p0

    .line 166
    :pswitch_b
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 167
    .line 168
    invoke-virtual {p1, v2, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    return p0

    .line 177
    :pswitch_c
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 178
    .line 179
    const-string/jumbo p0, "style"

    .line 180
    .line 181
    .line 182
    const-string v0, ""

    .line 183
    .line 184
    invoke-virtual {p1, p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    const-string v2, "SHORTS"

    .line 189
    .line 190
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-nez p0, :cond_2

    .line 195
    .line 196
    invoke-virtual {p1, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0, v1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    const-string/jumbo p1, "shorts"

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_3

    .line 216
    .line 217
    :cond_2
    move v4, v7

    .line 218
    :cond_3
    return v4

    .line 219
    :pswitch_d
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    return p0

    .line 226
    :pswitch_e
    check-cast p1, Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    xor-int/2addr p0, v7

    .line 233
    return p0

    .line 234
    :pswitch_f
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    return p0

    .line 241
    :pswitch_10
    const-string p0, "BADGE_STYLE_TYPE_MEMBERS_ONLY"

    .line 242
    .line 243
    check-cast p1, Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    return p0

    .line 250
    :pswitch_11
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 251
    .line 252
    const-string p0, "metadataBadgeRenderer"

    .line 253
    .line 254
    invoke-static {p1, p0, v5, v1, v6}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    const-string p1, "PRIVACY_UNLISTED"

    .line 259
    .line 260
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    return p0

    .line 265
    :pswitch_12
    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItemExtractor;

    .line 266
    .line 267
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    return p0

    .line 272
    :pswitch_13
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 273
    .line 274
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    xor-int/2addr p0, v7

    .line 279
    return p0

    .line 280
    :pswitch_14
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 281
    .line 282
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    .line 283
    .line 284
    .line 285
    move-result p0

    .line 286
    xor-int/2addr p0, v7

    .line 287
    return p0

    .line 288
    :pswitch_15
    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    .line 289
    .line 290
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    return p0

    .line 295
    :pswitch_16
    check-cast p1, Ljava/lang/String;

    .line 296
    .line 297
    const-string p0, "Age-restricted"

    .line 298
    .line 299
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result p0

    .line 303
    return p0

    .line 304
    :pswitch_17
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 305
    .line 306
    const-string p0, "playlistSidebarPrimaryInfoRenderer"

    .line 307
    .line 308
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result p0

    .line 312
    return p0

    .line 313
    :pswitch_18
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 314
    .line 315
    const-string p0, "playlistSidebarSecondaryInfoRenderer"

    .line 316
    .line 317
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    const-string/jumbo p1, "videoOwner"

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    const-string/jumbo p1, "videoOwnerRenderer"

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    return p0

    .line 336
    :pswitch_19
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 337
    .line 338
    const-string p0, "continuationCommand"

    .line 339
    .line 340
    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result p0

    .line 344
    return p0

    .line 345
    :pswitch_1a
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 346
    .line 347
    const-string p0, "identifier"

    .line 348
    .line 349
    const-string/jumbo v0, "tag"

    .line 350
    .line 351
    .line 352
    const-string/jumbo v1, "showEngagementPanelEndpoint"

    .line 353
    .line 354
    .line 355
    invoke-static {p1, v1, p0, v0, v6}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    const-string p1, "engagement-panel-course-metadata"

    .line 360
    .line 361
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    return p0

    .line 366
    :pswitch_1b
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result p0

    .line 372
    xor-int/2addr p0, v7

    .line 373
    return p0

    .line 374
    :pswitch_1c
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 375
    .line 376
    const-string p0, "engagementPanelSectionListRenderer"

    .line 377
    .line 378
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    const-string p1, "panelIdentifier"

    .line 383
    .line 384
    invoke-virtual {p0, p1, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    const-string p1, "engagement-panel-macro-markers-description-chapters"

    .line 389
    .line 390
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result p0

    .line 394
    return p0

    .line 395
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
