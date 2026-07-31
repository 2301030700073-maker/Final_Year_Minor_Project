.class public final Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

.field private streamCount:J

.field private subChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private subChannelName:Ljava/lang/String;

.field private subChannelUrl:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;


# direct methods
.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getPlaylistExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->fetchPage()V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 17
    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 19
    .line 20
    iget v0, v0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 21
    .line 22
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {p1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    iput-object v0, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    .line 39
    .line 40
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 41
    .line 42
    iput-object v0, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;

    .line 43
    .line 44
    iput-object v0, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;

    .line 45
    .line 46
    iput-object v0, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    .line 47
    .line 48
    iput-object v0, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/Info;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getStreamCount()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    iput-wide v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->streamCount:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception v1

    .line 75
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catch_2
    move-exception v1

    .line 86
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 87
    .line 88
    .line 89
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getThumbnails()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catch_3
    move-exception v1

    .line 97
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 98
    .line 99
    .line 100
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getUploaderUrl()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :catch_4
    move-exception v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getUploaderName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :catch_5
    move-exception v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getUploaderAvatars()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :catch_6
    move-exception v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSubChannelUrl()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelUrl:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :catch_7
    move-exception v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSubChannelName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelName:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :catch_8
    move-exception v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSubChannelAvatars()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 160
    .line 161
    goto :goto_9

    .line 162
    :catch_9
    move-exception v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :goto_9
    :try_start_a
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 167
    .line 168
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 169
    .line 170
    goto :goto_a

    .line 171
    :catch_a
    move-exception v1

    .line 172
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 173
    .line 174
    .line 175
    :goto_a
    :try_start_b
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iput-object v1, p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 180
    .line 181
    goto :goto_b

    .line 182
    :catch_b
    move-exception v1

    .line 183
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 184
    .line 185
    .line 186
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_1

    .line 191
    .line 192
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    const/4 v2, 0x3

    .line 207
    if-ge v1, v2, :cond_1

    .line 208
    .line 209
    :cond_0
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/List;)V

    .line 210
    .line 211
    .line 212
    :cond_1
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/ListInfo;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 219
    .line 220
    .line 221
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 222
    .line 223
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 224
    .line 225
    .line 226
    return-object p1
.end method


# virtual methods
.method public final getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStreamCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->streamCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getThumbnails()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderAvatars()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
