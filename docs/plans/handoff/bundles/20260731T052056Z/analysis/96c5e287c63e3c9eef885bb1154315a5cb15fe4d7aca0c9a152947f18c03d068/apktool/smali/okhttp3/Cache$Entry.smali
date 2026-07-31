.class public final Lokhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final RECEIVED_MILLIS:Ljava/lang/String;

.field public static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field public final code:I

.field public final handshake:Lokhttp3/Handshake;

.field public final message:Ljava/lang/String;

.field public final protocol:Lokhttp3/Protocol;

.field public final receivedResponseMillis:J

.field public final requestMethod:Ljava/lang/String;

.field public final responseHeaders:Lokhttp3/Headers;

.field public final sentRequestMillis:J

.field public final url:Lokhttp3/HttpUrl;

.field public final varyHeaders:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 2
    .line 3
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "OkHttp-Sent-Millis"

    .line 9
    .line 10
    sput-object v0, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v0, "OkHttp-Received-Millis"

    .line 18
    .line 19
    sput-object v0, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 9

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iget-object v0, p1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 314
    iget-object v1, v0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 315
    iput-object v1, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 316
    iget-object v1, p1, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    .line 317
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    iget-object v1, v1, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 319
    iget-object v1, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 320
    iget-object v2, p1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 321
    invoke-static {v2}, Lokhttp3/Cache$Companion;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v3

    .line 322
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lokhttp3/Headers;->EMPTY:Lokhttp3/Headers;

    goto :goto_1

    .line 323
    :cond_0
    new-instance v4, Lokhttp3/Headers$Builder;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 324
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_2

    .line 325
    invoke-static {v1, v5}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    move-result-object v7

    .line 326
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 327
    invoke-static {v1, v5}, Lorg/jsoup/Jsoup;->commonValue(Lokhttp3/Headers;I)Ljava/lang/String;

    move-result-object v8

    .line 328
    invoke-virtual {v4, v7, v8}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 329
    :cond_2
    invoke-static {v4}, Lorg/jsoup/Jsoup;->commonBuild(Lokhttp3/Headers$Builder;)Lokhttp3/Headers;

    move-result-object v1

    .line 330
    :goto_1
    iput-object v1, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 331
    iget-object v0, v0, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 332
    iput-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 333
    iget-object v0, p1, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 334
    iput-object v0, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 335
    iget v0, p1, Lokhttp3/Response;->code:I

    .line 336
    iput v0, p0, Lokhttp3/Cache$Entry;->code:I

    .line 337
    iget-object v0, p1, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 338
    iput-object v0, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 339
    iput-object v2, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 340
    iget-object v0, p1, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    .line 341
    iput-object v0, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 342
    iget-wide v0, p1, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 343
    iput-wide v0, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 344
    iget-wide v0, p1, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 345
    iput-wide v0, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    return-void
.end method

.method public constructor <init>(Lokio/Source;)V
    .locals 12

    .line 1
    const-string v0, "Cache corruption for "

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v1, Lokio/RealBufferedSource;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 12
    .line 13
    .line 14
    const-wide v2, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    :try_start_1
    new-instance v7, Lokhttp3/HttpUrl$Builder;

    .line 26
    .line 27
    invoke-direct {v7, v5}, Lokhttp3/HttpUrl$Builder;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7, v6, v4}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 34
    .line 35
    .line 36
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-object v7, v6

    .line 39
    :goto_0
    if-eqz v7, :cond_7

    .line 40
    .line 41
    :try_start_2
    iput-object v7, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 50
    .line 51
    invoke-direct {v0, v5, v5}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/RealBufferedSource;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    move v7, v5

    .line 59
    :goto_1
    if-ge v7, v4, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v0, v8}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_0
    invoke-static {v0}, Lorg/jsoup/Jsoup;->commonBuild(Lokhttp3/Headers$Builder;)Lokhttp3/Headers;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v4, v0, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, Lokhttp3/Protocol;

    .line 91
    .line 92
    iput-object v4, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 93
    .line 94
    iget v4, v0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 95
    .line 96
    iput v4, p0, Lokhttp3/Cache$Entry;->code:I

    .line 97
    .line 98
    iget-object v0, v0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Ljava/lang/String;

    .line 101
    .line 102
    iput-object v0, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 103
    .line 104
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 105
    .line 106
    invoke-direct {v0, v5, v5}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/RealBufferedSource;)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    move v7, v5

    .line 114
    :goto_2
    if-ge v7, v4, :cond_1

    .line 115
    .line 116
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v0, v8}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v7, v7, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_1
    sget-object v4, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v4}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    sget-object v8, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v8}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-virtual {v0, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v8}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-wide/16 v10, 0x0

    .line 145
    .line 146
    if-eqz v7, :cond_2

    .line 147
    .line 148
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v7

    .line 152
    goto :goto_3

    .line 153
    :cond_2
    move-wide v7, v10

    .line 154
    :goto_3
    iput-wide v7, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 155
    .line 156
    if-eqz v9, :cond_3

    .line 157
    .line 158
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v10

    .line 162
    :cond_3
    iput-wide v10, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 163
    .line 164
    invoke-static {v0}, Lorg/jsoup/Jsoup;->commonBuild(Lokhttp3/Headers$Builder;)Lokhttp3/Headers;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 169
    .line 170
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 171
    .line 172
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->isHttps()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-gtz v4, :cond_5

    .line 187
    .line 188
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sget-object v4, Lokhttp3/CipherSuite;->Companion:Lokhttp3/CipherSuite$Companion;

    .line 193
    .line 194
    invoke-virtual {v4, v0}, Lokhttp3/CipherSuite$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/CipherSuite;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v1}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/RealBufferedSource;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-static {v1}, Lokhttp3/Cache$Entry;->readCertificateList(Lokio/RealBufferedSource;)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v1}, Lokio/RealBufferedSource;->exhausted()Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-nez v7, :cond_4

    .line 211
    .line 212
    sget-object v7, Lokhttp3/TlsVersion;->Companion:Lokhttp3/TlsVersion$Companion;

    .line 213
    .line 214
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {v1}, Lokhttp3/TlsVersion$Companion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    goto :goto_4

    .line 226
    :cond_4
    sget-object v1, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    .line 227
    .line 228
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    new-instance v3, Lokhttp3/Handshake;

    .line 236
    .line 237
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    new-instance v6, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 242
    .line 243
    invoke-direct {v6, v2, v5}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    .line 244
    .line 245
    .line 246
    invoke-direct {v3, v1, v0, v4, v6}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 247
    .line 248
    .line 249
    iput-object v3, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v2, "expected \"\" but was \""

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const/16 v0, 0x22

    .line 268
    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw p0

    .line 280
    :cond_6
    iput-object v6, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    .line 282
    :goto_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_7
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    .line 287
    .line 288
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 296
    .line 297
    sget-object v0, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 298
    .line 299
    const-string v1, "cache corruption"

    .line 300
    .line 301
    const/4 v2, 0x5

    .line 302
    invoke-virtual {v0, v1, v2, p0}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    :goto_6
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 307
    :catchall_1
    move-exception v0

    .line 308
    invoke-static {p1, p0}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    throw v0
.end method

.method public static readCertificateList(Lokio/RealBufferedSource;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-static {p0}, Lokhttp3/Cache$Companion;->readInt$okhttp(Lokio/RealBufferedSource;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 12
    .line 13
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    if-ge v4, v0, :cond_2

    .line 25
    .line 26
    const-wide v5, 0x7fffffffffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v5, v6}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    new-instance v6, Lokio/Buffer;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 41
    .line 42
    invoke-static {v5}, Lokio/ByteString$Companion;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v6, v5}, Lokio/Buffer;->write(Lokio/ByteString;)V

    .line 49
    .line 50
    .line 51
    new-instance v5, Lokio/Buffer$inputStream$1;

    .line 52
    .line 53
    invoke-direct {v5, v6, v3}, Lokio/Buffer$inputStream$1;-><init>(Lokio/BufferedSource;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 67
    .line 68
    const-string v0, "Corrupt certificate in cache entry"

    .line 69
    .line 70
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_2
    return-object v2

    .line 75
    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method public static writeCertList(Lokio/RealBufferedSink;Ljava/util/List;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 7
    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/security/cert/Certificate;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lokio/ByteString$Companion;->of$default([B)Lokio/ByteString;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void

    .line 55
    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final writeTo(Landroidx/compose/runtime/Latch;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lokhttp3/Cache$Entry;->url:Lokhttp3/HttpUrl;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/Cache$Entry;->handshake:Lokhttp3/Handshake;

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/Cache$Entry;->responseHeaders:Lokhttp3/Headers;

    .line 6
    .line 7
    iget-object v3, p0, Lokhttp3/Cache$Entry;->varyHeaders:Lokhttp3/Headers;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/Latch;->newSink(I)Lokio/Sink;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v5, Lokio/RealBufferedSink;

    .line 15
    .line 16
    invoke-direct {v5, p1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p1, v0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v5, p1}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 22
    .line 23
    .line 24
    const/16 p1, 0xa

    .line 25
    .line 26
    invoke-virtual {v5, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 27
    .line 28
    .line 29
    iget-object v6, p0, Lokhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    int-to-long v6, v6

    .line 42
    invoke-virtual {v5, v6, v7}, Lokio/RealBufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    .line 49
    .line 50
    .line 51
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    move v7, v4

    .line 53
    :goto_0
    const-string v8, ": "

    .line 54
    .line 55
    if-ge v7, v6, :cond_0

    .line 56
    .line 57
    :try_start_1
    invoke-static {v3, v7}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v5, v9}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v8}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v7}, Lorg/jsoup/Jsoup;->commonValue(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-interface {v5, v8}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 72
    .line 73
    .line 74
    invoke-interface {v5, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_0
    iget-object v3, p0, Lokhttp3/Cache$Entry;->protocol:Lokhttp3/Protocol;

    .line 84
    .line 85
    iget v6, p0, Lokhttp3/Cache$Entry;->code:I

    .line 86
    .line 87
    iget-object v7, p0, Lokhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    sget-object v10, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 101
    .line 102
    if-ne v3, v10, :cond_1

    .line 103
    .line 104
    const-string v3, "HTTP/1.0"

    .line 105
    .line 106
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    const-string v3, "HTTP/1.1"

    .line 111
    .line 112
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    :goto_1
    const/16 v3, 0x20

    .line 116
    .line 117
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v5, v3}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    add-int/lit8 v3, v3, 0x2

    .line 144
    .line 145
    int-to-long v6, v3

    .line 146
    invoke-virtual {v5, v6, v7}, Lokio/RealBufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    :goto_2
    if-ge v4, v3, :cond_2

    .line 157
    .line 158
    invoke-static {v2, v4}, Lorg/jsoup/Jsoup;->commonName(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v5, v6}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v8}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 166
    .line 167
    .line 168
    invoke-static {v2, v4}, Lorg/jsoup/Jsoup;->commonValue(Lokhttp3/Headers;I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    .line 174
    .line 175
    invoke-interface {v5, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 176
    .line 177
    .line 178
    add-int/lit8 v4, v4, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_2
    sget-object v2, Lokhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v5, v2}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v8}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 187
    .line 188
    .line 189
    iget-wide v2, p0, Lokhttp3/Cache$Entry;->sentRequestMillis:J

    .line 190
    .line 191
    invoke-interface {v5, v2, v3}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 192
    .line 193
    .line 194
    invoke-interface {v5, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 195
    .line 196
    .line 197
    sget-object v2, Lokhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v5, v2}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v8}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 203
    .line 204
    .line 205
    iget-wide v2, p0, Lokhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 206
    .line 207
    invoke-interface {v5, v2, v3}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 208
    .line 209
    .line 210
    invoke-interface {v5, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->isHttps()Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_3

    .line 218
    .line 219
    invoke-virtual {v5, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object p0, v1, Lokhttp3/Handshake;->cipherSuite:Lokhttp3/CipherSuite;

    .line 226
    .line 227
    iget-object p0, p0, Lokhttp3/CipherSuite;->javaName:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v5, p0}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-static {v5, p0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/RealBufferedSink;Ljava/util/List;)V

    .line 240
    .line 241
    .line 242
    iget-object p0, v1, Lokhttp3/Handshake;->localCertificates:Ljava/util/List;

    .line 243
    .line 244
    invoke-static {v5, p0}, Lokhttp3/Cache$Entry;->writeCertList(Lokio/RealBufferedSink;Ljava/util/List;)V

    .line 245
    .line 246
    .line 247
    iget-object p0, v1, Lokhttp3/Handshake;->tlsVersion:Lokhttp3/TlsVersion;

    .line 248
    .line 249
    invoke-virtual {p0}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-virtual {v5, p0}, Lokio/RealBufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    .line 258
    .line 259
    :cond_3
    invoke-virtual {v5}, Lokio/RealBufferedSink;->close()V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :goto_3
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    :catchall_1
    move-exception p1

    .line 265
    invoke-static {v5, p0}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    throw p1
.end method
