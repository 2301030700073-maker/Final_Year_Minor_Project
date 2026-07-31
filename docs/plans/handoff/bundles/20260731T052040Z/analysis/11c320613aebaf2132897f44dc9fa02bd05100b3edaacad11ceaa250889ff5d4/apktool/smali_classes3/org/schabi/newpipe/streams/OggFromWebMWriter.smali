.class public final Lorg/schabi/newpipe/streams/OggFromWebMWriter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final crc32Table:[I

.field public done:Z

.field public final output:Lorg/schabi/newpipe/streams/io/SharpStream;

.field public packetFlag:B

.field public parsed:Z

.field public final segmentTable:[B

.field public segmentTableNextTimestamp:J

.field public segmentTableSize:S

.field public sequenceCount:I

.field public final source:Lorg/schabi/newpipe/streams/io/SharpStream;

.field public final streamId:I

.field public final streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public webm:Lorg/schabi/newpipe/streams/WebMReader;

.field public webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

.field public webmBlockLastTimecode:J

.field public webmBlockNearDuration:J

.field public webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

.field public webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

.field public webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/streams/io/SharpStream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->done:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    .line 8
    .line 9
    iput v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->sequenceCount:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    iput-byte v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->packetFlag:B

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    .line 16
    .line 17
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 18
    .line 19
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 20
    .line 21
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 22
    .line 23
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 24
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    iput-wide v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    .line 28
    .line 29
    iput-wide v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockNearDuration:J

    .line 30
    .line 31
    iput-short v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 32
    .line 33
    const/16 v2, 0xff

    .line 34
    .line 35
    new-array v2, v2, [B

    .line 36
    .line 37
    iput-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTable:[B

    .line 38
    .line 39
    const-wide/32 v2, 0x3b9aca00

    .line 40
    .line 41
    .line 42
    iput-wide v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    .line 43
    .line 44
    const/16 v2, 0x100

    .line 45
    .line 46
    new-array v3, v2, [I

    .line 47
    .line 48
    iput-object v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->crc32Table:[I

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canRead()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->canWrite()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iput-object p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 63
    .line 64
    iput-object p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 65
    .line 66
    iput-object p3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    long-to-int p1, p1

    .line 73
    iput p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamId:I

    .line 74
    .line 75
    move p1, v0

    .line 76
    :goto_0
    if-ge p1, v2, :cond_1

    .line 77
    .line 78
    shl-int/lit8 p2, p1, 0x18

    .line 79
    .line 80
    move p3, v0

    .line 81
    :goto_1
    const/16 v1, 0x8

    .line 82
    .line 83
    if-ge p3, v1, :cond_0

    .line 84
    .line 85
    ushr-int/lit8 v1, p2, 0x1f

    .line 86
    .line 87
    int-to-long v3, v1

    .line 88
    shl-int/lit8 p2, p2, 0x1

    .line 89
    .line 90
    const-wide v5, 0x100000000L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    sub-long/2addr v5, v3

    .line 96
    long-to-int v1, v5

    .line 97
    const v3, 0x4c11db7

    .line 98
    .line 99
    .line 100
    and-int/2addr v1, v3

    .line 101
    xor-int/2addr p2, v1

    .line 102
    add-int/lit8 p3, p3, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_0
    iget-object p3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->crc32Table:[I

    .line 106
    .line 107
    aput p2, p3, p1

    .line 108
    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    return-void

    .line 113
    :cond_2
    const-string p0, "output stream must be writable and allows seeking"

    .line 114
    .line 115
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :cond_3
    const-string p0, "source stream must be readable and allows seeking"

    .line 120
    .line 121
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1
.end method


# virtual methods
.method public final addPacketSegment(I)Z
    .locals 7

    .line 1
    const v0, 0xfe01

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-gt p1, v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTable:[B

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    iget-short v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 11
    .line 12
    sub-int/2addr v2, v3

    .line 13
    const/16 v3, 0xff

    .line 14
    .line 15
    mul-int/2addr v2, v3

    .line 16
    rem-int/lit16 v4, p1, 0xff

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    move v4, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v4, v1

    .line 24
    :goto_0
    if-eqz v4, :cond_1

    .line 25
    .line 26
    add-int/lit16 v2, v2, -0xff

    .line 27
    .line 28
    :cond_1
    if-ge v2, p1, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    :goto_1
    if-lez p1, :cond_3

    .line 32
    .line 33
    iget-short v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 34
    .line 35
    add-int/lit8 v6, v2, 0x1

    .line 36
    .line 37
    int-to-short v6, v6

    .line 38
    iput-short v6, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 39
    .line 40
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    int-to-byte v6, v6

    .line 45
    aput-byte v6, v0, v2

    .line 46
    .line 47
    add-int/lit16 p1, p1, -0xff

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    if-eqz v4, :cond_4

    .line 51
    .line 52
    iget-short p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 53
    .line 54
    add-int/lit8 v2, p1, 0x1

    .line 55
    .line 56
    int-to-short v2, v2

    .line 57
    iput-short v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 58
    .line 59
    aput-byte v1, v0, p1

    .line 60
    .line 61
    :cond_4
    return v5

    .line 62
    :cond_5
    const-string p0, "page size cannot be larger than 65025"

    .line 63
    .line 64
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v1
.end method

.method public final build()V
    .locals 12

    .line 1
    const v0, 0xfe1c

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/high16 v1, 0x10000

    .line 9
    .line 10
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 20
    .line 21
    iget v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:I

    .line 22
    .line 23
    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-ne v2, v5, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 35
    .line 36
    iget-wide v5, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    .line 37
    .line 38
    cmp-long v2, v5, v3

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    long-to-float v2, v5

    .line 43
    iget-object v5, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 44
    .line 45
    iget-object v5, v5, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v5, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 48
    .line 49
    iget-wide v5, v5, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    .line 50
    .line 51
    long-to-float v5, v5

    .line 52
    div-float/2addr v2, v5

    .line 53
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 54
    .line 55
    div-float/2addr v5, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const-string p0, "missing default frame time"

    .line 58
    .line 59
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    const-string p0, "not implemented"

    .line 64
    .line 65
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 70
    .line 71
    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    .line 72
    .line 73
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :cond_3
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    const/4 v6, 0x6

    .line 82
    const/4 v7, 0x0

    .line 83
    if-lt v5, v6, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const v6, 0xffff

    .line 90
    .line 91
    .line 92
    and-int/2addr v5, v6

    .line 93
    const v6, 0xb584

    .line 94
    .line 95
    .line 96
    if-ne v5, v6, :cond_3

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    move v5, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move v5, v7

    .line 105
    :goto_0
    cmpl-float v2, v5, v7

    .line 106
    .line 107
    if-eqz v2, :cond_f

    .line 108
    .line 109
    :goto_1
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 110
    .line 111
    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    .line 112
    .line 113
    iget-object v6, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 114
    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    array-length v2, v2

    .line 118
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->addPacketSegment(I)Z

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 122
    .line 123
    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    .line 124
    .line 125
    invoke-virtual {p0, v3, v4, v0, v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->makePacketheader(JLjava/nio/ByteBuffer;[B)I

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 132
    .line 133
    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    .line 134
    .line 135
    invoke-virtual {v6, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([B)V

    .line 136
    .line 137
    .line 138
    :cond_5
    sget v2, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 139
    .line 140
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 141
    .line 142
    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    .line 143
    .line 144
    const-string v7, "A_OPUS"

    .line 145
    .line 146
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    const/4 v7, 0x0

    .line 151
    if-eqz v2, :cond_7

    .line 152
    .line 153
    new-instance v2, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    iget-object v8, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 159
    .line 160
    if-eqz v8, :cond_6

    .line 161
    .line 162
    const-string v9, "COMMENT"

    .line 163
    .line 164
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    const-string v9, "GENRE"

    .line 176
    .line 177
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getCategory()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    const-string v9, "ARTIST"

    .line 189
    .line 190
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    const-string v9, "TITLE"

    .line 202
    .line 203
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->getLocalDateTime()Lj$/time/LocalDateTime;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    sget-object v9, Lj$/time/format/DateTimeFormatter;->ISO_DATE:Lj$/time/format/DateTimeFormatter;

    .line 223
    .line 224
    invoke-virtual {v8, v9}, Lj$/time/LocalDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    const-string v9, "DATE"

    .line 229
    .line 230
    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    :cond_6
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    new-instance v8, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 242
    .line 243
    const/16 v9, 0x17

    .line 244
    .line 245
    invoke-direct {v8, v9}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v2, v8}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    new-instance v8, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 253
    .line 254
    const/16 v9, 0x15

    .line 255
    .line 256
    invoke-direct {v8, v9}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v2, v8}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-interface {v2, v8}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Ljava/util/List;

    .line 272
    .line 273
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    new-instance v10, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;

    .line 278
    .line 279
    const/4 v11, 0x7

    .line 280
    invoke-direct {v10, v11}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;-><init>(I)V

    .line 281
    .line 282
    .line 283
    invoke-static {v10}, Lj$/util/stream/Collectors;->summingInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/Collector;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    invoke-interface {v8, v10}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    check-cast v8, Ljava/lang/Integer;

    .line 292
    .line 293
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    add-int/lit8 v8, v8, 0x10

    .line 298
    .line 299
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 304
    .line 305
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 306
    .line 307
    .line 308
    const/16 v10, 0xc

    .line 309
    .line 310
    new-array v10, v10, [B

    .line 311
    .line 312
    fill-array-data v10, :array_0

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 316
    .line 317
    .line 318
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 323
    .line 324
    .line 325
    new-instance v10, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 326
    .line 327
    invoke-direct {v10, v8, v9}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 328
    .line 329
    .line 330
    invoke-static {v2, v10}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    goto :goto_2

    .line 338
    :cond_7
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 339
    .line 340
    iget-object v2, v2, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    .line 341
    .line 342
    const-string v8, "A_VORBIS"

    .line 343
    .line 344
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_8

    .line 349
    .line 350
    const/16 v2, 0xf

    .line 351
    .line 352
    new-array v2, v2, [B

    .line 353
    .line 354
    fill-array-data v2, :array_1

    .line 355
    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_8
    move-object v2, v7

    .line 359
    :goto_2
    if-eqz v2, :cond_9

    .line 360
    .line 361
    array-length v8, v2

    .line 362
    invoke-virtual {p0, v8}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->addPacketSegment(I)Z

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v3, v4, v0, v2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->makePacketheader(JLjava/nio/ByteBuffer;[B)I

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([B)V

    .line 372
    .line 373
    .line 374
    :cond_9
    :goto_3
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 375
    .line 376
    if-eqz v2, :cond_e

    .line 377
    .line 378
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->getNextBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    if-eqz v2, :cond_b

    .line 383
    .line 384
    iget-wide v8, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    .line 385
    .line 386
    iget-object v6, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 387
    .line 388
    iget-wide v10, v6, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    .line 389
    .line 390
    add-long/2addr v8, v10

    .line 391
    iget-wide v10, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    .line 392
    .line 393
    cmp-long v6, v8, v10

    .line 394
    .line 395
    if-ltz v6, :cond_a

    .line 396
    .line 397
    const/4 v6, 0x0

    .line 398
    goto :goto_4

    .line 399
    :cond_a
    iget v6, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    .line 400
    .line 401
    invoke-virtual {p0, v6}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->addPacketSegment(I)Z

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    :goto_4
    if-eqz v6, :cond_b

    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    iget-object v8, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    iget v10, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    .line 418
    .line 419
    invoke-virtual {v8, v9, v6, v10}, Ljava/io/InputStream;->read([BII)I

    .line 420
    .line 421
    .line 422
    iget v2, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->dataSize:I

    .line 423
    .line 424
    add-int/2addr v6, v2

    .line 425
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 426
    .line 427
    .line 428
    goto :goto_3

    .line 429
    :cond_b
    iget-object v6, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 430
    .line 431
    iget-wide v8, v6, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    .line 432
    .line 433
    long-to-double v8, v8

    .line 434
    if-nez v2, :cond_d

    .line 435
    .line 436
    const/4 v10, 0x4

    .line 437
    iput-byte v10, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->packetFlag:B

    .line 438
    .line 439
    iget-wide v10, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    .line 440
    .line 441
    long-to-double v10, v10

    .line 442
    add-double/2addr v8, v10

    .line 443
    iget-wide v10, v6, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    .line 444
    .line 445
    cmp-long v6, v10, v3

    .line 446
    .line 447
    if-lez v6, :cond_c

    .line 448
    .line 449
    :goto_5
    long-to-double v10, v10

    .line 450
    add-double/2addr v8, v10

    .line 451
    goto :goto_6

    .line 452
    :cond_c
    iget-wide v10, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockNearDuration:J

    .line 453
    .line 454
    goto :goto_5

    .line 455
    :cond_d
    iget-wide v10, v2, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    .line 456
    .line 457
    goto :goto_5

    .line 458
    :goto_6
    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    div-double/2addr v8, v10

    .line 464
    float-to-double v10, v5

    .line 465
    mul-double/2addr v8, v10

    .line 466
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 467
    .line 468
    .line 469
    move-result-wide v8

    .line 470
    double-to-long v8, v8

    .line 471
    invoke-virtual {p0, v8, v9, v0, v7}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->makePacketheader(JLjava/nio/ByteBuffer;[B)I

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 480
    .line 481
    .line 482
    move-result v9

    .line 483
    invoke-virtual {p0, v8, v6, v9}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->calcCrc32([BII)I

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    const/16 v8, 0x16

    .line 488
    .line 489
    invoke-virtual {v0, v8, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->write(Ljava/nio/ByteBuffer;)V

    .line 496
    .line 497
    .line 498
    iput-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 499
    .line 500
    goto :goto_3

    .line 501
    :cond_e
    return-void

    .line 502
    :cond_f
    const-string p0, "cannot get the audio sample rate"

    .line 503
    .line 504
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    nop

    .line 509
    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_1
    .array-data 1
        0x3t
        0x76t
        0x6ft
        0x72t
        0x62t
        0x69t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final calcCrc32([BII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p3, :cond_0

    .line 3
    .line 4
    ushr-int/lit8 v1, p2, 0x18

    .line 5
    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 7
    .line 8
    shl-int/lit8 p2, p2, 0x8

    .line 9
    .line 10
    aget-byte v2, p1, v0

    .line 11
    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 13
    .line 14
    xor-int/2addr v1, v2

    .line 15
    iget-object v2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->crc32Table:[I

    .line 16
    .line 17
    aget v1, v2, v1

    .line 18
    .line 19
    xor-int/2addr p2, v1

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return p2
.end method

.method public final close()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->done:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->parsed:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmTrack:Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->isClosed()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->flush()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->source:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final getNextBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlock:Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webm:Lorg/schabi/newpipe/streams/WebMReader;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader;->getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->getNextCluster()Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmSegment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->getNextBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->getNextSimpleBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    iput-object v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmCluster:Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->getNextBlock()Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_3
    iget-wide v1, v0, Lorg/schabi/newpipe/streams/WebMReader$SimpleBlock;->absoluteTimeCodeNs:J

    .line 61
    .line 62
    iget-wide v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    .line 63
    .line 64
    sub-long v3, v1, v3

    .line 65
    .line 66
    iput-wide v3, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockNearDuration:J

    .line 67
    .line 68
    iput-wide v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->webmBlockLastTimecode:J

    .line 69
    .line 70
    return-object v0
.end method

.method public final makePacketheader(JLjava/nio/ByteBuffer;[B)I
    .locals 5

    .line 1
    const v0, 0x5367674f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    iget-byte v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->packetFlag:B

    .line 12
    .line 13
    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    iget p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->streamId:I

    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    iget p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->sequenceCount:I

    .line 25
    .line 26
    add-int/lit8 p2, p1, 0x1

    .line 27
    .line 28
    iput p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->sequenceCount:I

    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    iget-short p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 37
    .line 38
    int-to-byte p1, p1

    .line 39
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTable:[B

    .line 43
    .line 44
    iget-short p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 45
    .line 46
    invoke-virtual {p3, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    iget-short p1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x1b

    .line 52
    .line 53
    int-to-short p1, p1

    .line 54
    iget-wide v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    .line 55
    .line 56
    const-wide/32 v3, 0x3b9aca00

    .line 57
    .line 58
    .line 59
    add-long/2addr v1, v3

    .line 60
    iput-wide v1, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    .line 61
    .line 62
    iput-byte v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->packetFlag:B

    .line 63
    .line 64
    iput-short v0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableSize:S

    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p0, p2, v0, p1}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->calcCrc32([BII)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p4, :cond_0

    .line 75
    .line 76
    array-length p2, p4

    .line 77
    invoke-virtual {p0, p4, p1, p2}, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->calcCrc32([BII)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 p2, 0x16

    .line 82
    .line 83
    invoke-virtual {p3, p2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    .line 86
    iget-wide p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    .line 87
    .line 88
    sub-long/2addr p2, v3

    .line 89
    iput-wide p2, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->segmentTableNextTimestamp:J

    .line 90
    .line 91
    :cond_0
    return p1
.end method

.method public final write(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/streams/OggFromWebMWriter;->output:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, v2, v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    .line 17
    .line 18
    return-void
.end method
