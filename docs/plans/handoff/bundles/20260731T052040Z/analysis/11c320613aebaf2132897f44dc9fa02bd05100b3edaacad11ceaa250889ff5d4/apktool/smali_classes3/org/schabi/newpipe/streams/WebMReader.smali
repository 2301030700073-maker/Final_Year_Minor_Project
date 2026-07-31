.class public final Lorg/schabi/newpipe/streams/WebMReader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public done:Z

.field public firstSegment:Z

.field public segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

.field public selectedTrack:I

.field public final stream:Lorg/schabi/newpipe/streams/DataReader;

.field public tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;


# direct methods
.method public static -$$Nest$mreadCluster(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Cluster;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Cluster;-><init>(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x67

    .line 7
    .line 8
    filled-new-array {v1}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, p1, v1}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    iput-wide p0, v0, Lorg/schabi/newpipe/streams/WebMReader$Cluster;->timecode:J

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Cluster at "

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 33
    .line 34
    const-string p1, " without Timecode element"

    .line 35
    .line 36
    invoke-static {v0, v1, p1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/streams/DataReader;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/streams/DataReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V
    .locals 8

    .line 1
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 2
    .line 3
    iget-wide v2, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 7
    .line 8
    iget-wide v2, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 9
    .line 10
    sub-long/2addr v0, v2

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-ltz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 25
    .line 26
    iget v1, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 27
    .line 28
    int-to-long v1, v1

    .line 29
    const-string v3, "0x"

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-wide v2, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 40
    .line 41
    iget-wide v4, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    .line 42
    .line 43
    iget-wide p0, p0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 44
    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v7, "parser go beyond limits of the Element. type="

    .line 48
    .line 49
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " offset="

    .line 56
    .line 57
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " size="

    .line 64
    .line 65
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " position="

    .line 72
    .line 73
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final getNextSegment()Lorg/schabi/newpipe/streams/WebMReader$Segment;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->done:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->firstSegment:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-boolean v2, p0, Lorg/schabi/newpipe/streams/WebMReader;->firstSegment:Z

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 20
    .line 21
    iget-object v0, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x8538067

    .line 29
    .line 30
    .line 31
    filled-new-array {v0}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->done:Z

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    invoke-virtual {p0, v0, v2}, Lorg/schabi/newpipe/streams/WebMReader;->readSegment(Lorg/schabi/newpipe/streams/WebMReader$Element;Z)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 50
    .line 51
    return-object v0
.end method

.method public final parse()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader;->readElement()Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 6
    .line 7
    const v2, 0xa45dfa3

    .line 8
    .line 9
    .line 10
    if-ne v1, v2, :cond_2

    .line 11
    .line 12
    const/16 v1, 0x2f7

    .line 13
    .line 14
    filled-new-array {v1}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    const-wide/16 v3, 0x1

    .line 29
    .line 30
    cmp-long v1, v1, v3

    .line 31
    .line 32
    if-gtz v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x282

    .line 35
    .line 36
    filled-new-array {v1}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    new-instance v2, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->readBlob(Lorg/schabi/newpipe/streams/WebMReader$Element;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "webm"

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    const/16 v1, 0x285

    .line 66
    .line 67
    filled-new-array {v1}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v1

    .line 81
    const-wide/16 v3, 0x2

    .line 82
    .line 83
    cmp-long v1, v1, v3

    .line 84
    .line 85
    if-gtz v1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 88
    .line 89
    .line 90
    const v0, 0x8538067

    .line 91
    .line 92
    .line 93
    filled-new-array {v0}, [I

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->readSegment(Lorg/schabi/newpipe/streams/WebMReader$Element;Z)Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 110
    .line 111
    iget-object v0, v0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, [Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 114
    .line 115
    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->tracks:[Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 116
    .line 117
    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->selectedTrack:I

    .line 119
    .line 120
    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->done:Z

    .line 122
    .line 123
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/WebMReader;->firstSegment:Z

    .line 124
    .line 125
    return-void

    .line 126
    :cond_0
    const-string p0, "Fragment element not found"

    .line 127
    .line 128
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_1
    const-string p0, "Unsupported EBML data (WebM)"

    .line 133
    .line 134
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 139
    .line 140
    const-wide/32 v1, 0xa45dfa3

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v2, "0x"

    .line 148
    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget v0, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 154
    .line 155
    int-to-long v3, v0

    .line 156
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v3, "expected "

    .line 167
    .line 168
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, " found "

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p0
.end method

.method public final readBlob(Lorg/schabi/newpipe/streams/WebMReader$Element;)[B
    .locals 4

    .line 1
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->contentSize:J

    .line 2
    .line 3
    long-to-int p1, v0

    .line 4
    new-array v2, p1, [B

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0, v2, v3, p1}, Lorg/schabi/newpipe/streams/DataReader;->read([BII)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-long p0, p0

    .line 14
    cmp-long p0, p0, v0

    .line 15
    .line 16
    if-ltz p0, :cond_0

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final readElement()Lorg/schabi/newpipe/streams/WebMReader$Element;
    .locals 6

    .line 1
    new-instance v0, Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 7
    .line 8
    iget-wide v2, v1, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 9
    .line 10
    iput-wide v2, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader;->readEncodedNumber()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    long-to-int v2, v2

    .line 17
    iput v2, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader;->readEncodedNumber()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iput-wide v2, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->contentSize:J

    .line 24
    .line 25
    iget-wide v4, v1, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 26
    .line 27
    add-long/2addr v2, v4

    .line 28
    iget-wide v4, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 29
    .line 30
    sub-long/2addr v2, v4

    .line 31
    iput-wide v2, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    .line 32
    .line 33
    return-object v0
.end method

.method public final readEncodedNumber()J
    .locals 8

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/16 v2, 0x80

    .line 11
    .line 12
    move v3, v1

    .line 13
    :goto_0
    const/16 v4, 0x9

    .line 14
    .line 15
    if-ge v3, v4, :cond_2

    .line 16
    .line 17
    and-int v4, v0, v2

    .line 18
    .line 19
    if-ne v4, v2, :cond_1

    .line 20
    .line 21
    const/16 v2, 0xff

    .line 22
    .line 23
    shr-int/2addr v2, v3

    .line 24
    and-int/2addr v0, v2

    .line 25
    int-to-long v4, v0

    .line 26
    :goto_1
    if-ge v1, v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    shl-long/2addr v4, v2

    .line 35
    int-to-long v6, v0

    .line 36
    or-long/2addr v4, v6

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    return-wide v4

    .line 41
    :cond_1
    shr-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    int-to-byte v3, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string p0, "Invalid encoded length"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v0, 0x0

    .line 53
    .line 54
    return-wide v0
.end method

.method public final readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J
    .locals 5

    .line 1
    iget-wide v0, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->contentSize:J

    .line 2
    .line 3
    long-to-int p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    :goto_0
    add-int/lit8 v2, p1, -0x1

    .line 7
    .line 8
    if-lez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/DataReader;->read()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq p1, v3, :cond_0

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    shl-long/2addr v0, v3

    .line 22
    int-to-long v3, p1

    .line 23
    or-long/2addr v0, v3

    .line 24
    move p1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    return-wide v0
.end method

.method public final readSegment(Lorg/schabi/newpipe/streams/WebMReader$Element;Z)Lorg/schabi/newpipe/streams/WebMReader$Segment;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v1, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    iput-boolean v3, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    .line 16
    .line 17
    :goto_0
    const v4, 0x549a966

    .line 18
    .line 19
    .line 20
    const v5, 0x654ae6b    # 4.000091E-35f

    .line 21
    .line 22
    .line 23
    const v6, 0xf43b675

    .line 24
    .line 25
    .line 26
    filled-new-array {v4, v5, v6}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v0, v1, v7}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v7, :cond_17

    .line 35
    .line 36
    iget v8, v7, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 37
    .line 38
    if-ne v8, v6, :cond_0

    .line 39
    .line 40
    iput-object v7, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 41
    .line 42
    goto/16 :goto_9

    .line 43
    .line 44
    :cond_0
    const/4 v6, 0x0

    .line 45
    if-eq v8, v4, :cond_12

    .line 46
    .line 47
    if-eq v8, v5, :cond_1

    .line 48
    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    .line 53
    const/4 v5, 0x2

    .line 54
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    :goto_1
    const/16 v8, 0x2e

    .line 58
    .line 59
    filled-new-array {v8}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v0, v7, v8}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const/4 v11, 0x3

    .line 68
    if-eqz v8, :cond_e

    .line 69
    .line 70
    new-instance v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 71
    .line 72
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    const-wide/16 v13, -0x1

    .line 76
    .line 77
    iput-wide v13, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    .line 78
    .line 79
    iput-wide v13, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    .line 80
    .line 81
    iput-wide v13, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->seekPreRoll:J

    .line 82
    .line 83
    move v13, v6

    .line 84
    :goto_2
    new-array v14, v6, [I

    .line 85
    .line 86
    invoke-virtual {v0, v8, v14}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    if-eqz v14, :cond_c

    .line 91
    .line 92
    iget v15, v14, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 93
    .line 94
    if-eq v15, v11, :cond_b

    .line 95
    .line 96
    const-wide/16 v16, 0x0

    .line 97
    .line 98
    const/4 v9, 0x6

    .line 99
    if-eq v15, v9, :cond_a

    .line 100
    .line 101
    const/16 v9, 0x1c

    .line 102
    .line 103
    if-eq v15, v9, :cond_8

    .line 104
    .line 105
    const/16 v9, 0x57

    .line 106
    .line 107
    if-eq v15, v9, :cond_7

    .line 108
    .line 109
    const/16 v9, 0x16aa

    .line 110
    .line 111
    if-eq v15, v9, :cond_6

    .line 112
    .line 113
    const/16 v9, 0x16bb

    .line 114
    .line 115
    if-eq v15, v9, :cond_5

    .line 116
    .line 117
    const/16 v9, 0x23a2

    .line 118
    .line 119
    if-eq v15, v9, :cond_4

    .line 120
    .line 121
    const v9, 0x3e383

    .line 122
    .line 123
    .line 124
    if-eq v15, v9, :cond_3

    .line 125
    .line 126
    const/16 v9, 0x60

    .line 127
    .line 128
    if-eq v15, v9, :cond_2

    .line 129
    .line 130
    const/16 v9, 0x61

    .line 131
    .line 132
    if-eq v15, v9, :cond_2

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_2
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->readBlob(Lorg/schabi/newpipe/streams/WebMReader$Element;)[B

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    iput-object v9, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->bMetadata:[B

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v9

    .line 146
    iput-wide v9, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->defaultDuration:J

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->readBlob(Lorg/schabi/newpipe/streams/WebMReader$Element;)[B

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    iput-object v9, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecPrivate:[B

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 157
    .line 158
    .line 159
    move-result-wide v9

    .line 160
    iput-wide v9, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->seekPreRoll:J

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v9

    .line 167
    iput-wide v9, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecDelay:J

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_7
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v9

    .line 174
    iput-wide v9, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackNumber:J

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 178
    .line 179
    .line 180
    move-result-wide v9

    .line 181
    cmp-long v9, v9, v16

    .line 182
    .line 183
    if-eqz v9, :cond_9

    .line 184
    .line 185
    move v13, v3

    .line 186
    goto :goto_3

    .line 187
    :cond_9
    move v13, v6

    .line 188
    goto :goto_3

    .line 189
    :cond_a
    new-instance v9, Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->readBlob(Lorg/schabi/newpipe/streams/WebMReader$Element;)[B

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 196
    .line 197
    invoke-direct {v9, v10, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 198
    .line 199
    .line 200
    iput-object v9, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_b
    const-wide/16 v16, 0x0

    .line 204
    .line 205
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 206
    .line 207
    .line 208
    move-result-wide v9

    .line 209
    long-to-int v9, v9

    .line 210
    iput v9, v12, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    .line 211
    .line 212
    :goto_3
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :cond_c
    const-wide/16 v16, 0x0

    .line 218
    .line 219
    if-nez v13, :cond_d

    .line 220
    .line 221
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    :cond_d
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_e
    new-array v8, v6, [Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 230
    .line 231
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    check-cast v4, [Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 236
    .line 237
    array-length v8, v4

    .line 238
    :goto_4
    if-ge v6, v8, :cond_11

    .line 239
    .line 240
    aget-object v9, v4, v6

    .line 241
    .line 242
    iget v10, v9, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->trackType:I

    .line 243
    .line 244
    if-eq v10, v3, :cond_10

    .line 245
    .line 246
    if-eq v10, v5, :cond_f

    .line 247
    .line 248
    iput v11, v9, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:I

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_f
    iput v3, v9, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:I

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_10
    iput v5, v9, Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;->kind:I

    .line 255
    .line 256
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_11
    iput-object v4, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_12
    const-wide/16 v16, 0x0

    .line 263
    .line 264
    new-instance v4, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 265
    .line 266
    invoke-direct {v4, v6}, Lorg/schabi/newpipe/streams/WebMReader$Info;-><init>(I)V

    .line 267
    .line 268
    .line 269
    :goto_6
    const v5, 0xad7b1

    .line 270
    .line 271
    .line 272
    const/16 v6, 0x489

    .line 273
    .line 274
    filled-new-array {v5, v6}, [I

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-virtual {v0, v7, v8}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    if-eqz v8, :cond_15

    .line 283
    .line 284
    iget v9, v8, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 285
    .line 286
    if-eq v9, v6, :cond_14

    .line 287
    .line 288
    if-eq v9, v5, :cond_13

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_13
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v5

    .line 295
    iput-wide v5, v4, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_14
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/WebMReader;->readNumber(Lorg/schabi/newpipe/streams/WebMReader$Element;)J

    .line 299
    .line 300
    .line 301
    :goto_7
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_15
    iget-wide v5, v4, Lorg/schabi/newpipe/streams/WebMReader$Info;->timecodeScale:J

    .line 306
    .line 307
    cmp-long v5, v5, v16

    .line 308
    .line 309
    if-eqz v5, :cond_16

    .line 310
    .line 311
    iput-object v4, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 312
    .line 313
    :goto_8
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_16
    const-string v0, "Element Timecode not found"

    .line 319
    .line 320
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const/4 v0, 0x0

    .line 324
    return-object v0

    .line 325
    :cond_17
    :goto_9
    if-eqz p2, :cond_19

    .line 326
    .line 327
    iget-object v0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v0, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 330
    .line 331
    if-eqz v0, :cond_18

    .line 332
    .line 333
    iget-object v0, v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, [Lorg/schabi/newpipe/streams/WebMReader$WebMTrack;

    .line 336
    .line 337
    if-eqz v0, :cond_18

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    .line 341
    .line 342
    iget-wide v1, v1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 343
    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v4, "Cluster element found without Info and/or Tracks element at position "

    .line 347
    .line 348
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :cond_19
    :goto_a
    return-object v2
.end method

.method public final varargs untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader;->stream:Lorg/schabi/newpipe/streams/DataReader;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/DataReader;->available()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-wide v0, v0, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 13
    .line 14
    iget-wide v2, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->offset:J

    .line 15
    .line 16
    iget-wide v4, p1, Lorg/schabi/newpipe/streams/WebMReader$Element;->size:J

    .line 17
    .line 18
    add-long/2addr v2, v4

    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-gez v0, :cond_4

    .line 22
    .line 23
    :goto_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/WebMReader;->readElement()Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    array-length v1, p2

    .line 28
    const/4 v2, 0x1

    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_1
    array-length v1, p2

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_2
    if-ge v2, v1, :cond_3

    .line 35
    .line 36
    aget v3, p2, v2

    .line 37
    .line 38
    iget v4, v0, Lorg/schabi/newpipe/streams/WebMReader$Element;->type:I

    .line 39
    .line 40
    if-ne v4, v3, :cond_2

    .line 41
    .line 42
    :goto_3
    return-object v0

    .line 43
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method
