.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;
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
    iput p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;->$r8$classId:I

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
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;->$r8$classId:I

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
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;->$r8$classId:I

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
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;->$r8$classId:I

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
    .locals 5

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object p1, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    :cond_0
    return v0

    .line 20
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 27
    .line 28
    if-eq p0, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object p1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 35
    .line 36
    if-ne p0, p1, :cond_2

    .line 37
    .line 38
    :cond_1
    move v0, v1

    .line 39
    :cond_2
    return v0

    .line 40
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    xor-int/2addr p0, v1

    .line 47
    return p0

    .line 48
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object p1, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 61
    .line 62
    if-eq p0, p1, :cond_3

    .line 63
    .line 64
    move v0, v1

    .line 65
    :cond_3
    return v0

    .line 66
    :pswitch_3
    check-cast p1, Ljava/util/List;

    .line 67
    .line 68
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :pswitch_4
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 74
    .line 75
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    sget-object p1, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 80
    .line 81
    if-ne p0, p1, :cond_4

    .line 82
    .line 83
    move v0, v1

    .line 84
    :cond_4
    return v0

    .line 85
    :pswitch_5
    check-cast p1, Landroid/util/Pair;

    .line 86
    .line 87
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    move v2, v0

    .line 96
    :goto_0
    if-ge v2, p1, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    add-int/2addr v2, v3

    .line 114
    goto :goto_0

    .line 115
    :cond_6
    move v0, v1

    .line 116
    :goto_1
    xor-int/lit8 p0, v0, 0x1

    .line 117
    .line 118
    return p0

    .line 119
    :pswitch_6
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 120
    .line 121
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    return p0

    .line 126
    :pswitch_7
    check-cast p1, Landroid/util/Pair;

    .line 127
    .line 128
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p0, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    xor-int/2addr p0, v1

    .line 137
    return p0

    .line 138
    :pswitch_8
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 139
    .line 140
    instance-of p0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$DefaultKioskTab;

    .line 141
    .line 142
    return p0

    .line 143
    :pswitch_9
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 144
    .line 145
    instance-of p0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    .line 146
    .line 147
    if-eqz p0, :cond_7

    .line 148
    .line 149
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    .line 150
    .line 151
    iget p0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    .line 152
    .line 153
    sget-object v2, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 154
    .line 155
    iget v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 156
    .line 157
    if-ne p0, v2, :cond_7

    .line 158
    .line 159
    iget-object p0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    .line 160
    .line 161
    const-string p1, "Trending"

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-eqz p0, :cond_7

    .line 168
    .line 169
    move v0, v1

    .line 170
    :cond_7
    xor-int/lit8 p0, v0, 0x1

    .line 171
    .line 172
    return p0

    .line 173
    :pswitch_a
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 174
    .line 175
    instance-of p0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    .line 176
    .line 177
    if-eqz p0, :cond_8

    .line 178
    .line 179
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    .line 180
    .line 181
    iget p0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    .line 182
    .line 183
    sget-object v2, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 184
    .line 185
    iget v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 186
    .line 187
    if-ne p0, v2, :cond_8

    .line 188
    .line 189
    iget-object p0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    .line 190
    .line 191
    const-string p1, "Top 50"

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-eqz p0, :cond_8

    .line 198
    .line 199
    move v0, v1

    .line 200
    :cond_8
    xor-int/lit8 p0, v0, 0x1

    .line 201
    .line 202
    return p0

    .line 203
    :pswitch_b
    check-cast p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 204
    .line 205
    iget-boolean p0, p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->searchable:Z

    .line 206
    .line 207
    return p0

    .line 208
    :pswitch_c
    check-cast p1, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    iget p0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 215
    .line 216
    if-lt p0, v1, :cond_9

    .line 217
    .line 218
    move v0, v1

    .line 219
    :cond_9
    return v0

    .line 220
    :pswitch_d
    check-cast p1, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks$Group;->isSelected()Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    return p0

    .line 227
    :pswitch_e
    check-cast p1, Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 228
    .line 229
    iget p0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 230
    .line 231
    if-lez p0, :cond_a

    .line 232
    .line 233
    move v0, v1

    .line 234
    :cond_a
    return v0

    .line 235
    :pswitch_f
    check-cast p1, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 236
    .line 237
    const/4 p0, 0x3

    .line 238
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks$Group;->getType()I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-ne p0, p1, :cond_b

    .line 243
    .line 244
    move v0, v1

    .line 245
    :cond_b
    return v0

    .line 246
    :pswitch_10
    const-class p0, Landroidx/appcompat/app/AppCompatActivity;

    .line 247
    .line 248
    check-cast p1, Landroid/content/Context;

    .line 249
    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    return p0

    .line 255
    :pswitch_11
    const-class p0, Landroid/view/ViewGroup;

    .line 256
    .line 257
    check-cast p1, Landroid/view/ViewParent;

    .line 258
    .line 259
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    return p0

    .line 264
    :pswitch_12
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 265
    .line 266
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-static {p0}, Lokio/Okio;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    xor-int/2addr p0, v1

    .line 275
    return p0

    .line 276
    :pswitch_13
    check-cast p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 277
    .line 278
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result p0

    .line 282
    return p0

    .line 283
    :pswitch_14
    const-class p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    return p0

    .line 290
    :pswitch_15
    const-class p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 291
    .line 292
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 293
    .line 294
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    return p0

    .line 299
    :pswitch_16
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 300
    .line 301
    invoke-static {p1}, Lj$/util/Objects;->nonNull(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result p0

    .line 305
    return p0

    .line 306
    :pswitch_17
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 307
    .line 308
    iget-wide p0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    .line 309
    .line 310
    const-wide/16 v2, 0x0

    .line 311
    .line 312
    cmp-long p0, p0, v2

    .line 313
    .line 314
    if-lez p0, :cond_c

    .line 315
    .line 316
    move v0, v1

    .line 317
    :cond_c
    return v0

    .line 318
    :pswitch_18
    const-class p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 319
    .line 320
    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItem;

    .line 321
    .line 322
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p0

    .line 326
    return p0

    .line 327
    :pswitch_19
    const-class p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    .line 328
    .line 329
    check-cast p1, Ljava/lang/Throwable;

    .line 330
    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    return p0

    .line 336
    :pswitch_1a
    check-cast p1, Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    if-nez p0, :cond_d

    .line 343
    .line 344
    const-string p0, "null"

    .line 345
    .line 346
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p0

    .line 350
    if-nez p0, :cond_d

    .line 351
    .line 352
    move v0, v1

    .line 353
    :cond_d
    return v0

    .line 354
    :pswitch_1b
    check-cast p1, [Ljava/lang/String;

    .line 355
    .line 356
    array-length p0, p1

    .line 357
    if-le p0, v1, :cond_e

    .line 358
    .line 359
    move v0, v1

    .line 360
    :cond_e
    return v0

    .line 361
    :pswitch_1c
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 362
    .line 363
    iget p0, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->selectedVideoStreamIndex:I

    .line 364
    .line 365
    if-ltz p0, :cond_f

    .line 366
    .line 367
    iget-object p1, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->sortedVideoStreams:Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    if-ge p0, p1, :cond_f

    .line 374
    .line 375
    move v0, v1

    .line 376
    :cond_f
    return v0

    .line 377
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
