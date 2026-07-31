.class public final Lus/shandian/giga/io/CircularFileWriter;
.super Lorg/schabi/newpipe/streams/io/SharpStream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

.field public final callback:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

.field public maxLengthKnown:J

.field public onProgress:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

.field public onWriteError:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

.field public out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

.field public reportPosition:J


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;Ljava/io/File;Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "Cannot create a temporal file"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 29
    .line 30
    invoke-direct {v0, p0, p2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;-><init>(Lus/shandian/giga/io/CircularFileWriter;Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 34
    .line 35
    new-instance p2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 36
    .line 37
    invoke-direct {p2, p0, p1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;-><init>(Lus/shandian/giga/io/CircularFileWriter;Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 41
    .line 42
    iput-object p3, p0, Lus/shandian/giga/io/CircularFileWriter;->callback:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const-wide/32 p1, 0x10000

    .line 45
    .line 46
    .line 47
    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final available()J
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "write-only"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final canRead()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final canWrite()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 7
    .line 8
    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iput-object v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 20
    .line 21
    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final finalizeFile()J
    .locals 4

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 2
    .line 3
    iget-wide v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/io/CircularFileWriter;->flushAuxiliar(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 9
    .line 10
    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    .line 14
    .line 15
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 16
    .line 17
    iget-wide v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 24
    .line 25
    iget-object v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 26
    .line 27
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    cmp-long v2, v0, v2

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 36
    .line 37
    iget-object v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 38
    .line 39
    invoke-virtual {v2, v0, v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter;->close()V

    .line 43
    .line 44
    .line 45
    return-wide v0
.end method

.method public final flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 7
    .line 8
    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 12
    .line 13
    iget-wide v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 14
    .line 15
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 16
    .line 17
    iget-wide v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 18
    .line 19
    add-long/2addr v0, v2

    .line 20
    iget-wide v2, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    .line 21
    .line 22
    cmp-long v2, v0, v2

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final flushAuxiliar(J)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 4
    .line 5
    iget-wide v1, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 6
    .line 7
    const-wide/16 v3, 0x1

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-gez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 15
    .line 16
    invoke-virtual {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 20
    .line 21
    invoke-virtual {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 25
    .line 26
    iget-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 27
    .line 28
    iget-wide v4, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 29
    .line 30
    cmp-long v2, v2, v4

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    if-ltz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 37
    .line 38
    iget-wide v5, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 39
    .line 40
    iget-wide v7, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 41
    .line 42
    cmp-long v2, v5, v7

    .line 43
    .line 44
    if-gez v2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v2, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    move v2, v3

    .line 50
    :goto_1
    const/high16 v5, 0x20000

    .line 51
    .line 52
    new-array v6, v5, [B

    .line 53
    .line 54
    iget-object v1, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 55
    .line 56
    const-wide/16 v7, 0x0

    .line 57
    .line 58
    invoke-virtual {v1, v7, v8}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 62
    .line 63
    iget-object v9, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 64
    .line 65
    iget-wide v10, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 66
    .line 67
    invoke-virtual {v9, v10, v11}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 68
    .line 69
    .line 70
    move-wide/from16 v9, p1

    .line 71
    .line 72
    :goto_2
    cmp-long v1, v9, v7

    .line 73
    .line 74
    const-wide/32 v11, 0x7fffffff

    .line 75
    .line 76
    .line 77
    if-lez v1, :cond_4

    .line 78
    .line 79
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v13

    .line 83
    long-to-int v1, v13

    .line 84
    iget-object v13, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 85
    .line 86
    iget-object v13, v13, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 87
    .line 88
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v13, v6, v4, v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([BII)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-ge v1, v3, :cond_3

    .line 97
    .line 98
    sub-long v9, p1, v9

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    iget-object v11, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 102
    .line 103
    invoke-virtual {v11, v1, v6}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->writeProof(I[B)V

    .line 104
    .line 105
    .line 106
    int-to-long v11, v1

    .line 107
    sub-long/2addr v9, v11

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move-wide/from16 v9, p1

    .line 110
    .line 111
    :goto_3
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 112
    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    iget-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 116
    .line 117
    iget-wide v13, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 118
    .line 119
    cmp-long v15, v2, v13

    .line 120
    .line 121
    iget-object v4, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 122
    .line 123
    if-ltz v15, :cond_6

    .line 124
    .line 125
    move-object/from16 v16, v6

    .line 126
    .line 127
    iget-wide v5, v4, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 128
    .line 129
    cmp-long v17, v5, v9

    .line 130
    .line 131
    if-gez v17, :cond_5

    .line 132
    .line 133
    add-long/2addr v2, v5

    .line 134
    iput-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 135
    .line 136
    iput-wide v7, v4, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 137
    .line 138
    iget-object v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 139
    .line 140
    iget-wide v3, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 141
    .line 142
    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    sub-long/2addr v5, v9

    .line 147
    iput-wide v5, v4, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 148
    .line 149
    add-long/2addr v13, v9

    .line 150
    iput-wide v13, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    move-object/from16 v16, v6

    .line 154
    .line 155
    iput-wide v7, v4, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_7
    move-object/from16 v16, v6

    .line 159
    .line 160
    iget-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 161
    .line 162
    add-long/2addr v2, v9

    .line 163
    iput-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 164
    .line 165
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 166
    .line 167
    iget-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 168
    .line 169
    sub-long/2addr v2, v9

    .line 170
    iput-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 171
    .line 172
    :goto_4
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 173
    .line 174
    iget-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 175
    .line 176
    add-long/2addr v2, v9

    .line 177
    iput-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 178
    .line 179
    iget-wide v4, v0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    .line 180
    .line 181
    cmp-long v1, v2, v4

    .line 182
    .line 183
    if-lez v1, :cond_8

    .line 184
    .line 185
    iput-wide v2, v0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    .line 186
    .line 187
    :cond_8
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 188
    .line 189
    iget-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 190
    .line 191
    cmp-long v4, v9, v2

    .line 192
    .line 193
    if-gez v4, :cond_a

    .line 194
    .line 195
    sub-long/2addr v2, v9

    .line 196
    iput-wide v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 197
    .line 198
    move-wide v4, v7

    .line 199
    :goto_5
    cmp-long v1, v2, v7

    .line 200
    .line 201
    if-lez v1, :cond_9

    .line 202
    .line 203
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 204
    .line 205
    .line 206
    move-result-wide v13

    .line 207
    long-to-int v1, v13

    .line 208
    iget-object v6, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 209
    .line 210
    iget-object v6, v6, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 211
    .line 212
    const/high16 v15, 0x20000

    .line 213
    .line 214
    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    move-object/from16 v13, v16

    .line 219
    .line 220
    const/4 v14, 0x0

    .line 221
    invoke-virtual {v6, v13, v14, v1}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([BII)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    iget-object v6, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 226
    .line 227
    iget-object v6, v6, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 228
    .line 229
    invoke-virtual {v6, v4, v5}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 230
    .line 231
    .line 232
    iget-object v6, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 233
    .line 234
    invoke-virtual {v6, v1, v13}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->writeProof(I[B)V

    .line 235
    .line 236
    .line 237
    int-to-long v11, v1

    .line 238
    add-long/2addr v4, v11

    .line 239
    add-long/2addr v9, v11

    .line 240
    sub-long/2addr v2, v11

    .line 241
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 242
    .line 243
    iget-object v1, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 244
    .line 245
    invoke-virtual {v1, v9, v10}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 246
    .line 247
    .line 248
    const-wide/32 v11, 0x7fffffff

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_9
    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 253
    .line 254
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 255
    .line 256
    iget-wide v2, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 257
    .line 258
    invoke-virtual {v1, v2, v3}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_a
    const-wide/32 v4, 0xf00000

    .line 263
    .line 264
    .line 265
    cmp-long v2, v2, v4

    .line 266
    .line 267
    if-lez v2, :cond_b

    .line 268
    .line 269
    iget-object v1, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 270
    .line 271
    invoke-virtual {v1, v4, v5}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V

    .line 272
    .line 273
    .line 274
    :cond_b
    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 275
    .line 276
    iput-wide v7, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 277
    .line 278
    iput-wide v7, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 279
    .line 280
    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 281
    .line 282
    invoke-virtual {v0, v7, v8}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 283
    .line 284
    .line 285
    return-void
.end method

.method public final isClosed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final read()I
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "write-only"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final read([B)I
    .locals 0

    .line 9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "write-only"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read([BII)I
    .locals 0

    .line 10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "write-only"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final rewind()V
    .locals 3

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;->report(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, v1, v2}, Lus/shandian/giga/io/CircularFileWriter;->seek(J)V

    .line 11
    .line 12
    .line 13
    const-wide/32 v0, 0x10000

    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    .line 17
    .line 18
    return-void
.end method

.method public final seek(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 2
    .line 3
    iget-wide v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 4
    .line 5
    iget-object v3, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 6
    .line 7
    iget-wide v3, v3, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 8
    .line 9
    add-long/2addr v1, v3

    .line 10
    cmp-long v3, p1, v1

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 19
    .line 20
    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    add-long/2addr v6, v4

    .line 25
    cmp-long v0, v6, v1

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter;->flush()V

    .line 31
    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long v0, p1, v4

    .line 36
    .line 37
    if-ltz v0, :cond_2

    .line 38
    .line 39
    if-gtz v3, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 42
    .line 43
    iget-wide v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 44
    .line 45
    cmp-long v3, p1, v1

    .line 46
    .line 47
    if-lez v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 53
    .line 54
    iget-object p0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 55
    .line 56
    iget-wide v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 57
    .line 58
    sub-long/2addr p1, v1

    .line 59
    invoke-virtual {v0, p1, p2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    invoke-virtual {v0, p1, p2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 67
    .line 68
    invoke-virtual {p0, v4, v5}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 73
    .line 74
    const-string v0, "desired offset is outside of range=0-"

    .line 75
    .line 76
    const-string v3, " offset="

    .line 77
    .line 78
    invoke-static {v1, v2, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final skip(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 8
    .line 9
    invoke-virtual {v2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v2, v0

    .line 14
    add-long/2addr v2, p1

    .line 15
    invoke-virtual {p0, v2, v3}, Lus/shandian/giga/io/CircularFileWriter;->seek(J)V

    .line 16
    .line 17
    .line 18
    return-wide p1
.end method

.method public final write(B)V
    .locals 3

    const/4 v0, 0x1

    .line 246
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lus/shandian/giga/io/CircularFileWriter;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 245
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lus/shandian/giga/io/CircularFileWriter;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    iget-object v4, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 14
    .line 15
    invoke-virtual {v4}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    iget-object v6, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 20
    .line 21
    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    iget-object v8, v0, Lus/shandian/giga/io/CircularFileWriter;->callback:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    iget-object v8, v8, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v8, [Lus/shandian/giga/io/ChunkFileInputStream;

    .line 30
    .line 31
    array-length v9, v8

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const-wide/16 v12, -0x1

    .line 34
    .line 35
    if-ge v11, v9, :cond_3

    .line 36
    .line 37
    aget-object v14, v8, v11

    .line 38
    .line 39
    invoke-virtual {v14}, Lus/shandian/giga/io/ChunkFileInputStream;->isClosed()Z

    .line 40
    .line 41
    .line 42
    move-result v15

    .line 43
    if-nez v15, :cond_2

    .line 44
    .line 45
    invoke-virtual {v14}, Lus/shandian/giga/io/ChunkFileInputStream;->available()J

    .line 46
    .line 47
    .line 48
    move-result-wide v15

    .line 49
    const-wide/16 v17, 0x1

    .line 50
    .line 51
    cmp-long v15, v15, v17

    .line 52
    .line 53
    if-gez v15, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-wide v8, v14, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    .line 57
    .line 58
    iget-wide v14, v14, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    .line 59
    .line 60
    add-long/2addr v8, v14

    .line 61
    sub-long v8, v8, v17

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move-wide v8, v12

    .line 68
    :goto_2
    cmp-long v11, v8, v12

    .line 69
    .line 70
    if-nez v11, :cond_4

    .line 71
    .line 72
    const-wide/32 v8, 0x7fffffff

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    cmp-long v11, v8, v4

    .line 77
    .line 78
    if-ltz v11, :cond_e

    .line 79
    .line 80
    sub-long/2addr v8, v4

    .line 81
    :goto_3
    iget-object v11, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 82
    .line 83
    iget-wide v14, v11, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 84
    .line 85
    const-wide/16 v16, 0x0

    .line 86
    .line 87
    cmp-long v16, v14, v16

    .line 88
    .line 89
    const/16 v17, 0x1

    .line 90
    .line 91
    if-lez v16, :cond_5

    .line 92
    .line 93
    iget-object v10, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 94
    .line 95
    iget-wide v12, v10, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 96
    .line 97
    cmp-long v10, v4, v12

    .line 98
    .line 99
    if-ltz v10, :cond_5

    .line 100
    .line 101
    move/from16 v10, v17

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    const/4 v10, 0x0

    .line 105
    :goto_4
    cmp-long v12, v6, v14

    .line 106
    .line 107
    if-ltz v12, :cond_7

    .line 108
    .line 109
    iget-object v12, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 110
    .line 111
    iget-wide v12, v12, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 112
    .line 113
    cmp-long v12, v4, v12

    .line 114
    .line 115
    if-gez v12, :cond_6

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_6
    const/16 v16, 0x0

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_7
    :goto_5
    move/from16 v16, v17

    .line 122
    .line 123
    :goto_6
    if-eqz v10, :cond_a

    .line 124
    .line 125
    int-to-long v4, v3

    .line 126
    add-long/2addr v6, v4

    .line 127
    if-eqz v16, :cond_9

    .line 128
    .line 129
    cmp-long v4, v14, v6

    .line 130
    .line 131
    if-lez v4, :cond_8

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_8
    move-wide v14, v6

    .line 135
    goto :goto_7

    .line 136
    :cond_9
    add-long/2addr v14, v4

    .line 137
    :goto_7
    invoke-virtual {v11, v1, v2, v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    .line 138
    .line 139
    .line 140
    const-wide/32 v1, 0xf00000

    .line 141
    .line 142
    .line 143
    cmp-long v1, v14, v1

    .line 144
    .line 145
    if-ltz v1, :cond_c

    .line 146
    .line 147
    cmp-long v1, v14, v8

    .line 148
    .line 149
    if-gtz v1, :cond_c

    .line 150
    .line 151
    invoke-virtual {v0, v8, v9}, Lus/shandian/giga/io/CircularFileWriter;->flushAuxiliar(J)V

    .line 152
    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_a
    if-eqz v16, :cond_b

    .line 156
    .line 157
    iget-object v6, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 158
    .line 159
    iget-wide v6, v6, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 160
    .line 161
    sub-long v8, v6, v4

    .line 162
    .line 163
    :cond_b
    const-wide/32 v4, 0x7fffffff

    .line 164
    .line 165
    .line 166
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    long-to-int v4, v4

    .line 171
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    iget-object v5, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 176
    .line 177
    invoke-virtual {v5, v1, v2, v4}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    .line 178
    .line 179
    .line 180
    sub-int/2addr v3, v4

    .line 181
    add-int/2addr v2, v4

    .line 182
    if-lez v3, :cond_c

    .line 183
    .line 184
    iget-object v4, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 185
    .line 186
    invoke-virtual {v4, v1, v2, v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    .line 187
    .line 188
    .line 189
    :cond_c
    :goto_8
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 190
    .line 191
    if-eqz v1, :cond_d

    .line 192
    .line 193
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 194
    .line 195
    invoke-virtual {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    iget-object v3, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    .line 200
    .line 201
    invoke-virtual {v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    .line 202
    .line 203
    .line 204
    move-result-wide v3

    .line 205
    add-long/2addr v3, v1

    .line 206
    iget-wide v1, v0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    .line 207
    .line 208
    cmp-long v1, v3, v1

    .line 209
    .line 210
    if-lez v1, :cond_d

    .line 211
    .line 212
    const-wide/32 v1, 0x10000

    .line 213
    .line 214
    .line 215
    add-long/2addr v1, v3

    .line 216
    iput-wide v1, v0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    .line 217
    .line 218
    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 219
    .line 220
    invoke-virtual {v0, v3, v4}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;->report(J)V

    .line 221
    .line 222
    .line 223
    :cond_d
    :goto_9
    return-void

    .line 224
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 225
    .line 226
    const-string v1, "The reported offset is invalid: "

    .line 227
    .line 228
    const-string v2, "<"

    .line 229
    .line 230
    invoke-static {v8, v9, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0
.end method
