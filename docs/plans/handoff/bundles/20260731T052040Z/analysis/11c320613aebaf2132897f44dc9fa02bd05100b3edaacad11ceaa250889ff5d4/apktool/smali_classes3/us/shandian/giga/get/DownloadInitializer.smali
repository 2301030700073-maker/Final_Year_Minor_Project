.class public final Lus/shandian/giga/get/DownloadInitializer;
.super Ljava/lang/Thread;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public mConn:Ljava/net/HttpURLConnection;

.field public final mMission:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method public constructor <init>(Lus/shandian/giga/get/DownloadMission;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 8
    .line 9
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
    iget-object p0, p0, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 4
    .line 5
    iget v2, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-virtual {v0, v2, v4, v3}, Lus/shandian/giga/get/DownloadMission;->resetState(IZZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/16 v2, 0xcc

    .line 16
    .line 17
    move v5, v2

    .line 18
    move v6, v4

    .line 19
    :goto_0
    :try_start_0
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 20
    .line 21
    iget-object v7, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 22
    .line 23
    const-wide/16 v8, 0x0

    .line 24
    .line 25
    if-nez v7, :cond_8

    .line 26
    .line 27
    iget v7, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 28
    .line 29
    if-nez v7, :cond_8

    .line 30
    .line 31
    const-wide v10, 0x7fffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    move v0, v4

    .line 37
    move-wide v12, v8

    .line 38
    :goto_1
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 39
    .line 40
    iget-object v14, v7, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 41
    .line 42
    array-length v14, v14

    .line 43
    if-ge v0, v14, :cond_5

    .line 44
    .line 45
    iget-boolean v7, v7, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 46
    .line 47
    if-eqz v7, :cond_5

    .line 48
    .line 49
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 50
    .line 51
    iget-object v7, v7, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 52
    .line 53
    aget-object v18, v7, v0

    .line 54
    .line 55
    const-wide/16 v14, 0x0

    .line 56
    .line 57
    const-wide/16 v16, 0x0

    .line 58
    .line 59
    const/16 v19, 0x1

    .line 60
    .line 61
    invoke-static/range {v14 .. v19}, Lus/shandian/giga/get/DownloadMission;->openConnection(JJLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    iput-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 66
    .line 67
    iget-object v14, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 68
    .line 69
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {v7}, Lus/shandian/giga/get/DownloadMission;->establishConnection(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .line 74
    .line 75
    :try_start_1
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_1

    .line 89
    .line 90
    goto/16 :goto_c

    .line 91
    .line 92
    :cond_1
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 93
    .line 94
    invoke-static {v7}, Lus/shandian/giga/util/Utility;->getTotalContentLength(Ljava/net/HttpURLConnection;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v14

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 107
    .line 108
    iput-wide v14, v7, Lus/shandian/giga/get/Mission;->length:J

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move-exception v0

    .line 112
    goto/16 :goto_b

    .line 113
    .line 114
    :cond_2
    :goto_2
    cmp-long v7, v14, v8

    .line 115
    .line 116
    if-lez v7, :cond_3

    .line 117
    .line 118
    add-long/2addr v12, v14

    .line 119
    :cond_3
    cmp-long v7, v14, v10

    .line 120
    .line 121
    if-gez v7, :cond_4

    .line 122
    .line 123
    move-wide v10, v14

    .line 124
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 128
    .line 129
    iput-wide v12, v0, Lus/shandian/giga/get/DownloadMission;->nearLength:J

    .line 130
    .line 131
    iget-object v7, v0, Lus/shandian/giga/get/DownloadMission;->psAlgorithm:Lus/shandian/giga/postprocessing/Postprocessing;

    .line 132
    .line 133
    if-eqz v7, :cond_a

    .line 134
    .line 135
    iget-boolean v7, v7, Lus/shandian/giga/postprocessing/Postprocessing;->reserveSpace:Z
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    .line 137
    if-eqz v7, :cond_a

    .line 138
    .line 139
    const-wide/16 v12, 0x1

    .line 140
    .line 141
    cmp-long v7, v10, v12

    .line 142
    .line 143
    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 144
    .line 145
    if-gez v7, :cond_6

    .line 146
    .line 147
    const-wide/32 v10, 0x500000

    .line 148
    .line 149
    .line 150
    :try_start_3
    aput-wide v10, v0, v4

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    const-wide/32 v12, 0x9600000

    .line 154
    .line 155
    .line 156
    cmp-long v7, v10, v12

    .line 157
    .line 158
    if-gez v7, :cond_7

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_7
    move-wide v10, v12

    .line 162
    :goto_3
    aput-wide v10, v0, v4

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_8
    iget-object v7, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 166
    .line 167
    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 168
    .line 169
    aget-object v14, v7, v0

    .line 170
    .line 171
    const/4 v15, 0x1

    .line 172
    const-wide/16 v10, 0x0

    .line 173
    .line 174
    const-wide/16 v12, 0x0

    .line 175
    .line 176
    invoke-static/range {v10 .. v15}, Lus/shandian/giga/get/DownloadMission;->openConnection(JJLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 181
    .line 182
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 188
    .line 189
    .line 190
    :try_start_4
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 197
    .line 198
    .line 199
    :catch_2
    :try_start_5
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 200
    .line 201
    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 202
    .line 203
    if-eqz v0, :cond_1b

    .line 204
    .line 205
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_9

    .line 210
    .line 211
    goto/16 :goto_c

    .line 212
    .line 213
    :cond_9
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 220
    .line 221
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 222
    .line 223
    invoke-static {v7}, Lus/shandian/giga/util/Utility;->getTotalContentLength(Ljava/net/HttpURLConnection;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v10

    .line 227
    iput-wide v10, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 228
    .line 229
    :cond_a
    :goto_4
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 230
    .line 231
    iget-wide v10, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 232
    .line 233
    cmp-long v7, v10, v8

    .line 234
    .line 235
    const/4 v12, 0x0

    .line 236
    if-eqz v7, :cond_16

    .line 237
    .line 238
    if-ne v5, v2, :cond_b

    .line 239
    .line 240
    goto/16 :goto_a

    .line 241
    .line 242
    :cond_b
    const-wide/16 v13, -0x1

    .line 243
    .line 244
    cmp-long v0, v10, v13

    .line 245
    .line 246
    if-nez v0, :cond_c

    .line 247
    .line 248
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    const/16 v7, 0xc8

    .line 255
    .line 256
    if-ne v0, v7, :cond_c

    .line 257
    .line 258
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 259
    .line 260
    new-array v7, v4, [I

    .line 261
    .line 262
    iput-object v7, v0, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 263
    .line 264
    iput-wide v8, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 265
    .line 266
    iput-boolean v3, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 267
    .line 268
    goto/16 :goto_6

    .line 269
    .line 270
    :cond_c
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 271
    .line 272
    iget-wide v7, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 273
    .line 274
    const-wide/16 v9, 0xa

    .line 275
    .line 276
    sub-long v13, v7, v9

    .line 277
    .line 278
    iget-object v9, v0, Lus/shandian/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 279
    .line 280
    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 281
    .line 282
    aget-object v17, v9, v0

    .line 283
    .line 284
    const/16 v18, 0x1

    .line 285
    .line 286
    move-wide v15, v7

    .line 287
    invoke-static/range {v13 .. v18}, Lus/shandian/giga/get/DownloadMission;->openConnection(JJLjava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iput-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 292
    .line 293
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 294
    .line 295
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-static {v0}, Lus/shandian/giga/get/DownloadMission;->establishConnection(Ljava/net/HttpURLConnection;)V
    :try_end_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 299
    .line 300
    .line 301
    :try_start_6
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 308
    .line 309
    .line 310
    :catch_3
    :try_start_7
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 311
    .line 312
    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 313
    .line 314
    if-eqz v0, :cond_1b

    .line 315
    .line 316
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_d

    .line 321
    .line 322
    goto/16 :goto_c

    .line 323
    .line 324
    :cond_d
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 325
    .line 326
    iget-object v7, v0, Lus/shandian/giga/get/DownloadMission;->LOCK:Ljava/lang/Object;

    .line 327
    .line 328
    monitor-enter v7
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 329
    :try_start_8
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 332
    .line 333
    .line 334
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 335
    iget-object v8, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 336
    .line 337
    const/16 v9, 0xce

    .line 338
    .line 339
    if-ne v0, v9, :cond_10

    .line 340
    .line 341
    :try_start_9
    iget v0, v8, Lus/shandian/giga/get/DownloadMission;->threadCount:I

    .line 342
    .line 343
    if-le v0, v3, :cond_f

    .line 344
    .line 345
    iget-wide v9, v8, Lus/shandian/giga/get/Mission;->length:J

    .line 346
    .line 347
    const-wide/32 v13, 0x80000

    .line 348
    .line 349
    .line 350
    div-long v13, v9, v13

    .line 351
    .line 352
    long-to-int v0, v13

    .line 353
    const/high16 v11, 0x80000

    .line 354
    .line 355
    mul-int/2addr v11, v0

    .line 356
    int-to-long v13, v11

    .line 357
    cmp-long v9, v13, v9

    .line 358
    .line 359
    if-gez v9, :cond_e

    .line 360
    .line 361
    add-int/lit8 v0, v0, 0x1

    .line 362
    .line 363
    :cond_e
    new-array v0, v0, [I

    .line 364
    .line 365
    iput-object v0, v8, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 366
    .line 367
    goto :goto_5

    .line 368
    :catchall_0
    move-exception v0

    .line 369
    goto/16 :goto_9

    .line 370
    .line 371
    :cond_f
    new-array v0, v4, [I

    .line 372
    .line 373
    iput-object v0, v8, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 374
    .line 375
    iput-boolean v4, v8, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_10
    new-array v0, v4, [I

    .line 379
    .line 380
    iput-object v0, v8, Lus/shandian/giga/get/DownloadMission;->blocks:[I

    .line 381
    .line 382
    iput-boolean v4, v8, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 383
    .line 384
    :goto_5
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 385
    :try_start_a
    iget-boolean v0, v8, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 386
    .line 387
    if-eqz v0, :cond_1b

    .line 388
    .line 389
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_11

    .line 394
    .line 395
    goto/16 :goto_c

    .line 396
    .line 397
    :cond_11
    :goto_6
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 398
    .line 399
    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 400
    .line 401
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 402
    .line 403
    .line 404
    move-result-object v7
    :try_end_a
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 405
    :try_start_b
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 406
    .line 407
    iget-object v8, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 408
    .line 409
    iget v9, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 410
    .line 411
    aget-wide v9, v8, v9

    .line 412
    .line 413
    iget-wide v13, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 414
    .line 415
    add-long/2addr v9, v13

    .line 416
    invoke-virtual {v7, v9, v10}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V

    .line 417
    .line 418
    .line 419
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 420
    .line 421
    iget-object v8, v0, Lus/shandian/giga/get/DownloadMission;->offsets:[J

    .line 422
    .line 423
    iget v0, v0, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 424
    .line 425
    aget-wide v9, v8, v0

    .line 426
    .line 427
    invoke-virtual {v7, v9, v10}, Lorg/schabi/newpipe/streams/io/SharpStream;->seek(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 428
    .line 429
    .line 430
    :try_start_c
    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 431
    .line 432
    .line 433
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 434
    .line 435
    iget-boolean v0, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 436
    .line 437
    if-eqz v0, :cond_1b

    .line 438
    .line 439
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_12

    .line 444
    .line 445
    goto/16 :goto_c

    .line 446
    .line 447
    :cond_12
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 448
    .line 449
    iget-boolean v7, v0, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 450
    .line 451
    if-nez v7, :cond_15

    .line 452
    .line 453
    iget-object v0, v0, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 454
    .line 455
    if-eqz v0, :cond_15

    .line 456
    .line 457
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 458
    .line 459
    const-string v7, "ETAG"

    .line 460
    .line 461
    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 466
    .line 467
    const-string v8, "Last-Modified"

    .line 468
    .line 469
    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    iget-object v8, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 474
    .line 475
    iget-object v9, v8, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 476
    .line 477
    iget v8, v8, Lus/shandian/giga/get/DownloadMission;->current:I

    .line 478
    .line 479
    aget-object v8, v9, v8

    .line 480
    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 482
    .line 483
    .line 484
    move-result v9

    .line 485
    if-nez v9, :cond_13

    .line 486
    .line 487
    invoke-virtual {v8, v0}, Lus/shandian/giga/get/MissionRecoveryInfo;->setValidateCondition(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    goto :goto_7

    .line 491
    :cond_13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-nez v0, :cond_14

    .line 496
    .line 497
    invoke-virtual {v8, v7}, Lus/shandian/giga/get/MissionRecoveryInfo;->setValidateCondition(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    goto :goto_7

    .line 501
    :cond_14
    invoke-virtual {v8, v12}, Lus/shandian/giga/get/MissionRecoveryInfo;->setValidateCondition(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    :cond_15
    :goto_7
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 505
    .line 506
    iput-boolean v4, v0, Lus/shandian/giga/get/DownloadMission;->running:Z
    :try_end_c
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 507
    .line 508
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 509
    .line 510
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 511
    .line 512
    .line 513
    return-void

    .line 514
    :catchall_1
    move-exception v0

    .line 515
    move-object v8, v0

    .line 516
    :try_start_d
    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 517
    .line 518
    .line 519
    goto :goto_8

    .line 520
    :catchall_2
    move-exception v0

    .line 521
    :try_start_e
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 522
    .line 523
    .line 524
    :goto_8
    throw v8
    :try_end_e
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 525
    :goto_9
    :try_start_f
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 526
    :try_start_10
    throw v0

    .line 527
    :cond_16
    :goto_a
    invoke-virtual {v0, v2, v12}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_10
    .catch Ljava/io/InterruptedIOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 528
    .line 529
    .line 530
    goto :goto_c

    .line 531
    :goto_b
    iget-object v7, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 532
    .line 533
    iget-boolean v7, v7, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 534
    .line 535
    if-eqz v7, :cond_1b

    .line 536
    .line 537
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 538
    .line 539
    .line 540
    move-result v7

    .line 541
    if-eqz v7, :cond_17

    .line 542
    .line 543
    goto :goto_c

    .line 544
    :cond_17
    instance-of v7, v0, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 545
    .line 546
    if-eqz v7, :cond_18

    .line 547
    .line 548
    move-object v7, v0

    .line 549
    check-cast v7, Lus/shandian/giga/get/DownloadMission$HttpError;

    .line 550
    .line 551
    iget v7, v7, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    .line 552
    .line 553
    const/16 v8, 0x193

    .line 554
    .line 555
    if-ne v7, v8, :cond_18

    .line 556
    .line 557
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadInitializer;->interrupt()V

    .line 558
    .line 559
    .line 560
    iget-object v0, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 561
    .line 562
    invoke-virtual {v0, v8}, Lus/shandian/giga/get/DownloadMission;->doRecover(I)V

    .line 563
    .line 564
    .line 565
    return-void

    .line 566
    :cond_18
    instance-of v7, v0, Ljava/io/IOException;

    .line 567
    .line 568
    if-eqz v7, :cond_19

    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    const-string v8, "Permission denied"

    .line 575
    .line 576
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    if-eqz v7, :cond_19

    .line 581
    .line 582
    iget-object v1, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 583
    .line 584
    const/16 v2, 0x3eb

    .line 585
    .line 586
    invoke-virtual {v1, v2, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    .line 587
    .line 588
    .line 589
    return-void

    .line 590
    :cond_19
    add-int/lit8 v7, v6, 0x1

    .line 591
    .line 592
    iget-object v8, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 593
    .line 594
    iget v8, v8, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 595
    .line 596
    if-le v6, v8, :cond_1a

    .line 597
    .line 598
    const-string v2, "DownloadInitializer"

    .line 599
    .line 600
    const-string v3, "initializer failed"

    .line 601
    .line 602
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    .line 604
    .line 605
    iget-object v1, v1, Lus/shandian/giga/get/DownloadInitializer;->mMission:Lus/shandian/giga/get/DownloadMission;

    .line 606
    .line 607
    invoke-virtual {v1, v0}, Lus/shandian/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    .line 608
    .line 609
    .line 610
    return-void

    .line 611
    :cond_1a
    const-string v6, "DownloadInitializer"

    .line 612
    .line 613
    const-string v8, "initializer failed, retrying"

    .line 614
    .line 615
    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .line 617
    .line 618
    move v6, v7

    .line 619
    goto/16 :goto_0

    .line 620
    .line 621
    :catch_4
    :cond_1b
    :goto_c
    return-void
.end method
