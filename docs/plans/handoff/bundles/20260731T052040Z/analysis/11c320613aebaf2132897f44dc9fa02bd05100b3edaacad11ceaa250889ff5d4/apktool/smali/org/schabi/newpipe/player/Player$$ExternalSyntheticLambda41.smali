.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;->$r8$classId:I

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
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;->f$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    check-cast p0, Ljava/util/Locale;

    .line 19
    .line 20
    check-cast p1, Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_1
    check-cast p0, Ljava/util/Comparator;

    .line 28
    .line 29
    check-cast p1, Ljava/util/List;

    .line 30
    .line 31
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/ListHelper;->$r8$lambda$Ym_K-TWtQOXZPWZ4u_KnchNzCxw(Ljava/util/Comparator;Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_2
    check-cast p0, Landroid/content/Context;

    .line 37
    .line 38
    check-cast p1, Ljava/util/List;

    .line 39
    .line 40
    new-instance v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 41
    .line 42
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_3
    check-cast p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 47
    .line 48
    check-cast p1, Ljava/util/Map$Entry;

    .line 49
    .line 50
    new-instance v0, Landroid/util/Pair;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/util/function/Function;

    .line 57
    .line 58
    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/Float;

    .line 69
    .line 70
    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :pswitch_4
    check-cast p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    .line 75
    .line 76
    check-cast p1, Lorg/schabi/newpipe/player/notification/NotificationActionData;

    .line 77
    .line 78
    new-instance v0, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;

    .line 79
    .line 80
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 81
    .line 82
    invoke-direct {v0, p1, p0}, Lorg/schabi/newpipe/player/mediasession/SessionConnectorActionProvider;-><init>(Lorg/schabi/newpipe/player/notification/NotificationActionData;Lorg/schabi/newpipe/player/PlayerService;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :pswitch_5
    check-cast p0, Landroid/app/Activity;

    .line 87
    .line 88
    check-cast p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    .line 89
    .line 90
    iget p1, p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;->resource:I

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_6
    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;

    .line 98
    .line 99
    check-cast p1, [Ljava/lang/String;

    .line 100
    .line 101
    aget-object v0, p1, v1

    .line 102
    .line 103
    const-string v1, "http://"

    .line 104
    .line 105
    const-string v2, "https://"

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "https://www.youtube.com/channel/"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_0

    .line 118
    .line 119
    new-instance v1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    .line 120
    .line 121
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p0, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 124
    .line 125
    iget p0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 126
    .line 127
    const/4 v2, 0x2

    .line 128
    aget-object p1, p1, v2

    .line 129
    .line 130
    invoke-direct {v1, v0, p0, p1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    const/4 v1, 0x0

    .line 135
    :goto_0
    return-object v1

    .line 136
    :pswitch_7
    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    .line 137
    .line 138
    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;

    .line 139
    .line 140
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;

    .line 145
    .line 146
    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;-><init>()V

    .line 147
    .line 148
    .line 149
    iget v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 150
    .line 151
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iput-object v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getContent()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    iput-object v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    .line 166
    .line 167
    iput-boolean v3, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->isUrl:Z

    .line 168
    .line 169
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iput-object v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 174
    .line 175
    iget v2, v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 176
    .line 177
    iput v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->averageBitrate:I

    .line 178
    .line 179
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iput-object v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackId:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    iput-object v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackName:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioLocale()Ljava/util/Locale;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iput-object v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioLocale:Ljava/util/Locale;

    .line 196
    .line 197
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iput-object v2, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 202
    .line 203
    iput-object v0, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 204
    .line 205
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 206
    .line 207
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 208
    .line 209
    if-eq p0, v0, :cond_1

    .line 210
    .line 211
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 212
    .line 213
    if-eq p0, v0, :cond_1

    .line 214
    .line 215
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->getIsUrl()Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-nez p0, :cond_2

    .line 220
    .line 221
    :cond_1
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->DASH:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 222
    .line 223
    iput-object p0, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 224
    .line 225
    :cond_2
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->build()Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    return-object p0

    .line 230
    :pswitch_8
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 231
    .line 232
    check-cast p1, Ljava/util/Map$Entry;

    .line 233
    .line 234
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;

    .line 235
    .line 236
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    check-cast v1, Ljava/lang/String;

    .line 241
    .line 242
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 247
    .line 248
    invoke-direct {v0, p0, v1, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)V

    .line 249
    .line 250
    .line 251
    return-object v0

    .line 252
    :pswitch_9
    check-cast p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;

    .line 253
    .line 254
    check-cast p1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 255
    .line 256
    invoke-static {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->$r8$lambda$mjwPKgl3KhzMQOD_jIUCyqzHL5Q(Lorg/ocpsoft/prettytime/i18n/Resources_ja;Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    return-object p0

    .line 261
    :pswitch_a
    check-cast p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;

    .line 262
    .line 263
    check-cast p1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 264
    .line 265
    invoke-static {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->$r8$lambda$Jau-JbEaLAVXDipJ8lUjKgYC3Qo(Lorg/ocpsoft/prettytime/i18n/Resources_fi;Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    return-object p0

    .line 270
    :pswitch_b
    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 271
    .line 272
    check-cast p1, Ljava/util/Map$Entry;

    .line 273
    .line 274
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->wrapEntry(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableEntry;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    return-object p0

    .line 279
    :pswitch_c
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    .line 280
    .line 281
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    return-object v0

    .line 285
    :pswitch_d
    check-cast p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 286
    .line 287
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 288
    .line 289
    iget p1, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->selectedAudioStreamIndex:I

    .line 290
    .line 291
    iget p0, p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->selectedAudioStreamIndex:I

    .line 292
    .line 293
    if-eq p1, p0, :cond_3

    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_3
    const/4 v1, 0x0

    .line 297
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    return-object p0

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;->$r8$classId:I

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
