.class public final synthetic Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItemExtractor;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 16
    .line 17
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;-><init>(Ljava/lang/Cloneable;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 27
    .line 28
    const-string v0, "kind"

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const-string v3, "playlist"

    .line 44
    .line 45
    const-string/jumbo v4, "track"

    .line 46
    .line 47
    .line 48
    const/4 v5, 0x3

    .line 49
    const/4 v6, -0x1

    .line 50
    sparse-switch v2, :sswitch_data_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v6, v5

    .line 62
    goto :goto_0

    .line 63
    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move v6, v1

    .line 71
    goto :goto_0

    .line 72
    :sswitch_2
    const-string/jumbo v2, "user"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v6, 0x1

    .line 83
    goto :goto_0

    .line 84
    :sswitch_3
    const-string v2, "like"

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 v6, 0x0

    .line 94
    :goto_0
    packed-switch v6, :pswitch_data_1

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :pswitch_2
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;

    .line 99
    .line 100
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :pswitch_3
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;

    .line 108
    .line 109
    invoke-direct {v0, p1, v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;-><init>(Ljava/lang/Cloneable;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :pswitch_4
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;

    .line 117
    .line 118
    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;-><init>(ILjava/io/Serializable;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :pswitch_5
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-nez v0, :cond_4

    .line 131
    .line 132
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudLikesInfoItemExtractor;

    .line 133
    .line 134
    invoke-virtual {p1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {v0, p1, v5}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeReelInfoItemExtractor;-><init>(Ljava/lang/Cloneable;I)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;

    .line 143
    .line 144
    invoke-direct {p1, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;I)V

    .line 145
    .line 146
    .line 147
    move-object v0, p1

    .line 148
    :goto_1
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :sswitch_data_0
    .sparse-switch
        0x32af97 -> :sswitch_3
        0x36ebcb -> :sswitch_2
        0x697f14b -> :sswitch_1
        0x700681d2 -> :sswitch_0
    .end sparse-switch

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
