.class public final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field public final continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field public final hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

.field public final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lokhttp3/internal/http2/Http2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lokio/RealBufferedSource;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 8
    .line 9
    new-instance v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 15
    .line 16
    new-instance p1, Lokhttp3/internal/http2/Hpack$Reader;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(Lokhttp3/internal/http2/Http2Reader$ContinuationSource;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final nextFrame(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 3
    .line 4
    const-wide/16 v2, 0x9

    .line 5
    .line 6
    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 10
    .line 11
    invoke-static {v1}, Lokhttp3/internal/_UtilCommonKt;->readMedium(Lokio/BufferedSource;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x4000

    .line 16
    .line 17
    if-gt v1, v2, :cond_1f

    .line 18
    .line 19
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 20
    .line 21
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    and-int/lit16 v3, v3, 0xff

    .line 26
    .line 27
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 28
    .line 29
    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    and-int/lit16 v5, v4, 0xff

    .line 34
    .line 35
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 36
    .line 37
    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const v7, 0x7fffffff

    .line 42
    .line 43
    .line 44
    and-int/2addr v7, v6

    .line 45
    const/16 v8, 0x8

    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    if-eq v3, v8, :cond_0

    .line 49
    .line 50
    sget-object v10, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    .line 51
    .line 52
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 53
    .line 54
    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-eqz v11, :cond_0

    .line 59
    .line 60
    invoke-static {v9, v7, v1, v3, v5}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIII)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    const/4 v10, 0x4

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    if-ne v3, v10, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string p0, "Expected a SETTINGS frame but was "

    .line 74
    .line 75
    invoke-static {v3}, Lokhttp3/internal/http2/Http2;->formattedType$okhttp(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v0

    .line 83
    :cond_2
    :goto_0
    const/4 p1, 0x5

    .line 84
    packed-switch v3, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 88
    .line 89
    int-to-long p1, v1

    .line 90
    invoke-interface {p0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    .line 91
    .line 92
    .line 93
    return v9

    .line 94
    :pswitch_0
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: "

    .line 95
    .line 96
    if-ne v1, v10, :cond_7

    .line 97
    .line 98
    :try_start_1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 99
    .line 100
    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    const-wide/32 v2, 0x7fffffff

    .line 105
    .line 106
    .line 107
    int-to-long p0, p0

    .line 108
    and-long/2addr p0, v2

    .line 109
    const-wide/16 v2, 0x0

    .line 110
    .line 111
    cmp-long v0, p0, v2

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    .line 116
    .line 117
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    invoke-static {v7, v1, p0, p1, v9}, Lokhttp3/internal/http2/Http2;->frameLogWindowUpdate(IIJZ)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p2, Lokhttp3/internal/http2/Http2Connection;

    .line 135
    .line 136
    if-nez v7, :cond_4

    .line 137
    .line 138
    monitor-enter p2

    .line 139
    :try_start_2
    iget-wide v0, p2, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    .line 140
    .line 141
    add-long/2addr v0, p0

    .line 142
    iput-wide v0, p2, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    monitor-exit p2

    .line 148
    return v9

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    monitor-exit p2

    .line 151
    throw p0

    .line 152
    :cond_4
    invoke-virtual {p2, v7}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    if-eqz p2, :cond_19

    .line 157
    .line 158
    monitor-enter p2

    .line 159
    :try_start_3
    iget-wide v1, p2, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    .line 160
    .line 161
    add-long/2addr v1, p0

    .line 162
    iput-wide v1, p2, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    .line 163
    .line 164
    if-lez v0, :cond_5

    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    .line 168
    .line 169
    :cond_5
    monitor-exit p2

    .line 170
    return v9

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    monitor-exit p2

    .line 173
    throw p0

    .line 174
    :cond_6
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    .line 175
    .line 176
    const-string/jumbo p1, "windowSizeIncrement was 0"

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :catch_0
    move-exception p0

    .line 184
    goto :goto_1

    .line 185
    :cond_7
    new-instance p0, Ljava/io/IOException;

    .line 186
    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 203
    :goto_1
    sget-object p1, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    .line 204
    .line 205
    invoke-static {v9, v7, v1, v8, v5}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIII)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0

    .line 213
    :pswitch_1
    invoke-virtual {p0, p2, v1, v7}, Lokhttp3/internal/http2/Http2Reader;->readGoAway(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;II)V

    .line 214
    .line 215
    .line 216
    return v9

    .line 217
    :pswitch_2
    invoke-virtual {p0, p2, v1, v5, v7}, Lokhttp3/internal/http2/Http2Reader;->readPing(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V

    .line 218
    .line 219
    .line 220
    return v9

    .line 221
    :pswitch_3
    invoke-virtual {p0, p2, v1, v5, v7}, Lokhttp3/internal/http2/Http2Reader;->readPushPromise(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V

    .line 222
    .line 223
    .line 224
    return v9

    .line 225
    :pswitch_4
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 226
    .line 227
    if-nez v7, :cond_15

    .line 228
    .line 229
    and-int/lit8 v3, v4, 0x1

    .line 230
    .line 231
    if-eqz v3, :cond_9

    .line 232
    .line 233
    if-nez v1, :cond_8

    .line 234
    .line 235
    goto/16 :goto_6

    .line 236
    .line 237
    :cond_8
    const-string p0, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 238
    .line 239
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return v0

    .line 243
    :cond_9
    rem-int/lit8 v3, v1, 0x6

    .line 244
    .line 245
    if-nez v3, :cond_14

    .line 246
    .line 247
    new-instance v3, Lokhttp3/internal/http2/Settings;

    .line 248
    .line 249
    invoke-direct {v3}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    const/4 v4, 0x6

    .line 257
    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iget v4, v1, Lkotlin/ranges/IntProgression;->first:I

    .line 262
    .line 263
    iget v5, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 264
    .line 265
    iget v1, v1, Lkotlin/ranges/IntProgression;->step:I

    .line 266
    .line 267
    if-lez v1, :cond_a

    .line 268
    .line 269
    if-le v4, v5, :cond_b

    .line 270
    .line 271
    :cond_a
    if-gez v1, :cond_13

    .line 272
    .line 273
    if-gt v5, v4, :cond_13

    .line 274
    .line 275
    :cond_b
    :goto_2
    invoke-interface {p0}, Lokio/BufferedSource;->readShort()S

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    sget-object v7, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 280
    .line 281
    const v7, 0xffff

    .line 282
    .line 283
    .line 284
    and-int/2addr v6, v7

    .line 285
    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    const/4 v8, 0x2

    .line 290
    if-eq v6, v8, :cond_10

    .line 291
    .line 292
    if-eq v6, v10, :cond_e

    .line 293
    .line 294
    if-eq v6, p1, :cond_c

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_c
    if-lt v7, v2, :cond_d

    .line 298
    .line 299
    const v8, 0xffffff

    .line 300
    .line 301
    .line 302
    if-gt v7, v8, :cond_d

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_d
    const-string p0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    .line 306
    .line 307
    invoke-static {v7, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return v0

    .line 315
    :cond_e
    if-ltz v7, :cond_f

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_f
    const-string p0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 319
    .line 320
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    return v0

    .line 324
    :cond_10
    if-eqz v7, :cond_12

    .line 325
    .line 326
    if-ne v7, v9, :cond_11

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_11
    const-string p0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 330
    .line 331
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return v0

    .line 335
    :cond_12
    :goto_3
    invoke-virtual {v3, v6, v7}, Lokhttp3/internal/http2/Settings;->set(II)V

    .line 336
    .line 337
    .line 338
    if-eq v4, v5, :cond_13

    .line 339
    .line 340
    add-int/2addr v4, v1

    .line 341
    goto :goto_2

    .line 342
    :cond_13
    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    .line 345
    .line 346
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writerQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 347
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 354
    .line 355
    const-string v1, " applyAndAckSettings"

    .line 356
    .line 357
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    new-instance v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 362
    .line 363
    const/16 v1, 0x16

    .line 364
    .line 365
    invoke-direct {v0, p2, v3, v1}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 366
    .line 367
    .line 368
    invoke-static {p1, p0, v0}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 369
    .line 370
    .line 371
    return v9

    .line 372
    :cond_14
    const-string p0, "TYPE_SETTINGS length % 6 != 0: "

    .line 373
    .line 374
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    return v0

    .line 382
    :cond_15
    const-string p0, "TYPE_SETTINGS streamId != 0"

    .line 383
    .line 384
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    return v0

    .line 388
    :pswitch_5
    if-ne v1, v10, :cond_1c

    .line 389
    .line 390
    if-eqz v7, :cond_1b

    .line 391
    .line 392
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 393
    .line 394
    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    .line 395
    .line 396
    .line 397
    move-result p0

    .line 398
    sget-object p1, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    .line 399
    .line 400
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    array-length v1, p1

    .line 408
    move v2, v0

    .line 409
    :goto_4
    if-ge v2, v1, :cond_17

    .line 410
    .line 411
    aget-object v3, p1, v2

    .line 412
    .line 413
    invoke-virtual {v3}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-ne v4, p0, :cond_16

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_17
    const/4 v3, 0x0

    .line 424
    :goto_5
    if-eqz v3, :cond_1a

    .line 425
    .line 426
    iget-object p0, p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    .line 429
    .line 430
    if-eqz v7, :cond_18

    .line 431
    .line 432
    and-int/lit8 p1, v6, 0x1

    .line 433
    .line 434
    if-nez p1, :cond_18

    .line 435
    .line 436
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->pushQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 437
    .line 438
    new-instance p2, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .line 442
    .line 443
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const/16 v0, 0x5b

    .line 449
    .line 450
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string v0, "] onReset"

    .line 457
    .line 458
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p2

    .line 465
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda4;

    .line 466
    .line 467
    invoke-direct {v0, p0, v7, v3, v9}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda4;-><init>(Lokhttp3/internal/http2/Http2Connection;ILjava/lang/Object;I)V

    .line 468
    .line 469
    .line 470
    invoke-static {p1, p2, v0}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 471
    .line 472
    .line 473
    return v9

    .line 474
    :cond_18
    invoke-virtual {p0, v7}, Lokhttp3/internal/http2/Http2Connection;->removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;

    .line 475
    .line 476
    .line 477
    move-result-object p0

    .line 478
    if-eqz p0, :cond_19

    .line 479
    .line 480
    invoke-virtual {p0, v3}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 481
    .line 482
    .line 483
    :cond_19
    :goto_6
    return v9

    .line 484
    :cond_1a
    const-string p1, "TYPE_RST_STREAM unexpected error code: "

    .line 485
    .line 486
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p0

    .line 490
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    return v0

    .line 494
    :cond_1b
    const-string p0, "TYPE_RST_STREAM streamId == 0"

    .line 495
    .line 496
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    return v0

    .line 500
    :cond_1c
    const-string p0, "TYPE_RST_STREAM length: "

    .line 501
    .line 502
    const-string p1, " != 4"

    .line 503
    .line 504
    invoke-static {p0, v1, p1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object p0

    .line 508
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    return v0

    .line 512
    :pswitch_6
    if-ne v1, p1, :cond_1e

    .line 513
    .line 514
    if-eqz v7, :cond_1d

    .line 515
    .line 516
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 517
    .line 518
    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    .line 519
    .line 520
    .line 521
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    .line 522
    .line 523
    .line 524
    return v9

    .line 525
    :cond_1d
    const-string p0, "TYPE_PRIORITY streamId == 0"

    .line 526
    .line 527
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    return v0

    .line 531
    :cond_1e
    const-string p0, "TYPE_PRIORITY length: "

    .line 532
    .line 533
    const-string p1, " != 5"

    .line 534
    .line 535
    invoke-static {p0, v1, p1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object p0

    .line 539
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    return v0

    .line 543
    :pswitch_7
    invoke-virtual {p0, p2, v1, v5, v7}, Lokhttp3/internal/http2/Http2Reader;->readHeaders(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V

    .line 544
    .line 545
    .line 546
    return v9

    .line 547
    :pswitch_8
    invoke-virtual {p0, p2, v1, v5, v7}, Lokhttp3/internal/http2/Http2Reader;->readData(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V

    .line 548
    .line 549
    .line 550
    return v9

    .line 551
    :cond_1f
    const-string p0, "FRAME_SIZE_ERROR: "

    .line 552
    .line 553
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object p0

    .line 557
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    :catch_1
    return v0

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readData(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    if-eqz v3, :cond_f

    .line 10
    .line 11
    and-int/lit8 v4, v2, 0x1

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    move v4, v6

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v6

    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    and-int/lit8 v7, v2, 0x20

    .line 21
    .line 22
    if-nez v7, :cond_e

    .line 23
    .line 24
    and-int/lit8 v7, v2, 0x8

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    iget-object v7, v0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 29
    .line 30
    invoke-interface {v7}, Lokio/BufferedSource;->readByte()B

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    sget-object v8, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 35
    .line 36
    and-int/lit16 v7, v7, 0xff

    .line 37
    .line 38
    :goto_1
    move/from16 v8, p2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const/4 v7, 0x0

    .line 42
    goto :goto_1

    .line 43
    :goto_2
    invoke-static {v8, v2, v7}, Lokhttp3/internal/http2/Http2Reader$Companion;->lengthWithoutPadding(III)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget-object v8, v0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 48
    .line 49
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object v9, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v9, Lokhttp3/internal/http2/Http2Connection;

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    and-int/lit8 v10, v3, 0x1

    .line 59
    .line 60
    if-nez v10, :cond_2

    .line 61
    .line 62
    move v10, v4

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    const/4 v10, 0x0

    .line 65
    :goto_3
    if-eqz v10, :cond_3

    .line 66
    .line 67
    new-instance v4, Lokio/Buffer;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    int-to-long v10, v2

    .line 73
    invoke-interface {v8, v10, v11}, Lokio/BufferedSource;->require(J)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v8, v10, v11, v4}, Lokio/Source;->read(JLokio/Buffer;)J

    .line 77
    .line 78
    .line 79
    iget-object v8, v9, Lokhttp3/internal/http2/Http2Connection;->pushQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v5, v9, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const/16 v5, 0x5b

    .line 92
    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v5, "] onData"

    .line 100
    .line 101
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda3;

    .line 109
    .line 110
    move v5, v2

    .line 111
    move-object v2, v9

    .line 112
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda3;-><init>(Lokhttp3/internal/http2/Http2Connection;ILokio/Buffer;IZ)V

    .line 113
    .line 114
    .line 115
    invoke-static {v8, v10, v1}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_a

    .line 119
    .line 120
    :cond_3
    invoke-virtual {v9, v3}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    if-nez v9, :cond_4

    .line 125
    .line 126
    iget-object v4, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v4, Lokhttp3/internal/http2/Http2Connection;

    .line 129
    .line 130
    sget-object v5, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 131
    .line 132
    invoke-virtual {v4, v3, v5}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    .line 138
    .line 139
    int-to-long v2, v2

    .line 140
    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl$okhttp(J)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v8, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :cond_4
    sget-object v1, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 149
    .line 150
    iget-object v1, v9, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 151
    .line 152
    int-to-long v2, v2

    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    move-wide v10, v2

    .line 157
    :goto_4
    const-wide/16 v12, 0x0

    .line 158
    .line 159
    cmp-long v14, v10, v12

    .line 160
    .line 161
    iget-object v15, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 162
    .line 163
    if-lez v14, :cond_c

    .line 164
    .line 165
    monitor-enter v15

    .line 166
    :try_start_0
    iget-boolean v14, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 167
    .line 168
    iget-object v5, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    .line 169
    .line 170
    move-wide/from16 p1, v12

    .line 171
    .line 172
    iget-wide v12, v5, Lokio/Buffer;->size:J

    .line 173
    .line 174
    add-long/2addr v12, v10

    .line 175
    iget-wide v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    .line 177
    cmp-long v4, v12, v4

    .line 178
    .line 179
    if-lez v4, :cond_5

    .line 180
    .line 181
    const/4 v4, 0x1

    .line 182
    goto :goto_5

    .line 183
    :cond_5
    const/4 v4, 0x0

    .line 184
    :goto_5
    monitor-exit v15

    .line 185
    if-eqz v4, :cond_6

    .line 186
    .line 187
    invoke-interface {v8, v10, v11}, Lokio/BufferedSource;->skip(J)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 191
    .line 192
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 195
    .line 196
    .line 197
    goto :goto_9

    .line 198
    :cond_6
    if-eqz v14, :cond_7

    .line 199
    .line 200
    invoke-interface {v8, v10, v11}, Lokio/BufferedSource;->skip(J)V

    .line 201
    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_7
    iget-object v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 205
    .line 206
    invoke-interface {v8, v10, v11, v4}, Lokio/Source;->read(JLokio/Buffer;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v4

    .line 210
    const-wide/16 v12, -0x1

    .line 211
    .line 212
    cmp-long v12, v4, v12

    .line 213
    .line 214
    if-eqz v12, :cond_b

    .line 215
    .line 216
    sub-long/2addr v10, v4

    .line 217
    iget-object v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 218
    .line 219
    monitor-enter v4

    .line 220
    :try_start_1
    iget-boolean v5, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 221
    .line 222
    if-eqz v5, :cond_8

    .line 223
    .line 224
    iget-object v5, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 225
    .line 226
    iget-wide v12, v5, Lokio/Buffer;->size:J

    .line 227
    .line 228
    invoke-virtual {v5, v12, v13}, Lokio/Buffer;->skip(J)V

    .line 229
    .line 230
    .line 231
    goto :goto_7

    .line 232
    :catchall_0
    move-exception v0

    .line 233
    goto :goto_8

    .line 234
    :cond_8
    iget-object v5, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    .line 235
    .line 236
    iget-wide v12, v5, Lokio/Buffer;->size:J

    .line 237
    .line 238
    cmp-long v12, v12, p1

    .line 239
    .line 240
    if-nez v12, :cond_9

    .line 241
    .line 242
    const/4 v12, 0x1

    .line 243
    goto :goto_6

    .line 244
    :cond_9
    const/4 v12, 0x0

    .line 245
    :goto_6
    iget-object v13, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 246
    .line 247
    invoke-virtual {v5, v13}, Lokio/Buffer;->writeAll(Lokio/Source;)V

    .line 248
    .line 249
    .line 250
    if-eqz v12, :cond_a

    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    .line 254
    .line 255
    :cond_a
    :goto_7
    monitor-exit v4

    .line 256
    const/4 v4, 0x1

    .line 257
    goto :goto_4

    .line 258
    :goto_8
    monitor-exit v4

    .line 259
    throw v0

    .line 260
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    monitor-exit v15

    .line 268
    throw v0

    .line 269
    :cond_c
    sget-object v4, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 270
    .line 271
    iget-object v4, v15, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 272
    .line 273
    invoke-virtual {v4, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl$okhttp(J)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 277
    .line 278
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 279
    .line 280
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->flowControlListener:Lokhttp3/internal/http2/FlowControlListener$None;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    :goto_9
    if-eqz v6, :cond_d

    .line 286
    .line 287
    sget-object v1, Lokhttp3/Headers;->EMPTY:Lokhttp3/Headers;

    .line 288
    .line 289
    const/4 v4, 0x1

    .line 290
    invoke-virtual {v9, v1, v4}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    .line 291
    .line 292
    .line 293
    :cond_d
    :goto_a
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 294
    .line 295
    int-to-long v1, v7

    .line 296
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_e
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 301
    .line 302
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_f
    const-string v0, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 307
    .line 308
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    return-void
.end method

.method public final readGoAway(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;II)V
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-lt p2, v0, :cond_7

    .line 4
    .line 5
    if-nez p3, :cond_6

    .line 6
    .line 7
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 8
    .line 9
    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 14
    .line 15
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-int/2addr p2, v0

    .line 20
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    array-length v2, v0

    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    :goto_0
    if-ge v4, v2, :cond_1

    .line 33
    .line 34
    aget-object v5, v0, v4

    .line 35
    .line 36
    invoke-virtual {v5}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ne v6, v1, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v5, 0x0

    .line 47
    :goto_1
    if-eqz v5, :cond_5

    .line 48
    .line 49
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 50
    .line 51
    if-lez p2, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 54
    .line 55
    int-to-long v0, p2

    .line 56
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lokio/ByteString;->getSize$okio()I

    .line 64
    .line 65
    .line 66
    iget-object p0, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    .line 69
    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    new-array v0, v3, [Lokhttp3/internal/http2/Http2Stream;

    .line 78
    .line 79
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    monitor-exit p0

    .line 87
    check-cast p2, [Lokhttp3/internal/http2/Http2Stream;

    .line 88
    .line 89
    array-length p0, p2

    .line 90
    :goto_2
    if-ge v3, p0, :cond_4

    .line 91
    .line 92
    aget-object v0, p2, v3

    .line 93
    .line 94
    iget v1, v0, Lokhttp3/internal/http2/Http2Stream;->id:I

    .line 95
    .line 96
    if-le v1, p3, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    .line 112
    .line 113
    iget v0, v0, Lokhttp3/internal/http2/Http2Stream;->id:I

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lokhttp3/internal/http2/Http2Connection;->removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;

    .line 116
    .line 117
    .line 118
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    return-void

    .line 122
    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    .line 124
    throw p1

    .line 125
    :cond_5
    const-string p0, "TYPE_GOAWAY unexpected error code: "

    .line 126
    .line 127
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_6
    const-string p0, "TYPE_GOAWAY streamId != 0"

    .line 136
    .line 137
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_7
    const-string p0, "TYPE_GOAWAY length < 8: "

    .line 142
    .line 143
    invoke-static {p2, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final readHeaderBlock(IIII)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 2
    .line 3
    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    .line 4
    .line 5
    iput p2, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:I

    .line 6
    .line 7
    iput p3, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:I

    .line 8
    .line 9
    iput p4, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 10
    .line 11
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    .line 12
    .line 13
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/RealBufferedSource;

    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lokio/RealBufferedSource;->exhausted()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_c

    .line 20
    .line 21
    invoke-virtual {p1}, Lokio/RealBufferedSource;->readByte()B

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sget-object p3, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 26
    .line 27
    and-int/lit16 p3, p2, 0xff

    .line 28
    .line 29
    const/4 p4, 0x0

    .line 30
    const/16 v0, 0x80

    .line 31
    .line 32
    if-eq p3, v0, :cond_b

    .line 33
    .line 34
    and-int/lit16 v1, p2, 0x80

    .line 35
    .line 36
    if-ne v1, v0, :cond_3

    .line 37
    .line 38
    const/16 p2, 0x7f

    .line 39
    .line 40
    invoke-virtual {p0, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    add-int/lit8 p3, p2, -0x1

    .line 45
    .line 46
    if-ltz p3, :cond_1

    .line 47
    .line 48
    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 49
    .line 50
    array-length v1, v0

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    if-gt p3, v1, :cond_1

    .line 54
    .line 55
    aget-object p2, v0, p3

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/Hpack$Reader;->addHeader(Lokhttp3/internal/http2/Header;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 62
    .line 63
    array-length v0, v0

    .line 64
    sub-int/2addr p3, v0

    .line 65
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    add-int/2addr v0, p3

    .line 70
    if-ltz v0, :cond_2

    .line 71
    .line 72
    iget-object p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 73
    .line 74
    array-length v1, p3

    .line 75
    if-ge v0, v1, :cond_2

    .line 76
    .line 77
    aget-object p2, p3, v0

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/Hpack$Reader;->addHeader(Lokhttp3/internal/http2/Header;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const-string p0, "Header index too large "

    .line 87
    .line 88
    invoke-static {p2, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object p4

    .line 96
    :cond_3
    const/16 v0, 0x40

    .line 97
    .line 98
    if-ne p3, v0, :cond_4

    .line 99
    .line 100
    sget-object p2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 101
    .line 102
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p2}, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    new-instance p4, Lokhttp3/internal/http2/Header;

    .line 114
    .line 115
    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    and-int/lit8 v1, p2, 0x40

    .line 123
    .line 124
    if-ne v1, v0, :cond_5

    .line 125
    .line 126
    const/16 p2, 0x3f

    .line 127
    .line 128
    invoke-virtual {p0, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    add-int/lit8 p2, p2, -0x1

    .line 133
    .line 134
    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    new-instance p4, Lokhttp3/internal/http2/Header;

    .line 143
    .line 144
    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_5
    and-int/lit8 p2, p2, 0x20

    .line 153
    .line 154
    const/16 v0, 0x20

    .line 155
    .line 156
    if-ne p2, v0, :cond_8

    .line 157
    .line 158
    const/16 p2, 0x1f

    .line 159
    .line 160
    invoke-virtual {p0, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 165
    .line 166
    if-ltz p2, :cond_7

    .line 167
    .line 168
    const/16 p3, 0x1000

    .line 169
    .line 170
    if-gt p2, p3, :cond_7

    .line 171
    .line 172
    iget p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 173
    .line 174
    if-ge p2, p3, :cond_0

    .line 175
    .line 176
    if-nez p2, :cond_6

    .line 177
    .line 178
    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 179
    .line 180
    invoke-static {p2, p4}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Lcom/google/common/base/Joiner;)V

    .line 181
    .line 182
    .line 183
    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 184
    .line 185
    array-length p2, p2

    .line 186
    add-int/lit8 p2, p2, -0x1

    .line 187
    .line 188
    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 189
    .line 190
    const/4 p2, 0x0

    .line 191
    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 192
    .line 193
    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_6
    sub-int/2addr p3, p2

    .line 198
    invoke-virtual {p0, p3}, Lokhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 204
    .line 205
    iget p0, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 206
    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string p3, "Invalid dynamic table size update "

    .line 210
    .line 211
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p1

    .line 225
    :cond_8
    const/16 p2, 0x10

    .line 226
    .line 227
    if-eq p3, p2, :cond_a

    .line 228
    .line 229
    if-nez p3, :cond_9

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_9
    const/16 p2, 0xf

    .line 233
    .line 234
    invoke-virtual {p0, p3, p2}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    add-int/lit8 p2, p2, -0x1

    .line 239
    .line 240
    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/Hpack$Reader;->getName(I)Lokio/ByteString;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    .line 245
    .line 246
    .line 247
    move-result-object p3

    .line 248
    new-instance p4, Lokhttp3/internal/http2/Header;

    .line 249
    .line 250
    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->addHeader(Lokhttp3/internal/http2/Header;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_a
    :goto_1
    sget-object p2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 259
    .line 260
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    invoke-static {p2}, Lokhttp3/internal/http2/Hpack;->checkLowercase(Lokio/ByteString;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->readByteString()Lokio/ByteString;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    new-instance p4, Lokhttp3/internal/http2/Header;

    .line 272
    .line 273
    invoke-direct {p4, p2, p3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->addHeader(Lokhttp3/internal/http2/Header;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_b
    const-string p0, "index == 0"

    .line 282
    .line 283
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-object p4

    .line 287
    :cond_c
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 294
    .line 295
    .line 296
    const-wide/16 p3, 0x0

    .line 297
    .line 298
    iput-wide p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerListByteCount:J

    .line 299
    .line 300
    return-object p2
.end method

.method public final readHeaders(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V
    .locals 9

    .line 1
    if-eqz p4, :cond_9

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v7, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v7, v1

    .line 12
    :goto_0
    and-int/lit8 v0, p3, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 17
    .line 18
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget-object v3, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 23
    .line 24
    and-int/lit16 v0, v0, 0xff

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_1
    and-int/lit8 v3, p3, 0x20

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 33
    .line 34
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 35
    .line 36
    .line 37
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 38
    .line 39
    .line 40
    sget-object v3, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 41
    .line 42
    add-int/lit8 p2, p2, -0x5

    .line 43
    .line 44
    :cond_2
    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader$Companion;->lengthWithoutPadding(III)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(IIII)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 53
    .line 54
    move-object v5, p1

    .line 55
    check-cast v5, Lokhttp3/internal/http2/Http2Connection;

    .line 56
    .line 57
    if-eqz p4, :cond_3

    .line 58
    .line 59
    and-int/lit8 p1, p4, 0x1

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    move v1, v2

    .line 64
    :cond_3
    const/16 p1, 0x5b

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    iget-object p2, v5, Lokhttp3/internal/http2/Http2Connection;->pushQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 69
    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, "] onHeaders"

    .line 87
    .line 88
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance p3, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda4;

    .line 96
    .line 97
    invoke-direct {p3, v5, p4, p0, v7}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda4;-><init>(Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V

    .line 98
    .line 99
    .line 100
    invoke-static {p2, p1, p3}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    monitor-enter v5

    .line 105
    :try_start_0
    invoke-virtual {v5, p4}, Lokhttp3/internal/http2/Http2Connection;->getStream(I)Lokhttp3/internal/http2/Http2Stream;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    if-nez p2, :cond_8

    .line 110
    .line 111
    iget-boolean p2, v5, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    if-eqz p2, :cond_5

    .line 114
    .line 115
    monitor-exit v5

    .line 116
    return-void

    .line 117
    :cond_5
    :try_start_1
    iget p2, v5, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    if-gt p4, p2, :cond_6

    .line 120
    .line 121
    monitor-exit v5

    .line 122
    return-void

    .line 123
    :cond_6
    :try_start_2
    rem-int/lit8 p2, p4, 0x2

    .line 124
    .line 125
    iget p3, v5, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 126
    .line 127
    rem-int/lit8 p3, p3, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    if-ne p2, p3, :cond_7

    .line 130
    .line 131
    monitor-exit v5

    .line 132
    return-void

    .line 133
    :cond_7
    :try_start_3
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    new-instance v3, Lokhttp3/internal/http2/Http2Stream;

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    move v4, p4

    .line 141
    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 142
    .line 143
    .line 144
    iput v4, v5, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 145
    .line 146
    iget-object p0, v5, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/LinkedHashMap;

    .line 147
    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-interface {p0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    iget-object p0, v5, Lokhttp3/internal/http2/Http2Connection;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 156
    .line 157
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object p3, v5, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p1, "] onStream"

    .line 178
    .line 179
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    new-instance p2, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 187
    .line 188
    const/16 p3, 0x15

    .line 189
    .line 190
    invoke-direct {p2, v5, v3, p3}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 191
    .line 192
    .line 193
    invoke-static {p0, p1, p2}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    .line 195
    .line 196
    monitor-exit v5

    .line 197
    return-void

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    move-object p0, v0

    .line 200
    goto :goto_2

    .line 201
    :cond_8
    monitor-exit v5

    .line 202
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->toHeaders(Ljava/util/List;)Lokhttp3/Headers;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p2, p0, v7}, Lokhttp3/internal/http2/Http2Stream;->receiveHeaders(Lokhttp3/Headers;Z)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :goto_2
    monitor-exit v5

    .line 211
    throw p0

    .line 212
    :cond_9
    const-string p0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 213
    .line 214
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public final readPing(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p2, v0, :cond_6

    .line 4
    .line 5
    if-nez p4, :cond_5

    .line 6
    .line 7
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 8
    .line 9
    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 14
    .line 15
    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 p4, 0x1

    .line 20
    and-int/2addr p3, p4

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    move p3, p4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p3, 0x0

    .line 26
    :goto_0
    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 29
    .line 30
    if-eqz p3, :cond_4

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    const-wide/16 p0, 0x1

    .line 34
    .line 35
    if-eq p2, p4, :cond_3

    .line 36
    .line 37
    const/4 p3, 0x2

    .line 38
    if-eq p2, p3, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    if-eq p2, p0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iget-wide p2, v0, Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    .line 51
    .line 52
    add-long/2addr p2, p0

    .line 53
    iput-wide p2, v0, Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget-wide p2, v0, Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    .line 57
    .line 58
    add-long/2addr p2, p0

    .line 59
    iput-wide p2, v0, Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    :goto_1
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_2
    monitor-exit v0

    .line 64
    throw p0

    .line 65
    :cond_4
    iget-object p3, v0, Lokhttp3/internal/http2/Http2Connection;->writerQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 66
    .line 67
    new-instance p4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 75
    .line 76
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 77
    .line 78
    const-string v1, " ping"

    .line 79
    .line 80
    invoke-static {p4, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lokhttp3/internal/http2/Http2Connection;

    .line 87
    .line 88
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    invoke-direct {v0, p1, p2, p0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$$ExternalSyntheticLambda0;-><init>(Lokhttp3/internal/http2/Http2Connection;II)V

    .line 91
    .line 92
    .line 93
    invoke-static {p3, p4, v0}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    const-string p0, "TYPE_PING streamId != 0"

    .line 98
    .line 99
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_6
    const-string p0, "TYPE_PING length != 8: "

    .line 104
    .line 105
    invoke-static {p2, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final readPushPromise(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V
    .locals 4

    .line 1
    if-eqz p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x8

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 9
    .line 10
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 21
    .line 22
    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const v3, 0x7fffffff

    .line 27
    .line 28
    .line 29
    and-int/2addr v2, v3

    .line 30
    add-int/lit8 p2, p2, -0x4

    .line 31
    .line 32
    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader$Companion;->lengthWithoutPadding(III)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(IIII)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lokhttp3/internal/http2/Http2Connection;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/LinkedHashSet;

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 58
    .line 59
    invoke-virtual {p1, v2, p0}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    monitor-exit p1

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :try_start_1
    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p1

    .line 76
    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection;->pushQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 77
    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object p4, p1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 p4, 0x5b

    .line 89
    .line 90
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p4, "] onRequest"

    .line 97
    .line 98
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    new-instance p4, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda4;

    .line 106
    .line 107
    invoke-direct {p4, p1, v2, p0, v1}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda4;-><init>(Lokhttp3/internal/http2/Http2Connection;ILjava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    invoke-static {p2, p3, p4}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :goto_1
    monitor-exit p1

    .line 115
    throw p0

    .line 116
    :cond_2
    const-string p0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 117
    .line 118
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method
