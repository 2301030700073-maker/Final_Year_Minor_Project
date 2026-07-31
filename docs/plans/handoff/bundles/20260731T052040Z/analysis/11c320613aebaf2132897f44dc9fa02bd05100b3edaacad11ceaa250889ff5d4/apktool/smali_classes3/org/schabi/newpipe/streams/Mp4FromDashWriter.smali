.class public final Lorg/schabi/newpipe/streams/Mp4FromDashWriter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public auxBuffer:Ljava/nio/ByteBuffer;

.field public final compatibleBrands:Ljava/util/ArrayList;

.field public lastWriteOffset:J

.field public moovSimulation:Z

.field public outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

.field public overrideMainBrand:I

.field public parsed:Z

.field public final readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

.field public final readersChunks:[Lcom/grack/nanojson/JsonParser;

.field public final sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

.field public final time:J

.field public tracks:[Lokio/PriorityQueue;

.field public writeOffset:J


# direct methods
.method public varargs constructor <init>([Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    .line 13
    .line 14
    iput v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->overrideMainBrand:I

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    .line 23
    .line 24
    array-length v1, p1

    .line 25
    :goto_0
    if-ge v0, v1, :cond_0

    .line 26
    .line 27
    aget-object v2, p1, v0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 36
    .line 37
    array-length p1, p1

    .line 38
    new-array v0, p1, [Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 39
    .line 40
    iput-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 41
    .line 42
    new-array p1, p1, [Lcom/grack/nanojson/JsonParser;

    .line 43
    .line 44
    iput-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readersChunks:[Lcom/grack/nanojson/JsonParser;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    const-wide/16 v2, 0x3e8

    .line 51
    .line 52
    div-long/2addr v0, v2

    .line 53
    const-wide/32 v2, 0x7c25b080

    .line 54
    .line 55
    .line 56
    add-long/2addr v0, v2

    .line 57
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->time:J

    .line 58
    .line 59
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    .line 60
    .line 61
    const v0, 0x6d703431

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    .line 72
    .line 73
    const v0, 0x69736f6d

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    .line 84
    .line 85
    const p1, 0x69736f32

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static initChunkTables(Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;II)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    int-to-float v1, v0

    .line 5
    int-to-float v2, p2

    .line 6
    div-float/2addr v1, v2

    .line 7
    float-to-double v2, v1

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    double-to-int v2, v2

    .line 13
    float-to-int v1, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eq v2, v1, :cond_0

    .line 17
    .line 18
    move v1, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v3

    .line 21
    :goto_0
    iput v4, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    if-eq p1, p2, :cond_1

    .line 25
    .line 26
    iput v5, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 27
    .line 28
    :cond_1
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget v6, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 31
    .line 32
    add-int/2addr v6, v4

    .line 33
    iput v6, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 34
    .line 35
    :cond_2
    iget v6, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    mul-int/2addr v6, v7

    .line 39
    new-array v6, v6, [I

    .line 40
    .line 41
    iput-object v6, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    .line 42
    .line 43
    add-int/2addr v2, v4

    .line 44
    iput v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 45
    .line 46
    aput v4, v6, v3

    .line 47
    .line 48
    aput p1, v6, v4

    .line 49
    .line 50
    aput v4, v6, v5

    .line 51
    .line 52
    if-eq p1, p2, :cond_3

    .line 53
    .line 54
    aput v5, v6, v7

    .line 55
    .line 56
    const/4 p0, 0x4

    .line 57
    aput p2, v6, p0

    .line 58
    .line 59
    const/4 p0, 0x5

    .line 60
    aput v4, v6, p0

    .line 61
    .line 62
    const/4 v7, 0x6

    .line 63
    :cond_3
    if-eqz v1, :cond_4

    .line 64
    .line 65
    add-int/lit8 p0, v7, 0x1

    .line 66
    .line 67
    aput v2, v6, v7

    .line 68
    .line 69
    add-int/2addr v7, v5

    .line 70
    rem-int/2addr v0, p2

    .line 71
    aput v0, v6, p0

    .line 72
    .line 73
    aput v4, v6, v7

    .line 74
    .line 75
    :cond_4
    return-void
.end method


# virtual methods
.method public final auxOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 6
    .line 7
    long-to-int p0, v0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final auxSeek(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    int-to-long v0, p1

    .line 14
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSeek(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final auxSkip(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    int-to-long v0, p1

    .line 17
    iget-object p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    .line 20
    .line 21
    .line 22
    iget-wide v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 23
    .line 24
    add-long/2addr v2, v0

    .line 25
    iput-wide v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    add-int/2addr p0, p1

    .line 33
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final auxWrite([B)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 6
    .line 7
    array-length p1, p1

    .line 8
    int-to-long v2, p1

    .line 9
    add-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    invoke-virtual {p0, v0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite(I[B)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final build(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->canWrite()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_38

    .line 8
    .line 9
    move-object/from16 v1, p1

    .line 10
    .line 11
    iput-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 12
    .line 13
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    new-array v2, v2, [I

    .line 17
    .line 18
    array-length v3, v1

    .line 19
    new-array v3, v3, [I

    .line 20
    .line 21
    array-length v4, v1

    .line 22
    new-array v4, v4, [I

    .line 23
    .line 24
    array-length v5, v1

    .line 25
    new-array v5, v5, [I

    .line 26
    .line 27
    iget-object v6, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 28
    .line 29
    array-length v6, v6

    .line 30
    new-array v7, v6, [Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    move v9, v8

    .line 34
    :goto_0
    if-ge v9, v6, :cond_0

    .line 35
    .line 36
    new-instance v10, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;

    .line 37
    .line 38
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    aput-object v10, v7, v9

    .line 42
    .line 43
    add-int/lit8 v9, v9, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v6, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 47
    .line 48
    array-length v9, v6

    .line 49
    const/4 v11, 0x1

    .line 50
    if-ne v9, v11, :cond_1

    .line 51
    .line 52
    aget-object v6, v6, v8

    .line 53
    .line 54
    iget v9, v6, Lokio/PriorityQueue;->size:I

    .line 55
    .line 56
    if-ne v9, v11, :cond_1

    .line 57
    .line 58
    iget-object v6, v6, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 61
    .line 62
    iget-object v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Landroidx/core/app/NotificationCompatBuilder;

    .line 63
    .line 64
    iget v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 65
    .line 66
    div-int/lit16 v6, v6, 0x3e8

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v6, -0x1

    .line 70
    :goto_1
    move v9, v8

    .line 71
    const-wide/16 v16, 0x8

    .line 72
    .line 73
    const-wide/16 v18, 0x0

    .line 74
    .line 75
    const-wide/16 v20, 0x8

    .line 76
    .line 77
    :goto_2
    array-length v14, v1

    .line 78
    if-ge v9, v14, :cond_11

    .line 79
    .line 80
    move/from16 v23, v8

    .line 81
    .line 82
    move/from16 v24, v23

    .line 83
    .line 84
    const/4 v14, -0x1

    .line 85
    :goto_3
    aget-object v10, v1, v9

    .line 86
    .line 87
    invoke-virtual {v10, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader;->getNextChunk(Z)Lcom/grack/nanojson/JsonParser;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    if-eqz v10, :cond_9

    .line 92
    .line 93
    aget v15, v3, v9

    .line 94
    .line 95
    if-ge v15, v11, :cond_2

    .line 96
    .line 97
    iget-object v15, v10, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v15, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 100
    .line 101
    iget-object v15, v15, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v15, Lorg/jsoup/parser/TokenData;

    .line 104
    .line 105
    iget-object v15, v15, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v15, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 108
    .line 109
    iget v15, v15, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    .line 110
    .line 111
    if-lez v15, :cond_2

    .line 112
    .line 113
    aput v15, v3, v9

    .line 114
    .line 115
    :cond_2
    iget-object v15, v10, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v15, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 118
    .line 119
    iget-object v15, v15, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v15, Lorg/jsoup/parser/TokenData;

    .line 122
    .line 123
    iget-object v15, v15, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v15, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 126
    .line 127
    const-wide/16 v25, 0x0

    .line 128
    .line 129
    iget v12, v15, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 130
    .line 131
    int-to-long v12, v12

    .line 132
    add-long v16, v16, v12

    .line 133
    .line 134
    aget v12, v2, v9

    .line 135
    .line 136
    iget v13, v15, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->chunkDuration:I

    .line 137
    .line 138
    add-int/2addr v12, v13

    .line 139
    aput v12, v2, v9

    .line 140
    .line 141
    move/from16 v12, v24

    .line 142
    .line 143
    :goto_4
    iget v13, v10, Lcom/grack/nanojson/JsonParser;->token:I

    .line 144
    .line 145
    iget-object v15, v10, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v15, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 148
    .line 149
    iget-object v15, v15, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v15, Lorg/jsoup/parser/TokenData;

    .line 152
    .line 153
    iget-object v8, v15, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 156
    .line 157
    move/from16 v27, v11

    .line 158
    .line 159
    iget v11, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    .line 160
    .line 161
    if-lt v13, v11, :cond_3

    .line 162
    .line 163
    const/4 v8, 0x0

    .line 164
    goto :goto_5

    .line 165
    :cond_3
    add-int/lit8 v11, v13, 0x1

    .line 166
    .line 167
    iput v11, v10, Lcom/grack/nanojson/JsonParser;->token:I

    .line 168
    .line 169
    iget-object v11, v15, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v11, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 172
    .line 173
    invoke-virtual {v8, v13, v11}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->getAbsoluteEntry(ILorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    :goto_5
    if-eqz v8, :cond_8

    .line 178
    .line 179
    iget-boolean v11, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    .line 180
    .line 181
    if-eqz v11, :cond_4

    .line 182
    .line 183
    aget-object v11, v7, v9

    .line 184
    .line 185
    iget v13, v11, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 186
    .line 187
    add-int/lit8 v13, v13, 0x1

    .line 188
    .line 189
    iput v13, v11, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 190
    .line 191
    :cond_4
    iget v11, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    .line 192
    .line 193
    aget v13, v4, v9

    .line 194
    .line 195
    if-le v11, v13, :cond_5

    .line 196
    .line 197
    aput v11, v4, v9

    .line 198
    .line 199
    :cond_5
    aget-object v11, v7, v9

    .line 200
    .line 201
    iget v13, v11, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 202
    .line 203
    add-int/lit8 v13, v13, 0x1

    .line 204
    .line 205
    iput v13, v11, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 206
    .line 207
    iget v13, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 208
    .line 209
    if-eq v12, v13, :cond_6

    .line 210
    .line 211
    add-int/lit8 v23, v23, 0x1

    .line 212
    .line 213
    move v12, v13

    .line 214
    :cond_6
    iget-boolean v15, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->hasCompositionTimeOffset:Z

    .line 215
    .line 216
    if-eqz v15, :cond_7

    .line 217
    .line 218
    iget v8, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    .line 219
    .line 220
    if-eq v8, v14, :cond_7

    .line 221
    .line 222
    iget v14, v11, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 223
    .line 224
    add-int/lit8 v14, v14, 0x1

    .line 225
    .line 226
    iput v14, v11, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 227
    .line 228
    move v14, v8

    .line 229
    move-object v11, v5

    .line 230
    move-object v8, v4

    .line 231
    goto :goto_6

    .line 232
    :cond_7
    move-object v8, v4

    .line 233
    move-object v11, v5

    .line 234
    :goto_6
    int-to-long v4, v13

    .line 235
    add-long v18, v18, v4

    .line 236
    .line 237
    move-object v4, v8

    .line 238
    move-object v5, v11

    .line 239
    move/from16 v11, v27

    .line 240
    .line 241
    const/4 v8, 0x0

    .line 242
    goto :goto_4

    .line 243
    :cond_8
    move/from16 v24, v12

    .line 244
    .line 245
    move/from16 v11, v27

    .line 246
    .line 247
    const/4 v8, 0x0

    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :cond_9
    move-object v8, v4

    .line 251
    move/from16 v27, v11

    .line 252
    .line 253
    const-wide/16 v25, 0x0

    .line 254
    .line 255
    move-object v11, v5

    .line 256
    aget v4, v3, v9

    .line 257
    .line 258
    move/from16 v5, v27

    .line 259
    .line 260
    if-ge v4, v5, :cond_a

    .line 261
    .line 262
    aget v4, v8, v9

    .line 263
    .line 264
    aput v4, v3, v9

    .line 265
    .line 266
    :cond_a
    aget-object v4, v1, v9

    .line 267
    .line 268
    iget-object v5, v4, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v5, Lorg/schabi/newpipe/streams/DataReader;

    .line 271
    .line 272
    iget-object v10, v5, Lorg/schabi/newpipe/streams/DataReader;->stream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 273
    .line 274
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    iget-object v12, v4, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v12, Landroidx/appcompat/app/TwilightCalculator;

    .line 280
    .line 281
    if-nez v12, :cond_b

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_b
    iget-object v12, v4, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v12, Landroidx/appcompat/app/TwilightCalculator;

    .line 287
    .line 288
    iput-object v12, v4, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 289
    .line 290
    const/4 v12, 0x0

    .line 291
    iput-boolean v12, v4, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    .line 292
    .line 293
    invoke-virtual {v10}, Lorg/schabi/newpipe/streams/io/SharpStream;->rewind()V

    .line 294
    .line 295
    .line 296
    iget-wide v13, v5, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 297
    .line 298
    iget v10, v5, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 299
    .line 300
    move-wide/from16 v28, v13

    .line 301
    .line 302
    int-to-long v12, v10

    .line 303
    sub-long v14, v28, v12

    .line 304
    .line 305
    cmp-long v10, v14, v25

    .line 306
    .line 307
    if-lez v10, :cond_c

    .line 308
    .line 309
    const/4 v10, 0x0

    .line 310
    iput v10, v5, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 311
    .line 312
    :goto_7
    move-wide/from16 v12, v25

    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_c
    const/4 v10, 0x0

    .line 316
    add-long v12, v12, v28

    .line 317
    .line 318
    long-to-int v12, v12

    .line 319
    iput v12, v5, Lorg/schabi/newpipe/streams/DataReader;->viewSize:I

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :goto_8
    iput-wide v12, v5, Lorg/schabi/newpipe/streams/DataReader;->position:J

    .line 323
    .line 324
    iget-object v12, v5, Lorg/schabi/newpipe/streams/DataReader;->readBuffer:[B

    .line 325
    .line 326
    array-length v12, v12

    .line 327
    iput v12, v5, Lorg/schabi/newpipe/streams/DataReader;->readOffset:I

    .line 328
    .line 329
    iput v10, v5, Lorg/schabi/newpipe/streams/DataReader;->readCount:I

    .line 330
    .line 331
    iget-object v4, v4, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v4, Landroidx/appcompat/app/TwilightCalculator;

    .line 334
    .line 335
    iget-wide v12, v4, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 336
    .line 337
    add-long v12, v12, v20

    .line 338
    .line 339
    invoke-virtual {v5, v12, v13}, Lorg/schabi/newpipe/streams/DataReader;->skipBytes(J)J

    .line 340
    .line 341
    .line 342
    :goto_9
    if-lez v6, :cond_d

    .line 343
    .line 344
    aget-object v4, v7, v9

    .line 345
    .line 346
    invoke-static {v4, v6, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->initChunkTables(Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;II)V

    .line 347
    .line 348
    .line 349
    goto :goto_a

    .line 350
    :cond_d
    aget-object v4, v7, v9

    .line 351
    .line 352
    const/4 v5, 0x6

    .line 353
    const/4 v10, 0x2

    .line 354
    invoke-static {v4, v10, v5}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->initChunkTables(Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;II)V

    .line 355
    .line 356
    .line 357
    :goto_a
    aget-object v4, v7, v9

    .line 358
    .line 359
    iget v5, v4, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 360
    .line 361
    aput v5, v11, v9

    .line 362
    .line 363
    move/from16 v5, v23

    .line 364
    .line 365
    const/4 v10, 0x1

    .line 366
    if-ne v5, v10, :cond_e

    .line 367
    .line 368
    const/4 v10, 0x0

    .line 369
    iput v10, v4, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 370
    .line 371
    move/from16 v12, v24

    .line 372
    .line 373
    iput v12, v4, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_e
    const/4 v10, 0x0

    .line 377
    iput v10, v4, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    .line 378
    .line 379
    :goto_b
    iget v5, v4, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 380
    .line 381
    iget v10, v4, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 382
    .line 383
    if-ne v5, v10, :cond_f

    .line 384
    .line 385
    const/4 v5, -0x1

    .line 386
    iput v5, v4, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 387
    .line 388
    :cond_f
    iget-object v4, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 389
    .line 390
    aget-object v4, v4, v9

    .line 391
    .line 392
    iget-object v4, v4, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 395
    .line 396
    iget-object v4, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 397
    .line 398
    iget-wide v12, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->duration:J

    .line 399
    .line 400
    const-wide/16 v14, 0x1

    .line 401
    .line 402
    cmp-long v5, v12, v14

    .line 403
    .line 404
    if-gez v5, :cond_10

    .line 405
    .line 406
    aget v5, v2, v9

    .line 407
    .line 408
    int-to-long v12, v5

    .line 409
    iput-wide v12, v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->duration:J

    .line 410
    .line 411
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 412
    .line 413
    move-object v4, v8

    .line 414
    move-object v5, v11

    .line 415
    const/4 v8, 0x0

    .line 416
    const/4 v11, 0x1

    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :cond_11
    move-object v8, v4

    .line 420
    move-object v11, v5

    .line 421
    const/4 v5, 0x6

    .line 422
    const-wide v9, 0xfffeffffL

    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    cmp-long v4, v16, v9

    .line 428
    .line 429
    if-lez v4, :cond_12

    .line 430
    .line 431
    const/4 v4, 0x1

    .line 432
    goto :goto_c

    .line 433
    :cond_12
    const/4 v4, 0x0

    .line 434
    :goto_c
    invoke-virtual {v0, v3, v7, v4}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeMoov([I[Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;Z)I

    .line 435
    .line 436
    .line 437
    move-result v9

    .line 438
    const/high16 v10, 0x240000

    .line 439
    .line 440
    if-ge v9, v10, :cond_13

    .line 441
    .line 442
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 443
    .line 444
    .line 445
    move-result-object v10

    .line 446
    iput-object v10, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 447
    .line 448
    :cond_13
    const/4 v10, 0x0

    .line 449
    iput-boolean v10, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    .line 450
    .line 451
    const-wide/16 v12, 0x0

    .line 452
    .line 453
    iput-wide v12, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 454
    .line 455
    iget-object v10, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->compatibleBrands:Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 458
    .line 459
    .line 460
    move-result v12

    .line 461
    mul-int/lit8 v12, v12, 0x4

    .line 462
    .line 463
    add-int/lit8 v13, v12, 0x10

    .line 464
    .line 465
    iget v14, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->overrideMainBrand:I

    .line 466
    .line 467
    if-eqz v14, :cond_14

    .line 468
    .line 469
    add-int/lit8 v13, v12, 0x14

    .line 470
    .line 471
    :cond_14
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 472
    .line 473
    .line 474
    move-result-object v12

    .line 475
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 476
    .line 477
    .line 478
    const v14, 0x66747970

    .line 479
    .line 480
    .line 481
    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 482
    .line 483
    .line 484
    iget v14, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->overrideMainBrand:I

    .line 485
    .line 486
    const v15, 0x6d703432

    .line 487
    .line 488
    .line 489
    if-nez v14, :cond_15

    .line 490
    .line 491
    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 492
    .line 493
    .line 494
    const/16 v14, 0x200

    .line 495
    .line 496
    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 497
    .line 498
    .line 499
    goto :goto_d

    .line 500
    :cond_15
    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 501
    .line 502
    .line 503
    const/4 v14, 0x0

    .line 504
    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 508
    .line 509
    .line 510
    :goto_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 511
    .line 512
    .line 513
    move-result-object v10

    .line 514
    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 515
    .line 516
    .line 517
    move-result v14

    .line 518
    if-eqz v14, :cond_16

    .line 519
    .line 520
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v14

    .line 524
    check-cast v14, Ljava/lang/Integer;

    .line 525
    .line 526
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 527
    .line 528
    .line 529
    move-result v14

    .line 530
    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 531
    .line 532
    .line 533
    goto :goto_e

    .line 534
    :cond_16
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    .line 535
    .line 536
    .line 537
    move-result-object v10

    .line 538
    array-length v12, v10

    .line 539
    invoke-virtual {v0, v12, v10}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite(I[B)V

    .line 540
    .line 541
    .line 542
    if-lez v9, :cond_17

    .line 543
    .line 544
    const/high16 v10, 0x10000

    .line 545
    .line 546
    new-array v12, v10, [B

    .line 547
    .line 548
    :goto_f
    if-lez v9, :cond_17

    .line 549
    .line 550
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 551
    .line 552
    .line 553
    move-result v14

    .line 554
    invoke-virtual {v0, v14, v12}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite(I[B)V

    .line 555
    .line 556
    .line 557
    sub-int/2addr v9, v14

    .line 558
    goto :goto_f

    .line 559
    :cond_17
    iget-object v9, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 560
    .line 561
    if-nez v9, :cond_18

    .line 562
    .line 563
    int-to-long v9, v13

    .line 564
    invoke-virtual {v0, v9, v10}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSeek(J)V

    .line 565
    .line 566
    .line 567
    :cond_18
    invoke-virtual {v0, v3, v7, v4}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->makeMoov([I[Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;Z)I

    .line 568
    .line 569
    .line 570
    const/4 v12, 0x0

    .line 571
    :goto_10
    array-length v3, v1

    .line 572
    if-ge v12, v3, :cond_1b

    .line 573
    .line 574
    aget-object v3, v7, v12

    .line 575
    .line 576
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stts:I

    .line 577
    .line 578
    aget v9, v11, v12

    .line 579
    .line 580
    aget v10, v8, v12

    .line 581
    .line 582
    filled-new-array {v9, v10}, [I

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    const/4 v10, 0x2

    .line 587
    invoke-virtual {v0, v3, v10, v9}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 588
    .line 589
    .line 590
    aget-object v3, v7, v12

    .line 591
    .line 592
    iget v9, v3, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 593
    .line 594
    iget-object v3, v3, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    .line 595
    .line 596
    array-length v10, v3

    .line 597
    invoke-virtual {v0, v9, v10, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 598
    .line 599
    .line 600
    aget-object v3, v7, v12

    .line 601
    .line 602
    const/4 v9, 0x0

    .line 603
    iput-object v9, v3, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stscBEntries:[I

    .line 604
    .line 605
    iget v9, v3, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 606
    .line 607
    const/4 v10, 0x1

    .line 608
    if-lez v9, :cond_19

    .line 609
    .line 610
    aput v10, v11, v12

    .line 611
    .line 612
    const/16 v22, -0x1

    .line 613
    .line 614
    aput v22, v2, v12

    .line 615
    .line 616
    :cond_19
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->sbgp:I

    .line 617
    .line 618
    if-lez v3, :cond_1a

    .line 619
    .line 620
    aget v9, v11, v12

    .line 621
    .line 622
    filled-new-array {v9}, [I

    .line 623
    .line 624
    .line 625
    move-result-object v9

    .line 626
    invoke-virtual {v0, v3, v10, v9}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 627
    .line 628
    .line 629
    :cond_1a
    add-int/lit8 v12, v12, 0x1

    .line 630
    .line 631
    goto :goto_10

    .line 632
    :cond_1b
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 633
    .line 634
    if-nez v3, :cond_1c

    .line 635
    .line 636
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outRestore()V

    .line 637
    .line 638
    .line 639
    :cond_1c
    if-eqz v4, :cond_1d

    .line 640
    .line 641
    const-wide/16 v8, 0x10

    .line 642
    .line 643
    add-long v18, v18, v8

    .line 644
    .line 645
    :goto_11
    move-wide/from16 v8, v18

    .line 646
    .line 647
    goto :goto_12

    .line 648
    :cond_1d
    add-long v18, v18, v20

    .line 649
    .line 650
    goto :goto_11

    .line 651
    :goto_12
    if-eqz v4, :cond_1e

    .line 652
    .line 653
    const/16 v10, 0x10

    .line 654
    .line 655
    goto :goto_13

    .line 656
    :cond_1e
    const/16 v10, 0x8

    .line 657
    .line 658
    :goto_13
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 659
    .line 660
    .line 661
    move-result-object v10

    .line 662
    if-eqz v4, :cond_1f

    .line 663
    .line 664
    const/4 v12, 0x1

    .line 665
    goto :goto_14

    .line 666
    :cond_1f
    long-to-int v12, v8

    .line 667
    :goto_14
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 668
    .line 669
    .line 670
    move-result-object v10

    .line 671
    const v12, 0x6d646174

    .line 672
    .line 673
    .line 674
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 675
    .line 676
    .line 677
    move-result-object v10

    .line 678
    if-eqz v4, :cond_20

    .line 679
    .line 680
    invoke-virtual {v10, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 681
    .line 682
    .line 683
    :cond_20
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 684
    .line 685
    .line 686
    move-result-object v8

    .line 687
    array-length v9, v8

    .line 688
    invoke-virtual {v0, v9, v8}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite(I[B)V

    .line 689
    .line 690
    .line 691
    array-length v8, v1

    .line 692
    new-array v8, v8, [I

    .line 693
    .line 694
    if-lez v6, :cond_21

    .line 695
    .line 696
    move v9, v6

    .line 697
    goto :goto_15

    .line 698
    :cond_21
    move v9, v5

    .line 699
    :goto_15
    new-array v9, v9, [I

    .line 700
    .line 701
    if-lez v6, :cond_22

    .line 702
    .line 703
    move v10, v6

    .line 704
    goto :goto_16

    .line 705
    :cond_22
    move v10, v5

    .line 706
    :goto_16
    new-array v10, v10, [I

    .line 707
    .line 708
    array-length v12, v1

    .line 709
    :goto_17
    if-lez v12, :cond_36

    .line 710
    .line 711
    const/4 v12, 0x0

    .line 712
    const/4 v14, 0x0

    .line 713
    :goto_18
    array-length v15, v1

    .line 714
    if-ge v12, v15, :cond_35

    .line 715
    .line 716
    aget v15, v8, v12

    .line 717
    .line 718
    if-gez v15, :cond_24

    .line 719
    .line 720
    move-object/from16 v18, v1

    .line 721
    .line 722
    move-object/from16 v19, v2

    .line 723
    .line 724
    move/from16 v16, v4

    .line 725
    .line 726
    move/from16 v20, v6

    .line 727
    .line 728
    move-object/from16 v21, v7

    .line 729
    .line 730
    move-object/from16 v23, v8

    .line 731
    .line 732
    move-object/from16 v24, v11

    .line 733
    .line 734
    const/4 v11, 0x2

    .line 735
    const/16 v17, 0x8

    .line 736
    .line 737
    const/16 v22, -0x1

    .line 738
    .line 739
    :cond_23
    const/4 v15, 0x1

    .line 740
    const-wide/16 v25, 0x0

    .line 741
    .line 742
    goto/16 :goto_24

    .line 743
    .line 744
    :cond_24
    move/from16 v16, v4

    .line 745
    .line 746
    const/16 v17, 0x8

    .line 747
    .line 748
    iget-wide v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 749
    .line 750
    if-lez v6, :cond_25

    .line 751
    .line 752
    move v15, v6

    .line 753
    goto :goto_19

    .line 754
    :cond_25
    if-nez v15, :cond_26

    .line 755
    .line 756
    const/4 v15, 0x2

    .line 757
    goto :goto_19

    .line 758
    :cond_26
    move v15, v5

    .line 759
    :goto_19
    move-object/from16 v18, v1

    .line 760
    .line 761
    const/4 v1, 0x0

    .line 762
    const/4 v5, 0x0

    .line 763
    :goto_1a
    move-object/from16 v19, v2

    .line 764
    .line 765
    if-ge v5, v15, :cond_2e

    .line 766
    .line 767
    invoke-virtual {v0, v12}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->getNextSample(I)Lorg/jsoup/parser/TokenData;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    if-nez v2, :cond_28

    .line 772
    .line 773
    aget-object v2, v7, v12

    .line 774
    .line 775
    iget v2, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 776
    .line 777
    if-lez v2, :cond_27

    .line 778
    .line 779
    aget v15, v19, v12

    .line 780
    .line 781
    if-ltz v15, :cond_27

    .line 782
    .line 783
    move/from16 v20, v6

    .line 784
    .line 785
    aget v6, v11, v12

    .line 786
    .line 787
    filled-new-array {v6, v15}, [I

    .line 788
    .line 789
    .line 790
    move-result-object v6

    .line 791
    const/4 v15, 0x1

    .line 792
    invoke-virtual {v0, v2, v15, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 793
    .line 794
    .line 795
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outRestore()V

    .line 796
    .line 797
    .line 798
    :goto_1b
    const/16 v22, -0x1

    .line 799
    .line 800
    goto :goto_1c

    .line 801
    :cond_27
    move/from16 v20, v6

    .line 802
    .line 803
    const/4 v15, 0x1

    .line 804
    goto :goto_1b

    .line 805
    :goto_1c
    aput v22, v8, v12

    .line 806
    .line 807
    :goto_1d
    move-object/from16 v21, v7

    .line 808
    .line 809
    move-object/from16 v23, v8

    .line 810
    .line 811
    move-object/from16 v24, v11

    .line 812
    .line 813
    const/4 v11, 0x2

    .line 814
    goto/16 :goto_21

    .line 815
    .line 816
    :cond_28
    move/from16 v20, v6

    .line 817
    .line 818
    const/16 v22, -0x1

    .line 819
    .line 820
    const/16 v27, 0x1

    .line 821
    .line 822
    aget v6, v8, v12

    .line 823
    .line 824
    add-int/lit8 v6, v6, 0x1

    .line 825
    .line 826
    aput v6, v8, v12

    .line 827
    .line 828
    aget-object v6, v7, v12

    .line 829
    .line 830
    move-object/from16 v21, v7

    .line 831
    .line 832
    iget v7, v6, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 833
    .line 834
    move-object/from16 v23, v8

    .line 835
    .line 836
    if-lez v7, :cond_2b

    .line 837
    .line 838
    iget-object v8, v2, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 839
    .line 840
    check-cast v8, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 841
    .line 842
    iget v8, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    .line 843
    .line 844
    move-object/from16 v24, v11

    .line 845
    .line 846
    aget v11, v19, v12

    .line 847
    .line 848
    if-ne v8, v11, :cond_29

    .line 849
    .line 850
    aget v6, v24, v12

    .line 851
    .line 852
    add-int/lit8 v6, v6, 0x1

    .line 853
    .line 854
    aput v6, v24, v12

    .line 855
    .line 856
    :goto_1e
    const/4 v11, 0x2

    .line 857
    goto :goto_20

    .line 858
    :cond_29
    if-ltz v11, :cond_2a

    .line 859
    .line 860
    aget v8, v24, v12

    .line 861
    .line 862
    filled-new-array {v8, v11}, [I

    .line 863
    .line 864
    .line 865
    move-result-object v8

    .line 866
    const/4 v11, 0x2

    .line 867
    invoke-virtual {v0, v7, v11, v8}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 868
    .line 869
    .line 870
    move-result v7

    .line 871
    iput v7, v6, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 872
    .line 873
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outRestore()V

    .line 874
    .line 875
    .line 876
    goto :goto_1f

    .line 877
    :cond_2a
    const/4 v11, 0x2

    .line 878
    :goto_1f
    aput v27, v24, v12

    .line 879
    .line 880
    iget-object v6, v2, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v6, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 883
    .line 884
    iget v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    .line 885
    .line 886
    aput v6, v19, v12

    .line 887
    .line 888
    goto :goto_20

    .line 889
    :cond_2b
    move-object/from16 v24, v11

    .line 890
    .line 891
    goto :goto_1e

    .line 892
    :goto_20
    aget-object v6, v21, v12

    .line 893
    .line 894
    iget v7, v6, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 895
    .line 896
    if-lez v7, :cond_2c

    .line 897
    .line 898
    iget-object v7, v2, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 899
    .line 900
    check-cast v7, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 901
    .line 902
    iget-boolean v7, v7, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    .line 903
    .line 904
    if-eqz v7, :cond_2c

    .line 905
    .line 906
    add-int/lit8 v7, v1, 0x1

    .line 907
    .line 908
    aget v8, v23, v12

    .line 909
    .line 910
    aput v8, v10, v1

    .line 911
    .line 912
    move v1, v7

    .line 913
    :cond_2c
    iget v6, v6, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 914
    .line 915
    if-lez v6, :cond_2d

    .line 916
    .line 917
    iget-object v6, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 918
    .line 919
    check-cast v6, [B

    .line 920
    .line 921
    array-length v6, v6

    .line 922
    aput v6, v9, v5

    .line 923
    .line 924
    :cond_2d
    iget-object v2, v2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v2, [B

    .line 927
    .line 928
    array-length v6, v2

    .line 929
    invoke-virtual {v0, v6, v2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outWrite(I[B)V

    .line 930
    .line 931
    .line 932
    add-int/lit8 v5, v5, 0x1

    .line 933
    .line 934
    move-object/from16 v2, v19

    .line 935
    .line 936
    move/from16 v6, v20

    .line 937
    .line 938
    move-object/from16 v7, v21

    .line 939
    .line 940
    move-object/from16 v8, v23

    .line 941
    .line 942
    move-object/from16 v11, v24

    .line 943
    .line 944
    goto/16 :goto_1a

    .line 945
    .line 946
    :cond_2e
    move/from16 v20, v6

    .line 947
    .line 948
    const/16 v22, -0x1

    .line 949
    .line 950
    goto/16 :goto_1d

    .line 951
    .line 952
    :goto_21
    if-lez v5, :cond_23

    .line 953
    .line 954
    add-int/lit8 v14, v14, 0x1

    .line 955
    .line 956
    aget-object v2, v21, v12

    .line 957
    .line 958
    iget v6, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 959
    .line 960
    if-lez v6, :cond_2f

    .line 961
    .line 962
    invoke-virtual {v0, v6, v5, v9}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 963
    .line 964
    .line 965
    move-result v5

    .line 966
    iput v5, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 967
    .line 968
    :cond_2f
    if-lez v1, :cond_30

    .line 969
    .line 970
    aget-object v2, v21, v12

    .line 971
    .line 972
    iget v5, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 973
    .line 974
    invoke-virtual {v0, v5, v1, v10}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 975
    .line 976
    .line 977
    move-result v1

    .line 978
    iput v1, v2, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 979
    .line 980
    :cond_30
    aget-object v1, v21, v12

    .line 981
    .line 982
    iget v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 983
    .line 984
    if-lez v2, :cond_34

    .line 985
    .line 986
    if-eqz v16, :cond_33

    .line 987
    .line 988
    iget-object v5, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 989
    .line 990
    if-nez v5, :cond_31

    .line 991
    .line 992
    iget-wide v5, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    .line 993
    .line 994
    const-wide/16 v25, 0x0

    .line 995
    .line 996
    cmp-long v5, v5, v25

    .line 997
    .line 998
    if-gez v5, :cond_32

    .line 999
    .line 1000
    iget-wide v5, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 1001
    .line 1002
    iput-wide v5, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    .line 1003
    .line 1004
    goto :goto_22

    .line 1005
    :cond_31
    const-wide/16 v25, 0x0

    .line 1006
    .line 1007
    :cond_32
    :goto_22
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSeek(I)V

    .line 1008
    .line 1009
    .line 1010
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v5

    .line 1014
    invoke-virtual {v5, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v3

    .line 1018
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 1019
    .line 1020
    .line 1021
    move-result-object v3

    .line 1022
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 1023
    .line 1024
    .line 1025
    add-int/lit8 v2, v2, 0x8

    .line 1026
    .line 1027
    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 1028
    .line 1029
    const/4 v15, 0x1

    .line 1030
    goto :goto_23

    .line 1031
    :cond_33
    const-wide/16 v25, 0x0

    .line 1032
    .line 1033
    long-to-int v3, v3

    .line 1034
    filled-new-array {v3}, [I

    .line 1035
    .line 1036
    .line 1037
    move-result-object v3

    .line 1038
    const/4 v15, 0x1

    .line 1039
    invoke-virtual {v0, v2, v15, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 1040
    .line 1041
    .line 1042
    move-result v2

    .line 1043
    iput v2, v1, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 1044
    .line 1045
    goto :goto_23

    .line 1046
    :cond_34
    const/4 v15, 0x1

    .line 1047
    const-wide/16 v25, 0x0

    .line 1048
    .line 1049
    :goto_23
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outRestore()V

    .line 1050
    .line 1051
    .line 1052
    :goto_24
    add-int/lit8 v12, v12, 0x1

    .line 1053
    .line 1054
    move/from16 v4, v16

    .line 1055
    .line 1056
    move-object/from16 v1, v18

    .line 1057
    .line 1058
    move-object/from16 v2, v19

    .line 1059
    .line 1060
    move/from16 v6, v20

    .line 1061
    .line 1062
    move-object/from16 v7, v21

    .line 1063
    .line 1064
    move-object/from16 v8, v23

    .line 1065
    .line 1066
    move-object/from16 v11, v24

    .line 1067
    .line 1068
    const/4 v5, 0x6

    .line 1069
    goto/16 :goto_18

    .line 1070
    .line 1071
    :cond_35
    move-object/from16 v24, v11

    .line 1072
    .line 1073
    const/16 v22, -0x1

    .line 1074
    .line 1075
    const-wide/16 v25, 0x0

    .line 1076
    .line 1077
    move v12, v14

    .line 1078
    goto/16 :goto_17

    .line 1079
    .line 1080
    :cond_36
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 1081
    .line 1082
    if-eqz v1, :cond_37

    .line 1083
    .line 1084
    int-to-long v1, v13

    .line 1085
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSeek(J)V

    .line 1086
    .line 1087
    .line 1088
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 1089
    .line 1090
    iget-object v2, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 1091
    .line 1092
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 1097
    .line 1098
    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    .line 1099
    .line 1100
    .line 1101
    move-result v3

    .line 1102
    const/4 v10, 0x0

    .line 1103
    invoke-virtual {v1, v2, v10, v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    .line 1104
    .line 1105
    .line 1106
    const/4 v9, 0x0

    .line 1107
    iput-object v9, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 1108
    .line 1109
    :cond_37
    return-void

    .line 1110
    :cond_38
    const-string v0, "the provided output is not writable"

    .line 1111
    .line 1112
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    return-void
.end method

.method public final getNextSample(I)Lorg/jsoup/parser/TokenData;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readersChunks:[Lcom/grack/nanojson/JsonParser;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 9
    .line 10
    aget-object v1, v1, p1

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->getNextChunk(Z)Lcom/grack/nanojson/JsonParser;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    aput-object v1, v0, p1

    .line 18
    .line 19
    aget-object v1, v0, p1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_0
    aget-object v1, v0, p1

    .line 25
    .line 26
    iget-object v3, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Ljava/io/InputStream;

    .line 29
    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    iget v3, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 33
    .line 34
    iget-object v4, v1, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 37
    .line 38
    iget-object v4, v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Lorg/jsoup/parser/TokenData;

    .line 41
    .line 42
    iget-object v5, v4, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;

    .line 45
    .line 46
    iget v6, v5, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entryCount:I

    .line 47
    .line 48
    if-lt v3, v6, :cond_1

    .line 49
    .line 50
    move-object v6, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v6, Lorg/jsoup/parser/TokenData;

    .line 53
    .line 54
    const/16 v7, 0x16

    .line 55
    .line 56
    invoke-direct {v6, v7}, Lorg/jsoup/parser/TokenData;-><init>(I)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v7, v3, 0x1

    .line 60
    .line 61
    iput v7, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 62
    .line 63
    iget-object v4, v4, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;

    .line 66
    .line 67
    invoke-virtual {v5, v3, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->getAbsoluteEntry(ILorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iput-object v3, v6, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 72
    .line 73
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 74
    .line 75
    new-array v3, v3, [B

    .line 76
    .line 77
    iput-object v3, v6, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Ljava/io/InputStream;

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget-object v3, v6, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 90
    .line 91
    iget v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 92
    .line 93
    if-ne v1, v3, :cond_3

    .line 94
    .line 95
    :goto_0
    if-nez v6, :cond_2

    .line 96
    .line 97
    aput-object v2, v0, p1

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->getNextSample(I)Lorg/jsoup/parser/TokenData;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_2
    return-object v6

    .line 105
    :cond_3
    new-instance p0, Ljava/io/EOFException;

    .line 106
    .line 107
    const-string p1, "EOF reached while reading a sample"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_4
    const-string p0, "This chunk has info only"

    .line 114
    .line 115
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v2
.end method

.method public final lengthFor(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p1

    .line 6
    iget-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSeek(I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 p1, v0, -0x4

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSkip(I)V

    .line 33
    .line 34
    .line 35
    return v0
.end method

.method public final make(IIII)I
    .locals 4

    .line 1
    mul-int/2addr p3, p4

    .line 2
    const/4 v0, 0x4

    .line 3
    mul-int/2addr p3, v0

    .line 4
    add-int/lit8 v1, p3, 0x10

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ltz p2, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, p3, 0x14

    .line 13
    .line 14
    :cond_0
    const/16 v3, 0xc

    .line 15
    .line 16
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 38
    .line 39
    .line 40
    if-ltz p2, :cond_1

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x4

    .line 43
    .line 44
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSkip(I)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x10

    .line 78
    .line 79
    return v2
.end method

.method public final makeMoov([I[Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;Z)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    new-array v3, v2, [B

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 18
    .line 19
    array-length v3, v3

    .line 20
    new-array v4, v3, [J

    .line 21
    .line 22
    const-wide/16 v6, 0x0

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    :goto_0
    if-ge v8, v3, :cond_1

    .line 26
    .line 27
    iget-object v9, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 28
    .line 29
    aget-object v9, v9, v8

    .line 30
    .line 31
    iget-object v9, v9, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 34
    .line 35
    iget-object v10, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 36
    .line 37
    iget-wide v10, v10, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->duration:J

    .line 38
    .line 39
    long-to-double v10, v10

    .line 40
    iget-object v9, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Landroidx/core/app/NotificationCompatBuilder;

    .line 41
    .line 42
    iget v9, v9, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 43
    .line 44
    int-to-double v12, v9

    .line 45
    div-double/2addr v10, v12

    .line 46
    const-wide v12, 0x408f400000000000L    # 1000.0

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    mul-double/2addr v10, v12

    .line 52
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v9

    .line 56
    double-to-long v9, v9

    .line 57
    aput-wide v9, v4, v8

    .line 58
    .line 59
    cmp-long v11, v9, v6

    .line 60
    .line 61
    if-lez v11, :cond_0

    .line 62
    .line 63
    move-wide v6, v9

    .line 64
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/16 v3, 0xc

    .line 68
    .line 69
    new-array v8, v3, [B

    .line 70
    .line 71
    fill-array-data v8, :array_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 75
    .line 76
    .line 77
    const/16 v8, 0x1c

    .line 78
    .line 79
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    iget-wide v10, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->time:J

    .line 84
    .line 85
    invoke-virtual {v9, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v9, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    const/16 v12, 0x3e8

    .line 94
    .line 95
    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v9, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 108
    .line 109
    .line 110
    const/16 v6, 0x34

    .line 111
    .line 112
    new-array v6, v6, [B

    .line 113
    .line 114
    fill-array-data v6, :array_2

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 118
    .line 119
    .line 120
    const/16 v6, 0x18

    .line 121
    .line 122
    new-array v7, v6, [B

    .line 123
    .line 124
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 125
    .line 126
    .line 127
    const/4 v7, 0x4

    .line 128
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    iget-object v9, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 133
    .line 134
    array-length v9, v9

    .line 135
    const/4 v12, 0x1

    .line 136
    add-int/2addr v9, v12

    .line 137
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 146
    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    :goto_1
    iget-object v9, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 150
    .line 151
    array-length v13, v9

    .line 152
    if-ge v7, v13, :cond_f

    .line 153
    .line 154
    aget-object v9, v9, v7

    .line 155
    .line 156
    iget-object v9, v9, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 159
    .line 160
    iget-object v9, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 161
    .line 162
    iget-object v9, v9, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->matrix:[B

    .line 163
    .line 164
    array-length v9, v9

    .line 165
    const/16 v13, 0x24

    .line 166
    .line 167
    if-ne v9, v13, :cond_e

    .line 168
    .line 169
    aget-wide v13, v4, v7

    .line 170
    .line 171
    aget v9, p1, v7

    .line 172
    .line 173
    aget-object v9, p2, v7

    .line 174
    .line 175
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    .line 176
    .line 177
    .line 178
    move-result v15

    .line 179
    const/16 v16, 0x0

    .line 180
    .line 181
    const/16 v5, 0x14

    .line 182
    .line 183
    new-array v8, v5, [B

    .line 184
    .line 185
    fill-array-data v8, :array_3

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 189
    .line 190
    .line 191
    const/16 v8, 0x30

    .line 192
    .line 193
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v8, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 201
    .line 202
    .line 203
    move/from16 v17, v5

    .line 204
    .line 205
    add-int/lit8 v5, v7, 0x1

    .line 206
    .line 207
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    .line 216
    move/from16 v18, v3

    .line 217
    .line 218
    const/16 v3, 0x28

    .line 219
    .line 220
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    .line 222
    .line 223
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 224
    .line 225
    aget-object v3, v3, v7

    .line 226
    .line 227
    iget-object v3, v3, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 230
    .line 231
    iget-object v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 232
    .line 233
    iget-short v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bLayer:S

    .line 234
    .line 235
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 236
    .line 237
    .line 238
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 239
    .line 240
    aget-object v3, v3, v7

    .line 241
    .line 242
    iget-object v3, v3, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 245
    .line 246
    iget-object v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 247
    .line 248
    iget-short v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bAlternateGroup:S

    .line 249
    .line 250
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 251
    .line 252
    .line 253
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 254
    .line 255
    aget-object v3, v3, v7

    .line 256
    .line 257
    iget-object v3, v3, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 260
    .line 261
    iget-object v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 262
    .line 263
    iget-short v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bVolume:S

    .line 264
    .line 265
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 273
    .line 274
    .line 275
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 276
    .line 277
    aget-object v3, v3, v7

    .line 278
    .line 279
    iget-object v3, v3, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 282
    .line 283
    iget-object v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 284
    .line 285
    iget-object v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->matrix:[B

    .line 286
    .line 287
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 288
    .line 289
    .line 290
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    iget-object v8, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 295
    .line 296
    aget-object v8, v8, v7

    .line 297
    .line 298
    iget-object v8, v8, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 301
    .line 302
    iget-object v8, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 303
    .line 304
    iget v8, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bWidth:I

    .line 305
    .line 306
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    iget-object v8, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 311
    .line 312
    aget-object v8, v8, v7

    .line 313
    .line 314
    iget-object v8, v8, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 317
    .line 318
    iget-object v8, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->tkhd:Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;

    .line 319
    .line 320
    iget v8, v8, Lorg/schabi/newpipe/streams/Mp4DashReader$Tkhd;->bHeight:I

    .line 321
    .line 322
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 331
    .line 332
    .line 333
    new-array v3, v6, [B

    .line 334
    .line 335
    fill-array-data v3, :array_4

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 339
    .line 340
    .line 341
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 342
    .line 343
    aget-object v3, v3, v7

    .line 344
    .line 345
    iget-object v3, v3, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 348
    .line 349
    iget-object v3, v3, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->edstElst:Lkotlin/time/InstantParseResult$Success;

    .line 350
    .line 351
    if-nez v3, :cond_2

    .line 352
    .line 353
    const/high16 v3, 0x10000

    .line 354
    .line 355
    move/from16 v19, v7

    .line 356
    .line 357
    move/from16 v6, v16

    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_2
    move/from16 v19, v7

    .line 361
    .line 362
    iget-wide v6, v3, Lkotlin/time/InstantParseResult$Success;->epochSeconds:J

    .line 363
    .line 364
    long-to-int v6, v6

    .line 365
    iget v3, v3, Lkotlin/time/InstantParseResult$Success;->nanosecondsOfSecond:I

    .line 366
    .line 367
    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    long-to-int v13, v13

    .line 372
    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 389
    .line 390
    .line 391
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 392
    .line 393
    aget-object v3, v3, v19

    .line 394
    .line 395
    iget-object v6, v3, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;

    .line 398
    .line 399
    iget-object v6, v6, Lorg/schabi/newpipe/streams/Mp4DashReader$Trak;->mdia:Landroidx/core/app/NotificationCompatBuilder;

    .line 400
    .line 401
    iget v3, v3, Lokio/PriorityQueue;->size:I

    .line 402
    .line 403
    if-ne v3, v12, :cond_3

    .line 404
    .line 405
    move v3, v12

    .line 406
    goto :goto_3

    .line 407
    :cond_3
    move/from16 v3, v16

    .line 408
    .line 409
    :goto_3
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    new-array v13, v2, [B

    .line 414
    .line 415
    fill-array-data v13, :array_5

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v13}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 419
    .line 420
    .line 421
    iget-object v13, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v13, [B

    .line 424
    .line 425
    invoke-virtual {v0, v13}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 426
    .line 427
    .line 428
    iget-object v13, v6, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v13, Lokhttp3/internal/http2/Huffman$Node;

    .line 431
    .line 432
    const/16 v14, 0x21

    .line 433
    .line 434
    new-array v14, v14, [B

    .line 435
    .line 436
    fill-array-data v14, :array_6

    .line 437
    .line 438
    .line 439
    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 440
    .line 441
    .line 442
    move-result-object v14

    .line 443
    move/from16 v8, v18

    .line 444
    .line 445
    invoke-virtual {v14, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 446
    .line 447
    .line 448
    iget v8, v13, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 449
    .line 450
    invoke-virtual {v14, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 451
    .line 452
    .line 453
    iget v8, v13, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 454
    .line 455
    invoke-virtual {v14, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 456
    .line 457
    .line 458
    iget-object v8, v13, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v8, [B

    .line 461
    .line 462
    invoke-virtual {v14, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    new-array v13, v2, [B

    .line 477
    .line 478
    fill-array-data v13, :array_7

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, v13}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 482
    .line 483
    .line 484
    iget-object v13, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v13, Lorg/jsoup/nodes/Printer;

    .line 487
    .line 488
    iget-object v13, v13, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v13, [B

    .line 491
    .line 492
    invoke-virtual {v0, v13}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 493
    .line 494
    .line 495
    iget-object v13, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v13, Lorg/jsoup/nodes/Printer;

    .line 498
    .line 499
    iget-object v13, v13, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v13, [B

    .line 502
    .line 503
    invoke-virtual {v0, v13}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    .line 507
    .line 508
    .line 509
    move-result v13

    .line 510
    new-array v14, v2, [B

    .line 511
    .line 512
    fill-array-data v14, :array_8

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0, v14}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 516
    .line 517
    .line 518
    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v6, Lorg/jsoup/nodes/Printer;

    .line 521
    .line 522
    iget-object v6, v6, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v6, [B

    .line 525
    .line 526
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 527
    .line 528
    .line 529
    iget-boolean v6, v0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->moovSimulation:Z

    .line 530
    .line 531
    const/4 v2, -0x1

    .line 532
    const v19, 0x7374636f

    .line 533
    .line 534
    .line 535
    const v20, 0x636f3634

    .line 536
    .line 537
    .line 538
    const v14, 0x73747473

    .line 539
    .line 540
    .line 541
    move/from16 v21, v3

    .line 542
    .line 543
    const/4 v3, 0x2

    .line 544
    if-eqz v6, :cond_8

    .line 545
    .line 546
    invoke-virtual {v0, v14, v2, v3, v12}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 547
    .line 548
    .line 549
    iget v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 550
    .line 551
    if-lez v6, :cond_4

    .line 552
    .line 553
    const v14, 0x73747373

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0, v14, v2, v12, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 557
    .line 558
    .line 559
    :cond_4
    iget v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 560
    .line 561
    if-lez v6, :cond_5

    .line 562
    .line 563
    const v14, 0x63747473

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0, v14, v2, v3, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 567
    .line 568
    .line 569
    :cond_5
    iget v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 570
    .line 571
    const v3, 0x73747363

    .line 572
    .line 573
    .line 574
    const/4 v14, 0x3

    .line 575
    invoke-virtual {v0, v3, v2, v14, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 576
    .line 577
    .line 578
    iget v3, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    .line 579
    .line 580
    iget v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 581
    .line 582
    const v14, 0x7374737a

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0, v14, v3, v12, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 586
    .line 587
    .line 588
    if-eqz p3, :cond_6

    .line 589
    .line 590
    move/from16 v3, v20

    .line 591
    .line 592
    goto :goto_4

    .line 593
    :cond_6
    move/from16 v3, v19

    .line 594
    .line 595
    :goto_4
    if-eqz p3, :cond_7

    .line 596
    .line 597
    const/4 v6, 0x2

    .line 598
    goto :goto_5

    .line 599
    :cond_7
    move v6, v12

    .line 600
    :goto_5
    iget v14, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 601
    .line 602
    invoke-virtual {v0, v3, v2, v6, v14}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 603
    .line 604
    .line 605
    goto :goto_8

    .line 606
    :cond_8
    invoke-virtual {v0, v14, v2, v3, v12}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 607
    .line 608
    .line 609
    move-result v6

    .line 610
    iput v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stts:I

    .line 611
    .line 612
    iget v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 613
    .line 614
    if-lez v6, :cond_9

    .line 615
    .line 616
    const v14, 0x73747373

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v14, v2, v12, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 620
    .line 621
    .line 622
    move-result v6

    .line 623
    iput v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 624
    .line 625
    :cond_9
    iget v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 626
    .line 627
    if-lez v6, :cond_a

    .line 628
    .line 629
    const v14, 0x63747473

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v14, v2, v3, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 633
    .line 634
    .line 635
    move-result v6

    .line 636
    iput v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 637
    .line 638
    :cond_a
    iget v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 639
    .line 640
    const v3, 0x73747363

    .line 641
    .line 642
    .line 643
    const/4 v14, 0x3

    .line 644
    invoke-virtual {v0, v3, v2, v14, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 645
    .line 646
    .line 647
    move-result v3

    .line 648
    iput v3, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 649
    .line 650
    iget v3, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stszDefault:I

    .line 651
    .line 652
    iget v6, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 653
    .line 654
    const v14, 0x7374737a

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0, v14, v3, v12, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    iput v3, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 662
    .line 663
    if-eqz p3, :cond_b

    .line 664
    .line 665
    move/from16 v3, v20

    .line 666
    .line 667
    goto :goto_6

    .line 668
    :cond_b
    move/from16 v3, v19

    .line 669
    .line 670
    :goto_6
    if-eqz p3, :cond_c

    .line 671
    .line 672
    const/4 v6, 0x2

    .line 673
    goto :goto_7

    .line 674
    :cond_c
    move v6, v12

    .line 675
    :goto_7
    iget v14, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 676
    .line 677
    invoke-virtual {v0, v3, v2, v6, v14}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->make(IIII)I

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    iput v2, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 682
    .line 683
    :goto_8
    if-eqz v21, :cond_d

    .line 684
    .line 685
    const/16 v2, 0x1a

    .line 686
    .line 687
    new-array v2, v2, [B

    .line 688
    .line 689
    fill-array-data v2, :array_9

    .line 690
    .line 691
    .line 692
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxOffset()I

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    const/16 v3, 0x1c

    .line 708
    .line 709
    new-array v6, v3, [B

    .line 710
    .line 711
    fill-array-data v6, :array_a

    .line 712
    .line 713
    .line 714
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 715
    .line 716
    .line 717
    add-int/lit8 v2, v2, 0x14

    .line 718
    .line 719
    iput v2, v9, Lorg/schabi/newpipe/streams/Mp4FromDashWriter$TablesInfo;->sbgp:I

    .line 720
    .line 721
    goto :goto_9

    .line 722
    :cond_d
    const/16 v3, 0x1c

    .line 723
    .line 724
    :goto_9
    invoke-virtual {v0, v13}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0, v8}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0, v15}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    .line 734
    .line 735
    .line 736
    move v8, v3

    .line 737
    move v7, v5

    .line 738
    const/16 v2, 0x8

    .line 739
    .line 740
    const/16 v3, 0xc

    .line 741
    .line 742
    const/16 v6, 0x18

    .line 743
    .line 744
    goto/16 :goto_1

    .line 745
    .line 746
    :cond_e
    move/from16 v19, v7

    .line 747
    .line 748
    const/16 v16, 0x0

    .line 749
    .line 750
    const-string v0, "bad track matrix length (expected 36) in track n\u00b0"

    .line 751
    .line 752
    move/from16 v5, v19

    .line 753
    .line 754
    invoke-static {v5, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-static {v0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    return v16

    .line 762
    :cond_f
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lengthFor(I)I

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    return v0

    .line 767
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x6ft
        0x6ft
        0x76t
    .end array-data

    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x78t
        0x6dt
        0x76t
        0x68t
        0x64t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :array_2
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x74t
        0x72t
        0x61t
        0x6bt
        0x0t
        0x0t
        0x0t
        0x68t
        0x74t
        0x6bt
        0x68t
        0x64t
        0x1t
        0x0t
        0x0t
        0x3t
    .end array-data

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x24t
        0x65t
        0x64t
        0x74t
        0x73t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x65t
        0x6ct
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x64t
        0x69t
        0x61t
    .end array-data

    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x21t
        0x68t
        0x64t
        0x6ct
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    nop

    .line 875
    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x69t
        0x6et
        0x66t
    .end array-data

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x74t
        0x62t
        0x6ct
    .end array-data

    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1at
        0x73t
        0x67t
        0x70t
        0x64t
        0x1t
        0x0t
        0x0t
        0x0t
        0x72t
        0x6ft
        0x6ct
        0x6ct
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x73t
        0x62t
        0x67t
        0x70t
        0x0t
        0x0t
        0x0t
        0x0t
        0x72t
        0x6ft
        0x6ct
        0x6ct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public final outRestore()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outSeek(J)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final outSeek(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->canSeek()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 12
    .line 13
    .line 14
    iput-wide p1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->rewind()V

    .line 23
    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 28
    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Lorg/schabi/newpipe/streams/io/SharpStream;->skip(J)J

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 35
    .line 36
    add-long/2addr v0, p1

    .line 37
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 38
    .line 39
    return-void
.end method

.method public final outWrite(I[B)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 2
    .line 3
    int-to-long v2, p1

    .line 4
    add-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->outStream:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p2, v0, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final parseSources()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    const/4 v2, 0x1

    .line 9
    :try_start_0
    array-length v3, v0

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    new-instance v3, Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 13
    .line 14
    iget-object v4, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->sourceTracks:[Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 15
    .line 16
    aget-object v4, v4, v1

    .line 17
    .line 18
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/streams/Mp4DashReader;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 19
    .line 20
    .line 21
    aput-object v3, v0, v1

    .line 22
    .line 23
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iput-boolean v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    iput-boolean v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    const-string p0, "already parsed"

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final varargs selectTracks([I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->readers:[Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    array-length v2, v0

    .line 9
    new-array v2, v2, [Lokio/PriorityQueue;

    .line 10
    .line 11
    iput-object v2, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    array-length v3, v0

    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->tracks:[Lokio/PriorityQueue;

    .line 18
    .line 19
    aget-object v4, v0, v2

    .line 20
    .line 21
    aget v5, p1, v2

    .line 22
    .line 23
    iput v5, v4, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 24
    .line 25
    iget-object v4, v4, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, [Lokio/PriorityQueue;

    .line 28
    .line 29
    aget-object v4, v4, v5

    .line 30
    .line 31
    aput-object v4, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->parsed:Z

    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    const-string p0, "tracks already selected"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final varargs writeEntryArray(II[I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->writeOffset:J

    .line 14
    .line 15
    iput-wide v0, p0, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->lastWriteOffset:J

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxSeek(I)V

    .line 18
    .line 19
    .line 20
    mul-int/lit8 v0, p2, 0x4

    .line 21
    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, p2, :cond_1

    .line 28
    .line 29
    aget v3, p3, v2

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 42
    .line 43
    .line 44
    add-int/2addr p1, v0

    .line 45
    return p1
.end method
