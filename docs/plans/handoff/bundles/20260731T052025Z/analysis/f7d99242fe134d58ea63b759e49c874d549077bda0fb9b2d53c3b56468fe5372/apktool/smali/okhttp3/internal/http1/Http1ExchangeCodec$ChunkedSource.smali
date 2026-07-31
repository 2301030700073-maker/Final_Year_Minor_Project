.class public final Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;
.super Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public bytesRemainingInChunk:J

.field public hasMoreChunks:Z

.field public final synthetic this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;-><init>(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 p1, -0x1

    .line 10
    .line 11
    iput-wide p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lokhttp3/internal/_UtilJvmKt;->UTC:Ljava/util/TimeZone;

    .line 11
    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x64

    .line 18
    .line 19
    :try_start_0
    invoke-static {p0, v0}, Lokhttp3/internal/_UtilJvmKt;->skipAll(Lokio/Source;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 28
    .line 29
    iget-object v0, v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->carrier:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 30
    .line 31
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lokhttp3/internal/http1/Http1ExchangeCodec;->TRAILERS_RESPONSE_BODY_TRUNCATED:Lokhttp3/Headers;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->responseBodyComplete(Lokhttp3/Headers;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->closed:Z

    .line 41
    .line 42
    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    iget-object v3, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 6
    .line 7
    iget-object v4, v3, Lokhttp3/internal/http1/Http1ExchangeCodec;->socket:Lorg/slf4j/event/EventRecodingLogger;

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v7, v1, v5

    .line 15
    .line 16
    if-ltz v7, :cond_f

    .line 17
    .line 18
    iget-boolean v7, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->closed:Z

    .line 19
    .line 20
    if-nez v7, :cond_e

    .line 21
    .line 22
    iget-boolean v7, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 23
    .line 24
    const-wide/16 v8, -0x1

    .line 25
    .line 26
    if-nez v7, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    iget-wide v10, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 31
    .line 32
    cmp-long v7, v10, v5

    .line 33
    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    cmp-long v7, v10, v8

    .line 37
    .line 38
    if-nez v7, :cond_b

    .line 39
    .line 40
    :cond_1
    cmp-long v7, v10, v8

    .line 41
    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    iget-object v7, v4, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v7, Lokio/RealBufferedSource;

    .line 47
    .line 48
    invoke-virtual {v7}, Lokio/RealBufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    :cond_2
    :try_start_0
    iget-object v7, v4, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v7, Lokio/RealBufferedSource;

    .line 54
    .line 55
    iget-object v10, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 56
    .line 57
    const-wide/16 v11, 0x1

    .line 58
    .line 59
    invoke-virtual {v7, v11, v12}, Lokio/RealBufferedSource;->require(J)V

    .line 60
    .line 61
    .line 62
    const/4 v11, 0x0

    .line 63
    move v12, v11

    .line 64
    :goto_0
    add-int/lit8 v13, v12, 0x1

    .line 65
    .line 66
    int-to-long v14, v13

    .line 67
    invoke-virtual {v7, v14, v15}, Lokio/RealBufferedSource;->request(J)Z

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    if-eqz v14, :cond_8

    .line 72
    .line 73
    int-to-long v14, v12

    .line 74
    invoke-virtual {v10, v14, v15}, Lokio/Buffer;->getByte(J)B

    .line 75
    .line 76
    .line 77
    move-result v14

    .line 78
    const/16 v15, 0x30

    .line 79
    .line 80
    if-lt v14, v15, :cond_3

    .line 81
    .line 82
    const/16 v15, 0x39

    .line 83
    .line 84
    if-le v14, v15, :cond_5

    .line 85
    .line 86
    :cond_3
    const/16 v15, 0x61

    .line 87
    .line 88
    if-lt v14, v15, :cond_4

    .line 89
    .line 90
    const/16 v15, 0x66

    .line 91
    .line 92
    if-le v14, v15, :cond_5

    .line 93
    .line 94
    :cond_4
    const/16 v15, 0x41

    .line 95
    .line 96
    if-lt v14, v15, :cond_6

    .line 97
    .line 98
    const/16 v15, 0x46

    .line 99
    .line 100
    if-le v14, v15, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move v12, v13

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    :goto_1
    if-eqz v12, :cond_7

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 109
    .line 110
    const/16 v1, 0x10

    .line 111
    .line 112
    invoke-static {v1}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)V

    .line 113
    .line 114
    .line 115
    invoke-static {v14, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 123
    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :cond_8
    :goto_2
    invoke-virtual {v10}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    .line 133
    .line 134
    .line 135
    move-result-wide v12

    .line 136
    iput-wide v12, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 137
    .line 138
    iget-object v4, v4, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v4, Lokio/RealBufferedSource;

    .line 141
    .line 142
    const-wide v12, 0x7fffffffffffffffL

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v12, v13}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    iget-wide v12, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 160
    .line 161
    cmp-long v7, v12, v5

    .line 162
    .line 163
    if-ltz v7, :cond_d

    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-lez v7, :cond_9

    .line 170
    .line 171
    const-string v7, ";"

    .line 172
    .line 173
    invoke-static {v4, v7, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 174
    .line 175
    .line 176
    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    if-eqz v7, :cond_d

    .line 178
    .line 179
    :cond_9
    iget-wide v12, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 180
    .line 181
    cmp-long v4, v12, v5

    .line 182
    .line 183
    if-nez v4, :cond_a

    .line 184
    .line 185
    iput-boolean v11, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 186
    .line 187
    iget-object v4, v3, Lokhttp3/internal/http1/Http1ExchangeCodec;->headersReader:Lokhttp3/internal/http1/HeadersReader;

    .line 188
    .line 189
    invoke-virtual {v4}, Lokhttp3/internal/http1/HeadersReader;->readHeaders()Lokhttp3/Headers;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v0, v4}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->responseBodyComplete(Lokhttp3/Headers;)V

    .line 194
    .line 195
    .line 196
    :cond_a
    iget-boolean v4, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->hasMoreChunks:Z

    .line 197
    .line 198
    if-nez v4, :cond_b

    .line 199
    .line 200
    :goto_3
    return-wide v8

    .line 201
    :cond_b
    iget-wide v4, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 202
    .line 203
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 204
    .line 205
    .line 206
    move-result-wide v1

    .line 207
    move-object/from16 v4, p1

    .line 208
    .line 209
    invoke-super {v0, v4, v1, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->read(Lokio/Buffer;J)J

    .line 210
    .line 211
    .line 212
    move-result-wide v1

    .line 213
    cmp-long v4, v1, v8

    .line 214
    .line 215
    if-eqz v4, :cond_c

    .line 216
    .line 217
    iget-wide v3, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 218
    .line 219
    sub-long/2addr v3, v1

    .line 220
    iput-wide v3, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 221
    .line 222
    return-wide v1

    .line 223
    :cond_c
    iget-object v1, v3, Lokhttp3/internal/http1/Http1ExchangeCodec;->carrier:Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 224
    .line 225
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V

    .line 226
    .line 227
    .line 228
    new-instance v1, Ljava/net/ProtocolException;

    .line 229
    .line 230
    const-string v2, "unexpected end of stream"

    .line 231
    .line 232
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget-object v2, Lokhttp3/internal/http1/Http1ExchangeCodec;->TRAILERS_RESPONSE_BODY_TRUNCATED:Lokhttp3/Headers;

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;->responseBodyComplete(Lokhttp3/Headers;)V

    .line 238
    .line 239
    .line 240
    throw v1

    .line 241
    :cond_d
    :try_start_1
    new-instance v1, Ljava/net/ProtocolException;

    .line 242
    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v3, "expected chunk size and optional extensions but was \""

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget-wide v5, v0, Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;->bytesRemainingInChunk:J

    .line 254
    .line 255
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const/16 v0, 0x22

    .line 262
    .line 263
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    new-instance v1, Ljava/net/ProtocolException;

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v1

    .line 285
    :cond_e
    const-string v0, "closed"

    .line 286
    .line 287
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-wide v5

    .line 291
    :cond_f
    const-string v0, "byteCount < 0: "

    .line 292
    .line 293
    invoke-static {v1, v2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    return-wide v5
.end method
