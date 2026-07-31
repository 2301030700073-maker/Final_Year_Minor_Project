.class public final Lorg/schabi/newpipe/streams/Mp4DashReader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public backupBox:Ljava/lang/Object;

.field public box:Ljava/lang/Object;

.field public brands:Ljava/lang/Cloneable;

.field public chunkZero:Z

.field public moof:Ljava/lang/Object;

.field public selectedTrack:I

.field public final stream:Ljava/lang/Object;

.field public tracks:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lokhttp3/Address;Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealCall;Z)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:Ljava/lang/Cloneable;

    .line 12
    .line 13
    iput-boolean p4, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    .line 14
    .line 15
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance p2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object p2, p1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 29
    .line 30
    iget-object p4, p3, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 31
    .line 32
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    const/4 v0, 0x1

    .line 47
    const/4 v1, 0x0

    .line 48
    if-nez p4, :cond_0

    .line 49
    .line 50
    new-array p1, v0, [Ljava/net/Proxy;

    .line 51
    .line 52
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 53
    .line 54
    aput-object p2, p1, v1

    .line 55
    .line 56
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    iget-object p1, p1, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    new-array p1, v0, [Ljava/net/Proxy;

    .line 82
    .line 83
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 84
    .line 85
    aput-object p2, p1, v1

    .line 86
    .line 87
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_1
    iput-object p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 92
    .line 93
    iput v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 94
    .line 95
    iget-object p1, p3, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 96
    .line 97
    iget-object p0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Ljava/util/List;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 110
    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:Ljava/lang/Cloneable;

    const/4 v1, 0x0

    .line 111
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    const/4 v1, -0x1

    .line 112
    iput v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 113
    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Ljava/lang/Object;

    .line 114
    new-instance v0, Lorg/schabi/newpipe/streams/DataReader;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/streams/DataReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    return-void
.end method

.method public static boxName(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static hasFlag(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method


# virtual methods
.method public ensure(Landroidx/appcompat/app/TwilightCalculator;)V
    .locals 8

    .line 1
    iget-wide v0, p1, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 2
    .line 3
    iget-wide v2, p1, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/streams/DataReader;

    .line 9
    .line 10
    iget-wide v2, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-ltz v2, :cond_1

    .line 21
    .line 22
    long-to-int p1, v0

    .line 23
    int-to-long v0, p1

    .line 24
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 29
    .line 30
    iget v1, p1, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 31
    .line 32
    invoke-static {v1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-wide v2, p1, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 37
    .line 38
    iget-wide v4, p1, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 39
    .line 40
    iget-wide p0, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 41
    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v7, "parser go beyond limits of the box. type="

    .line 45
    .line 46
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " offset="

    .line 53
    .line 54
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " size="

    .line 61
    .line 62
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " position="

    .line 69
    .line 70
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public getNextChunk(Z)Lcom/grack/nanojson/JsonParser;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/schabi/newpipe/streams/DataReader;

    .line 6
    .line 7
    iget-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, [Lokio/PriorityQueue;

    .line 10
    .line 11
    iget v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 12
    .line 13
    aget-object v2, v2, v3

    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->available()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-boolean v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Landroidx/appcompat/app/TwilightCalculator;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->available()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    :cond_1
    const/16 v16, 0x0

    .line 40
    .line 41
    goto/16 :goto_b

    .line 42
    .line 43
    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Landroidx/appcompat/app/TwilightCalculator;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iput-boolean v5, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    .line 51
    .line 52
    :goto_1
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Landroidx/appcompat/app/TwilightCalculator;

    .line 55
    .line 56
    iget v6, v3, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 57
    .line 58
    const v7, 0x6d646174

    .line 59
    .line 60
    .line 61
    if-eq v6, v7, :cond_1f

    .line 62
    .line 63
    const v7, 0x6d6f6f66

    .line 64
    .line 65
    .line 66
    if-eq v6, v7, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget-object v6, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v6, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 72
    .line 73
    if-nez v6, :cond_1e

    .line 74
    .line 75
    iget-object v6, v2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 78
    .line 79
    iget-object v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 80
    .line 81
    iget v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->trackId:I

    .line 82
    .line 83
    new-instance v7, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 84
    .line 85
    const/16 v9, 0x11

    .line 86
    .line 87
    invoke-direct {v7, v9}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(I)V

    .line 88
    .line 89
    .line 90
    const v9, 0x6d666864

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v9}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Landroidx/appcompat/app/TwilightCalculator;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    const-wide/16 v10, 0x4

    .line 98
    .line 99
    invoke-virtual {v1, v10, v11}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v9}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    const v9, 0x74726166

    .line 109
    .line 110
    .line 111
    filled-new-array {v9}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v0, v3, v9}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Landroidx/appcompat/app/TwilightCalculator;[I)Landroidx/appcompat/app/TwilightCalculator;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    const-wide/16 v14, 0x8

    .line 120
    .line 121
    if-eqz v9, :cond_19

    .line 122
    .line 123
    const/16 v16, 0x0

    .line 124
    .line 125
    new-instance v4, Lorg/jsoup/parser/TokenData;

    .line 126
    .line 127
    const/16 v8, 0x17

    .line 128
    .line 129
    invoke-direct {v4, v8}, Lorg/jsoup/parser/TokenData;-><init>(I)V

    .line 130
    .line 131
    .line 132
    const v8, 0x74666864

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Landroidx/appcompat/app/TwilightCalculator;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    new-instance v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 140
    .line 141
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    iput v13, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 149
    .line 150
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    const/4 v10, -0x1

    .line 155
    if-eq v6, v10, :cond_5

    .line 156
    .line 157
    if-eq v13, v6, :cond_5

    .line 158
    .line 159
    move-object/from16 v12, v16

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    iget v10, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 163
    .line 164
    invoke-static {v10, v5}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_6

    .line 169
    .line 170
    invoke-virtual {v1, v14, v15}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 171
    .line 172
    .line 173
    :cond_6
    iget v10, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 174
    .line 175
    const/4 v11, 0x2

    .line 176
    invoke-static {v10, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-eqz v10, :cond_7

    .line 181
    .line 182
    const-wide/16 v10, 0x4

    .line 183
    .line 184
    invoke-virtual {v1, v10, v11}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    const-wide/16 v10, 0x4

    .line 189
    .line 190
    :goto_3
    iget v13, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 191
    .line 192
    const/16 v10, 0x8

    .line 193
    .line 194
    invoke-static {v13, v10}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_8

    .line 199
    .line 200
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    iput v10, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    .line 205
    .line 206
    :cond_8
    iget v10, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 207
    .line 208
    const/16 v11, 0x10

    .line 209
    .line 210
    invoke-static {v10, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-eqz v10, :cond_9

    .line 215
    .line 216
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    iput v10, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    .line 221
    .line 222
    :cond_9
    iget v10, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 223
    .line 224
    const/16 v11, 0x20

    .line 225
    .line 226
    invoke-static {v10, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    if-eqz v10, :cond_a

    .line 231
    .line 232
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    iput v10, v12, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleFlags:I

    .line 237
    .line 238
    :cond_a
    :goto_4
    iput-object v12, v4, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 239
    .line 240
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 241
    .line 242
    .line 243
    iget-object v8, v4, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 246
    .line 247
    if-nez v8, :cond_b

    .line 248
    .line 249
    move-wide/from16 v17, v14

    .line 250
    .line 251
    move-object/from16 v4, v16

    .line 252
    .line 253
    goto/16 :goto_7

    .line 254
    .line 255
    :cond_b
    const v8, 0x7472756e

    .line 256
    .line 257
    .line 258
    const v10, 0x74666474

    .line 259
    .line 260
    .line 261
    filled-new-array {v8, v10}, [I

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    invoke-virtual {v0, v9, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Landroidx/appcompat/app/TwilightCalculator;[I)Landroidx/appcompat/app/TwilightCalculator;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    iget v12, v11, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 270
    .line 271
    if-ne v12, v10, :cond_d

    .line 272
    .line 273
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    const-wide/16 v12, 0x3

    .line 278
    .line 279
    invoke-virtual {v1, v12, v13}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 280
    .line 281
    .line 282
    if-nez v10, :cond_c

    .line 283
    .line 284
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_c
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readLong()J

    .line 289
    .line 290
    .line 291
    :goto_5
    invoke-virtual {v0, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Landroidx/appcompat/app/TwilightCalculator;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    :cond_d
    new-instance v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 299
    .line 300
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    iput v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 308
    .line 309
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    iput v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    .line 314
    .line 315
    const/4 v10, 0x0

    .line 316
    iput v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 317
    .line 318
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 319
    .line 320
    const/16 v12, 0x100

    .line 321
    .line 322
    invoke-static {v10, v12}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    const/4 v13, 0x4

    .line 327
    if-eqz v10, :cond_e

    .line 328
    .line 329
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 330
    .line 331
    add-int/2addr v10, v13

    .line 332
    iput v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 333
    .line 334
    :cond_e
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 335
    .line 336
    move-wide/from16 v17, v14

    .line 337
    .line 338
    const/16 v14, 0x200

    .line 339
    .line 340
    invoke-static {v10, v14}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    if-eqz v10, :cond_f

    .line 345
    .line 346
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 347
    .line 348
    add-int/2addr v10, v13

    .line 349
    iput v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 350
    .line 351
    :cond_f
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 352
    .line 353
    const/16 v15, 0x400

    .line 354
    .line 355
    invoke-static {v10, v15}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 356
    .line 357
    .line 358
    move-result v10

    .line 359
    if-eqz v10, :cond_10

    .line 360
    .line 361
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 362
    .line 363
    add-int/2addr v10, v13

    .line 364
    iput v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 365
    .line 366
    :cond_10
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 367
    .line 368
    const/16 v15, 0x800

    .line 369
    .line 370
    invoke-static {v10, v15}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 371
    .line 372
    .line 373
    move-result v10

    .line 374
    if-eqz v10, :cond_11

    .line 375
    .line 376
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 377
    .line 378
    add-int/2addr v10, v13

    .line 379
    iput v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 380
    .line 381
    :cond_11
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 382
    .line 383
    iget v15, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    .line 384
    .line 385
    mul-int/2addr v10, v15

    .line 386
    new-array v10, v10, [B

    .line 387
    .line 388
    iput-object v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bEntries:[B

    .line 389
    .line 390
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 391
    .line 392
    invoke-static {v10, v5}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    if-eqz v10, :cond_12

    .line 397
    .line 398
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 399
    .line 400
    .line 401
    move-result v10

    .line 402
    iput v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->dataOffset:I

    .line 403
    .line 404
    :cond_12
    iget v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 405
    .line 406
    invoke-static {v10, v13}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    if-eqz v10, :cond_13

    .line 411
    .line 412
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    iput v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFirstSampleFlags:I

    .line 417
    .line 418
    :cond_13
    iget-object v10, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bEntries:[B

    .line 419
    .line 420
    array-length v13, v10

    .line 421
    const/4 v15, 0x0

    .line 422
    invoke-virtual {v1, v10, v15, v13}, Lorg/schabi/newpipe/streams/DataReader;->read([BII)I

    .line 423
    .line 424
    .line 425
    const/4 v10, 0x0

    .line 426
    :goto_6
    iget v13, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    .line 427
    .line 428
    if-ge v10, v13, :cond_17

    .line 429
    .line 430
    invoke-virtual {v8, v10}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->getEntry(I)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 431
    .line 432
    .line 433
    move-result-object v13

    .line 434
    iget v15, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 435
    .line 436
    invoke-static {v15, v12}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 437
    .line 438
    .line 439
    move-result v15

    .line 440
    if-eqz v15, :cond_14

    .line 441
    .line 442
    iget v15, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    .line 443
    .line 444
    iget v5, v13, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    .line 445
    .line 446
    add-int/2addr v15, v5

    .line 447
    iput v15, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    .line 448
    .line 449
    :cond_14
    iget v5, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 450
    .line 451
    invoke-static {v5, v14}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_15

    .line 456
    .line 457
    iget v5, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 458
    .line 459
    iget v15, v13, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 460
    .line 461
    add-int/2addr v5, v15

    .line 462
    iput v5, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 463
    .line 464
    :cond_15
    iget v5, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 465
    .line 466
    const/16 v15, 0x800

    .line 467
    .line 468
    invoke-static {v5, v15}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-eqz v5, :cond_16

    .line 473
    .line 474
    iget v5, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 475
    .line 476
    invoke-static {v5, v12}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    if-nez v5, :cond_16

    .line 481
    .line 482
    iget v5, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    .line 483
    .line 484
    iget v13, v13, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    .line 485
    .line 486
    add-int/2addr v5, v13

    .line 487
    iput v5, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    .line 488
    .line 489
    :cond_16
    add-int/lit8 v10, v10, 0x1

    .line 490
    .line 491
    const/4 v5, 0x1

    .line 492
    goto :goto_6

    .line 493
    :cond_17
    iput-object v8, v4, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 494
    .line 495
    invoke-virtual {v0, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 496
    .line 497
    .line 498
    :goto_7
    iput-object v4, v7, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 499
    .line 500
    invoke-virtual {v0, v9}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 501
    .line 502
    .line 503
    iget-object v4, v7, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v4, Lorg/jsoup/parser/TokenData;

    .line 506
    .line 507
    if-eqz v4, :cond_18

    .line 508
    .line 509
    goto :goto_8

    .line 510
    :cond_18
    const/4 v5, 0x1

    .line 511
    const-wide/16 v10, 0x4

    .line 512
    .line 513
    goto/16 :goto_2

    .line 514
    .line 515
    :cond_19
    move-wide/from16 v17, v14

    .line 516
    .line 517
    const/16 v16, 0x0

    .line 518
    .line 519
    :goto_8
    iput-object v7, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 520
    .line 521
    iget-object v3, v7, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v3, Lorg/jsoup/parser/TokenData;

    .line 524
    .line 525
    if-eqz v3, :cond_0

    .line 526
    .line 527
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 530
    .line 531
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 532
    .line 533
    const/4 v4, 0x1

    .line 534
    invoke-static {v3, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    if-eqz v3, :cond_1b

    .line 539
    .line 540
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 543
    .line 544
    iget-object v3, v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v3, Lorg/jsoup/parser/TokenData;

    .line 547
    .line 548
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 551
    .line 552
    iget v4, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->dataOffset:I

    .line 553
    .line 554
    int-to-long v4, v4

    .line 555
    iget-object v6, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v6, Landroidx/appcompat/app/TwilightCalculator;

    .line 558
    .line 559
    iget-wide v6, v6, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 560
    .line 561
    add-long v6, v6, v17

    .line 562
    .line 563
    sub-long/2addr v4, v6

    .line 564
    long-to-int v4, v4

    .line 565
    iput v4, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->dataOffset:I

    .line 566
    .line 567
    if-ltz v4, :cond_1a

    .line 568
    .line 569
    goto :goto_9

    .line 570
    :cond_1a
    const-string v0, "trun box has wrong data offset, points outside of concurrent mdat box"

    .line 571
    .line 572
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    return-object v16

    .line 576
    :cond_1b
    :goto_9
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 577
    .line 578
    check-cast v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 579
    .line 580
    iget-object v3, v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v3, Lorg/jsoup/parser/TokenData;

    .line 583
    .line 584
    iget-object v4, v3, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 587
    .line 588
    iget v4, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 589
    .line 590
    const/4 v5, 0x1

    .line 591
    if-ge v4, v5, :cond_1d

    .line 592
    .line 593
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 596
    .line 597
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 598
    .line 599
    const/16 v11, 0x10

    .line 600
    .line 601
    invoke-static {v3, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    iget-object v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 608
    .line 609
    if-eqz v3, :cond_1c

    .line 610
    .line 611
    iget-object v3, v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 612
    .line 613
    check-cast v3, Lorg/jsoup/parser/TokenData;

    .line 614
    .line 615
    iget-object v4, v3, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 616
    .line 617
    check-cast v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 618
    .line 619
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 620
    .line 621
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 622
    .line 623
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    .line 624
    .line 625
    iget v5, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    .line 626
    .line 627
    mul-int/2addr v3, v5

    .line 628
    iput v3, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 629
    .line 630
    goto :goto_a

    .line 631
    :cond_1c
    iget-object v3, v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 632
    .line 633
    check-cast v3, Lorg/jsoup/parser/TokenData;

    .line 634
    .line 635
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 638
    .line 639
    iget-object v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 640
    .line 641
    check-cast v4, Landroidx/appcompat/app/TwilightCalculator;

    .line 642
    .line 643
    iget-wide v4, v4, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 644
    .line 645
    sub-long v4, v4, v17

    .line 646
    .line 647
    long-to-int v4, v4

    .line 648
    iput v4, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 649
    .line 650
    :cond_1d
    :goto_a
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 653
    .line 654
    iget-object v3, v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v3, Lorg/jsoup/parser/TokenData;

    .line 657
    .line 658
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 659
    .line 660
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 661
    .line 662
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 663
    .line 664
    const/16 v4, 0x900

    .line 665
    .line 666
    invoke-static {v3, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    if-nez v3, :cond_0

    .line 671
    .line 672
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 673
    .line 674
    check-cast v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 675
    .line 676
    iget-object v3, v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 677
    .line 678
    check-cast v3, Lorg/jsoup/parser/TokenData;

    .line 679
    .line 680
    iget-object v4, v3, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 683
    .line 684
    iget v4, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    .line 685
    .line 686
    if-nez v4, :cond_0

    .line 687
    .line 688
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 691
    .line 692
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 693
    .line 694
    const/16 v11, 0x20

    .line 695
    .line 696
    invoke-static {v3, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 697
    .line 698
    .line 699
    move-result v3

    .line 700
    if-eqz v3, :cond_0

    .line 701
    .line 702
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 705
    .line 706
    iget-object v3, v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 707
    .line 708
    check-cast v3, Lorg/jsoup/parser/TokenData;

    .line 709
    .line 710
    iget-object v4, v3, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 711
    .line 712
    check-cast v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 713
    .line 714
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 715
    .line 716
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 717
    .line 718
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    .line 719
    .line 720
    iget v5, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    .line 721
    .line 722
    mul-int/2addr v3, v5

    .line 723
    iput v3, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    .line 724
    .line 725
    goto/16 :goto_0

    .line 726
    .line 727
    :cond_1e
    const/16 v16, 0x0

    .line 728
    .line 729
    const-string v0, "moof found without mdat"

    .line 730
    .line 731
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    return-object v16

    .line 735
    :cond_1f
    const/16 v16, 0x0

    .line 736
    .line 737
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 738
    .line 739
    check-cast v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 740
    .line 741
    if-eqz v3, :cond_23

    .line 742
    .line 743
    iget-object v4, v3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 744
    .line 745
    check-cast v4, Lorg/jsoup/parser/TokenData;

    .line 746
    .line 747
    if-nez v4, :cond_20

    .line 748
    .line 749
    move-object/from16 v5, v16

    .line 750
    .line 751
    iput-object v5, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 752
    .line 753
    goto/16 :goto_0

    .line 754
    .line 755
    :cond_20
    new-instance v2, Lcom/grack/nanojson/JsonParser;

    .line 756
    .line 757
    const/16 v5, 0xb

    .line 758
    .line 759
    invoke-direct {v2, v5}, Lcom/grack/nanojson/JsonParser;-><init>(I)V

    .line 760
    .line 761
    .line 762
    const/4 v15, 0x0

    .line 763
    iput v15, v2, Lcom/grack/nanojson/JsonParser;->token:I

    .line 764
    .line 765
    iput-object v3, v2, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 766
    .line 767
    if-nez p1, :cond_22

    .line 768
    .line 769
    iget-object v3, v4, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 770
    .line 771
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 772
    .line 773
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 774
    .line 775
    iget-object v4, v1, Lorg/schabi/newpipe/streams/DataReader;->view:Lorg/schabi/newpipe/streams/DataReader$1;

    .line 776
    .line 777
    if-nez v4, :cond_21

    .line 778
    .line 779
    new-instance v4, Lorg/schabi/newpipe/streams/DataReader$1;

    .line 780
    .line 781
    invoke-direct {v4, v1}, Lorg/schabi/newpipe/streams/DataReader$1;-><init>(Lorg/schabi/newpipe/streams/DataReader;)V

    .line 782
    .line 783
    .line 784
    iput-object v4, v1, Lorg/schabi/newpipe/streams/DataReader;->view:Lorg/schabi/newpipe/streams/DataReader$1;

    .line 785
    .line 786
    :cond_21
    iput v3, v1, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 787
    .line 788
    iget-object v3, v1, Lorg/schabi/newpipe/streams/DataReader;->view:Lorg/schabi/newpipe/streams/DataReader$1;

    .line 789
    .line 790
    iput-object v3, v2, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 791
    .line 792
    :cond_22
    const/4 v5, 0x0

    .line 793
    iput-object v5, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 794
    .line 795
    iget-object v0, v2, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 798
    .line 799
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v0, Lorg/jsoup/parser/TokenData;

    .line 802
    .line 803
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 804
    .line 805
    check-cast v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 806
    .line 807
    iget v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->dataOffset:I

    .line 808
    .line 809
    int-to-long v3, v0

    .line 810
    invoke-virtual {v1, v3, v4}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 811
    .line 812
    .line 813
    return-object v2

    .line 814
    :cond_23
    const-string v0, "mdat found without moof"

    .line 815
    .line 816
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    const/16 v16, 0x0

    .line 820
    .line 821
    :goto_b
    return-object v16
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public parse()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/schabi/newpipe/streams/DataReader;

    .line 6
    .line 7
    iget v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    if-le v2, v3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const v2, 0x66747970

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Landroidx/appcompat/app/TwilightCalculator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 21
    .line 22
    iget-wide v3, v2, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 23
    .line 24
    iget-wide v5, v2, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 25
    .line 26
    add-long/2addr v3, v5

    .line 27
    iget-wide v5, v1, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 28
    .line 29
    sub-long/2addr v3, v5

    .line 30
    const-wide/16 v5, 0x4

    .line 31
    .line 32
    sub-long/2addr v3, v5

    .line 33
    div-long/2addr v3, v5

    .line 34
    long-to-int v2, v3

    .line 35
    new-array v3, v2, [I

    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v7, 0x0

    .line 42
    aput v4, v3, v7

    .line 43
    .line 44
    invoke-virtual {v1, v5, v6}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 45
    .line 46
    .line 47
    const/4 v8, 0x1

    .line 48
    :goto_0
    if-ge v8, v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    aput v9, v3, v8

    .line 55
    .line 56
    add-int/lit8 v8, v8, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iput-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:Ljava/lang/Cloneable;

    .line 60
    .line 61
    aget v2, v3, v7

    .line 62
    .line 63
    const v3, 0x64617368

    .line 64
    .line 65
    .line 66
    if-eq v2, v3, :cond_3

    .line 67
    .line 68
    const v3, 0x69736f35

    .line 69
    .line 70
    .line 71
    if-ne v2, v3, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-static {v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "Not a MPEG-4 DASH container, major brand is not \'dash\' or \'iso5\' is "

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 89
    :goto_2
    iget-object v8, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v8, Landroidx/appcompat/app/TwilightCalculator;

    .line 92
    .line 93
    iget v9, v8, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 94
    .line 95
    const v10, 0x6d6f6f66

    .line 96
    .line 97
    .line 98
    const/4 v12, 0x2

    .line 99
    const/4 v13, 0x4

    .line 100
    if-eq v9, v10, :cond_1c

    .line 101
    .line 102
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Landroidx/appcompat/app/TwilightCalculator;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    iput-object v8, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 110
    .line 111
    iget v9, v8, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 112
    .line 113
    const v10, 0x6d6f6f76

    .line 114
    .line 115
    .line 116
    if-eq v9, v10, :cond_4

    .line 117
    .line 118
    move-wide v10, v5

    .line 119
    goto/16 :goto_1b

    .line 120
    .line 121
    :cond_4
    const v3, 0x6d766864

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Landroidx/appcompat/app/TwilightCalculator;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    new-instance v9, Lorg/jsoup/nodes/Printer;

    .line 129
    .line 130
    const/16 v10, 0x10

    .line 131
    .line 132
    invoke-direct {v9, v10}, Lorg/jsoup/nodes/Printer;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    move/from16 v16, v10

    .line 140
    .line 141
    const/4 v15, 0x3

    .line 142
    const-wide/16 v10, 0x3

    .line 143
    .line 144
    invoke-virtual {v1, v10, v11}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 145
    .line 146
    .line 147
    if-nez v14, :cond_5

    .line 148
    .line 149
    move/from16 v17, v13

    .line 150
    .line 151
    :goto_3
    move/from16 v18, v15

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    const/16 v17, 0x8

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :goto_4
    mul-int/lit8 v15, v17, 0x2

    .line 158
    .line 159
    int-to-long v10, v15

    .line 160
    invoke-virtual {v1, v10, v11}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 161
    .line 162
    .line 163
    new-instance v10, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 164
    .line 165
    invoke-direct {v10, v13}, Lorg/schabi/newpipe/streams/WebMReader$Info;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 169
    .line 170
    .line 171
    move v11, v12

    .line 172
    if-nez v14, :cond_6

    .line 173
    .line 174
    move v14, v11

    .line 175
    move-wide v11, v5

    .line 176
    goto :goto_5

    .line 177
    :cond_6
    move v14, v11

    .line 178
    const-wide/16 v11, 0x8

    .line 179
    .line 180
    :goto_5
    invoke-virtual {v1, v11, v12}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 181
    .line 182
    .line 183
    const-wide/16 v11, 0x4c

    .line 184
    .line 185
    invoke-virtual {v1, v11, v12}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    int-to-long v11, v11

    .line 193
    const-wide v19, 0xffffffffL

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    and-long v11, v11, v19

    .line 199
    .line 200
    iput-wide v11, v10, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    .line 201
    .line 202
    iput-object v10, v9, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 203
    .line 204
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 205
    .line 206
    .line 207
    new-instance v3, Ljava/util/ArrayList;

    .line 208
    .line 209
    iget-object v10, v9, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v10, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 212
    .line 213
    iget-wide v10, v10, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    .line 214
    .line 215
    long-to-int v10, v10

    .line 216
    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .line 218
    .line 219
    :goto_6
    const v10, 0x7472616b

    .line 220
    .line 221
    .line 222
    const v11, 0x6d766578

    .line 223
    .line 224
    .line 225
    filled-new-array {v10, v11}, [I

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    invoke-virtual {v0, v8, v12}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Landroidx/appcompat/app/TwilightCalculator;[I)Landroidx/appcompat/app/TwilightCalculator;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    if-eqz v12, :cond_1b

    .line 234
    .line 235
    iget v13, v12, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 236
    .line 237
    if-eq v13, v11, :cond_19

    .line 238
    .line 239
    if-eq v13, v10, :cond_7

    .line 240
    .line 241
    move-object v2, v3

    .line 242
    move-wide v10, v5

    .line 243
    move v6, v7

    .line 244
    move-object/from16 v23, v8

    .line 245
    .line 246
    move/from16 v17, v14

    .line 247
    .line 248
    const-wide/16 v7, 0x3

    .line 249
    .line 250
    const-wide/16 v14, 0x8

    .line 251
    .line 252
    goto/16 :goto_1a

    .line 253
    .line 254
    :cond_7
    new-instance v10, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 255
    .line 256
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 257
    .line 258
    .line 259
    const v11, 0x746b6864

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox(I)Landroidx/appcompat/app/TwilightCalculator;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    move/from16 v17, v14

    .line 271
    .line 272
    new-instance v14, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 273
    .line 274
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 275
    .line 276
    .line 277
    if-nez v13, :cond_8

    .line 278
    .line 279
    const/16 v21, 0x4

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_8
    const/16 v21, 0x8

    .line 283
    .line 284
    :goto_7
    mul-int/lit8 v21, v21, 0x2

    .line 285
    .line 286
    add-int/lit8 v15, v21, 0x3

    .line 287
    .line 288
    move-object/from16 v22, v3

    .line 289
    .line 290
    int-to-long v2, v15

    .line 291
    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    iput v2, v14, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->trackId:I

    .line 299
    .line 300
    invoke-virtual {v1, v5, v6}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 301
    .line 302
    .line 303
    if-nez v13, :cond_9

    .line 304
    .line 305
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    int-to-long v2, v2

    .line 310
    and-long v2, v2, v19

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_9
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readLong()J

    .line 314
    .line 315
    .line 316
    move-result-wide v2

    .line 317
    :goto_8
    iput-wide v2, v14, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->duration:J

    .line 318
    .line 319
    const-wide/16 v2, 0x8

    .line 320
    .line 321
    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readShort()S

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    iput-short v2, v14, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bLayer:S

    .line 329
    .line 330
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readShort()S

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    iput-short v2, v14, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bAlternateGroup:S

    .line 335
    .line 336
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readShort()S

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    iput-short v2, v14, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bVolume:S

    .line 341
    .line 342
    const-wide/16 v2, 0x2

    .line 343
    .line 344
    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 345
    .line 346
    .line 347
    const/16 v2, 0x24

    .line 348
    .line 349
    new-array v3, v2, [B

    .line 350
    .line 351
    iput-object v3, v14, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->matrix:[B

    .line 352
    .line 353
    invoke-virtual {v1, v3, v7, v2}, Lorg/schabi/newpipe/streams/DataReader;->read([BII)I

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    iput v2, v14, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bWidth:I

    .line 361
    .line 362
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    iput v2, v14, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bHeight:I

    .line 367
    .line 368
    iput-object v14, v10, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 369
    .line 370
    invoke-virtual {v0, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 371
    .line 372
    .line 373
    :goto_9
    const v2, 0x6d646961

    .line 374
    .line 375
    .line 376
    const v3, 0x65647473

    .line 377
    .line 378
    .line 379
    filled-new-array {v2, v3}, [I

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    invoke-virtual {v0, v12, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Landroidx/appcompat/app/TwilightCalculator;[I)Landroidx/appcompat/app/TwilightCalculator;

    .line 384
    .line 385
    .line 386
    move-result-object v11

    .line 387
    if-eqz v11, :cond_18

    .line 388
    .line 389
    iget v13, v11, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 390
    .line 391
    if-eq v13, v3, :cond_13

    .line 392
    .line 393
    if-eq v13, v2, :cond_a

    .line 394
    .line 395
    move-object/from16 v23, v8

    .line 396
    .line 397
    :goto_a
    const-wide/16 v7, 0x3

    .line 398
    .line 399
    const-wide/16 v14, 0x8

    .line 400
    .line 401
    goto/16 :goto_18

    .line 402
    .line 403
    :cond_a
    new-instance v2, Landroidx/core/app/NotificationCompatBuilder;

    .line 404
    .line 405
    invoke-direct {v2}, Landroidx/core/app/NotificationCompatBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    :goto_b
    const v3, 0x6d646864

    .line 409
    .line 410
    .line 411
    const v13, 0x68646c72    # 4.3148E24f

    .line 412
    .line 413
    .line 414
    const v14, 0x6d696e66

    .line 415
    .line 416
    .line 417
    filled-new-array {v3, v13, v14}, [I

    .line 418
    .line 419
    .line 420
    move-result-object v15

    .line 421
    invoke-virtual {v0, v11, v15}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Landroidx/appcompat/app/TwilightCalculator;[I)Landroidx/appcompat/app/TwilightCalculator;

    .line 422
    .line 423
    .line 424
    move-result-object v15

    .line 425
    if-eqz v15, :cond_12

    .line 426
    .line 427
    iget v4, v15, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 428
    .line 429
    const/16 v5, 0xc

    .line 430
    .line 431
    if-eq v4, v13, :cond_11

    .line 432
    .line 433
    if-eq v4, v3, :cond_f

    .line 434
    .line 435
    if-eq v4, v14, :cond_b

    .line 436
    .line 437
    move-object/from16 v23, v8

    .line 438
    .line 439
    :goto_c
    const/16 v4, 0x8

    .line 440
    .line 441
    goto/16 :goto_12

    .line 442
    .line 443
    :cond_b
    new-instance v3, Lorg/jsoup/nodes/Printer;

    .line 444
    .line 445
    const/16 v4, 0xf

    .line 446
    .line 447
    invoke-direct {v3, v4}, Lorg/jsoup/nodes/Printer;-><init>(I)V

    .line 448
    .line 449
    .line 450
    :goto_d
    iget-wide v4, v1, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 451
    .line 452
    iget-wide v13, v15, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 453
    .line 454
    move-object/from16 v23, v8

    .line 455
    .line 456
    iget-wide v7, v15, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 457
    .line 458
    add-long/2addr v13, v7

    .line 459
    cmp-long v4, v4, v13

    .line 460
    .line 461
    if-ltz v4, :cond_c

    .line 462
    .line 463
    const/4 v4, 0x0

    .line 464
    goto :goto_e

    .line 465
    :cond_c
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Landroidx/appcompat/app/TwilightCalculator;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    :goto_e
    if-eqz v4, :cond_e

    .line 470
    .line 471
    iget v5, v4, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 472
    .line 473
    sparse-switch v5, :sswitch_data_0

    .line 474
    .line 475
    .line 476
    goto :goto_10

    .line 477
    :sswitch_0
    const v5, 0x73747364

    .line 478
    .line 479
    .line 480
    filled-new-array {v5}, [I

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    invoke-virtual {v0, v4, v5}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Landroidx/appcompat/app/TwilightCalculator;[I)Landroidx/appcompat/app/TwilightCalculator;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    if-nez v5, :cond_d

    .line 489
    .line 490
    const/4 v6, 0x0

    .line 491
    new-array v5, v6, [B

    .line 492
    .line 493
    goto :goto_f

    .line 494
    :cond_d
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readFullBox(Landroidx/appcompat/app/TwilightCalculator;)[B

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    :goto_f
    iput-object v5, v3, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 499
    .line 500
    goto :goto_10

    .line 501
    :sswitch_1
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readFullBox(Landroidx/appcompat/app/TwilightCalculator;)[B

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    iput-object v5, v3, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 506
    .line 507
    goto :goto_10

    .line 508
    :sswitch_2
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readFullBox(Landroidx/appcompat/app/TwilightCalculator;)[B

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    iput-object v5, v3, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 513
    .line 514
    :goto_10
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 515
    .line 516
    .line 517
    move-object/from16 v8, v23

    .line 518
    .line 519
    const/4 v7, 0x0

    .line 520
    goto :goto_d

    .line 521
    :cond_e
    iput-object v3, v2, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 522
    .line 523
    goto :goto_c

    .line 524
    :cond_f
    move-object/from16 v23, v8

    .line 525
    .line 526
    invoke-virtual {v0, v15}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readFullBox(Landroidx/appcompat/app/TwilightCalculator;)[B

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    iput-object v3, v2, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 531
    .line 532
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    const/16 v4, 0x8

    .line 537
    .line 538
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 539
    .line 540
    .line 541
    move-result v7

    .line 542
    if-nez v7, :cond_10

    .line 543
    .line 544
    const/4 v7, 0x4

    .line 545
    goto :goto_11

    .line 546
    :cond_10
    move v7, v4

    .line 547
    :goto_11
    mul-int/lit8 v7, v7, 0x2

    .line 548
    .line 549
    add-int/2addr v7, v5

    .line 550
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    iput v3, v2, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 558
    .line 559
    goto :goto_12

    .line 560
    :cond_11
    move-object/from16 v23, v8

    .line 561
    .line 562
    const/16 v4, 0x8

    .line 563
    .line 564
    const-wide/16 v7, 0x4

    .line 565
    .line 566
    invoke-virtual {v1, v7, v8}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 567
    .line 568
    .line 569
    new-instance v3, Lokhttp3/internal/http2/Huffman$Node;

    .line 570
    .line 571
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 572
    .line 573
    .line 574
    new-array v5, v5, [B

    .line 575
    .line 576
    iput-object v5, v3, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 577
    .line 578
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 579
    .line 580
    .line 581
    move-result v5

    .line 582
    iput v5, v3, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 583
    .line 584
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 585
    .line 586
    .line 587
    move-result v5

    .line 588
    iput v5, v3, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 589
    .line 590
    iget-object v5, v3, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v5, [B

    .line 593
    .line 594
    array-length v7, v5

    .line 595
    const/4 v6, 0x0

    .line 596
    invoke-virtual {v1, v5, v6, v7}, Lorg/schabi/newpipe/streams/DataReader;->read([BII)I

    .line 597
    .line 598
    .line 599
    iget-wide v7, v15, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 600
    .line 601
    iget-wide v13, v15, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 602
    .line 603
    add-long/2addr v7, v13

    .line 604
    iget-wide v13, v1, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 605
    .line 606
    sub-long/2addr v7, v13

    .line 607
    invoke-virtual {v1, v7, v8}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 608
    .line 609
    .line 610
    iput-object v3, v2, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 611
    .line 612
    :goto_12
    invoke-virtual {v0, v15}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 613
    .line 614
    .line 615
    move-object/from16 v8, v23

    .line 616
    .line 617
    const-wide/16 v5, 0x4

    .line 618
    .line 619
    const/4 v7, 0x0

    .line 620
    goto/16 :goto_b

    .line 621
    .line 622
    :cond_12
    move-object/from16 v23, v8

    .line 623
    .line 624
    const/16 v4, 0x8

    .line 625
    .line 626
    iput-object v2, v10, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Landroidx/core/app/NotificationCompatBuilder;

    .line 627
    .line 628
    goto/16 :goto_a

    .line 629
    .line 630
    :cond_13
    move-object/from16 v23, v8

    .line 631
    .line 632
    const/16 v4, 0x8

    .line 633
    .line 634
    const v2, 0x656c7374

    .line 635
    .line 636
    .line 637
    filled-new-array {v2}, [I

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-virtual {v0, v11, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Landroidx/appcompat/app/TwilightCalculator;[I)Landroidx/appcompat/app/TwilightCalculator;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    if-nez v2, :cond_14

    .line 646
    .line 647
    const/4 v2, 0x0

    .line 648
    const-wide/16 v7, 0x3

    .line 649
    .line 650
    :goto_13
    const-wide/16 v14, 0x8

    .line 651
    .line 652
    goto :goto_17

    .line 653
    :cond_14
    new-instance v2, Lkotlin/time/InstantParseResult$Success;

    .line 654
    .line 655
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    const/4 v5, 0x1

    .line 663
    if-ne v3, v5, :cond_15

    .line 664
    .line 665
    move v3, v5

    .line 666
    :goto_14
    const-wide/16 v7, 0x3

    .line 667
    .line 668
    goto :goto_15

    .line 669
    :cond_15
    const/4 v3, 0x0

    .line 670
    goto :goto_14

    .line 671
    :goto_15
    invoke-virtual {v1, v7, v8}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 675
    .line 676
    .line 677
    move-result v13

    .line 678
    if-ge v13, v5, :cond_16

    .line 679
    .line 680
    const/high16 v3, 0x10000

    .line 681
    .line 682
    iput v3, v2, Lkotlin/time/InstantParseResult$Success;->nanosecondsOfSecond:I

    .line 683
    .line 684
    goto :goto_13

    .line 685
    :cond_16
    if-eqz v3, :cond_17

    .line 686
    .line 687
    const-wide/16 v14, 0x8

    .line 688
    .line 689
    invoke-virtual {v1, v14, v15}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readLong()J

    .line 693
    .line 694
    .line 695
    move-result-wide v4

    .line 696
    iput-wide v4, v2, Lkotlin/time/InstantParseResult$Success;->epochSeconds:J

    .line 697
    .line 698
    add-int/lit8 v13, v13, -0x1

    .line 699
    .line 700
    mul-int/lit8 v13, v13, 0x10

    .line 701
    .line 702
    int-to-long v3, v13

    .line 703
    invoke-virtual {v1, v3, v4}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 704
    .line 705
    .line 706
    goto :goto_16

    .line 707
    :cond_17
    const-wide/16 v3, 0x4

    .line 708
    .line 709
    const-wide/16 v14, 0x8

    .line 710
    .line 711
    invoke-virtual {v1, v3, v4}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 712
    .line 713
    .line 714
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    int-to-long v3, v3

    .line 719
    iput-wide v3, v2, Lkotlin/time/InstantParseResult$Success;->epochSeconds:J

    .line 720
    .line 721
    :goto_16
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    iput v3, v2, Lkotlin/time/InstantParseResult$Success;->nanosecondsOfSecond:I

    .line 726
    .line 727
    :goto_17
    iput-object v2, v10, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->edstElst:Lkotlin/time/InstantParseResult$Success;

    .line 728
    .line 729
    :goto_18
    invoke-virtual {v0, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 730
    .line 731
    .line 732
    move-object/from16 v8, v23

    .line 733
    .line 734
    const-wide/16 v5, 0x4

    .line 735
    .line 736
    const/4 v7, 0x0

    .line 737
    goto/16 :goto_9

    .line 738
    .line 739
    :cond_18
    move-object/from16 v23, v8

    .line 740
    .line 741
    move-object/from16 v2, v22

    .line 742
    .line 743
    const-wide/16 v7, 0x3

    .line 744
    .line 745
    const-wide/16 v14, 0x8

    .line 746
    .line 747
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    const/4 v6, 0x0

    .line 751
    const-wide/16 v10, 0x4

    .line 752
    .line 753
    goto :goto_1a

    .line 754
    :cond_19
    move-object v2, v3

    .line 755
    move-object/from16 v23, v8

    .line 756
    .line 757
    move/from16 v17, v14

    .line 758
    .line 759
    const-wide/16 v7, 0x3

    .line 760
    .line 761
    const-wide/16 v14, 0x8

    .line 762
    .line 763
    iget-object v3, v9, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 764
    .line 765
    check-cast v3, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 766
    .line 767
    iget-wide v3, v3, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    .line 768
    .line 769
    long-to-int v3, v3

    .line 770
    new-instance v4, Ljava/util/ArrayList;

    .line 771
    .line 772
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 773
    .line 774
    .line 775
    :goto_19
    const v3, 0x74726578

    .line 776
    .line 777
    .line 778
    filled-new-array {v3}, [I

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    invoke-virtual {v0, v12, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->untilBox(Landroidx/appcompat/app/TwilightCalculator;[I)Landroidx/appcompat/app/TwilightCalculator;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    if-eqz v3, :cond_1a

    .line 787
    .line 788
    const-wide/16 v10, 0x4

    .line 789
    .line 790
    invoke-virtual {v1, v10, v11}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 791
    .line 792
    .line 793
    new-instance v5, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    .line 794
    .line 795
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 799
    .line 800
    .line 801
    move-result v13

    .line 802
    iput v13, v5, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->trackId:I

    .line 803
    .line 804
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 805
    .line 806
    .line 807
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 808
    .line 809
    .line 810
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 811
    .line 812
    .line 813
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 814
    .line 815
    .line 816
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 820
    .line 821
    .line 822
    goto :goto_19

    .line 823
    :cond_1a
    const/4 v6, 0x0

    .line 824
    const-wide/16 v10, 0x4

    .line 825
    .line 826
    new-array v3, v6, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    .line 827
    .line 828
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v3

    .line 832
    check-cast v3, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    .line 833
    .line 834
    iput-object v3, v9, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 835
    .line 836
    :goto_1a
    invoke-virtual {v0, v12}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 837
    .line 838
    .line 839
    move-object v3, v2

    .line 840
    move v7, v6

    .line 841
    move-wide v5, v10

    .line 842
    move/from16 v14, v17

    .line 843
    .line 844
    move-object/from16 v8, v23

    .line 845
    .line 846
    goto/16 :goto_6

    .line 847
    .line 848
    :cond_1b
    move-object v2, v3

    .line 849
    move-wide v10, v5

    .line 850
    move v6, v7

    .line 851
    new-array v3, v6, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 852
    .line 853
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v2

    .line 857
    check-cast v2, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 858
    .line 859
    iput-object v2, v9, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 860
    .line 861
    move-object v3, v9

    .line 862
    :goto_1b
    move-wide v5, v10

    .line 863
    const/4 v7, 0x0

    .line 864
    goto/16 :goto_2

    .line 865
    .line 866
    :cond_1c
    move/from16 v17, v12

    .line 867
    .line 868
    const/16 v18, 0x3

    .line 869
    .line 870
    if-eqz v3, :cond_22

    .line 871
    .line 872
    iget-object v1, v3, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 873
    .line 874
    check-cast v1, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 875
    .line 876
    array-length v1, v1

    .line 877
    new-array v1, v1, [Lokio/PriorityQueue;

    .line 878
    .line 879
    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 880
    .line 881
    const/4 v1, 0x0

    .line 882
    :goto_1c
    iget-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 883
    .line 884
    check-cast v2, [Lokio/PriorityQueue;

    .line 885
    .line 886
    array-length v4, v2

    .line 887
    if-ge v1, v4, :cond_21

    .line 888
    .line 889
    new-instance v4, Lokio/PriorityQueue;

    .line 890
    .line 891
    const/16 v5, 0xe

    .line 892
    .line 893
    const/4 v6, 0x0

    .line 894
    invoke-direct {v4, v6, v5}, Lokio/PriorityQueue;-><init>(CI)V

    .line 895
    .line 896
    .line 897
    aput-object v4, v2, v1

    .line 898
    .line 899
    iget-object v2, v3, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast v2, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 902
    .line 903
    aget-object v2, v2, v1

    .line 904
    .line 905
    iput-object v2, v4, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 906
    .line 907
    iget-object v2, v3, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 908
    .line 909
    check-cast v2, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;

    .line 910
    .line 911
    if-eqz v2, :cond_1d

    .line 912
    .line 913
    array-length v4, v2

    .line 914
    move v5, v6

    .line 915
    :goto_1d
    if-ge v5, v4, :cond_1d

    .line 916
    .line 917
    aget-object v7, v2, v5

    .line 918
    .line 919
    iget-object v8, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast v8, [Lokio/PriorityQueue;

    .line 922
    .line 923
    aget-object v8, v8, v1

    .line 924
    .line 925
    iget-object v8, v8, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 926
    .line 927
    check-cast v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 928
    .line 929
    iget-object v8, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 930
    .line 931
    iget v8, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->trackId:I

    .line 932
    .line 933
    iget v7, v7, Lorg/schabi/newpipe/streams/Mp4DashReader$Trex;->trackId:I

    .line 934
    .line 935
    add-int/lit8 v5, v5, 0x1

    .line 936
    .line 937
    goto :goto_1d

    .line 938
    :cond_1d
    iget-object v2, v3, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast v2, [Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 941
    .line 942
    aget-object v2, v2, v1

    .line 943
    .line 944
    iget-object v2, v2, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Landroidx/core/app/NotificationCompatBuilder;

    .line 945
    .line 946
    iget-object v2, v2, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 947
    .line 948
    check-cast v2, Lokhttp3/internal/http2/Huffman$Node;

    .line 949
    .line 950
    iget v2, v2, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 951
    .line 952
    const v4, 0x736f756e

    .line 953
    .line 954
    .line 955
    if-eq v2, v4, :cond_20

    .line 956
    .line 957
    iget-object v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 958
    .line 959
    check-cast v4, [Lokio/PriorityQueue;

    .line 960
    .line 961
    const v5, 0x73756274

    .line 962
    .line 963
    .line 964
    if-eq v2, v5, :cond_1f

    .line 965
    .line 966
    const v5, 0x76696465

    .line 967
    .line 968
    .line 969
    if-eq v2, v5, :cond_1e

    .line 970
    .line 971
    aget-object v2, v4, v1

    .line 972
    .line 973
    const/4 v15, 0x4

    .line 974
    iput v15, v2, Lokio/PriorityQueue;->size:I

    .line 975
    .line 976
    move/from16 v11, v17

    .line 977
    .line 978
    :goto_1e
    move/from16 v4, v18

    .line 979
    .line 980
    :goto_1f
    const/4 v5, 0x1

    .line 981
    goto :goto_20

    .line 982
    :cond_1e
    const/4 v15, 0x4

    .line 983
    aget-object v2, v4, v1

    .line 984
    .line 985
    move/from16 v11, v17

    .line 986
    .line 987
    iput v11, v2, Lokio/PriorityQueue;->size:I

    .line 988
    .line 989
    goto :goto_1e

    .line 990
    :cond_1f
    move/from16 v11, v17

    .line 991
    .line 992
    const/4 v15, 0x4

    .line 993
    aget-object v2, v4, v1

    .line 994
    .line 995
    move/from16 v4, v18

    .line 996
    .line 997
    iput v4, v2, Lokio/PriorityQueue;->size:I

    .line 998
    .line 999
    goto :goto_1f

    .line 1000
    :cond_20
    move/from16 v11, v17

    .line 1001
    .line 1002
    move/from16 v4, v18

    .line 1003
    .line 1004
    const/4 v15, 0x4

    .line 1005
    iget-object v2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast v2, [Lokio/PriorityQueue;

    .line 1008
    .line 1009
    aget-object v2, v2, v1

    .line 1010
    .line 1011
    const/4 v5, 0x1

    .line 1012
    iput v5, v2, Lokio/PriorityQueue;->size:I

    .line 1013
    .line 1014
    :goto_20
    add-int/lit8 v1, v1, 0x1

    .line 1015
    .line 1016
    move/from16 v18, v4

    .line 1017
    .line 1018
    move/from16 v17, v11

    .line 1019
    .line 1020
    goto/16 :goto_1c

    .line 1021
    .line 1022
    :cond_21
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 1023
    .line 1024
    check-cast v1, Landroidx/appcompat/app/TwilightCalculator;

    .line 1025
    .line 1026
    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Ljava/lang/Object;

    .line 1027
    .line 1028
    return-void

    .line 1029
    :cond_22
    const-string v0, "The provided Mp4 doesn\'t have the \'moov\' box"

    .line 1030
    .line 1031
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64696e66 -> :sswitch_2
        0x736d6864 -> :sswitch_1
        0x7374626c -> :sswitch_0
        0x766d6864 -> :sswitch_1
    .end sparse-switch
.end method

.method public readBox()Landroidx/appcompat/app/TwilightCalculator;
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/app/TwilightCalculator;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/TwilightCalculator;-><init>(IB)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lorg/schabi/newpipe/streams/DataReader;

    .line 11
    .line 12
    iget-wide v1, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 13
    .line 14
    iput-wide v1, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-long v1, v1

    .line 21
    const-wide v3, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v1, v3

    .line 27
    iput-wide v1, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/DataReader;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 34
    .line 35
    iget-wide v1, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 36
    .line 37
    const-wide/16 v3, 0x1

    .line 38
    .line 39
    cmp-long v1, v1, v3

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/DataReader;->readLong()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    iput-wide v1, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 48
    .line 49
    :cond_0
    return-object v0
.end method

.method public readBox(I)Landroidx/appcompat/app/TwilightCalculator;
    .locals 3

    .line 50
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Landroidx/appcompat/app/TwilightCalculator;

    move-result-object p0

    .line 51
    iget v0, p0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-static {p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget p0, p0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    invoke-static {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object p0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFullBox(Landroidx/appcompat/app/TwilightCalculator;)[B
    .locals 6

    .line 1
    iget-wide v0, p1, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    iget v2, p1, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    sub-int/2addr v0, v2

    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lorg/schabi/newpipe/streams/DataReader;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0, v3, v2, v0}, Lorg/schabi/newpipe/streams/DataReader;->read([BII)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-ne p0, v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 39
    .line 40
    iget v0, p1, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 41
    .line 42
    invoke-static {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-wide v1, p1, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 47
    .line 48
    iget-wide v3, p1, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v5, "EOF reached in box: type="

    .line 53
    .line 54
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " offset="

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, " size="

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public varargs untilBox(Landroidx/appcompat/app/TwilightCalculator;[I)Landroidx/appcompat/app/TwilightCalculator;
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/streams/DataReader;

    .line 4
    .line 5
    iget-wide v0, v0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 6
    .line 7
    iget-wide v2, p1, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 8
    .line 9
    iget-wide v4, p1, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 10
    .line 11
    add-long/2addr v2, v4

    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-gez v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->readBox()Landroidx/appcompat/app/TwilightCalculator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    array-length v1, p2

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_1
    if-ge v2, v1, :cond_1

    .line 23
    .line 24
    aget v3, p2, v2

    .line 25
    .line 26
    iget v4, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 27
    .line 28
    if-ne v4, v3, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->ensure(Landroidx/appcompat/app/TwilightCalculator;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method
