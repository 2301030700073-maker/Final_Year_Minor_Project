.class public final Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;
.super Lorg/schabi/newpipe/extractor/search/SearchExtractor;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public baseUrl:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lcom/grack/nanojson/JsonObject;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->$r8$classId:I

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 20
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->baseUrl:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->$r8$classId:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 9
    .line 10
    check-cast p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->baseUrl:Ljava/io/Serializable;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->$r8$classId:I

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 22
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->baseUrl:Ljava/io/Serializable;

    return-void
.end method

.method private final onFetchPage$org$schabi$newpipe$extractor$services$peertube$extractors$PeertubeChannelTabExtractor(Lkotlin/io/CloseableKt;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onFetchPage$org$schabi$newpipe$extractor$services$soundcloud$extractors$SoundcloudChannelTabExtractor(Lkotlin/io/CloseableKt;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 10
    .line 11
    iget v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 12
    .line 13
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->baseUrl:Ljava/io/Serializable;

    .line 17
    .line 18
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 19
    .line 20
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string v2, "events"

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v2, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    invoke-direct {v2, v0, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    new-instance p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_0
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    .line 49
    .line 50
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->baseUrl:Ljava/io/Serializable;

    .line 51
    .line 52
    check-cast v2, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, -0x1

    .line 66
    sparse-switch v4, :sswitch_data_0

    .line 67
    .line 68
    .line 69
    :goto_0
    move v1, v5

    .line 70
    goto :goto_1

    .line 71
    :sswitch_0
    const-string v1, "likes"

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 v1, 0x3

    .line 81
    goto :goto_1

    .line 82
    :sswitch_1
    const-string/jumbo v1, "tracks"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x2

    .line 93
    goto :goto_1

    .line 94
    :sswitch_2
    const-string v4, "albums"

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :sswitch_3
    const-string v1, "playlists"

    .line 104
    .line 105
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const/4 v1, 0x0

    .line 113
    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 114
    .line 115
    .line 116
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 117
    .line 118
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const-string v1, "Unsupported tab: "

    .line 123
    .line 124
    invoke-static {v1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :pswitch_1
    const-string v1, "/likes"

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :pswitch_2
    const-string v1, "/tracks"

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :pswitch_3
    const-string v1, "/albums"

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :pswitch_4
    const-string v1, "/playlists_without_albums"

    .line 142
    .line 143
    :goto_2
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v5, "https://api-v2.soundcloud.com/users/"

    .line 150
    .line 151
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, "?client_id="

    .line 161
    .line 162
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, "&limit=20&linked_partitioning=1"

    .line 169
    .line 170
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :pswitch_5
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    .line 186
    .line 187
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->baseUrl:Ljava/io/Serializable;

    .line 188
    .line 189
    check-cast v1, Ljava/lang/String;

    .line 190
    .line 191
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 192
    .line 193
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeChannelLinkHandlerFactory;->getUrlSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v1, "/api/v1/"

    .line 214
    .line 215
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, "?start=0&count=12"

    .line 225
    .line 226
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :sswitch_data_0
    .sparse-switch
        -0x6f36471f -> :sswitch_3
        -0x5459b01c -> :sswitch_2
        -0x3399c778 -> :sswitch_1
        0x62343bc -> :sswitch_0
    .end sparse-switch

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 8

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "Page doesn\'t contain an URL"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->EMPTY:Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    if-eqz p1, :cond_7

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_7

    .line 26
    .line 27
    new-instance p0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    .line 28
    .line 29
    iget v0, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    move v1, v3

    .line 44
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const-string v5, ""

    .line 49
    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    sget-object v6, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 69
    .line 70
    sget-object v6, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 71
    .line 72
    sget-object v7, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 73
    .line 74
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v6, p1, v4, v7}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget v6, p1, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    .line 83
    .line 84
    const/16 v7, 0x190

    .line 85
    .line 86
    if-ge v6, v7, :cond_4

    .line 87
    .line 88
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lokhttp3/ConnectionPool;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iget-object p1, p1, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 93
    .line 94
    check-cast p1, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v6, p1}, Lokhttp3/ConnectionPool;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .line 102
    const-string v6, "collection"

    .line 103
    .line 104
    invoke-virtual {p1, v6}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    new-instance v7, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    invoke-direct {v7, p0, v3}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 118
    .line 119
    .line 120
    :try_start_1
    const-string v6, "next_href"

    .line 121
    .line 122
    invoke-virtual {p1, v6, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v6, "client_id="

    .line 127
    .line 128
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-nez v6, :cond_2

    .line 133
    .line 134
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p1, "&client_id="

    .line 147
    .line 148
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    goto :goto_0

    .line 159
    :catch_0
    move-object p1, v5

    .line 160
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-le v6, v2, :cond_3

    .line 169
    .line 170
    move-object v5, p1

    .line 171
    goto :goto_1

    .line 172
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    const/4 v2, 0x3

    .line 175
    if-ge v1, v2, :cond_5

    .line 176
    .line 177
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_0

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :catch_1
    move-exception p0

    .line 185
    const-string p1, "Could not parse json response"

    .line 186
    .line 187
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_4
    const-string p0, "Could not get streams from API, HTTP "

    .line 192
    .line 193
    invoke-static {v6, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_5
    :goto_1
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_6

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_6
    new-instance v4, Lorg/schabi/newpipe/extractor/Page;

    .line 209
    .line 210
    invoke-direct {v4, v5}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :goto_2
    new-instance p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 214
    .line 215
    invoke-direct {p1, p0, v4}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    .line 216
    .line 217
    .line 218
    move-object v4, p1

    .line 219
    goto :goto_3

    .line 220
    :cond_7
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :goto_3
    return-object v4

    .line 224
    :pswitch_1
    if-eqz p1, :cond_a

    .line 225
    .line 226
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_a

    .line 235
    .line 236
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->downloader:Lkotlin/io/CloseableKt;

    .line 237
    .line 238
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;)Landroidx/recyclerview/widget/ChildHelper;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v0, v0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 247
    .line 248
    check-cast v0, Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_8

    .line 255
    .line 256
    :try_start_2
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lokhttp3/ConnectionPool;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1, v0}, Lokhttp3/ConnectionPool;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Lcom/grack/nanojson/JsonObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 265
    .line 266
    move-object v4, v0

    .line 267
    goto :goto_4

    .line 268
    :catch_2
    move-exception p0

    .line 269
    const-string p1, "Could not parse json data for account info"

    .line 270
    .line 271
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    .line 276
    .line 277
    invoke-static {v4}, Landroidx/core/os/BundleKt;->validate(Lcom/grack/nanojson/JsonObject;)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    .line 281
    .line 282
    iget v1, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 283
    .line 284
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;-><init>(I)V

    .line 285
    .line 286
    .line 287
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 288
    .line 289
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getBaseUrl()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-static {v0, v4, p0, v3}, Landroidx/core/os/BundleKt;->collectItemsFrom(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Z)V

    .line 294
    .line 295
    .line 296
    new-instance p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 297
    .line 298
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    const-string/jumbo v1, "total"

    .line 303
    .line 304
    .line 305
    const-wide/16 v2, 0x0

    .line 306
    .line 307
    invoke-virtual {v4, v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;J)J

    .line 308
    .line 309
    .line 310
    move-result-wide v1

    .line 311
    invoke-static {p1, v1, v2}, Landroidx/core/os/BundleKt;->getNextPage(Ljava/lang/String;J)Lorg/schabi/newpipe/extractor/Page;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    .line 316
    .line 317
    .line 318
    move-object v4, p0

    .line 319
    goto :goto_5

    .line 320
    :cond_9
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 321
    .line 322
    const-string p1, "Unable to get account channel list"

    .line 323
    .line 324
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p0

    .line 328
    :cond_a
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :goto_5
    return-object v4

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onFetchPage(Lkotlin/io/CloseableKt;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->baseUrl:Ljava/io/Serializable;

    .line 7
    .line 8
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCConferenceExtractor;->fetchConferenceData(Lkotlin/io/CloseableKt;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeChannelTabExtractor;->baseUrl:Ljava/io/Serializable;

    .line 23
    .line 24
    :cond_0
    :pswitch_0
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
