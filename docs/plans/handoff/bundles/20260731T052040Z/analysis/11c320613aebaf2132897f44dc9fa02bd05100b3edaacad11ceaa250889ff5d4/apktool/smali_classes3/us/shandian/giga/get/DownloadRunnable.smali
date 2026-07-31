.class public final Lus/shandian/giga/get/DownloadRunnable;
.super Ljava/lang/Thread;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public mConn:Ljava/net/HttpURLConnection;

.field public final mId:I

.field public final mMission:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method public constructor <init>(Lus/shandian/giga/get/DownloadMission;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 5
    .line 6
    iput p2, p0, Lus/shandian/giga/get/DownloadRunnable;->mId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final interrupt()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
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

.method public final releaseBlock(Landroidx/compose/material3/FabPlacement;J)V
    .locals 3

    .line 1
    iget-object p0, p0, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 2
    .line 3
    iget v0, p1, Landroidx/compose/material3/FabPlacement;->left:I

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    cmp-long p2, p2, v1

    .line 8
    .line 9
    if-gez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p1, Landroidx/compose/material3/FabPlacement;->height:I

    .line 14
    .line 15
    :goto_0
    iget-object p2, p0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p2

    .line 18
    :try_start_0
    iget-object p3, p0, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput-boolean v1, p3, v0

    .line 22
    .line 23
    iget-object p0, p0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 24
    .line 25
    aput p1, p0, v0

    .line 26
    .line 27
    monitor-exit p2

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 4
    .line 5
    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 8
    .line 9
    .line 10
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v3

    .line 14
    move v6, v5

    .line 15
    move-object v0, v4

    .line 16
    :goto_0
    iget-object v7, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 17
    .line 18
    iget-boolean v7, v7, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 19
    .line 20
    const/4 v8, -0x1

    .line 21
    if-eqz v7, :cond_11

    .line 22
    .line 23
    iget-object v7, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 24
    .line 25
    iget v9, v7, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 26
    .line 27
    if-ne v9, v8, :cond_11

    .line 28
    .line 29
    const/4 v9, 0x1

    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    iget-object v10, v7, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v10

    .line 35
    move v0, v3

    .line 36
    :goto_1
    :try_start_1
    iget-object v11, v7, Lus/shandian/giga/get/DownloadMission;->blockAcquired:[Z

    .line 37
    .line 38
    array-length v12, v11

    .line 39
    if-ge v0, v12, :cond_1

    .line 40
    .line 41
    aget-boolean v12, v11, v0

    .line 42
    .line 43
    if-nez v12, :cond_0

    .line 44
    .line 45
    iget-object v12, v7, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 46
    .line 47
    aget v12, v12, v0

    .line 48
    .line 49
    if-ltz v12, :cond_0

    .line 50
    .line 51
    new-instance v7, Landroidx/compose/material3/FabPlacement;

    .line 52
    .line 53
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput v0, v7, Landroidx/compose/material3/FabPlacement;->left:I

    .line 57
    .line 58
    iput v12, v7, Landroidx/compose/material3/FabPlacement;->height:I

    .line 59
    .line 60
    aput-boolean v9, v11, v0

    .line 61
    .line 62
    monitor-exit v10

    .line 63
    move-object v0, v7

    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_3

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    monitor-exit v10

    .line 71
    move-object v0, v4

    .line 72
    :cond_2
    :goto_2
    move-object v7, v0

    .line 73
    goto :goto_4

    .line 74
    :goto_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw v0

    .line 76
    :goto_4
    if-nez v7, :cond_3

    .line 77
    .line 78
    goto/16 :goto_d

    .line 79
    .line 80
    :cond_3
    iget v0, v7, Landroidx/compose/material3/FabPlacement;->left:I

    .line 81
    .line 82
    int-to-long v10, v0

    .line 83
    const-wide/32 v12, 0x80000

    .line 84
    .line 85
    .line 86
    mul-long/2addr v10, v12

    .line 87
    const-wide/32 v12, 0x7ffff

    .line 88
    .line 89
    .line 90
    add-long/2addr v12, v10

    .line 91
    iget v0, v7, Landroidx/compose/material3/FabPlacement;->height:I

    .line 92
    .line 93
    int-to-long v14, v0

    .line 94
    add-long v16, v10, v14

    .line 95
    .line 96
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 97
    .line 98
    iget-wide v10, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 99
    .line 100
    cmp-long v14, v12, v10

    .line 101
    .line 102
    if-ltz v14, :cond_4

    .line 103
    .line 104
    const-wide/16 v12, 0x1

    .line 105
    .line 106
    sub-long v12, v10, v12

    .line 107
    .line 108
    :cond_4
    move-wide/from16 v18, v12

    .line 109
    .line 110
    :try_start_2
    iget-object v10, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 111
    .line 112
    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 113
    .line 114
    aget-object v20, v10, v0

    .line 115
    .line 116
    const/16 v21, 0x0

    .line 117
    .line 118
    invoke-static/range {v16 .. v21}, Lus/shandian/giga/get/DownloadMission;->openConnection(JJLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    .line 123
    .line 124
    iget-object v10, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 125
    .line 126
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(Ljava/net/HttpURLConnection;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const/16 v10, 0x1a0

    .line 139
    .line 140
    if-ne v0, v10, :cond_6

    .line 141
    .line 142
    iget v0, v7, Landroidx/compose/material3/FabPlacement;->height:I

    .line 143
    .line 144
    if-lez v0, :cond_5

    .line 145
    .line 146
    iget-object v10, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 147
    .line 148
    neg-int v0, v0

    .line 149
    int-to-long v11, v0

    .line 150
    invoke-virtual {v10, v11, v12}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V

    .line 151
    .line 152
    .line 153
    iput v3, v7, Landroidx/compose/material3/FabPlacement;->height:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 154
    .line 155
    :try_start_3
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    .line 159
    .line 160
    move-object v0, v7

    .line 161
    move v5, v9

    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :catchall_1
    move-exception v0

    .line 165
    move v3, v9

    .line 166
    goto/16 :goto_c

    .line 167
    .line 168
    :catch_0
    move-exception v0

    .line 169
    move v5, v9

    .line 170
    goto/16 :goto_9

    .line 171
    .line 172
    :catchall_2
    move-exception v0

    .line 173
    move v3, v5

    .line 174
    goto/16 :goto_c

    .line 175
    .line 176
    :catch_1
    move-exception v0

    .line 177
    goto/16 :goto_9

    .line 178
    .line 179
    :cond_5
    :try_start_4
    new-instance v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 180
    .line 181
    invoke-direct {v0, v10}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    .line 182
    .line 183
    .line 184
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 185
    :cond_6
    :try_start_5
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 188
    .line 189
    .line 190
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 191
    iget-object v5, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 192
    .line 193
    const/16 v10, 0xce

    .line 194
    .line 195
    if-eq v0, v10, :cond_7

    .line 196
    .line 197
    :try_start_6
    new-instance v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 198
    .line 199
    iget-object v10, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    .line 200
    .line 201
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    invoke-direct {v0, v10}, Lus/shandian/giga/get/DownloadMission$HttpError;-><init>(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 209
    .line 210
    .line 211
    :goto_5
    sub-long v3, v18, v16

    .line 212
    .line 213
    invoke-virtual {v1, v7, v3, v4}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Landroidx/compose/material3/FabPlacement;J)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_d

    .line 217
    .line 218
    :catchall_3
    move-exception v0

    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :catch_2
    move-exception v0

    .line 222
    move v5, v3

    .line 223
    goto :goto_9

    .line 224
    :cond_7
    :try_start_7
    iget-object v0, v5, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 225
    .line 226
    iget v5, v5, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 227
    .line 228
    aget-wide v10, v0, v5

    .line 229
    .line 230
    add-long v10, v10, v16

    .line 231
    .line 232
    invoke-virtual {v2, v10, v11}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V

    .line 233
    .line 234
    .line 235
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 238
    .line 239
    .line 240
    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 241
    const/high16 v0, 0x10000

    .line 242
    .line 243
    :try_start_8
    new-array v10, v0, [B

    .line 244
    .line 245
    :goto_6
    cmp-long v11, v16, v18

    .line 246
    .line 247
    if-gtz v11, :cond_8

    .line 248
    .line 249
    iget-object v11, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 250
    .line 251
    iget-boolean v11, v11, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 252
    .line 253
    if-eqz v11, :cond_8

    .line 254
    .line 255
    invoke-virtual {v5, v10, v3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    if-eq v11, v8, :cond_8

    .line 260
    .line 261
    invoke-virtual {v2, v10, v3, v11}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([BII)V

    .line 262
    .line 263
    .line 264
    int-to-long v12, v11

    .line 265
    add-long v16, v16, v12

    .line 266
    .line 267
    iget v14, v7, Landroidx/compose/material3/FabPlacement;->height:I

    .line 268
    .line 269
    add-int/2addr v14, v11

    .line 270
    iput v14, v7, Landroidx/compose/material3/FabPlacement;->height:I

    .line 271
    .line 272
    iget-object v11, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 273
    .line 274
    invoke-virtual {v11, v12, v13}, Lus/shandian/giga/get/DownloadMission;->notifyProgress(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :catchall_4
    move-exception v0

    .line 279
    move-object v10, v0

    .line 280
    goto :goto_7

    .line 281
    :cond_8
    if-eqz v5, :cond_9

    .line 282
    .line 283
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 284
    .line 285
    .line 286
    :cond_9
    sub-long v8, v18, v16

    .line 287
    .line 288
    invoke-virtual {v1, v7, v8, v9}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Landroidx/compose/material3/FabPlacement;J)V

    .line 289
    .line 290
    .line 291
    move v5, v3

    .line 292
    goto :goto_a

    .line 293
    :goto_7
    if-eqz v5, :cond_a

    .line 294
    .line 295
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 296
    .line 297
    .line 298
    goto :goto_8

    .line 299
    :catchall_5
    move-exception v0

    .line 300
    :try_start_b
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    :cond_a
    :goto_8
    throw v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 304
    :goto_9
    :try_start_c
    iget-object v10, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 305
    .line 306
    iget-boolean v10, v10, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 307
    .line 308
    if-eqz v10, :cond_f

    .line 309
    .line 310
    instance-of v10, v0, Ljava/nio/channels/ClosedByInterruptException;

    .line 311
    .line 312
    if-eqz v10, :cond_b

    .line 313
    .line 314
    goto :goto_b

    .line 315
    :cond_b
    instance-of v10, v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 316
    .line 317
    if-eqz v10, :cond_d

    .line 318
    .line 319
    move-object v10, v0

    .line 320
    check-cast v10, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 321
    .line 322
    iget v10, v10, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    .line 323
    .line 324
    const/16 v11, 0x193

    .line 325
    .line 326
    if-ne v10, v11, :cond_d

    .line 327
    .line 328
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 329
    .line 330
    .line 331
    iget v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mId:I

    .line 332
    .line 333
    if-ne v0, v9, :cond_c

    .line 334
    .line 335
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 336
    .line 337
    invoke-virtual {v0, v11}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 338
    .line 339
    .line 340
    :cond_c
    if-nez v5, :cond_12

    .line 341
    .line 342
    sub-long v2, v18, v16

    .line 343
    .line 344
    invoke-virtual {v1, v7, v2, v3}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Landroidx/compose/material3/FabPlacement;J)V

    .line 345
    .line 346
    .line 347
    goto :goto_e

    .line 348
    :cond_d
    add-int/lit8 v10, v6, 0x1

    .line 349
    .line 350
    :try_start_d
    iget-object v11, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 351
    .line 352
    iget v12, v11, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 353
    .line 354
    if-lt v6, v12, :cond_e

    .line 355
    .line 356
    invoke-virtual {v11, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 357
    .line 358
    .line 359
    if-nez v5, :cond_11

    .line 360
    .line 361
    goto/16 :goto_5

    .line 362
    .line 363
    :cond_e
    move v5, v9

    .line 364
    move v6, v10

    .line 365
    :goto_a
    move-object v0, v7

    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :cond_f
    :goto_b
    if-nez v5, :cond_11

    .line 369
    .line 370
    goto/16 :goto_5

    .line 371
    .line 372
    :goto_c
    if-nez v3, :cond_10

    .line 373
    .line 374
    sub-long v2, v18, v16

    .line 375
    .line 376
    invoke-virtual {v1, v7, v2, v3}, Lus/shandian/giga/get/DownloadRunnable;->releaseBlock(Landroidx/compose/material3/FabPlacement;J)V

    .line 377
    .line 378
    .line 379
    :cond_10
    throw v0

    .line 380
    :cond_11
    :goto_d
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 381
    .line 382
    .line 383
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 384
    .line 385
    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 386
    .line 387
    if-ne v2, v8, :cond_12

    .line 388
    .line 389
    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 390
    .line 391
    if-eqz v0, :cond_12

    .line 392
    .line 393
    iget-object v0, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 394
    .line 395
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->notifyFinished()V

    .line 396
    .line 397
    .line 398
    :cond_12
    :goto_e
    return-void

    .line 399
    :catch_3
    move-exception v0

    .line 400
    iget-object v1, v1, Lus/shandian/giga/get/DownloadRunnable;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 401
    .line 402
    invoke-virtual {v1, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    .line 403
    .line 404
    .line 405
    return-void
.end method
