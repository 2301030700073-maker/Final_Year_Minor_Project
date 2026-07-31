.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;
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
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;->$r8$classId:I

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
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;->$r8$classId:I

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
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    sget-object v3, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 9
    .line 10
    const-string v4, "hls"

    .line 11
    .line 12
    const-string v5, " "

    .line 13
    .line 14
    const-string/jumbo v6, "tech"

    .line 15
    .line 16
    .line 17
    const-string v7, "content"

    .line 18
    .line 19
    const-string/jumbo v8, "url"

    .line 20
    .line 21
    .line 22
    const/4 v9, -0x1

    .line 23
    const/4 v10, 0x1

    .line 24
    const/4 v11, 0x0

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    move-object v0, v1

    .line 29
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 30
    .line 31
    const-string v1, "height"

    .line 32
    .line 33
    invoke-virtual {v0, v9, v1}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    new-instance v2, Lorg/schabi/newpipe/extractor/Image;

    .line 38
    .line 39
    invoke-virtual {v0, v8, v11}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->fixThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string/jumbo v4, "width"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v9, v4}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-gtz v1, :cond_0

    .line 55
    .line 56
    sget-object v4, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/16 v4, 0xaf

    .line 60
    .line 61
    if-ge v1, v4, :cond_1

    .line 62
    .line 63
    sget-object v4, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/16 v4, 0x2d0

    .line 67
    .line 68
    if-ge v1, v4, :cond_2

    .line 69
    .line 70
    sget-object v4, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    sget-object v4, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->HIGH:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 74
    .line 75
    :goto_0
    invoke-direct {v2, v3, v1, v0, v4}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :pswitch_0
    move-object v0, v1

    .line 80
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 81
    .line 82
    const-string/jumbo v1, "value"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, v11}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0

    .line 90
    :pswitch_1
    move-object v0, v1

    .line 91
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 92
    .line 93
    const-string v1, "params"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

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
    :pswitch_2
    move-object v0, v1

    .line 105
    check-cast v0, Lorg/schabi/newpipe/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    .line 106
    .line 107
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getValue()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    :pswitch_3
    move-object v0, v1

    .line 113
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 114
    .line 115
    const-string/jumbo v1, "singleActionEmergencySupportRenderer"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :pswitch_4
    move-object v0, v1

    .line 124
    check-cast v0, Ljava/lang/String;

    .line 125
    .line 126
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :cond_3
    return-object v0

    .line 143
    :pswitch_5
    move-object v0, v1

    .line 144
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 145
    .line 146
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    .line 147
    .line 148
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->PAGE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    .line 149
    .line 150
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

    .line 151
    .line 152
    .line 153
    return-object v1

    .line 154
    :pswitch_6
    move-object v0, v1

    .line 155
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 156
    .line 157
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    .line 158
    .line 159
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->CAROUSEL:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    .line 160
    .line 161
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

    .line 162
    .line 163
    .line 164
    return-object v1

    .line 165
    :pswitch_7
    move-object v0, v1

    .line 166
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 167
    .line 168
    const-string/jumbo v1, "topicChannelDetailsRenderer"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    return-object v0

    .line 176
    :pswitch_8
    move-object v0, v1

    .line 177
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 178
    .line 179
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    .line 180
    .line 181
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->C4_TABBED:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    .line 182
    .line 183
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

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
    const-string v1, "channelAgeGateRenderer"

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    return-object v0

    .line 197
    :pswitch_a
    move-object v0, v1

    .line 198
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 199
    .line 200
    const-string/jumbo v1, "tabRenderer"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const-string v1, "sectionListRenderer"

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v1, "contents"

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    return-object v0

    .line 228
    :pswitch_b
    move-object v0, v1

    .line 229
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 230
    .line 231
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    .line 232
    .line 233
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;->INTERACTIVE_TABBED:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    .line 234
    .line 235
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V

    .line 236
    .line 237
    .line 238
    return-object v1

    .line 239
    :pswitch_c
    move-object v0, v1

    .line 240
    check-cast v0, Ljava/util/Map$Entry;

    .line 241
    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Ljava/lang/String;

    .line 247
    .line 248
    return-object v0

    .line 249
    :pswitch_d
    move-object v0, v1

    .line 250
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 251
    .line 252
    const-string v1, "id"

    .line 253
    .line 254
    invoke-virtual {v0, v9, v1}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v13

    .line 262
    const-string v1, "playlistUrl"

    .line 263
    .line 264
    const-string v2, ""

    .line 265
    .line 266
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    if-eqz v13, :cond_5

    .line 271
    .line 272
    if-eqz v14, :cond_4

    .line 273
    .line 274
    new-instance v12, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 275
    .line 276
    const/16 v19, 0x0

    .line 277
    .line 278
    const/4 v15, 0x1

    .line 279
    sget-object v16, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 280
    .line 281
    sget-object v17, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 282
    .line 283
    const-string v18, ""

    .line 284
    .line 285
    const/16 v20, 0x0

    .line 286
    .line 287
    const/16 v21, 0x0

    .line 288
    .line 289
    invoke-direct/range {v12 .. v21}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 290
    .line 291
    .line 292
    move-object v11, v12

    .line 293
    goto :goto_1

    .line 294
    :cond_4
    const-string v0, "The content of the video stream has been not set or is null. Please specify a non-null one with setContent."

    .line 295
    .line 296
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_5
    const-string v0, "The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    .line 301
    .line 302
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :goto_1
    return-object v11

    .line 306
    :pswitch_e
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKioskExtractor;

    .line 307
    .line 308
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 309
    .line 310
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCRecentKioskExtractor;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 311
    .line 312
    .line 313
    return-object v0

    .line 314
    :pswitch_f
    move-object v0, v1

    .line 315
    check-cast v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 316
    .line 317
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->getInstant()Lj$/time/Instant;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    return-object v0

    .line 322
    :pswitch_10
    move-object v0, v1

    .line 323
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 324
    .line 325
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    return-object v0

    .line 330
    :pswitch_11
    move-object v0, v1

    .line 331
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 332
    .line 333
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->$r8$lambda$YwxrQqaLZOXW7Q5GAFeW9CCMw84(Lcom/grack/nanojson/JsonObject;)Lj$/util/stream/Stream;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    return-object v0

    .line 338
    :pswitch_12
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 345
    .line 346
    return-object v0

    .line 347
    :pswitch_13
    move-object v0, v1

    .line 348
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 349
    .line 350
    const-string/jumbo v1, "urls"

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    return-object v0

    .line 358
    :pswitch_14
    move-object v0, v1

    .line 359
    check-cast v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;

    .line 360
    .line 361
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    .line 362
    .line 363
    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    .line 364
    .line 365
    .line 366
    iget-object v2, v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;->urlValue:Lcom/grack/nanojson/JsonObject;

    .line 367
    .line 368
    invoke-virtual {v2, v6, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    iput-object v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    .line 373
    .line 374
    iget-object v2, v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;->urlValue:Lcom/grack/nanojson/JsonObject;

    .line 375
    .line 376
    invoke-virtual {v2, v8, v11}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    iput-object v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    .line 381
    .line 382
    iput-boolean v10, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->isUrl:Z

    .line 383
    .line 384
    iput v9, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->averageBitrate:I

    .line 385
    .line 386
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;->urlKey:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-eqz v2, :cond_6

    .line 393
    .line 394
    iput-object v3, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 395
    .line 396
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    goto :goto_2

    .line 401
    :cond_6
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iput-object v0, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 406
    .line 407
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    :goto_2
    return-object v0

    .line 412
    :pswitch_15
    move-object v0, v1

    .line 413
    check-cast v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;

    .line 414
    .line 415
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;->streamJsonObj:Lcom/grack/nanojson/JsonObject;

    .line 416
    .line 417
    const-string/jumbo v7, "videoSize"

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v7}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    new-instance v7, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;

    .line 425
    .line 426
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 427
    .line 428
    .line 429
    sget-object v9, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 430
    .line 431
    iput-object v9, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 432
    .line 433
    iget-object v9, v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;->urlValue:Lcom/grack/nanojson/JsonObject;

    .line 434
    .line 435
    invoke-virtual {v9, v6, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    iput-object v5, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v9, v8, v11}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    iput-object v5, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    .line 446
    .line 447
    iput-boolean v10, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isUrl:Z

    .line 448
    .line 449
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 450
    .line 451
    iput-object v5, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    .line 452
    .line 453
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    instance-of v6, v5, Ljava/lang/Number;

    .line 458
    .line 459
    if-eqz v6, :cond_7

    .line 460
    .line 461
    check-cast v5, Ljava/lang/Number;

    .line 462
    .line 463
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    goto :goto_3

    .line 468
    :cond_7
    move v5, v2

    .line 469
    :goto_3
    invoke-virtual {v1, v10}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    instance-of v6, v1, Ljava/lang/Number;

    .line 474
    .line 475
    if-eqz v6, :cond_8

    .line 476
    .line 477
    check-cast v1, Ljava/lang/Number;

    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string/jumbo v5, "x"

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    iput-object v1, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    .line 505
    .line 506
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;->urlKey:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-eqz v1, :cond_9

    .line 513
    .line 514
    iput-object v3, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 515
    .line 516
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    goto :goto_4

    .line 521
    :cond_9
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 526
    .line 527
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    :goto_4
    return-object v0

    .line 532
    :pswitch_16
    move-object v0, v1

    .line 533
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 534
    .line 535
    const-string v1, "name"

    .line 536
    .line 537
    invoke-virtual {v0, v1, v11}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    return-object v0

    .line 542
    :pswitch_17
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRelatedPlaylistInfoItemExtractor;

    .line 543
    .line 544
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 545
    .line 546
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRelatedPlaylistInfoItemExtractor;-><init>(Lorg/jsoup/nodes/Element;)V

    .line 547
    .line 548
    .line 549
    return-object v0

    .line 550
    :pswitch_18
    move-object v0, v1

    .line 551
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 552
    .line 553
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampStreamExtractor;->$r8$lambda$amz2Z26z-mIHCbaz8DKhJsw3PJA(Lorg/jsoup/nodes/Element;)Lj$/util/stream/Stream;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    return-object v0

    .line 558
    :pswitch_19
    move-object v0, v1

    .line 559
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 560
    .line 561
    const-string/jumbo v1, "src"

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    return-object v0

    .line 569
    :pswitch_1a
    move-object v0, v1

    .line 570
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 571
    .line 572
    const-string v1, "li"

    .line 573
    .line 574
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    return-object v0

    .line 579
    :pswitch_1b
    move-object v0, v1

    .line 580
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 581
    .line 582
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampSearchExtractor;->$r8$lambda$if9KKGsYQ9Y28UFV0fF9L0490e4(Lorg/jsoup/nodes/Element;)Lj$/util/stream/Stream;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    return-object v0

    .line 587
    :pswitch_1c
    move-object v0, v1

    .line 588
    check-cast v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    .line 589
    .line 590
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    .line 591
    .line 592
    iget-object v0, v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    const-string/jumbo v3, "title"

    .line 599
    .line 600
    .line 601
    if-eq v0, v10, :cond_b

    .line 602
    .line 603
    const/4 v4, 0x2

    .line 604
    if-eq v0, v4, :cond_b

    .line 605
    .line 606
    const/4 v2, 0x3

    .line 607
    if-eq v0, v2, :cond_a

    .line 608
    .line 609
    invoke-virtual {v1, v3, v11}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    goto :goto_5

    .line 614
    :cond_a
    const-string v0, "pageHeaderViewModel"

    .line 615
    .line 616
    const-string v2, "dynamicTextViewModel"

    .line 617
    .line 618
    invoke-static {v1, v7, v0, v3, v2}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    const-string/jumbo v2, "text"

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    const-string v2, "pageTitle"

    .line 630
    .line 631
    invoke-virtual {v1, v2, v11}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-virtual {v0, v7, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    goto :goto_5

    .line 640
    :cond_b
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    :goto_5
    return-object v0

    .line 649
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
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;->$r8$classId:I

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
