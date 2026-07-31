.class public final Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/Comparator;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(ILjava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V
    .locals 1

    .line 26
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    return-void
.end method

.method public commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V
    .locals 1

    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :catch_1
    return-void
.end method

.method public final bridge synthetic extract(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 249
    check-cast p1, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    move-result-object p0

    return-object p0

    .line 250
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    move-result-object p0

    return-object p0

    .line 251
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    move-result-object p0

    return-object p0

    .line 252
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extract(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;
    .locals 4

    .line 253
    new-instance v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 254
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    invoke-direct {v0, v1, v3, v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;->getSubscriberCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setSubscriberCount(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 256
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 257
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;->getStreamCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setStreamCount(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 258
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 259
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 260
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 261
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setDescription(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 262
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 263
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;->isVerified()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setVerified(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 264
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_4
    return-object v0
.end method

.method public extract(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
    .locals 4

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    .line 12
    .line 13
    invoke-direct {v0, v1, v3, v2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getCommentId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCommentId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCommentText(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_1
    move-exception v1

    .line 37
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catch_2
    move-exception v1

    .line 49
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploaderAvatars()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :catch_3
    move-exception v1

    .line 61
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 62
    .line 63
    .line 64
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :catch_4
    move-exception v1

    .line 73
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 74
    .line 75
    .line 76
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 81
    .line 82
    .line 83
    goto :goto_5

    .line 84
    :catch_5
    move-exception v1

    .line 85
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 86
    .line 87
    .line 88
    :goto_5
    :try_start_6
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 93
    .line 94
    .line 95
    goto :goto_6

    .line 96
    :catch_6
    move-exception v1

    .line 97
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 98
    .line 99
    .line 100
    :goto_6
    :try_start_7
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getLikeCount()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setLikeCount(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 105
    .line 106
    .line 107
    goto :goto_7

    .line 108
    :catch_7
    move-exception v1

    .line 109
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 110
    .line 111
    .line 112
    :goto_7
    :try_start_8
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getTextualLikeCount()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setTextualLikeCount(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 117
    .line 118
    .line 119
    goto :goto_8

    .line 120
    :catch_8
    move-exception v1

    .line 121
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 122
    .line 123
    .line 124
    :goto_8
    :try_start_9
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getThumbnails()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 129
    .line 130
    .line 131
    goto :goto_9

    .line 132
    :catch_9
    move-exception v1

    .line 133
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 134
    .line 135
    .line 136
    :goto_9
    :try_start_a
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isHeartedByUploader()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setHeartedByUploader(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 141
    .line 142
    .line 143
    goto :goto_a

    .line 144
    :catch_a
    move-exception v1

    .line 145
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 146
    .line 147
    .line 148
    :goto_a
    :try_start_b
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isPinned()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setPinned(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 153
    .line 154
    .line 155
    goto :goto_b

    .line 156
    :catch_b
    move-exception v1

    .line 157
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 158
    .line 159
    .line 160
    :goto_b
    :try_start_c
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getStreamPosition()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setStreamPosition(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 165
    .line 166
    .line 167
    goto :goto_c

    .line 168
    :catch_c
    move-exception v1

    .line 169
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 170
    .line 171
    .line 172
    :goto_c
    :try_start_d
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getReplyCount()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setReplyCount(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 177
    .line 178
    .line 179
    goto :goto_d

    .line 180
    :catch_d
    move-exception v1

    .line 181
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 182
    .line 183
    .line 184
    :goto_d
    :try_start_e
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getReplies()Lorg/schabi/newpipe/extractor/Page;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setReplies(Lorg/schabi/newpipe/extractor/Page;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 189
    .line 190
    .line 191
    goto :goto_e

    .line 192
    :catch_e
    move-exception v1

    .line 193
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 194
    .line 195
    .line 196
    :goto_e
    :try_start_f
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isChannelOwner()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setChannelOwner(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 201
    .line 202
    .line 203
    goto :goto_f

    .line 204
    :catch_f
    move-exception v1

    .line 205
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 206
    .line 207
    .line 208
    :goto_f
    :try_start_10
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->hasCreatorReply()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCreatorReply(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 213
    .line 214
    .line 215
    goto :goto_10

    .line 216
    :catch_10
    move-exception v1

    .line 217
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 218
    .line 219
    .line 220
    :goto_10
    :try_start_11
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isEdited()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setEdited(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 225
    .line 226
    .line 227
    goto :goto_11

    .line 228
    :catch_11
    move-exception p1

    .line 229
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 230
    .line 231
    .line 232
    :goto_11
    return-object v0
.end method

.method public extract(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;
    .locals 4

    .line 233
    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;

    .line 234
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    invoke-direct {v0, v1, v3, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 236
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 237
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 238
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 239
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->isUploaderVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setUploaderVerified(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 240
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 241
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 242
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 243
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getStreamCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setStreamCount(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 244
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 245
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 246
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 247
    :goto_5
    :try_start_6
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;->getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 248
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_6
    return-object v0
.end method

.method public extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5

    .line 265
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 267
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v3

    iget v4, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 268
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 269
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 270
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 271
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 272
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 273
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 274
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 275
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 276
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getViewCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setViewCount(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 277
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 278
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 279
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 280
    :goto_5
    :try_start_6
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    .line 281
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 282
    :goto_6
    :try_start_7
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    .line 283
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 284
    :goto_7
    :try_start_8
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isUploaderVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderVerified(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    .line 285
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 286
    :goto_8
    :try_start_9
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getShortDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setShortDescription(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    .line 287
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 288
    :goto_9
    :try_start_a
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isShortFormContent()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setShortFormContent(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    .line 289
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 290
    :goto_a
    :try_start_b
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getContentAvailability()Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setContentAvailability(Lorg/schabi/newpipe/extractor/stream/ContentAvailability;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception p1

    .line 291
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_b
    return-object v0

    .line 292
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;

    const-string p1, "Found ad"

    .line 293
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 294
    throw p0
.end method
