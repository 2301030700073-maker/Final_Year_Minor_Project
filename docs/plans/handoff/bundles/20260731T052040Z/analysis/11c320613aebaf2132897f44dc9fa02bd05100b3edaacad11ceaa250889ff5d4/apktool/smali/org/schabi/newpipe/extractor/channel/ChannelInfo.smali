.class public final Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private avatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private donationLinks:[Ljava/lang/String;

.field private feedUrl:Ljava/lang/String;

.field private parentChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private parentChannelName:Ljava/lang/String;

.field private parentChannelUrl:Ljava/lang/String;

.field private subscriberCount:J

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private verified:Z


# direct methods
.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

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
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/ListExtractor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->fetchPage()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 17
    .line 18
    iget v2, p1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/ListExtractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    new-instance v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 39
    .line 40
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v2, -0x1

    .line 44
    .line 45
    iput-wide v2, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    .line 46
    .line 47
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 48
    .line 49
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    .line 50
    .line 51
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    .line 52
    .line 53
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    .line 54
    .line 55
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    .line 56
    .line 57
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getAvatars()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    move-object p1, v0

    .line 68
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getBanners()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception v0

    .line 79
    move-object p1, v0

    .line 80
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getFeedUrl()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->feedUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catch_2
    move-exception v0

    .line 91
    move-object p1, v0

    .line 92
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getSubscriberCount()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    iput-wide v2, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catch_3
    move-exception v0

    .line 103
    move-object p1, v0

    .line 104
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 105
    .line 106
    .line 107
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getDescription()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->description:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :catch_4
    move-exception v0

    .line 115
    move-object p1, v0

    .line 116
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 117
    .line 118
    .line 119
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getParentChannelName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :catch_5
    move-exception v0

    .line 127
    move-object p1, v0

    .line 128
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 129
    .line 130
    .line 131
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getParentChannelUrl()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelUrl:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :catch_6
    move-exception v0

    .line 139
    move-object p1, v0

    .line 140
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getParentChannelAvatars()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :catch_7
    move-exception v0

    .line 151
    move-object p1, v0

    .line 152
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 153
    .line 154
    .line 155
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->isVerified()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput-boolean p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->verified:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :catch_8
    move-exception v0

    .line 163
    move-object p1, v0

    .line 164
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 165
    .line 166
    .line 167
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getTabs()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iput-object p1, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :catch_9
    move-exception v0

    .line 175
    move-object p1, v0

    .line 176
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 177
    .line 178
    .line 179
    :goto_9
    :try_start_a
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getTags()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    iput-object p0, v1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 184
    .line 185
    goto :goto_a

    .line 186
    :catch_a
    move-exception v0

    .line 187
    move-object p0, v0

    .line 188
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Exception;)V

    .line 189
    .line 190
    .line 191
    :goto_a
    return-object v1
.end method


# virtual methods
.method public final getAvatars()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBanners()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFeedUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->feedUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParentChannelAvatars()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParentChannelName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParentChannelUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubscriberCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTabs()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTags()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
