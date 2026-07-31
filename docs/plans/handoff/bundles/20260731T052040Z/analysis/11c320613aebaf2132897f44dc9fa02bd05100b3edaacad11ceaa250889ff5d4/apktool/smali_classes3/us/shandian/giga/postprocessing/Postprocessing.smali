.class public abstract Lus/shandian/giga/postprocessing/Postprocessing;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private args:[Ljava/lang/String;

.field public transient mission:Lus/shandian/giga/get/DownloadMission;

.field private final name:Ljava/lang/String;

.field public reserveSpace:Z

.field protected streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public transient tempFile:Ljava/io/File;

.field public worksOnSameFile:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->reserveSpace:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    .line 8
    .line 9
    iput-object p2, p0, Lus/shandian/giga/postprocessing/Postprocessing;->name:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static getAlgorithm(Ljava/lang/String;[Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lus/shandian/giga/postprocessing/Postprocessing;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const-string v2, "webm"

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    const-string v4, "ttml"

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const-string v6, "mp4D-mp4"

    .line 13
    .line 14
    const-string v7, "mp4D-m4a"

    .line 15
    .line 16
    const-string v8, "webm-ogg-d"

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x1

    .line 20
    const/4 v11, -0x1

    .line 21
    sparse-switch v0, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :sswitch_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v11, v1

    .line 33
    goto :goto_0

    .line 34
    :sswitch_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v11, v3

    .line 42
    goto :goto_0

    .line 43
    :sswitch_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v11, v5

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move v11, v10

    .line 60
    goto :goto_0

    .line 61
    :sswitch_4
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    move v11, v9

    .line 69
    :goto_0
    packed-switch v11, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    const-string p1, "Unimplemented post-processing algorithm: "

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0

    .line 83
    :pswitch_0
    new-instance p0, Lus/shandian/giga/postprocessing/M4aNoDash;

    .line 84
    .line 85
    invoke-direct {p0, v1, v2, v10}, Lus/shandian/giga/postprocessing/M4aNoDash;-><init>(ILjava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_1
    new-instance p0, Lus/shandian/giga/postprocessing/M4aNoDash;

    .line 90
    .line 91
    invoke-direct {p0, v3, v4, v9}, Lus/shandian/giga/postprocessing/M4aNoDash;-><init>(ILjava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_2
    new-instance p0, Lus/shandian/giga/postprocessing/M4aNoDash;

    .line 96
    .line 97
    invoke-direct {p0, v5, v6, v10}, Lus/shandian/giga/postprocessing/M4aNoDash;-><init>(ILjava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_3
    new-instance p0, Lus/shandian/giga/postprocessing/M4aNoDash;

    .line 102
    .line 103
    invoke-direct {p0, v9, v7, v9}, Lus/shandian/giga/postprocessing/M4aNoDash;-><init>(ILjava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_4
    new-instance p0, Lus/shandian/giga/postprocessing/M4aNoDash;

    .line 108
    .line 109
    invoke-direct {p0, v10, v8, v10}, Lus/shandian/giga/postprocessing/M4aNoDash;-><init>(ILjava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    :goto_1
    iput-object p1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    .line 113
    .line 114
    iput-object p2, p0, Lus/shandian/giga/postprocessing/Postprocessing;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 115
    .line 116
    return-object p0

    .line 117
    :sswitch_data_0
    .sparse-switch
        -0x558b978e -> :sswitch_4
        -0x43d5a580 -> :sswitch_3
        -0x43d59e69 -> :sswitch_2
        0x367c1f -> :sswitch_1
        0x379f99 -> :sswitch_0
    .end sparse-switch

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getArgumentAt(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    aget-object p0, p0, p1

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    :goto_0
    return-object p2
.end method

.method public varargs abstract process(Lus/shandian/giga/io/CircularFileWriter;[Lorg/schabi/newpipe/streams/io/SharpStream;)V
.end method

.method public final run(Lus/shandian/giga/get/DownloadMission;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iput-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    iput-wide v2, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    .line 10
    .line 11
    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 12
    .line 13
    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->length()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 20
    .line 21
    iget-object v4, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    aget-wide v6, v4, v5

    .line 25
    .line 26
    sub-long/2addr v2, v6

    .line 27
    iget-wide v6, v0, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    .line 28
    .line 29
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iput-wide v2, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 34
    .line 35
    new-instance v12, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-direct {v12, v1, v0}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/postprocessing/Postprocessing;I)V

    .line 39
    .line 40
    .line 41
    iget-boolean v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const-wide/16 v13, -0x1

    .line 45
    .line 46
    if-eqz v2, :cond_9

    .line 47
    .line 48
    iget-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 49
    .line 50
    iget-object v2, v2, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 51
    .line 52
    array-length v2, v2

    .line 53
    new-array v4, v2, [Lus/shandian/giga/io/ChunkFileInputStream;

    .line 54
    .line 55
    move v15, v5

    .line 56
    :goto_0
    if-ge v15, v2, :cond_1

    .line 57
    .line 58
    :try_start_0
    iget-object v6, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 59
    .line 60
    iget-object v6, v6, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 61
    .line 62
    invoke-virtual {v6}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-ge v0, v2, :cond_0

    .line 67
    .line 68
    iget-object v6, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 69
    .line 70
    iget-object v6, v6, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 71
    .line 72
    aget-wide v8, v6, v0

    .line 73
    .line 74
    :goto_1
    move-wide v10, v8

    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_0
    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/SharpStream;->length()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    goto :goto_1

    .line 84
    :goto_2
    new-instance v6, Lus/shandian/giga/io/ChunkFileInputStream;

    .line 85
    .line 86
    iget-object v8, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 87
    .line 88
    iget-object v8, v8, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 89
    .line 90
    aget-wide v16, v8, v15

    .line 91
    .line 92
    move-wide/from16 v8, v16

    .line 93
    .line 94
    invoke-direct/range {v6 .. v12}, Lus/shandian/giga/io/ChunkFileInputStream;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;JJLus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;)V

    .line 95
    .line 96
    .line 97
    aput-object v6, v4, v15

    .line 98
    .line 99
    add-int/lit8 v15, v15, 0x1

    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v1, v4}, Lus/shandian/giga/postprocessing/Postprocessing;->test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    move v0, v5

    .line 111
    :goto_3
    if-ge v0, v2, :cond_2

    .line 112
    .line 113
    aget-object v6, v4, v0

    .line 114
    .line 115
    invoke-virtual {v6}, Lus/shandian/giga/io/ChunkFileInputStream;->rewind()V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_2
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    const/16 v6, 0x18

    .line 124
    .line 125
    invoke-direct {v0, v4, v6}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    new-instance v6, Lus/shandian/giga/io/CircularFileWriter;

    .line 129
    .line 130
    iget-object v7, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 131
    .line 132
    iget-object v7, v7, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 133
    .line 134
    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iget-object v8, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 139
    .line 140
    invoke-direct {v6, v7, v8, v0}, Lus/shandian/giga/io/CircularFileWriter;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;Ljava/io/File;Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    :try_start_1
    new-instance v0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 144
    .line 145
    const/4 v7, 0x2

    .line 146
    invoke-direct {v0, v1, v7}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/postprocessing/Postprocessing;I)V

    .line 147
    .line 148
    .line 149
    iput-object v0, v6, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 150
    .line 151
    new-instance v0, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 152
    .line 153
    invoke-direct {v0, v1, v5}, Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;-><init>(Lus/shandian/giga/postprocessing/Postprocessing;I)V

    .line 154
    .line 155
    .line 156
    iput-object v0, v6, Lus/shandian/giga/io/CircularFileWriter;->onWriteError:Lus/shandian/giga/postprocessing/Postprocessing$$ExternalSyntheticLambda3;

    .line 157
    .line 158
    invoke-virtual {v1, v6, v4}, Lus/shandian/giga/postprocessing/Postprocessing;->process(Lus/shandian/giga/io/CircularFileWriter;[Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter;->finalizeFile()J

    .line 162
    .line 163
    .line 164
    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    :try_start_2
    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :catchall_1
    move-exception v0

    .line 170
    move-object v7, v0

    .line 171
    :try_start_3
    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :catchall_2
    move-exception v0

    .line 176
    :try_start_4
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :goto_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    :cond_3
    move-wide v7, v13

    .line 181
    :goto_5
    if-ge v5, v2, :cond_5

    .line 182
    .line 183
    aget-object v0, v4, v5

    .line 184
    .line 185
    if-eqz v0, :cond_4

    .line 186
    .line 187
    invoke-virtual {v0}, Lus/shandian/giga/io/ChunkFileInputStream;->isClosed()Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v6, :cond_4

    .line 192
    .line 193
    invoke-virtual {v0}, Lus/shandian/giga/io/ChunkFileInputStream;->close()V

    .line 194
    .line 195
    .line 196
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_5
    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 200
    .line 201
    if-eqz v0, :cond_b

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 204
    .line 205
    .line 206
    iput-object v3, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :goto_6
    if-ge v5, v2, :cond_7

    .line 210
    .line 211
    aget-object v6, v4, v5

    .line 212
    .line 213
    if-eqz v6, :cond_6

    .line 214
    .line 215
    invoke-virtual {v6}, Lus/shandian/giga/io/ChunkFileInputStream;->isClosed()Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-nez v7, :cond_6

    .line 220
    .line 221
    invoke-virtual {v6}, Lus/shandian/giga/io/ChunkFileInputStream;->close()V

    .line 222
    .line 223
    .line 224
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_7
    iget-object v2, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 228
    .line 229
    if-eqz v2, :cond_8

    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 232
    .line 233
    .line 234
    iput-object v3, v1, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 235
    .line 236
    :cond_8
    throw v0

    .line 237
    :cond_9
    new-array v0, v5, [Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Lus/shandian/giga/postprocessing/Postprocessing;->test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_a

    .line 244
    .line 245
    new-array v0, v5, [Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 246
    .line 247
    invoke-virtual {v1, v3, v0}, Lus/shandian/giga/postprocessing/Postprocessing;->process(Lus/shandian/giga/io/CircularFileWriter;[Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 248
    .line 249
    .line 250
    :cond_a
    move-wide v7, v13

    .line 251
    :cond_b
    :goto_7
    cmp-long v0, v7, v13

    .line 252
    .line 253
    if-eqz v0, :cond_c

    .line 254
    .line 255
    iget-object v0, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 256
    .line 257
    iput-wide v7, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 258
    .line 259
    :cond_c
    iput-object v3, v1, Lus/shandian/giga/postprocessing/Postprocessing;->mission:Lus/shandian/giga/get/DownloadMission;

    .line 260
    .line 261
    return-void
.end method

.method public final setTemporalDir(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x40f86a0000000000L    # 100000.0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double/2addr v0, v2

    .line 11
    double-to-int v0, v0

    .line 12
    int-to-long v0, v0

    .line 13
    new-instance v2, Ljava/io/File;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "_"

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ".tmp"

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lus/shandian/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 48
    .line 49
    return-void
.end method

.method public varargs test([Lorg/schabi/newpipe/streams/io/SharpStream;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "{ name="

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lus/shandian/giga/postprocessing/Postprocessing;->name:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x5b

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lus/shandian/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    array-length v1, p0

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    if-ge v3, v1, :cond_0

    .line 25
    .line 26
    aget-object v4, p0, v3

    .line 27
    .line 28
    const-string v5, ", "

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x1

    .line 40
    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    const-string p0, "] }"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
