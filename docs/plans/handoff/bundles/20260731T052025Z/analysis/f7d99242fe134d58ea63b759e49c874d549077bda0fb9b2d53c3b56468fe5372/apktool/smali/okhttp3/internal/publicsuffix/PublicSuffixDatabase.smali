.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final PREVAILING_RULE:Ljava/util/List;

.field public static final WILDCARD_LABEL:Lokio/ByteString;

.field public static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field public final publicSuffixList:Lcom/eygraber/uri/Uri$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [B

    .line 5
    .line 6
    const/16 v2, 0x2a

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-byte v2, v1, v3

    .line 10
    .line 11
    new-instance v2, Lokio/ByteString;

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v2, v0}, Lokio/ByteString;-><init>([B)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:Lokio/ByteString;

    .line 21
    .line 22
    const-string v0, "*"

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    .line 29
    .line 30
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 31
    .line 32
    new-instance v1, Lcom/eygraber/uri/Uri$Builder;

    .line 33
    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/eygraber/uri/Uri$Builder;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>(Lcom/eygraber/uri/Uri$Builder;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/eygraber/uri/Uri$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixList:Lcom/eygraber/uri/Uri$Builder;

    .line 5
    .line 6
    return-void
.end method

.method public static splitDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/16 v1, 0x2e

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-char v1, v0, v2

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixList:Lcom/eygraber/uri/Uri$Builder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    move v1, v4

    .line 36
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/eygraber/uri/Uri$Builder;->readTheList()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception v2

    .line 52
    :try_start_1
    iput-object v2, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    move v1, v3

    .line 61
    goto :goto_0

    .line 62
    :goto_2
    if-eqz v1, :cond_0

    .line 63
    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 69
    .line 70
    .line 71
    :cond_0
    throw p0

    .line 72
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Lokio/ByteString;

    .line 90
    .line 91
    if-eqz v1, :cond_14

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    new-array v2, v1, [Lokio/ByteString;

    .line 98
    .line 99
    move v5, v4

    .line 100
    :goto_4
    if-ge v5, v1, :cond_3

    .line 101
    .line 102
    sget-object v6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 103
    .line 104
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v6}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    aput-object v6, v2, v5

    .line 115
    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_3
    move v5, v4

    .line 120
    :goto_5
    const-string v6, "bytes"

    .line 121
    .line 122
    const/4 v7, 0x0

    .line 123
    if-ge v5, v1, :cond_6

    .line 124
    .line 125
    iget-object v8, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v8, Lokio/ByteString;

    .line 128
    .line 129
    if-eqz v8, :cond_5

    .line 130
    .line 131
    invoke-static {v8, v2, v5}, Landroidx/collection/internal/Lock;->access$binarySearch(Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    if-eqz v8, :cond_4

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v7

    .line 145
    :cond_6
    move-object v8, v7

    .line 146
    :goto_6
    if-le v1, v3, :cond_9

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, [Lokio/ByteString;

    .line 153
    .line 154
    array-length v9, v5

    .line 155
    sub-int/2addr v9, v3

    .line 156
    move v10, v4

    .line 157
    :goto_7
    if-ge v10, v9, :cond_9

    .line 158
    .line 159
    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:Lokio/ByteString;

    .line 160
    .line 161
    aput-object v11, v5, v10

    .line 162
    .line 163
    iget-object v11, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v11, Lokio/ByteString;

    .line 166
    .line 167
    if-eqz v11, :cond_8

    .line 168
    .line 169
    invoke-static {v11, v5, v10}, Landroidx/collection/internal/Lock;->access$binarySearch(Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    if-eqz v11, :cond_7

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v7

    .line 183
    :cond_9
    move-object v11, v7

    .line 184
    :goto_8
    if-eqz v11, :cond_c

    .line 185
    .line 186
    sub-int/2addr v1, v3

    .line 187
    move v5, v4

    .line 188
    :goto_9
    if-ge v5, v1, :cond_c

    .line 189
    .line 190
    iget-object v6, p0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v6, Lokio/ByteString;

    .line 193
    .line 194
    if-eqz v6, :cond_b

    .line 195
    .line 196
    invoke-static {v6, v2, v5}, Landroidx/collection/internal/Lock;->access$binarySearch(Lokio/ByteString;[Lokio/ByteString;I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    if-eqz v6, :cond_a

    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 204
    .line 205
    goto :goto_9

    .line 206
    :cond_b
    const-string p0, "exceptionBytes"

    .line 207
    .line 208
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v7

    .line 212
    :cond_c
    move-object v6, v7

    .line 213
    :goto_a
    const/16 p0, 0x2e

    .line 214
    .line 215
    if-eqz v6, :cond_d

    .line 216
    .line 217
    const-string v1, "!"

    .line 218
    .line 219
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    new-array v2, v3, [C

    .line 224
    .line 225
    aput-char p0, v2, v4

    .line 226
    .line 227
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    goto :goto_c

    .line 232
    :cond_d
    if-nez v8, :cond_e

    .line 233
    .line 234
    if-nez v11, :cond_e

    .line 235
    .line 236
    sget-object p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_e
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 240
    .line 241
    if-eqz v8, :cond_f

    .line 242
    .line 243
    new-array v2, v3, [C

    .line 244
    .line 245
    aput-char p0, v2, v4

    .line 246
    .line 247
    invoke-static {v8, v2}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    goto :goto_b

    .line 252
    :cond_f
    move-object v2, v1

    .line 253
    :goto_b
    if-eqz v11, :cond_10

    .line 254
    .line 255
    new-array v1, v3, [C

    .line 256
    .line 257
    aput-char p0, v1, v4

    .line 258
    .line 259
    invoke-static {v11, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-le p0, v5, :cond_11

    .line 272
    .line 273
    move-object p0, v2

    .line 274
    goto :goto_c

    .line 275
    :cond_11
    move-object p0, v1

    .line 276
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    const/16 v5, 0x21

    .line 285
    .line 286
    if-ne v1, v2, :cond_12

    .line 287
    .line 288
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    check-cast v1, Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eq v1, v5, :cond_12

    .line 299
    .line 300
    return-object v7

    .line 301
    :cond_12
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-ne v1, v5, :cond_13

    .line 312
    .line 313
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    :goto_d
    sub-int/2addr v0, p0

    .line 322
    goto :goto_e

    .line 323
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    add-int/2addr p0, v3

    .line 332
    goto :goto_d

    .line 333
    :goto_e
    invoke-static {p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    new-instance p1, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 338
    .line 339
    const/4 v1, 0x2

    .line 340
    invoke-direct {p1, v1, p0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->drop(Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;I)Lkotlin/sequences/Sequence;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    const-string p1, "."

    .line 348
    .line 349
    const/16 v0, 0x3e

    .line 350
    .line 351
    invoke-static {p0, p1, v0}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/String;I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    return-object p0

    .line 356
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 357
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v1, "Unable to load "

    .line 361
    .line 362
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v1, p0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v1, Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v1, " resource."

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast p0, Ljava/io/IOException;

    .line 387
    .line 388
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 389
    .line 390
    .line 391
    throw p1
.end method
