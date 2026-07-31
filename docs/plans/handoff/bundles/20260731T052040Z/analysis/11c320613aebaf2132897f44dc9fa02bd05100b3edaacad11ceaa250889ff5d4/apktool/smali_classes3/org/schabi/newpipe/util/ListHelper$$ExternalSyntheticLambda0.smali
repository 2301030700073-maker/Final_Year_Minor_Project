.class public final synthetic Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;->$r8$classId:I

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
    iget v0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 2

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object p0, Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;->INSTANCE:Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    sget-object p0, Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$2;->INSTANCE:Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$2;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 27
    .line 28
    sget-object p0, Lorg/schabi/newpipe/util/SerializedCache;->INSTANCE:Lorg/schabi/newpipe/util/SerializedCache;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lorg/schabi/newpipe/util/SerializedCache;->put(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_3
    check-cast p1, Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_4
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_5
    check-cast p1, Ljava/util/List;

    .line 74
    .line 75
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_6
    check-cast p1, Lj$/nio/file/Path;

    .line 81
    .line 82
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_7
    check-cast p1, Landroid/util/Pair;

    .line 96
    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, "="

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    array-length p1, p0

    .line 138
    add-int/lit8 p1, p1, 0x4

    .line 139
    .line 140
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 147
    .line 148
    .line 149
    array-length v0, p0

    .line 150
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :pswitch_8
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 162
    .line 163
    const/4 p0, -0x1

    .line 164
    const-string v0, "tab_id"

    .line 165
    .line 166
    invoke-virtual {p1, p0, v0}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-ne v0, p0, :cond_0

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->typeFrom(I)Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    if-nez p0, :cond_1

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    packed-switch v0, :pswitch_data_1

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    goto :goto_0

    .line 192
    :pswitch_9
    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

    .line 193
    .line 194
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :pswitch_a
    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    .line 199
    .line 200
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :pswitch_b
    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    .line 205
    .line 206
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :pswitch_c
    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    .line 211
    .line 212
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 213
    .line 214
    .line 215
    :goto_0
    return-object v1

    .line 216
    :pswitch_d
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 217
    .line 218
    iget-object p0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->entries:Ljava/lang/String;

    .line 219
    .line 220
    return-object p0

    .line 221
    :pswitch_e
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 222
    .line 223
    iget-object p0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->summary:Ljava/lang/String;

    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_f
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 227
    .line 228
    iget-object p0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->title:Ljava/lang/String;

    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_10
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;

    .line 232
    .line 233
    iget-object p0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchSpecificDTO;->item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 234
    .line 235
    return-object p0

    .line 236
    :pswitch_11
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;

    .line 237
    .line 238
    iget-object p0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction$FuzzySearchGeneralDTO;->item:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 239
    .line 240
    return-object p0

    .line 241
    :pswitch_12
    check-cast p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 242
    .line 243
    iget p0, p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->preferencesResId:I

    .line 244
    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    return-object p0

    .line 250
    :pswitch_13
    check-cast p1, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    return-object p0

    .line 261
    :pswitch_14
    check-cast p1, Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 268
    .line 269
    return-object p0

    .line 270
    :pswitch_15
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 271
    .line 272
    iget-object p0, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->sortedVideoStreams:Ljava/util/ArrayList;

    .line 273
    .line 274
    return-object p0

    .line 275
    :pswitch_16
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 276
    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormatId()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getNameById(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v0, " "

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    return-object p0

    .line 308
    :pswitch_17
    check-cast p1, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    return-object p0

    .line 315
    :pswitch_18
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 316
    .line 317
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    return-object p0

    .line 322
    :pswitch_19
    const-class p0, Landroidx/appcompat/app/AppCompatActivity;

    .line 323
    .line 324
    check-cast p1, Landroid/content/Context;

    .line 325
    .line 326
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    .line 331
    .line 332
    return-object p0

    .line 333
    :pswitch_1a
    check-cast p1, Ljava/util/List;

    .line 334
    .line 335
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 336
    .line 337
    .line 338
    move-result p0

    .line 339
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    return-object p0

    .line 344
    :pswitch_1b
    check-cast p1, Landroid/view/ViewParent;

    .line 345
    .line 346
    check-cast p1, Landroid/view/ViewGroup;

    .line 347
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    return-object p0

    .line 353
    :pswitch_1c
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 354
    .line 355
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamSegments()Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    return-object p0

    .line 360
    :pswitch_1d
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 361
    .line 362
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    return-object p0

    .line 367
    :pswitch_1e
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 368
    .line 369
    iget-object p0, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->sortedVideoStreams:Ljava/util/ArrayList;

    .line 370
    .line 371
    iget p1, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->selectedVideoStreamIndex:I

    .line 372
    .line 373
    if-ltz p1, :cond_3

    .line 374
    .line 375
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-lt p1, v0, :cond_2

    .line 380
    .line 381
    goto :goto_1

    .line 382
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    move-object v1, p0

    .line 387
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 388
    .line 389
    :cond_3
    :goto_1
    return-object v1

    .line 390
    :pswitch_1f
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 391
    .line 392
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 393
    .line 394
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 395
    .line 396
    .line 397
    return-object p0

    .line 398
    :pswitch_20
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 399
    .line 400
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    return-object p0

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;->$r8$classId:I

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
