.class public final Lus/shandian/giga/get/DownloadRunnableFallback;
.super Ljava/lang/Thread;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public mConn:Ljava/net/HttpURLConnection;

.field public mF:Lorg/schabi/newpipe/streams/io/SharpStream;

.field public mIs:Ljava/io/InputStream;

.field public final mMission:Lus/shandian/giga/get/DownloadMission;

.field public mRetryCount:I


# direct methods
.method public constructor <init>(Lus/shandian/giga/get/DownloadMission;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 6
    .line 7
    iput-object p1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :goto_1
    iget-object v1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 20
    .line 21
    .line 22
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    :catch_0
    :goto_2
    iget-object p0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mF:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final interrupt()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 2
    .line 3
    iget-wide v1, v0, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 6
    .line 7
    iget-boolean v3, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    const-wide/16 v6, 0x1

    .line 14
    .line 15
    cmp-long v3, v1, v6

    .line 16
    .line 17
    if-gez v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-wide v6, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move-wide v6, v4

    .line 23
    :goto_1
    iget-object v3, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 24
    .line 25
    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 26
    .line 27
    aget-object v10, v3, v0

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    const-wide/16 v8, -0x1

    .line 31
    .line 32
    invoke-static/range {v6 .. v11}, Lus/shandian/giga/get/DownloadMission;->openConnection(JJLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 37
    .line 38
    iget v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    cmp-long v3, v6, v4

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    const-string v3, "Range"

    .line 47
    .line 48
    const-string v6, "bytes=0-"

    .line 49
    .line 50
    invoke-virtual {v0, v3, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_2
    :goto_2
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 58
    .line 59
    iget-object v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v3}, Lus/shandian/giga/get/DownloadMission;->establishConnection(Ljava/net/HttpURLConnection;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/16 v3, 0x1a0

    .line 74
    .line 75
    const-wide/16 v6, 0x0

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    if-ne v0, v3, :cond_4

    .line 79
    .line 80
    cmp-long v0, v1, v6

    .line 81
    .line 82
    if-gtz v0, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 86
    .line 87
    neg-long v4, v1

    .line 88
    invoke-virtual {v0, v4, v5}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :try_start_1
    iget v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 92
    .line 93
    sub-int/2addr v0, v8

    .line 94
    iput v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 95
    .line 96
    new-instance v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 97
    .line 98
    invoke-direct {v0, v3}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    .line 99
    .line 100
    .line 101
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :catch_1
    move-exception v0

    .line 103
    move-wide v1, v6

    .line 104
    goto/16 :goto_6

    .line 105
    .line 106
    :cond_4
    :goto_3
    :try_start_2
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 107
    .line 108
    iget-boolean v3, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    if-nez v3, :cond_6

    .line 112
    .line 113
    iget-object v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 114
    .line 115
    invoke-static {v3}, Lus/shandian/giga/util/Utility;->getContentLength(Ljava/net/HttpURLConnection;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v10

    .line 119
    cmp-long v3, v10, v4

    .line 120
    .line 121
    if-nez v3, :cond_5

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    move v8, v9

    .line 125
    :goto_4
    iput-boolean v8, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 126
    .line 127
    :cond_6
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 128
    .line 129
    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 130
    .line 131
    if-nez v0, :cond_7

    .line 132
    .line 133
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/16 v3, 0xc8

    .line 140
    .line 141
    if-ne v0, v3, :cond_8

    .line 142
    .line 143
    :cond_7
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 144
    .line 145
    iget-object v3, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 146
    .line 147
    iget v4, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 148
    .line 149
    aget-wide v4, v3, v4

    .line 150
    .line 151
    aget-wide v10, v3, v9

    .line 152
    .line 153
    sub-long/2addr v4, v10

    .line 154
    iput-wide v4, v0, Lus/shandian/giga/get/DownloadMission;->done:J

    .line 155
    .line 156
    move-wide v1, v6

    .line 157
    :cond_8
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 158
    .line 159
    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 160
    .line 161
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mF:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 166
    .line 167
    iget-object v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 168
    .line 169
    iget-object v4, v3, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 170
    .line 171
    iget v3, v3, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 172
    .line 173
    aget-wide v3, v4, v3

    .line 174
    .line 175
    add-long/2addr v3, v1

    .line 176
    invoke-virtual {v0, v3, v4}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iput-object v0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    .line 186
    .line 187
    const/high16 v0, 0x10000

    .line 188
    .line 189
    new-array v3, v0, [B

    .line 190
    .line 191
    move v4, v9

    .line 192
    :goto_5
    iget-object v5, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 193
    .line 194
    iget-boolean v5, v5, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 195
    .line 196
    const/4 v6, -0x1

    .line 197
    if-eqz v5, :cond_9

    .line 198
    .line 199
    iget-object v4, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    .line 200
    .line 201
    invoke-virtual {v4, v3, v9, v0}, Ljava/io/InputStream;->read([BII)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eq v4, v6, :cond_9

    .line 206
    .line 207
    iget-object v5, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mF:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 208
    .line 209
    invoke-virtual {v5, v3, v9, v4}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    .line 210
    .line 211
    .line 212
    int-to-long v5, v4

    .line 213
    add-long/2addr v1, v5

    .line 214
    iget-object v7, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 215
    .line 216
    invoke-virtual {v7, v5, v6}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_9
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    .line 222
    .line 223
    iget-object p0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 224
    .line 225
    if-ne v4, v6, :cond_a

    .line 226
    .line 227
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_a
    iput-wide v1, p0, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    .line 232
    .line 233
    return-void

    .line 234
    :goto_6
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->dispose()V

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 238
    .line 239
    iput-wide v1, v3, Lus/shandian/giga/get/DownloadMission;->fallbackResumeOffset:J

    .line 240
    .line 241
    iget-object v1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 242
    .line 243
    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 244
    .line 245
    if-eqz v1, :cond_e

    .line 246
    .line 247
    instance-of v1, v0, Ljava/nio/channels/ClosedByInterruptException;

    .line 248
    .line 249
    if-eqz v1, :cond_b

    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_b
    instance-of v1, v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 253
    .line 254
    if-eqz v1, :cond_c

    .line 255
    .line 256
    move-object v1, v0

    .line 257
    check-cast v1, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 258
    .line 259
    iget v1, v1, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    .line 260
    .line 261
    const/16 v2, 0x193

    .line 262
    .line 263
    if-ne v1, v2, :cond_c

    .line 264
    .line 265
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->dispose()V

    .line 266
    .line 267
    .line 268
    iget-object p0, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_c
    iget v1, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 275
    .line 276
    add-int/lit8 v2, v1, 0x1

    .line 277
    .line 278
    iput v2, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 279
    .line 280
    iget-object v2, p0, Lus/shandian/giga/get/DownloadRunnableFallback;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 281
    .line 282
    iget v3, v2, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 283
    .line 284
    if-lt v1, v3, :cond_d

    .line 285
    .line 286
    invoke-virtual {v2, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :cond_d
    invoke-virtual {p0}, Lus/shandian/giga/get/DownloadRunnableFallback;->run()V

    .line 291
    .line 292
    .line 293
    :cond_e
    :goto_7
    return-void
.end method
