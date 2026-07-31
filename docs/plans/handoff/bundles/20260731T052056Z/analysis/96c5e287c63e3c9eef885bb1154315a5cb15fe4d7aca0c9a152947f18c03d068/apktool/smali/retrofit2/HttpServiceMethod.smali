.class public abstract Lretrofit2/HttpServiceMethod;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final callFactory:Lokhttp3/OkHttpClient;

.field public final requestFactory:Lretrofit2/RequestFactory;

.field public final responseConverter:Lretrofit2/Converter;


# direct methods
.method public constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/OkHttpClient;Lretrofit2/Converter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    iput-object p3, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    .line 9
    .line 10
    return-void
.end method

.method public static parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/HttpServiceMethod;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lretrofit2/RequestFactory$Builder;

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-direct {v2, v0, v3, v1}, Lretrofit2/RequestFactory$Builder;-><init>(Lretrofit2/Retrofit;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v2, Lretrofit2/RequestFactory$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    const/4 v5, 0x0

    .line 16
    move v6, v5

    .line 17
    :goto_0
    const-string v7, "HEAD"

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    if-ge v6, v4, :cond_12

    .line 21
    .line 22
    aget-object v10, v3, v6

    .line 23
    .line 24
    instance-of v11, v10, Lretrofit2/http/DELETE;

    .line 25
    .line 26
    if-eqz v11, :cond_0

    .line 27
    .line 28
    check-cast v10, Lretrofit2/http/DELETE;

    .line 29
    .line 30
    invoke-interface {v10}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    const-string v8, "DELETE"

    .line 35
    .line 36
    invoke-virtual {v2, v8, v7, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    instance-of v11, v10, Lretrofit2/http/GET;

    .line 42
    .line 43
    if-eqz v11, :cond_1

    .line 44
    .line 45
    check-cast v10, Lretrofit2/http/GET;

    .line 46
    .line 47
    invoke-interface {v10}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const-string v8, "GET"

    .line 52
    .line 53
    invoke-virtual {v2, v8, v7, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    instance-of v11, v10, Lretrofit2/http/HEAD;

    .line 59
    .line 60
    if-eqz v11, :cond_2

    .line 61
    .line 62
    check-cast v10, Lretrofit2/http/HEAD;

    .line 63
    .line 64
    invoke-interface {v10}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v2, v7, v8, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_2
    instance-of v7, v10, Lretrofit2/http/PATCH;

    .line 74
    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    check-cast v10, Lretrofit2/http/PATCH;

    .line 78
    .line 79
    invoke-interface {v10}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const-string v9, "PATCH"

    .line 84
    .line 85
    invoke-virtual {v2, v9, v7, v8}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_3
    instance-of v7, v10, Lretrofit2/http/POST;

    .line 91
    .line 92
    if-eqz v7, :cond_4

    .line 93
    .line 94
    check-cast v10, Lretrofit2/http/POST;

    .line 95
    .line 96
    invoke-interface {v10}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const-string v9, "POST"

    .line 101
    .line 102
    invoke-virtual {v2, v9, v7, v8}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_4
    instance-of v7, v10, Lretrofit2/http/PUT;

    .line 108
    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    check-cast v10, Lretrofit2/http/PUT;

    .line 112
    .line 113
    invoke-interface {v10}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    const-string v9, "PUT"

    .line 118
    .line 119
    invoke-virtual {v2, v9, v7, v8}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_5
    instance-of v7, v10, Lretrofit2/http/OPTIONS;

    .line 125
    .line 126
    if-eqz v7, :cond_6

    .line 127
    .line 128
    check-cast v10, Lretrofit2/http/OPTIONS;

    .line 129
    .line 130
    invoke-interface {v10}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    const-string v8, "OPTIONS"

    .line 135
    .line 136
    invoke-virtual {v2, v8, v7, v5}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_3

    .line 140
    .line 141
    :cond_6
    instance-of v7, v10, Lretrofit2/http/HTTP;

    .line 142
    .line 143
    if-eqz v7, :cond_7

    .line 144
    .line 145
    check-cast v10, Lretrofit2/http/HTTP;

    .line 146
    .line 147
    invoke-interface {v10}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-interface {v10}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-interface {v10}, Lretrofit2/http/HTTP;->hasBody()Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-virtual {v2, v7, v8, v9}, Lretrofit2/RequestFactory$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_3

    .line 163
    .line 164
    :cond_7
    instance-of v7, v10, Lretrofit2/http/Headers;

    .line 165
    .line 166
    if-eqz v7, :cond_d

    .line 167
    .line 168
    check-cast v10, Lretrofit2/http/Headers;

    .line 169
    .line 170
    invoke-interface {v10}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    array-length v11, v7

    .line 175
    if-eqz v11, :cond_c

    .line 176
    .line 177
    invoke-interface {v10}, Lretrofit2/http/Headers;->allowUnsafeNonAsciiValues()Z

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    new-instance v11, Lokhttp3/Headers$Builder;

    .line 182
    .line 183
    invoke-direct {v11, v5, v5}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 184
    .line 185
    .line 186
    array-length v12, v7

    .line 187
    move v13, v5

    .line 188
    :goto_1
    if-ge v13, v12, :cond_b

    .line 189
    .line 190
    aget-object v14, v7, v13

    .line 191
    .line 192
    const/16 v15, 0x3a

    .line 193
    .line 194
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    const/4 v9, -0x1

    .line 199
    if-eq v15, v9, :cond_a

    .line 200
    .line 201
    if-eqz v15, :cond_a

    .line 202
    .line 203
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    sub-int/2addr v9, v8

    .line 208
    if-eq v15, v9, :cond_a

    .line 209
    .line 210
    invoke-virtual {v14, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    add-int/lit8 v15, v15, 0x1

    .line 215
    .line 216
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v14

    .line 220
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    const-string v15, "Content-Type"

    .line 225
    .line 226
    invoke-virtual {v15, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    if-eqz v15, :cond_8

    .line 231
    .line 232
    :try_start_0
    sget-object v9, Lokhttp3/MediaType;->TYPE_SUBTYPE:Lkotlin/text/Regex;

    .line 233
    .line 234
    invoke-static {v14}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    iput-object v9, v2, Lretrofit2/RequestFactory$Builder;->contentType:Lokhttp3/MediaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-array v2, v8, [Ljava/lang/Object;

    .line 243
    .line 244
    aput-object v14, v2, v5

    .line 245
    .line 246
    const-string v3, "Malformed content type: %s"

    .line 247
    .line 248
    invoke-static {v1, v0, v3, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    throw v0

    .line 253
    :cond_8
    if-eqz v10, :cond_9

    .line 254
    .line 255
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {v9}, Lorg/jsoup/Jsoup;->headersCheckName(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v11, v9, v14}, Lorg/jsoup/Jsoup;->commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_9
    invoke-virtual {v11, v9, v14}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_a
    new-array v0, v8, [Ljava/lang/Object;

    .line 272
    .line 273
    aput-object v14, v0, v5

    .line 274
    .line 275
    const-string v2, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    .line 276
    .line 277
    const/4 v7, 0x0

    .line 278
    invoke-static {v1, v7, v2, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    throw v0

    .line 283
    :cond_b
    invoke-static {v11}, Lorg/jsoup/Jsoup;->commonBuild(Lokhttp3/Headers$Builder;)Lokhttp3/Headers;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    iput-object v7, v2, Lretrofit2/RequestFactory$Builder;->headers:Lokhttp3/Headers;

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_c
    const/4 v7, 0x0

    .line 291
    const-string v0, "@Headers annotation is empty."

    .line 292
    .line 293
    new-array v2, v5, [Ljava/lang/Object;

    .line 294
    .line 295
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    throw v0

    .line 300
    :cond_d
    const/4 v7, 0x0

    .line 301
    instance-of v9, v10, Lretrofit2/http/Multipart;

    .line 302
    .line 303
    const-string v11, "Only one encoding annotation is allowed."

    .line 304
    .line 305
    if-eqz v9, :cond_f

    .line 306
    .line 307
    iget-boolean v9, v2, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    .line 308
    .line 309
    if-nez v9, :cond_e

    .line 310
    .line 311
    iput-boolean v8, v2, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_e
    new-array v0, v5, [Ljava/lang/Object;

    .line 315
    .line 316
    invoke-static {v1, v7, v11, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    throw v0

    .line 321
    :cond_f
    instance-of v9, v10, Lretrofit2/http/FormUrlEncoded;

    .line 322
    .line 323
    if-eqz v9, :cond_11

    .line 324
    .line 325
    iget-boolean v9, v2, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    .line 326
    .line 327
    if-nez v9, :cond_10

    .line 328
    .line 329
    iput-boolean v8, v2, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_10
    new-array v0, v5, [Ljava/lang/Object;

    .line 333
    .line 334
    invoke-static {v1, v7, v11, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    throw v0

    .line 339
    :cond_11
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 340
    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :cond_12
    iget-object v4, v2, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    .line 344
    .line 345
    if-eqz v4, :cond_80

    .line 346
    .line 347
    iget-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    .line 348
    .line 349
    if-nez v4, :cond_15

    .line 350
    .line 351
    iget-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    .line 352
    .line 353
    if-nez v4, :cond_14

    .line 354
    .line 355
    iget-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    .line 356
    .line 357
    if-nez v4, :cond_13

    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_13
    const-string v0, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    .line 361
    .line 362
    new-array v2, v5, [Ljava/lang/Object;

    .line 363
    .line 364
    const/4 v7, 0x0

    .line 365
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    throw v0

    .line 370
    :cond_14
    const/4 v7, 0x0

    .line 371
    const-string v0, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    .line 372
    .line 373
    new-array v2, v5, [Ljava/lang/Object;

    .line 374
    .line 375
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    throw v0

    .line 380
    :cond_15
    :goto_4
    iget-object v4, v2, Lretrofit2/RequestFactory$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    .line 381
    .line 382
    array-length v6, v4

    .line 383
    new-array v9, v6, [Lretrofit2/Utils;

    .line 384
    .line 385
    iput-object v9, v2, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/Utils;

    .line 386
    .line 387
    add-int/lit8 v9, v6, -0x1

    .line 388
    .line 389
    move v10, v5

    .line 390
    :goto_5
    if-ge v10, v6, :cond_69

    .line 391
    .line 392
    iget-object v11, v2, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/Utils;

    .line 393
    .line 394
    iget-object v12, v2, Lretrofit2/RequestFactory$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    .line 395
    .line 396
    aget-object v12, v12, v10

    .line 397
    .line 398
    aget-object v13, v4, v10

    .line 399
    .line 400
    if-ne v10, v9, :cond_16

    .line 401
    .line 402
    move v14, v8

    .line 403
    goto :goto_6

    .line 404
    :cond_16
    move v14, v5

    .line 405
    :goto_6
    if-eqz v13, :cond_66

    .line 406
    .line 407
    array-length v15, v13

    .line 408
    const/16 v16, 0x0

    .line 409
    .line 410
    :goto_7
    if-ge v5, v15, :cond_65

    .line 411
    .line 412
    aget-object v8, v13, v5

    .line 413
    .line 414
    move-object/from16 v19, v4

    .line 415
    .line 416
    instance-of v4, v8, Lretrofit2/http/Url;

    .line 417
    .line 418
    move/from16 v20, v4

    .line 419
    .line 420
    const-string v4, "@Path parameters may not be used with @Url."

    .line 421
    .line 422
    move/from16 v21, v5

    .line 423
    .line 424
    const-class v5, Ljava/lang/String;

    .line 425
    .line 426
    if-eqz v20, :cond_1f

    .line 427
    .line 428
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 429
    .line 430
    .line 431
    iget-boolean v8, v2, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    .line 432
    .line 433
    if-nez v8, :cond_1e

    .line 434
    .line 435
    iget-boolean v8, v2, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    .line 436
    .line 437
    if-nez v8, :cond_1d

    .line 438
    .line 439
    iget-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    .line 440
    .line 441
    if-nez v4, :cond_1c

    .line 442
    .line 443
    iget-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    .line 444
    .line 445
    if-nez v4, :cond_1b

    .line 446
    .line 447
    iget-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    .line 448
    .line 449
    if-nez v4, :cond_1a

    .line 450
    .line 451
    iget-object v4, v2, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    .line 452
    .line 453
    if-nez v4, :cond_19

    .line 454
    .line 455
    const/4 v4, 0x1

    .line 456
    iput-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    .line 457
    .line 458
    const-class v4, Lokhttp3/HttpUrl;

    .line 459
    .line 460
    if-eq v12, v4, :cond_17

    .line 461
    .line 462
    if-eq v12, v5, :cond_17

    .line 463
    .line 464
    const-class v4, Ljava/net/URI;

    .line 465
    .line 466
    if-eq v12, v4, :cond_17

    .line 467
    .line 468
    instance-of v4, v12, Ljava/lang/Class;

    .line 469
    .line 470
    if-eqz v4, :cond_18

    .line 471
    .line 472
    move-object v4, v12

    .line 473
    check-cast v4, Ljava/lang/Class;

    .line 474
    .line 475
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    const-string v5, "android.net.Uri"

    .line 480
    .line 481
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-eqz v4, :cond_18

    .line 486
    .line 487
    :cond_17
    const/4 v5, 0x0

    .line 488
    goto :goto_8

    .line 489
    :cond_18
    const-string v0, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    .line 490
    .line 491
    const/4 v5, 0x0

    .line 492
    new-array v2, v5, [Ljava/lang/Object;

    .line 493
    .line 494
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    throw v0

    .line 499
    :goto_8
    new-instance v4, Lretrofit2/ParameterHandler$Headers;

    .line 500
    .line 501
    const/4 v8, 0x1

    .line 502
    invoke-direct {v4, v1, v10, v8}, Lretrofit2/ParameterHandler$Headers;-><init>(Ljava/lang/reflect/Method;II)V

    .line 503
    .line 504
    .line 505
    move/from16 v20, v6

    .line 506
    .line 507
    :goto_9
    move-object/from16 v23, v7

    .line 508
    .line 509
    move/from16 v24, v9

    .line 510
    .line 511
    move-object/from16 v25, v11

    .line 512
    .line 513
    move/from16 v22, v14

    .line 514
    .line 515
    move/from16 v26, v15

    .line 516
    .line 517
    goto/16 :goto_10

    .line 518
    .line 519
    :cond_19
    const/4 v5, 0x0

    .line 520
    const/4 v8, 0x1

    .line 521
    iget-object v0, v2, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    .line 522
    .line 523
    new-array v2, v8, [Ljava/lang/Object;

    .line 524
    .line 525
    aput-object v0, v2, v5

    .line 526
    .line 527
    const-string v0, "@Url cannot be used with @%s URL"

    .line 528
    .line 529
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    throw v0

    .line 534
    :cond_1a
    const/4 v5, 0x0

    .line 535
    const-string v0, "A @Url parameter must not come after a @QueryMap."

    .line 536
    .line 537
    new-array v2, v5, [Ljava/lang/Object;

    .line 538
    .line 539
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    throw v0

    .line 544
    :cond_1b
    const/4 v5, 0x0

    .line 545
    const-string v0, "A @Url parameter must not come after a @QueryName."

    .line 546
    .line 547
    new-array v2, v5, [Ljava/lang/Object;

    .line 548
    .line 549
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    throw v0

    .line 554
    :cond_1c
    const/4 v5, 0x0

    .line 555
    const-string v0, "A @Url parameter must not come after a @Query."

    .line 556
    .line 557
    new-array v2, v5, [Ljava/lang/Object;

    .line 558
    .line 559
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    throw v0

    .line 564
    :cond_1d
    const/4 v5, 0x0

    .line 565
    new-array v0, v5, [Ljava/lang/Object;

    .line 566
    .line 567
    invoke-static {v1, v10, v4, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    throw v0

    .line 572
    :cond_1e
    const/4 v5, 0x0

    .line 573
    const-string v0, "Multiple @Url method annotations found."

    .line 574
    .line 575
    new-array v2, v5, [Ljava/lang/Object;

    .line 576
    .line 577
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    throw v0

    .line 582
    :cond_1f
    move/from16 v20, v6

    .line 583
    .line 584
    instance-of v6, v8, Lretrofit2/http/Path;

    .line 585
    .line 586
    move/from16 v22, v6

    .line 587
    .line 588
    iget-object v6, v2, Lretrofit2/RequestFactory$Builder;->retrofit:Lretrofit2/Retrofit;

    .line 589
    .line 590
    if-eqz v22, :cond_27

    .line 591
    .line 592
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 593
    .line 594
    .line 595
    iget-boolean v5, v2, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    .line 596
    .line 597
    if-nez v5, :cond_26

    .line 598
    .line 599
    iget-boolean v5, v2, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    .line 600
    .line 601
    if-nez v5, :cond_25

    .line 602
    .line 603
    iget-boolean v5, v2, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    .line 604
    .line 605
    if-nez v5, :cond_24

    .line 606
    .line 607
    iget-boolean v5, v2, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    .line 608
    .line 609
    if-nez v5, :cond_23

    .line 610
    .line 611
    iget-object v4, v2, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    .line 612
    .line 613
    if-eqz v4, :cond_22

    .line 614
    .line 615
    const/4 v4, 0x1

    .line 616
    iput-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->gotPath:Z

    .line 617
    .line 618
    check-cast v8, Lretrofit2/http/Path;

    .line 619
    .line 620
    invoke-interface {v8}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    sget-object v5, Lretrofit2/RequestFactory$Builder;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    .line 625
    .line 626
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 631
    .line 632
    .line 633
    move-result v5

    .line 634
    if-eqz v5, :cond_21

    .line 635
    .line 636
    iget-object v5, v2, Lretrofit2/RequestFactory$Builder;->relativeUrlParamNames:Ljava/util/LinkedHashSet;

    .line 637
    .line 638
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v5

    .line 642
    if-eqz v5, :cond_20

    .line 643
    .line 644
    invoke-virtual {v6, v12, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 645
    .line 646
    .line 647
    new-instance v5, Lretrofit2/ParameterHandler$Path;

    .line 648
    .line 649
    iget-object v6, v2, Lretrofit2/RequestFactory$Builder;->method:Ljava/lang/reflect/Method;

    .line 650
    .line 651
    invoke-interface {v8}, Lretrofit2/http/Path;->encoded()Z

    .line 652
    .line 653
    .line 654
    move-result v8

    .line 655
    invoke-direct {v5, v6, v10, v4, v8}, Lretrofit2/ParameterHandler$Path;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Z)V

    .line 656
    .line 657
    .line 658
    move-object v4, v5

    .line 659
    goto/16 :goto_9

    .line 660
    .line 661
    :cond_20
    iget-object v0, v2, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    .line 662
    .line 663
    const/4 v2, 0x2

    .line 664
    new-array v2, v2, [Ljava/lang/Object;

    .line 665
    .line 666
    const/4 v5, 0x0

    .line 667
    aput-object v0, v2, v5

    .line 668
    .line 669
    const/4 v8, 0x1

    .line 670
    aput-object v4, v2, v8

    .line 671
    .line 672
    const-string v0, "URL \"%s\" does not contain \"{%s}\"."

    .line 673
    .line 674
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    throw v0

    .line 679
    :cond_21
    const/4 v2, 0x2

    .line 680
    const/4 v5, 0x0

    .line 681
    const/4 v8, 0x1

    .line 682
    sget-object v0, Lretrofit2/RequestFactory$Builder;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    new-array v2, v2, [Ljava/lang/Object;

    .line 689
    .line 690
    aput-object v0, v2, v5

    .line 691
    .line 692
    aput-object v4, v2, v8

    .line 693
    .line 694
    const-string v0, "@Path parameter name must match %s. Found: %s"

    .line 695
    .line 696
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    throw v0

    .line 701
    :cond_22
    const/4 v5, 0x0

    .line 702
    const/4 v8, 0x1

    .line 703
    iget-object v0, v2, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    .line 704
    .line 705
    new-array v2, v8, [Ljava/lang/Object;

    .line 706
    .line 707
    aput-object v0, v2, v5

    .line 708
    .line 709
    const-string v0, "@Path can only be used with relative url on @%s"

    .line 710
    .line 711
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    throw v0

    .line 716
    :cond_23
    const/4 v5, 0x0

    .line 717
    new-array v0, v5, [Ljava/lang/Object;

    .line 718
    .line 719
    invoke-static {v1, v10, v4, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    throw v0

    .line 724
    :cond_24
    const/4 v5, 0x0

    .line 725
    const-string v0, "A @Path parameter must not come after a @QueryMap."

    .line 726
    .line 727
    new-array v2, v5, [Ljava/lang/Object;

    .line 728
    .line 729
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    throw v0

    .line 734
    :cond_25
    const/4 v5, 0x0

    .line 735
    const-string v0, "A @Path parameter must not come after a @QueryName."

    .line 736
    .line 737
    new-array v2, v5, [Ljava/lang/Object;

    .line 738
    .line 739
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    throw v0

    .line 744
    :cond_26
    const/4 v5, 0x0

    .line 745
    const-string v0, "A @Path parameter must not come after a @Query."

    .line 746
    .line 747
    new-array v2, v5, [Ljava/lang/Object;

    .line 748
    .line 749
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    throw v0

    .line 754
    :cond_27
    instance-of v4, v8, Lretrofit2/http/Query;

    .line 755
    .line 756
    move/from16 v22, v4

    .line 757
    .line 758
    const-string v4, "<String>)"

    .line 759
    .line 760
    move/from16 v24, v9

    .line 761
    .line 762
    const-string v9, " must include generic type (e.g., "

    .line 763
    .line 764
    move-object/from16 v25, v11

    .line 765
    .line 766
    const-class v11, Ljava/lang/Iterable;

    .line 767
    .line 768
    if-eqz v22, :cond_2b

    .line 769
    .line 770
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 771
    .line 772
    .line 773
    check-cast v8, Lretrofit2/http/Query;

    .line 774
    .line 775
    invoke-interface {v8}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v5

    .line 779
    invoke-interface {v8}, Lretrofit2/http/Query;->encoded()Z

    .line 780
    .line 781
    .line 782
    move-result v8

    .line 783
    move/from16 v22, v14

    .line 784
    .line 785
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    move-result-object v14

    .line 789
    move/from16 v26, v15

    .line 790
    .line 791
    const/4 v15, 0x1

    .line 792
    iput-boolean v15, v2, Lretrofit2/RequestFactory$Builder;->gotQuery:Z

    .line 793
    .line 794
    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 795
    .line 796
    .line 797
    move-result v11

    .line 798
    if-eqz v11, :cond_29

    .line 799
    .line 800
    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    .line 801
    .line 802
    if-eqz v11, :cond_28

    .line 803
    .line 804
    move-object v4, v12

    .line 805
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 806
    .line 807
    const/4 v11, 0x0

    .line 808
    invoke-static {v11, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 813
    .line 814
    .line 815
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    .line 816
    .line 817
    const/4 v6, 0x2

    .line 818
    invoke-direct {v4, v6, v5, v8}, Lretrofit2/ParameterHandler$Field;-><init>(ILjava/lang/String;Z)V

    .line 819
    .line 820
    .line 821
    new-instance v5, Lretrofit2/ParameterHandler$1;

    .line 822
    .line 823
    invoke-direct {v5, v4, v11}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 824
    .line 825
    .line 826
    :goto_a
    move-object v4, v5

    .line 827
    :goto_b
    move-object/from16 v23, v7

    .line 828
    .line 829
    goto/16 :goto_10

    .line 830
    .line 831
    :cond_28
    const/4 v11, 0x0

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    .line 833
    .line 834
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    new-array v2, v11, [Ljava/lang/Object;

    .line 859
    .line 860
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    throw v0

    .line 865
    :cond_29
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    .line 866
    .line 867
    .line 868
    move-result v4

    .line 869
    if-eqz v4, :cond_2a

    .line 870
    .line 871
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 872
    .line 873
    .line 874
    move-result-object v4

    .line 875
    invoke-static {v4}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    .line 876
    .line 877
    .line 878
    move-result-object v4

    .line 879
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 880
    .line 881
    .line 882
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    .line 883
    .line 884
    const/4 v9, 0x2

    .line 885
    invoke-direct {v4, v9, v5, v8}, Lretrofit2/ParameterHandler$Field;-><init>(ILjava/lang/String;Z)V

    .line 886
    .line 887
    .line 888
    new-instance v5, Lretrofit2/ParameterHandler$1;

    .line 889
    .line 890
    const/4 v8, 0x1

    .line 891
    invoke-direct {v5, v4, v8}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 892
    .line 893
    .line 894
    goto :goto_a

    .line 895
    :cond_2a
    const/4 v9, 0x2

    .line 896
    invoke-virtual {v6, v12, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 897
    .line 898
    .line 899
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    .line 900
    .line 901
    invoke-direct {v4, v9, v5, v8}, Lretrofit2/ParameterHandler$Field;-><init>(ILjava/lang/String;Z)V

    .line 902
    .line 903
    .line 904
    goto :goto_b

    .line 905
    :cond_2b
    move/from16 v22, v14

    .line 906
    .line 907
    move/from16 v26, v15

    .line 908
    .line 909
    instance-of v14, v8, Lretrofit2/http/QueryName;

    .line 910
    .line 911
    if-eqz v14, :cond_2f

    .line 912
    .line 913
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 914
    .line 915
    .line 916
    check-cast v8, Lretrofit2/http/QueryName;

    .line 917
    .line 918
    invoke-interface {v8}, Lretrofit2/http/QueryName;->encoded()Z

    .line 919
    .line 920
    .line 921
    move-result v5

    .line 922
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 923
    .line 924
    .line 925
    move-result-object v8

    .line 926
    const/4 v15, 0x1

    .line 927
    iput-boolean v15, v2, Lretrofit2/RequestFactory$Builder;->gotQueryName:Z

    .line 928
    .line 929
    invoke-virtual {v11, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 930
    .line 931
    .line 932
    move-result v11

    .line 933
    if-eqz v11, :cond_2d

    .line 934
    .line 935
    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    .line 936
    .line 937
    if-eqz v11, :cond_2c

    .line 938
    .line 939
    move-object v4, v12

    .line 940
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 941
    .line 942
    const/4 v11, 0x0

    .line 943
    invoke-static {v11, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 948
    .line 949
    .line 950
    new-instance v4, Lretrofit2/ParameterHandler$QueryName;

    .line 951
    .line 952
    invoke-direct {v4, v5}, Lretrofit2/ParameterHandler$QueryName;-><init>(Z)V

    .line 953
    .line 954
    .line 955
    new-instance v5, Lretrofit2/ParameterHandler$1;

    .line 956
    .line 957
    invoke-direct {v5, v4, v11}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 958
    .line 959
    .line 960
    goto/16 :goto_a

    .line 961
    .line 962
    :cond_2c
    const/4 v11, 0x0

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    .line 964
    .line 965
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v2

    .line 979
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    new-array v2, v11, [Ljava/lang/Object;

    .line 990
    .line 991
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    throw v0

    .line 996
    :cond_2d
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    .line 997
    .line 998
    .line 999
    move-result v4

    .line 1000
    if-eqz v4, :cond_2e

    .line 1001
    .line 1002
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v4

    .line 1006
    invoke-static {v4}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1011
    .line 1012
    .line 1013
    new-instance v4, Lretrofit2/ParameterHandler$QueryName;

    .line 1014
    .line 1015
    invoke-direct {v4, v5}, Lretrofit2/ParameterHandler$QueryName;-><init>(Z)V

    .line 1016
    .line 1017
    .line 1018
    new-instance v5, Lretrofit2/ParameterHandler$1;

    .line 1019
    .line 1020
    const/4 v8, 0x1

    .line 1021
    invoke-direct {v5, v4, v8}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 1022
    .line 1023
    .line 1024
    goto/16 :goto_a

    .line 1025
    .line 1026
    :cond_2e
    invoke-virtual {v6, v12, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1027
    .line 1028
    .line 1029
    new-instance v4, Lretrofit2/ParameterHandler$QueryName;

    .line 1030
    .line 1031
    invoke-direct {v4, v5}, Lretrofit2/ParameterHandler$QueryName;-><init>(Z)V

    .line 1032
    .line 1033
    .line 1034
    goto/16 :goto_b

    .line 1035
    .line 1036
    :cond_2f
    instance-of v14, v8, Lretrofit2/http/QueryMap;

    .line 1037
    .line 1038
    const-string v15, "Map must include generic types (e.g., Map<String, String>)"

    .line 1039
    .line 1040
    move/from16 v27, v14

    .line 1041
    .line 1042
    const-class v14, Ljava/util/Map;

    .line 1043
    .line 1044
    if-eqz v27, :cond_33

    .line 1045
    .line 1046
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v4

    .line 1053
    const/4 v9, 0x1

    .line 1054
    iput-boolean v9, v2, Lretrofit2/RequestFactory$Builder;->gotQueryMap:Z

    .line 1055
    .line 1056
    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1057
    .line 1058
    .line 1059
    move-result v11

    .line 1060
    if-eqz v11, :cond_32

    .line 1061
    .line 1062
    invoke-static {v12, v4}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v4

    .line 1066
    instance-of v11, v4, Ljava/lang/reflect/ParameterizedType;

    .line 1067
    .line 1068
    if-eqz v11, :cond_31

    .line 1069
    .line 1070
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1071
    .line 1072
    const/4 v11, 0x0

    .line 1073
    invoke-static {v11, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v14

    .line 1077
    if-ne v5, v14, :cond_30

    .line 1078
    .line 1079
    invoke-static {v9, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v4

    .line 1083
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1084
    .line 1085
    .line 1086
    new-instance v4, Lretrofit2/ParameterHandler$FieldMap;

    .line 1087
    .line 1088
    check-cast v8, Lretrofit2/http/QueryMap;

    .line 1089
    .line 1090
    invoke-interface {v8}, Lretrofit2/http/QueryMap;->encoded()Z

    .line 1091
    .line 1092
    .line 1093
    move-result v5

    .line 1094
    const/4 v6, 0x2

    .line 1095
    invoke-direct {v4, v10, v6, v1, v5}, Lretrofit2/ParameterHandler$FieldMap;-><init>(IILjava/lang/reflect/Method;Z)V

    .line 1096
    .line 1097
    .line 1098
    goto/16 :goto_b

    .line 1099
    .line 1100
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    const-string v2, "@QueryMap keys must be of type String: "

    .line 1103
    .line 1104
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    const/4 v11, 0x0

    .line 1115
    new-array v2, v11, [Ljava/lang/Object;

    .line 1116
    .line 1117
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    throw v0

    .line 1122
    :cond_31
    const/4 v11, 0x0

    .line 1123
    new-array v0, v11, [Ljava/lang/Object;

    .line 1124
    .line 1125
    invoke-static {v1, v10, v15, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    throw v0

    .line 1130
    :cond_32
    const/4 v11, 0x0

    .line 1131
    const-string v0, "@QueryMap parameter type must be Map."

    .line 1132
    .line 1133
    new-array v2, v11, [Ljava/lang/Object;

    .line 1134
    .line 1135
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    throw v0

    .line 1140
    :cond_33
    move-object/from16 v23, v7

    .line 1141
    .line 1142
    instance-of v7, v8, Lretrofit2/http/Header;

    .line 1143
    .line 1144
    if-eqz v7, :cond_37

    .line 1145
    .line 1146
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 1147
    .line 1148
    .line 1149
    check-cast v8, Lretrofit2/http/Header;

    .line 1150
    .line 1151
    invoke-interface {v8}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v5

    .line 1155
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v7

    .line 1159
    invoke-virtual {v11, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v11

    .line 1163
    if-eqz v11, :cond_35

    .line 1164
    .line 1165
    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    .line 1166
    .line 1167
    if-eqz v11, :cond_34

    .line 1168
    .line 1169
    move-object v4, v12

    .line 1170
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1171
    .line 1172
    const/4 v11, 0x0

    .line 1173
    invoke-static {v11, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v4

    .line 1177
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1178
    .line 1179
    .line 1180
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    .line 1181
    .line 1182
    invoke-interface {v8}, Lretrofit2/http/Header;->allowUnsafeNonAsciiValues()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v6

    .line 1186
    const/4 v8, 0x1

    .line 1187
    invoke-direct {v4, v8, v5, v6}, Lretrofit2/ParameterHandler$Field;-><init>(ILjava/lang/String;Z)V

    .line 1188
    .line 1189
    .line 1190
    new-instance v5, Lretrofit2/ParameterHandler$1;

    .line 1191
    .line 1192
    invoke-direct {v5, v4, v11}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 1193
    .line 1194
    .line 1195
    :goto_c
    move-object v4, v5

    .line 1196
    goto/16 :goto_10

    .line 1197
    .line 1198
    :cond_34
    const/4 v11, 0x0

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v2

    .line 1215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v0

    .line 1225
    new-array v2, v11, [Ljava/lang/Object;

    .line 1226
    .line 1227
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    throw v0

    .line 1232
    :cond_35
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v4

    .line 1236
    if-eqz v4, :cond_36

    .line 1237
    .line 1238
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v4

    .line 1242
    invoke-static {v4}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v4

    .line 1246
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1247
    .line 1248
    .line 1249
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    .line 1250
    .line 1251
    invoke-interface {v8}, Lretrofit2/http/Header;->allowUnsafeNonAsciiValues()Z

    .line 1252
    .line 1253
    .line 1254
    move-result v6

    .line 1255
    const/4 v15, 0x1

    .line 1256
    invoke-direct {v4, v15, v5, v6}, Lretrofit2/ParameterHandler$Field;-><init>(ILjava/lang/String;Z)V

    .line 1257
    .line 1258
    .line 1259
    new-instance v5, Lretrofit2/ParameterHandler$1;

    .line 1260
    .line 1261
    invoke-direct {v5, v4, v15}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 1262
    .line 1263
    .line 1264
    goto :goto_c

    .line 1265
    :cond_36
    const/4 v15, 0x1

    .line 1266
    invoke-virtual {v6, v12, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1267
    .line 1268
    .line 1269
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    .line 1270
    .line 1271
    invoke-interface {v8}, Lretrofit2/http/Header;->allowUnsafeNonAsciiValues()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v6

    .line 1275
    invoke-direct {v4, v15, v5, v6}, Lretrofit2/ParameterHandler$Field;-><init>(ILjava/lang/String;Z)V

    .line 1276
    .line 1277
    .line 1278
    goto/16 :goto_10

    .line 1279
    .line 1280
    :cond_37
    instance-of v7, v8, Lretrofit2/http/HeaderMap;

    .line 1281
    .line 1282
    if-eqz v7, :cond_3c

    .line 1283
    .line 1284
    const-class v4, Lokhttp3/Headers;

    .line 1285
    .line 1286
    if-ne v12, v4, :cond_38

    .line 1287
    .line 1288
    new-instance v4, Lretrofit2/ParameterHandler$Headers;

    .line 1289
    .line 1290
    const/4 v11, 0x0

    .line 1291
    invoke-direct {v4, v1, v10, v11}, Lretrofit2/ParameterHandler$Headers;-><init>(Ljava/lang/reflect/Method;II)V

    .line 1292
    .line 1293
    .line 1294
    goto/16 :goto_10

    .line 1295
    .line 1296
    :cond_38
    const/4 v11, 0x0

    .line 1297
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v4

    .line 1304
    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v7

    .line 1308
    if-eqz v7, :cond_3b

    .line 1309
    .line 1310
    invoke-static {v12, v4}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v4

    .line 1314
    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    .line 1315
    .line 1316
    if-eqz v7, :cond_3a

    .line 1317
    .line 1318
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1319
    .line 1320
    invoke-static {v11, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v7

    .line 1324
    if-ne v5, v7, :cond_39

    .line 1325
    .line 1326
    const/4 v15, 0x1

    .line 1327
    invoke-static {v15, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v4

    .line 1331
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1332
    .line 1333
    .line 1334
    new-instance v4, Lretrofit2/ParameterHandler$FieldMap;

    .line 1335
    .line 1336
    check-cast v8, Lretrofit2/http/HeaderMap;

    .line 1337
    .line 1338
    invoke-interface {v8}, Lretrofit2/http/HeaderMap;->allowUnsafeNonAsciiValues()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v5

    .line 1342
    invoke-direct {v4, v10, v15, v1, v5}, Lretrofit2/ParameterHandler$FieldMap;-><init>(IILjava/lang/reflect/Method;Z)V

    .line 1343
    .line 1344
    .line 1345
    goto/16 :goto_10

    .line 1346
    .line 1347
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    const-string v2, "@HeaderMap keys must be of type String: "

    .line 1350
    .line 1351
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v0

    .line 1361
    const/4 v11, 0x0

    .line 1362
    new-array v2, v11, [Ljava/lang/Object;

    .line 1363
    .line 1364
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    throw v0

    .line 1369
    :cond_3a
    new-array v0, v11, [Ljava/lang/Object;

    .line 1370
    .line 1371
    invoke-static {v1, v10, v15, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v0

    .line 1375
    throw v0

    .line 1376
    :cond_3b
    const-string v0, "@HeaderMap parameter type must be Map or Headers."

    .line 1377
    .line 1378
    new-array v2, v11, [Ljava/lang/Object;

    .line 1379
    .line 1380
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v0

    .line 1384
    throw v0

    .line 1385
    :cond_3c
    instance-of v7, v8, Lretrofit2/http/Field;

    .line 1386
    .line 1387
    if-eqz v7, :cond_41

    .line 1388
    .line 1389
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 1390
    .line 1391
    .line 1392
    iget-boolean v5, v2, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    .line 1393
    .line 1394
    if-eqz v5, :cond_40

    .line 1395
    .line 1396
    check-cast v8, Lretrofit2/http/Field;

    .line 1397
    .line 1398
    invoke-interface {v8}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v5

    .line 1402
    invoke-interface {v8}, Lretrofit2/http/Field;->encoded()Z

    .line 1403
    .line 1404
    .line 1405
    move-result v7

    .line 1406
    const/4 v8, 0x1

    .line 1407
    iput-boolean v8, v2, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 1408
    .line 1409
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v8

    .line 1413
    invoke-virtual {v11, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1414
    .line 1415
    .line 1416
    move-result v11

    .line 1417
    if-eqz v11, :cond_3e

    .line 1418
    .line 1419
    instance-of v11, v12, Ljava/lang/reflect/ParameterizedType;

    .line 1420
    .line 1421
    if-eqz v11, :cond_3d

    .line 1422
    .line 1423
    move-object v4, v12

    .line 1424
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1425
    .line 1426
    const/4 v11, 0x0

    .line 1427
    invoke-static {v11, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v4

    .line 1431
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1432
    .line 1433
    .line 1434
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    .line 1435
    .line 1436
    invoke-direct {v4, v11, v5, v7}, Lretrofit2/ParameterHandler$Field;-><init>(ILjava/lang/String;Z)V

    .line 1437
    .line 1438
    .line 1439
    new-instance v5, Lretrofit2/ParameterHandler$1;

    .line 1440
    .line 1441
    invoke-direct {v5, v4, v11}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 1442
    .line 1443
    .line 1444
    goto/16 :goto_c

    .line 1445
    .line 1446
    :cond_3d
    const/4 v11, 0x0

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1448
    .line 1449
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v2

    .line 1453
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v2

    .line 1463
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v0

    .line 1473
    new-array v2, v11, [Ljava/lang/Object;

    .line 1474
    .line 1475
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    throw v0

    .line 1480
    :cond_3e
    const/4 v11, 0x0

    .line 1481
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    .line 1482
    .line 1483
    .line 1484
    move-result v4

    .line 1485
    if-eqz v4, :cond_3f

    .line 1486
    .line 1487
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v4

    .line 1491
    invoke-static {v4}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v4

    .line 1495
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1496
    .line 1497
    .line 1498
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    .line 1499
    .line 1500
    invoke-direct {v4, v11, v5, v7}, Lretrofit2/ParameterHandler$Field;-><init>(ILjava/lang/String;Z)V

    .line 1501
    .line 1502
    .line 1503
    new-instance v5, Lretrofit2/ParameterHandler$1;

    .line 1504
    .line 1505
    const/4 v8, 0x1

    .line 1506
    invoke-direct {v5, v4, v8}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 1507
    .line 1508
    .line 1509
    goto/16 :goto_c

    .line 1510
    .line 1511
    :cond_3f
    invoke-virtual {v6, v12, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1512
    .line 1513
    .line 1514
    new-instance v4, Lretrofit2/ParameterHandler$Field;

    .line 1515
    .line 1516
    invoke-direct {v4, v11, v5, v7}, Lretrofit2/ParameterHandler$Field;-><init>(ILjava/lang/String;Z)V

    .line 1517
    .line 1518
    .line 1519
    goto/16 :goto_10

    .line 1520
    .line 1521
    :cond_40
    const/4 v11, 0x0

    .line 1522
    const-string v0, "@Field parameters can only be used with form encoding."

    .line 1523
    .line 1524
    new-array v2, v11, [Ljava/lang/Object;

    .line 1525
    .line 1526
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    throw v0

    .line 1531
    :cond_41
    instance-of v7, v8, Lretrofit2/http/FieldMap;

    .line 1532
    .line 1533
    if-eqz v7, :cond_46

    .line 1534
    .line 1535
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 1536
    .line 1537
    .line 1538
    iget-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    .line 1539
    .line 1540
    if-eqz v4, :cond_45

    .line 1541
    .line 1542
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v4

    .line 1546
    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v7

    .line 1550
    if-eqz v7, :cond_44

    .line 1551
    .line 1552
    invoke-static {v12, v4}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v4

    .line 1556
    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    .line 1557
    .line 1558
    if-eqz v7, :cond_43

    .line 1559
    .line 1560
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1561
    .line 1562
    const/4 v11, 0x0

    .line 1563
    invoke-static {v11, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v7

    .line 1567
    if-ne v5, v7, :cond_42

    .line 1568
    .line 1569
    const/4 v15, 0x1

    .line 1570
    invoke-static {v15, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v4

    .line 1574
    invoke-virtual {v6, v4, v13}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 1575
    .line 1576
    .line 1577
    iput-boolean v15, v2, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 1578
    .line 1579
    new-instance v4, Lretrofit2/ParameterHandler$FieldMap;

    .line 1580
    .line 1581
    check-cast v8, Lretrofit2/http/FieldMap;

    .line 1582
    .line 1583
    invoke-interface {v8}, Lretrofit2/http/FieldMap;->encoded()Z

    .line 1584
    .line 1585
    .line 1586
    move-result v5

    .line 1587
    invoke-direct {v4, v10, v11, v1, v5}, Lretrofit2/ParameterHandler$FieldMap;-><init>(IILjava/lang/reflect/Method;Z)V

    .line 1588
    .line 1589
    .line 1590
    goto/16 :goto_10

    .line 1591
    .line 1592
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    const-string v2, "@FieldMap keys must be of type String: "

    .line 1595
    .line 1596
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v0

    .line 1606
    new-array v2, v11, [Ljava/lang/Object;

    .line 1607
    .line 1608
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v0

    .line 1612
    throw v0

    .line 1613
    :cond_43
    const/4 v11, 0x0

    .line 1614
    new-array v0, v11, [Ljava/lang/Object;

    .line 1615
    .line 1616
    invoke-static {v1, v10, v15, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v0

    .line 1620
    throw v0

    .line 1621
    :cond_44
    const/4 v11, 0x0

    .line 1622
    const-string v0, "@FieldMap parameter type must be Map."

    .line 1623
    .line 1624
    new-array v2, v11, [Ljava/lang/Object;

    .line 1625
    .line 1626
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v0

    .line 1630
    throw v0

    .line 1631
    :cond_45
    const/4 v11, 0x0

    .line 1632
    const-string v0, "@FieldMap parameters can only be used with form encoding."

    .line 1633
    .line 1634
    new-array v2, v11, [Ljava/lang/Object;

    .line 1635
    .line 1636
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v0

    .line 1640
    throw v0

    .line 1641
    :cond_46
    instance-of v7, v8, Lretrofit2/http/Part;

    .line 1642
    .line 1643
    move/from16 v27, v7

    .line 1644
    .line 1645
    const-class v7, Lokhttp3/MultipartBody$Part;

    .line 1646
    .line 1647
    if-eqz v27, :cond_55

    .line 1648
    .line 1649
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 1650
    .line 1651
    .line 1652
    iget-boolean v5, v2, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    .line 1653
    .line 1654
    if-eqz v5, :cond_54

    .line 1655
    .line 1656
    check-cast v8, Lretrofit2/http/Part;

    .line 1657
    .line 1658
    const/4 v15, 0x1

    .line 1659
    iput-boolean v15, v2, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 1660
    .line 1661
    invoke-interface {v8}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v5

    .line 1665
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v14

    .line 1669
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1670
    .line 1671
    .line 1672
    move-result v15

    .line 1673
    if-eqz v15, :cond_4d

    .line 1674
    .line 1675
    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1676
    .line 1677
    .line 1678
    move-result v5

    .line 1679
    sget-object v6, Lretrofit2/ParameterHandler$RawPart;->INSTANCE:Lretrofit2/ParameterHandler$RawPart;

    .line 1680
    .line 1681
    const-string v8, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    .line 1682
    .line 1683
    if-eqz v5, :cond_49

    .line 1684
    .line 1685
    instance-of v5, v12, Ljava/lang/reflect/ParameterizedType;

    .line 1686
    .line 1687
    if-eqz v5, :cond_48

    .line 1688
    .line 1689
    move-object v4, v12

    .line 1690
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1691
    .line 1692
    const/4 v11, 0x0

    .line 1693
    invoke-static {v11, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1694
    .line 1695
    .line 1696
    move-result-object v4

    .line 1697
    invoke-static {v4}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v4

    .line 1701
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1702
    .line 1703
    .line 1704
    move-result v4

    .line 1705
    if-eqz v4, :cond_47

    .line 1706
    .line 1707
    new-instance v4, Lretrofit2/ParameterHandler$1;

    .line 1708
    .line 1709
    invoke-direct {v4, v6, v11}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 1710
    .line 1711
    .line 1712
    goto/16 :goto_10

    .line 1713
    .line 1714
    :cond_47
    new-array v0, v11, [Ljava/lang/Object;

    .line 1715
    .line 1716
    invoke-static {v1, v10, v8, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v0

    .line 1720
    throw v0

    .line 1721
    :cond_48
    const/4 v11, 0x0

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1723
    .line 1724
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v2

    .line 1728
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1729
    .line 1730
    .line 1731
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v2

    .line 1738
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    new-array v2, v11, [Ljava/lang/Object;

    .line 1749
    .line 1750
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v0

    .line 1754
    throw v0

    .line 1755
    :cond_49
    const/4 v11, 0x0

    .line 1756
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    .line 1757
    .line 1758
    .line 1759
    move-result v4

    .line 1760
    if-eqz v4, :cond_4b

    .line 1761
    .line 1762
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v4

    .line 1766
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1767
    .line 1768
    .line 1769
    move-result v4

    .line 1770
    if-eqz v4, :cond_4a

    .line 1771
    .line 1772
    new-instance v4, Lretrofit2/ParameterHandler$1;

    .line 1773
    .line 1774
    const/4 v8, 0x1

    .line 1775
    invoke-direct {v4, v6, v8}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 1776
    .line 1777
    .line 1778
    goto/16 :goto_10

    .line 1779
    .line 1780
    :cond_4a
    new-array v0, v11, [Ljava/lang/Object;

    .line 1781
    .line 1782
    invoke-static {v1, v10, v8, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v0

    .line 1786
    throw v0

    .line 1787
    :cond_4b
    invoke-virtual {v7, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1788
    .line 1789
    .line 1790
    move-result v4

    .line 1791
    if-eqz v4, :cond_4c

    .line 1792
    .line 1793
    move-object v4, v6

    .line 1794
    goto/16 :goto_10

    .line 1795
    .line 1796
    :cond_4c
    new-array v0, v11, [Ljava/lang/Object;

    .line 1797
    .line 1798
    invoke-static {v1, v10, v8, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v0

    .line 1802
    throw v0

    .line 1803
    :cond_4d
    const-string v15, "form-data; name=\""

    .line 1804
    .line 1805
    move-object/from16 v27, v8

    .line 1806
    .line 1807
    const-string v8, "\""

    .line 1808
    .line 1809
    invoke-static {v15, v5, v8}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v5

    .line 1813
    const-string v8, "Content-Transfer-Encoding"

    .line 1814
    .line 1815
    invoke-interface/range {v27 .. v27}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v15

    .line 1819
    const-string v0, "Content-Disposition"

    .line 1820
    .line 1821
    filled-new-array {v0, v5, v8, v15}, [Ljava/lang/String;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v0

    .line 1825
    sget-object v5, Lokhttp3/Headers;->EMPTY:Lokhttp3/Headers;

    .line 1826
    .line 1827
    invoke-static {v0}, Lokhttp3/Headers$Companion;->of([Ljava/lang/String;)Lokhttp3/Headers;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v0

    .line 1831
    invoke-virtual {v11, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1832
    .line 1833
    .line 1834
    move-result v5

    .line 1835
    const-string v8, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    .line 1836
    .line 1837
    if-eqz v5, :cond_50

    .line 1838
    .line 1839
    instance-of v5, v12, Ljava/lang/reflect/ParameterizedType;

    .line 1840
    .line 1841
    if-eqz v5, :cond_4f

    .line 1842
    .line 1843
    move-object v4, v12

    .line 1844
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1845
    .line 1846
    const/4 v11, 0x0

    .line 1847
    invoke-static {v11, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v4

    .line 1851
    invoke-static {v4}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v5

    .line 1855
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1856
    .line 1857
    .line 1858
    move-result v5

    .line 1859
    if-nez v5, :cond_4e

    .line 1860
    .line 1861
    invoke-virtual {v6, v4, v13, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v4

    .line 1865
    new-instance v5, Lretrofit2/ParameterHandler$Part;

    .line 1866
    .line 1867
    invoke-direct {v5, v1, v10, v0, v4}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    .line 1868
    .line 1869
    .line 1870
    new-instance v0, Lretrofit2/ParameterHandler$1;

    .line 1871
    .line 1872
    invoke-direct {v0, v5, v11}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 1873
    .line 1874
    .line 1875
    :goto_d
    move-object v4, v0

    .line 1876
    goto/16 :goto_10

    .line 1877
    .line 1878
    :cond_4e
    new-array v0, v11, [Ljava/lang/Object;

    .line 1879
    .line 1880
    invoke-static {v1, v10, v8, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v0

    .line 1884
    throw v0

    .line 1885
    :cond_4f
    const/4 v11, 0x0

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1887
    .line 1888
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v2

    .line 1892
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1893
    .line 1894
    .line 1895
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    .line 1897
    .line 1898
    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v2

    .line 1902
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v0

    .line 1912
    new-array v2, v11, [Ljava/lang/Object;

    .line 1913
    .line 1914
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v0

    .line 1918
    throw v0

    .line 1919
    :cond_50
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    .line 1920
    .line 1921
    .line 1922
    move-result v4

    .line 1923
    if-eqz v4, :cond_52

    .line 1924
    .line 1925
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v4

    .line 1929
    invoke-static {v4}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v4

    .line 1933
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1934
    .line 1935
    .line 1936
    move-result v5

    .line 1937
    if-nez v5, :cond_51

    .line 1938
    .line 1939
    invoke-virtual {v6, v4, v13, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v4

    .line 1943
    new-instance v5, Lretrofit2/ParameterHandler$Part;

    .line 1944
    .line 1945
    invoke-direct {v5, v1, v10, v0, v4}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    .line 1946
    .line 1947
    .line 1948
    new-instance v0, Lretrofit2/ParameterHandler$1;

    .line 1949
    .line 1950
    const/4 v8, 0x1

    .line 1951
    invoke-direct {v0, v5, v8}, Lretrofit2/ParameterHandler$1;-><init>(Lretrofit2/Utils;I)V

    .line 1952
    .line 1953
    .line 1954
    goto :goto_d

    .line 1955
    :cond_51
    const/4 v11, 0x0

    .line 1956
    new-array v0, v11, [Ljava/lang/Object;

    .line 1957
    .line 1958
    invoke-static {v1, v10, v8, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v0

    .line 1962
    throw v0

    .line 1963
    :cond_52
    const/4 v11, 0x0

    .line 1964
    invoke-virtual {v7, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1965
    .line 1966
    .line 1967
    move-result v4

    .line 1968
    if-nez v4, :cond_53

    .line 1969
    .line 1970
    invoke-virtual {v6, v12, v13, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v4

    .line 1974
    new-instance v5, Lretrofit2/ParameterHandler$Part;

    .line 1975
    .line 1976
    invoke-direct {v5, v1, v10, v0, v4}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    .line 1977
    .line 1978
    .line 1979
    goto/16 :goto_c

    .line 1980
    .line 1981
    :cond_53
    new-array v0, v11, [Ljava/lang/Object;

    .line 1982
    .line 1983
    invoke-static {v1, v10, v8, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v0

    .line 1987
    throw v0

    .line 1988
    :cond_54
    const/4 v11, 0x0

    .line 1989
    const-string v0, "@Part parameters can only be used with multipart encoding."

    .line 1990
    .line 1991
    new-array v2, v11, [Ljava/lang/Object;

    .line 1992
    .line 1993
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 1994
    .line 1995
    .line 1996
    move-result-object v0

    .line 1997
    throw v0

    .line 1998
    :cond_55
    instance-of v0, v8, Lretrofit2/http/PartMap;

    .line 1999
    .line 2000
    if-eqz v0, :cond_5b

    .line 2001
    .line 2002
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 2003
    .line 2004
    .line 2005
    iget-boolean v0, v2, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    .line 2006
    .line 2007
    if-eqz v0, :cond_5a

    .line 2008
    .line 2009
    const/4 v4, 0x1

    .line 2010
    iput-boolean v4, v2, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 2011
    .line 2012
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v0

    .line 2016
    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 2017
    .line 2018
    .line 2019
    move-result v9

    .line 2020
    if-eqz v9, :cond_59

    .line 2021
    .line 2022
    invoke-static {v12, v0}, Lretrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v0

    .line 2026
    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    .line 2027
    .line 2028
    if-eqz v9, :cond_58

    .line 2029
    .line 2030
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 2031
    .line 2032
    const/4 v11, 0x0

    .line 2033
    invoke-static {v11, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v9

    .line 2037
    if-ne v5, v9, :cond_57

    .line 2038
    .line 2039
    invoke-static {v4, v0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v0

    .line 2043
    invoke-static {v0}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v4

    .line 2047
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 2048
    .line 2049
    .line 2050
    move-result v4

    .line 2051
    if-nez v4, :cond_56

    .line 2052
    .line 2053
    invoke-virtual {v6, v0, v13, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v0

    .line 2057
    check-cast v8, Lretrofit2/http/PartMap;

    .line 2058
    .line 2059
    new-instance v4, Lretrofit2/ParameterHandler$Part;

    .line 2060
    .line 2061
    invoke-interface {v8}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v5

    .line 2065
    invoke-direct {v4, v1, v10, v0, v5}, Lretrofit2/ParameterHandler$Part;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Ljava/lang/String;)V

    .line 2066
    .line 2067
    .line 2068
    goto/16 :goto_10

    .line 2069
    .line 2070
    :cond_56
    const-string v0, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    .line 2071
    .line 2072
    const/4 v11, 0x0

    .line 2073
    new-array v2, v11, [Ljava/lang/Object;

    .line 2074
    .line 2075
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v0

    .line 2079
    throw v0

    .line 2080
    :cond_57
    const/4 v11, 0x0

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2082
    .line 2083
    const-string v2, "@PartMap keys must be of type String: "

    .line 2084
    .line 2085
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2086
    .line 2087
    .line 2088
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v0

    .line 2095
    new-array v2, v11, [Ljava/lang/Object;

    .line 2096
    .line 2097
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v0

    .line 2101
    throw v0

    .line 2102
    :cond_58
    const/4 v11, 0x0

    .line 2103
    new-array v0, v11, [Ljava/lang/Object;

    .line 2104
    .line 2105
    invoke-static {v1, v10, v15, v0}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v0

    .line 2109
    throw v0

    .line 2110
    :cond_59
    const/4 v11, 0x0

    .line 2111
    const-string v0, "@PartMap parameter type must be Map."

    .line 2112
    .line 2113
    new-array v2, v11, [Ljava/lang/Object;

    .line 2114
    .line 2115
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2116
    .line 2117
    .line 2118
    move-result-object v0

    .line 2119
    throw v0

    .line 2120
    :cond_5a
    const/4 v11, 0x0

    .line 2121
    const-string v0, "@PartMap parameters can only be used with multipart encoding."

    .line 2122
    .line 2123
    new-array v2, v11, [Ljava/lang/Object;

    .line 2124
    .line 2125
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v0

    .line 2129
    throw v0

    .line 2130
    :cond_5b
    instance-of v0, v8, Lretrofit2/http/Body;

    .line 2131
    .line 2132
    if-eqz v0, :cond_5e

    .line 2133
    .line 2134
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 2135
    .line 2136
    .line 2137
    iget-boolean v0, v2, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    .line 2138
    .line 2139
    if-nez v0, :cond_5d

    .line 2140
    .line 2141
    iget-boolean v0, v2, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    .line 2142
    .line 2143
    if-nez v0, :cond_5d

    .line 2144
    .line 2145
    iget-boolean v0, v2, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    .line 2146
    .line 2147
    if-nez v0, :cond_5c

    .line 2148
    .line 2149
    :try_start_1
    invoke-virtual {v6, v12, v13, v3}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2153
    const/4 v8, 0x1

    .line 2154
    iput-boolean v8, v2, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    .line 2155
    .line 2156
    new-instance v4, Lretrofit2/ParameterHandler$Body;

    .line 2157
    .line 2158
    invoke-direct {v4, v1, v10, v0}, Lretrofit2/ParameterHandler$Body;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V

    .line 2159
    .line 2160
    .line 2161
    goto/16 :goto_10

    .line 2162
    .line 2163
    :catch_1
    move-exception v0

    .line 2164
    const/4 v8, 0x1

    .line 2165
    new-array v2, v8, [Ljava/lang/Object;

    .line 2166
    .line 2167
    const/4 v11, 0x0

    .line 2168
    aput-object v12, v2, v11

    .line 2169
    .line 2170
    const-string v3, "Unable to create @Body converter for %s"

    .line 2171
    .line 2172
    invoke-static {v1, v0, v10, v3, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;Ljava/lang/Exception;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v0

    .line 2176
    throw v0

    .line 2177
    :cond_5c
    const/4 v11, 0x0

    .line 2178
    const-string v0, "Multiple @Body method annotations found."

    .line 2179
    .line 2180
    new-array v2, v11, [Ljava/lang/Object;

    .line 2181
    .line 2182
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2183
    .line 2184
    .line 2185
    move-result-object v0

    .line 2186
    throw v0

    .line 2187
    :cond_5d
    const/4 v11, 0x0

    .line 2188
    const-string v0, "@Body parameters cannot be used with form or multi-part encoding."

    .line 2189
    .line 2190
    new-array v2, v11, [Ljava/lang/Object;

    .line 2191
    .line 2192
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2193
    .line 2194
    .line 2195
    move-result-object v0

    .line 2196
    throw v0

    .line 2197
    :cond_5e
    instance-of v0, v8, Lretrofit2/http/Tag;

    .line 2198
    .line 2199
    if-eqz v0, :cond_62

    .line 2200
    .line 2201
    invoke-virtual {v2, v10, v12}, Lretrofit2/RequestFactory$Builder;->validateResolvableType(ILjava/lang/reflect/Type;)V

    .line 2202
    .line 2203
    .line 2204
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v0

    .line 2208
    invoke-static {v0}, Lretrofit2/RequestFactory$Builder;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v0

    .line 2212
    add-int/lit8 v4, v10, -0x1

    .line 2213
    .line 2214
    :goto_e
    if-ltz v4, :cond_61

    .line 2215
    .line 2216
    iget-object v5, v2, Lretrofit2/RequestFactory$Builder;->parameterHandlers:[Lretrofit2/Utils;

    .line 2217
    .line 2218
    aget-object v5, v5, v4

    .line 2219
    .line 2220
    instance-of v6, v5, Lretrofit2/ParameterHandler$Tag;

    .line 2221
    .line 2222
    if-eqz v6, :cond_60

    .line 2223
    .line 2224
    check-cast v5, Lretrofit2/ParameterHandler$Tag;

    .line 2225
    .line 2226
    iget-object v5, v5, Lretrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    .line 2227
    .line 2228
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2229
    .line 2230
    .line 2231
    move-result v5

    .line 2232
    if-nez v5, :cond_5f

    .line 2233
    .line 2234
    goto :goto_f

    .line 2235
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2236
    .line 2237
    const-string v3, "@Tag type "

    .line 2238
    .line 2239
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2240
    .line 2241
    .line 2242
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v0

    .line 2246
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    .line 2248
    .line 2249
    const-string v0, " is duplicate of "

    .line 2250
    .line 2251
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    .line 2253
    .line 2254
    sget-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 2255
    .line 2256
    invoke-virtual {v0, v4, v1}, Lretrofit2/Reflection;->describeMethodParameter(ILjava/lang/reflect/Method;)Ljava/lang/String;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v0

    .line 2260
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    .line 2262
    .line 2263
    const-string v0, " and would always overwrite its value."

    .line 2264
    .line 2265
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    .line 2267
    .line 2268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v0

    .line 2272
    const/4 v11, 0x0

    .line 2273
    new-array v2, v11, [Ljava/lang/Object;

    .line 2274
    .line 2275
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v0

    .line 2279
    throw v0

    .line 2280
    :cond_60
    :goto_f
    add-int/lit8 v4, v4, -0x1

    .line 2281
    .line 2282
    goto :goto_e

    .line 2283
    :cond_61
    new-instance v4, Lretrofit2/ParameterHandler$Tag;

    .line 2284
    .line 2285
    invoke-direct {v4, v0}, Lretrofit2/ParameterHandler$Tag;-><init>(Ljava/lang/Class;)V

    .line 2286
    .line 2287
    .line 2288
    goto :goto_10

    .line 2289
    :cond_62
    const/4 v4, 0x0

    .line 2290
    :goto_10
    if-nez v4, :cond_63

    .line 2291
    .line 2292
    goto :goto_11

    .line 2293
    :cond_63
    if-nez v16, :cond_64

    .line 2294
    .line 2295
    move-object/from16 v16, v4

    .line 2296
    .line 2297
    :goto_11
    add-int/lit8 v5, v21, 0x1

    .line 2298
    .line 2299
    move-object/from16 v0, p0

    .line 2300
    .line 2301
    move-object/from16 v4, v19

    .line 2302
    .line 2303
    move/from16 v6, v20

    .line 2304
    .line 2305
    move/from16 v14, v22

    .line 2306
    .line 2307
    move-object/from16 v7, v23

    .line 2308
    .line 2309
    move/from16 v9, v24

    .line 2310
    .line 2311
    move-object/from16 v11, v25

    .line 2312
    .line 2313
    move/from16 v15, v26

    .line 2314
    .line 2315
    const/4 v8, 0x1

    .line 2316
    goto/16 :goto_7

    .line 2317
    .line 2318
    :cond_64
    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    .line 2319
    .line 2320
    const/4 v11, 0x0

    .line 2321
    new-array v2, v11, [Ljava/lang/Object;

    .line 2322
    .line 2323
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v0

    .line 2327
    throw v0

    .line 2328
    :cond_65
    :goto_12
    move-object/from16 v19, v4

    .line 2329
    .line 2330
    move/from16 v20, v6

    .line 2331
    .line 2332
    move-object/from16 v23, v7

    .line 2333
    .line 2334
    move/from16 v24, v9

    .line 2335
    .line 2336
    move-object/from16 v25, v11

    .line 2337
    .line 2338
    move/from16 v22, v14

    .line 2339
    .line 2340
    goto :goto_13

    .line 2341
    :cond_66
    const/16 v16, 0x0

    .line 2342
    .line 2343
    goto :goto_12

    .line 2344
    :goto_13
    if-nez v16, :cond_68

    .line 2345
    .line 2346
    if-eqz v22, :cond_67

    .line 2347
    .line 2348
    :try_start_2
    invoke-static {v12}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2349
    .line 2350
    .line 2351
    move-result-object v0

    .line 2352
    const-class v4, Lkotlin/coroutines/Continuation;

    .line 2353
    .line 2354
    if-ne v0, v4, :cond_67

    .line 2355
    .line 2356
    const/4 v8, 0x1

    .line 2357
    iput-boolean v8, v2, Lretrofit2/RequestFactory$Builder;->isKotlinSuspendFunction:Z
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2358
    .line 2359
    const/16 v16, 0x0

    .line 2360
    .line 2361
    goto :goto_14

    .line 2362
    :catch_2
    :cond_67
    const-string v0, "No Retrofit annotation found."

    .line 2363
    .line 2364
    const/4 v11, 0x0

    .line 2365
    new-array v2, v11, [Ljava/lang/Object;

    .line 2366
    .line 2367
    invoke-static {v1, v10, v0, v2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v0

    .line 2371
    throw v0

    .line 2372
    :cond_68
    :goto_14
    aput-object v16, v25, v10

    .line 2373
    .line 2374
    add-int/lit8 v10, v10, 0x1

    .line 2375
    .line 2376
    move-object/from16 v0, p0

    .line 2377
    .line 2378
    move-object/from16 v4, v19

    .line 2379
    .line 2380
    move/from16 v6, v20

    .line 2381
    .line 2382
    move-object/from16 v7, v23

    .line 2383
    .line 2384
    move/from16 v9, v24

    .line 2385
    .line 2386
    const/4 v5, 0x0

    .line 2387
    const/4 v8, 0x1

    .line 2388
    goto/16 :goto_5

    .line 2389
    .line 2390
    :cond_69
    move-object/from16 v23, v7

    .line 2391
    .line 2392
    iget-object v0, v2, Lretrofit2/RequestFactory$Builder;->relativeUrl:Ljava/lang/String;

    .line 2393
    .line 2394
    if-nez v0, :cond_6b

    .line 2395
    .line 2396
    iget-boolean v0, v2, Lretrofit2/RequestFactory$Builder;->gotUrl:Z

    .line 2397
    .line 2398
    if-eqz v0, :cond_6a

    .line 2399
    .line 2400
    goto :goto_15

    .line 2401
    :cond_6a
    iget-object v0, v2, Lretrofit2/RequestFactory$Builder;->httpMethod:Ljava/lang/String;

    .line 2402
    .line 2403
    const/4 v8, 0x1

    .line 2404
    new-array v2, v8, [Ljava/lang/Object;

    .line 2405
    .line 2406
    const/16 v17, 0x0

    .line 2407
    .line 2408
    aput-object v0, v2, v17

    .line 2409
    .line 2410
    const-string v0, "Missing either @%s URL or @Url parameter."

    .line 2411
    .line 2412
    const/4 v7, 0x0

    .line 2413
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v0

    .line 2417
    throw v0

    .line 2418
    :cond_6b
    :goto_15
    iget-boolean v0, v2, Lretrofit2/RequestFactory$Builder;->isFormEncoded:Z

    .line 2419
    .line 2420
    if-nez v0, :cond_6c

    .line 2421
    .line 2422
    iget-boolean v3, v2, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    .line 2423
    .line 2424
    if-nez v3, :cond_6c

    .line 2425
    .line 2426
    iget-boolean v3, v2, Lretrofit2/RequestFactory$Builder;->hasBody:Z

    .line 2427
    .line 2428
    if-nez v3, :cond_6c

    .line 2429
    .line 2430
    iget-boolean v3, v2, Lretrofit2/RequestFactory$Builder;->gotBody:Z

    .line 2431
    .line 2432
    if-nez v3, :cond_6d

    .line 2433
    .line 2434
    :cond_6c
    const/4 v7, 0x0

    .line 2435
    const/4 v11, 0x0

    .line 2436
    goto :goto_16

    .line 2437
    :cond_6d
    const-string v0, "Non-body HTTP method cannot contain @Body."

    .line 2438
    .line 2439
    const/4 v11, 0x0

    .line 2440
    new-array v2, v11, [Ljava/lang/Object;

    .line 2441
    .line 2442
    const/4 v7, 0x0

    .line 2443
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v0

    .line 2447
    throw v0

    .line 2448
    :goto_16
    if-eqz v0, :cond_6f

    .line 2449
    .line 2450
    iget-boolean v0, v2, Lretrofit2/RequestFactory$Builder;->gotField:Z

    .line 2451
    .line 2452
    if-eqz v0, :cond_6e

    .line 2453
    .line 2454
    goto :goto_17

    .line 2455
    :cond_6e
    const-string v0, "Form-encoded method must contain at least one @Field."

    .line 2456
    .line 2457
    new-array v2, v11, [Ljava/lang/Object;

    .line 2458
    .line 2459
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2460
    .line 2461
    .line 2462
    move-result-object v0

    .line 2463
    throw v0

    .line 2464
    :cond_6f
    :goto_17
    iget-boolean v0, v2, Lretrofit2/RequestFactory$Builder;->isMultipart:Z

    .line 2465
    .line 2466
    if-eqz v0, :cond_71

    .line 2467
    .line 2468
    iget-boolean v0, v2, Lretrofit2/RequestFactory$Builder;->gotPart:Z

    .line 2469
    .line 2470
    if-eqz v0, :cond_70

    .line 2471
    .line 2472
    goto :goto_18

    .line 2473
    :cond_70
    const-string v0, "Multipart method must contain at least one @Part."

    .line 2474
    .line 2475
    new-array v2, v11, [Ljava/lang/Object;

    .line 2476
    .line 2477
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v0

    .line 2481
    throw v0

    .line 2482
    :cond_71
    :goto_18
    new-instance v0, Lretrofit2/RequestFactory;

    .line 2483
    .line 2484
    invoke-direct {v0, v2}, Lretrofit2/RequestFactory;-><init>(Lretrofit2/RequestFactory$Builder;)V

    .line 2485
    .line 2486
    .line 2487
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 2488
    .line 2489
    .line 2490
    move-result-object v2

    .line 2491
    invoke-static {v2}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    .line 2492
    .line 2493
    .line 2494
    move-result v3

    .line 2495
    if-nez v3, :cond_7f

    .line 2496
    .line 2497
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 2498
    .line 2499
    if-eq v2, v3, :cond_7e

    .line 2500
    .line 2501
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v2

    .line 2505
    const-class v3, Lkotlin/Unit;

    .line 2506
    .line 2507
    const-class v4, Lretrofit2/Response;

    .line 2508
    .line 2509
    iget-boolean v5, v0, Lretrofit2/RequestFactory;->isKotlinSuspendFunction:Z

    .line 2510
    .line 2511
    if-eqz v5, :cond_77

    .line 2512
    .line 2513
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 2514
    .line 2515
    .line 2516
    move-result-object v6

    .line 2517
    array-length v7, v6

    .line 2518
    const/16 v18, 0x1

    .line 2519
    .line 2520
    add-int/lit8 v7, v7, -0x1

    .line 2521
    .line 2522
    aget-object v6, v6, v7

    .line 2523
    .line 2524
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 2525
    .line 2526
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v6

    .line 2530
    const/4 v11, 0x0

    .line 2531
    aget-object v6, v6, v11

    .line 2532
    .line 2533
    instance-of v7, v6, Ljava/lang/reflect/WildcardType;

    .line 2534
    .line 2535
    if-eqz v7, :cond_72

    .line 2536
    .line 2537
    check-cast v6, Ljava/lang/reflect/WildcardType;

    .line 2538
    .line 2539
    invoke-interface {v6}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 2540
    .line 2541
    .line 2542
    move-result-object v6

    .line 2543
    aget-object v6, v6, v11

    .line 2544
    .line 2545
    :cond_72
    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2546
    .line 2547
    .line 2548
    move-result-object v7

    .line 2549
    const-class v8, Lretrofit2/Call;

    .line 2550
    .line 2551
    if-ne v7, v4, :cond_73

    .line 2552
    .line 2553
    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    .line 2554
    .line 2555
    if-eqz v7, :cond_73

    .line 2556
    .line 2557
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 2558
    .line 2559
    invoke-static {v11, v6}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 2560
    .line 2561
    .line 2562
    move-result-object v6

    .line 2563
    const/4 v7, 0x1

    .line 2564
    const/4 v9, 0x0

    .line 2565
    goto :goto_1a

    .line 2566
    :cond_73
    invoke-static {v6}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2567
    .line 2568
    .line 2569
    move-result-object v7

    .line 2570
    if-eq v7, v8, :cond_76

    .line 2571
    .line 2572
    sget-boolean v7, Lretrofit2/Utils;->checkForKotlinUnit:Z

    .line 2573
    .line 2574
    if-eqz v7, :cond_74

    .line 2575
    .line 2576
    if-ne v6, v3, :cond_74

    .line 2577
    .line 2578
    const/4 v7, 0x1

    .line 2579
    goto :goto_19

    .line 2580
    :cond_74
    const/4 v7, 0x0

    .line 2581
    :goto_19
    move v9, v7

    .line 2582
    const/4 v7, 0x0

    .line 2583
    :goto_1a
    new-instance v10, Lretrofit2/Utils$ParameterizedTypeImpl;

    .line 2584
    .line 2585
    const/4 v15, 0x1

    .line 2586
    new-array v11, v15, [Ljava/lang/reflect/Type;

    .line 2587
    .line 2588
    const/4 v12, 0x0

    .line 2589
    aput-object v6, v11, v12

    .line 2590
    .line 2591
    const/4 v6, 0x0

    .line 2592
    invoke-direct {v10, v6, v8, v11}, Lretrofit2/Utils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 2593
    .line 2594
    .line 2595
    const-class v6, Lretrofit2/SkipCallbackExecutor;

    .line 2596
    .line 2597
    invoke-static {v2, v6}, Lretrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    .line 2598
    .line 2599
    .line 2600
    move-result v6

    .line 2601
    if-eqz v6, :cond_75

    .line 2602
    .line 2603
    goto :goto_1b

    .line 2604
    :cond_75
    array-length v6, v2

    .line 2605
    add-int/2addr v6, v15

    .line 2606
    new-array v6, v6, [Ljava/lang/annotation/Annotation;

    .line 2607
    .line 2608
    sget-object v8, Lretrofit2/SkipCallbackExecutorImpl;->INSTANCE:Lretrofit2/SkipCallbackExecutorImpl;

    .line 2609
    .line 2610
    aput-object v8, v6, v12

    .line 2611
    .line 2612
    array-length v8, v2

    .line 2613
    invoke-static {v2, v12, v6, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2614
    .line 2615
    .line 2616
    move-object v2, v6

    .line 2617
    :goto_1b
    move v6, v9

    .line 2618
    :goto_1c
    move-object/from16 v8, p0

    .line 2619
    .line 2620
    goto :goto_1d

    .line 2621
    :cond_76
    const/4 v12, 0x0

    .line 2622
    const/4 v15, 0x1

    .line 2623
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 2624
    .line 2625
    invoke-static {v12, v6}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 2626
    .line 2627
    .line 2628
    move-result-object v0

    .line 2629
    new-array v2, v15, [Ljava/lang/Object;

    .line 2630
    .line 2631
    aput-object v0, v2, v12

    .line 2632
    .line 2633
    const-string v0, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s"

    .line 2634
    .line 2635
    const/4 v7, 0x0

    .line 2636
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2637
    .line 2638
    .line 2639
    move-result-object v0

    .line 2640
    throw v0

    .line 2641
    :cond_77
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 2642
    .line 2643
    .line 2644
    move-result-object v10

    .line 2645
    const/4 v6, 0x0

    .line 2646
    const/4 v7, 0x0

    .line 2647
    goto :goto_1c

    .line 2648
    :goto_1d
    :try_start_3
    invoke-virtual {v8, v10, v2}, Lretrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    .line 2649
    .line 2650
    .line 2651
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2652
    invoke-interface {v2}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    .line 2653
    .line 2654
    .line 2655
    move-result-object v9

    .line 2656
    const-class v10, Lokhttp3/Response;

    .line 2657
    .line 2658
    if-eq v9, v10, :cond_7d

    .line 2659
    .line 2660
    if-eq v9, v4, :cond_7c

    .line 2661
    .line 2662
    iget-object v4, v0, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    .line 2663
    .line 2664
    move-object/from16 v10, v23

    .line 2665
    .line 2666
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2667
    .line 2668
    .line 2669
    move-result v4

    .line 2670
    if-eqz v4, :cond_79

    .line 2671
    .line 2672
    const-class v4, Ljava/lang/Void;

    .line 2673
    .line 2674
    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2675
    .line 2676
    .line 2677
    move-result v4

    .line 2678
    if-nez v4, :cond_79

    .line 2679
    .line 2680
    sget-boolean v4, Lretrofit2/Utils;->checkForKotlinUnit:Z

    .line 2681
    .line 2682
    if-eqz v4, :cond_78

    .line 2683
    .line 2684
    if-ne v9, v3, :cond_78

    .line 2685
    .line 2686
    goto :goto_1e

    .line 2687
    :cond_78
    const-string v0, "HEAD method must use Void or Unit as response type."

    .line 2688
    .line 2689
    const/4 v11, 0x0

    .line 2690
    new-array v2, v11, [Ljava/lang/Object;

    .line 2691
    .line 2692
    const/4 v7, 0x0

    .line 2693
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2694
    .line 2695
    .line 2696
    move-result-object v0

    .line 2697
    throw v0

    .line 2698
    :cond_79
    :goto_1e
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v3

    .line 2702
    :try_start_4
    invoke-virtual {v8, v9, v3}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 2703
    .line 2704
    .line 2705
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2706
    iget-object v1, v8, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 2707
    .line 2708
    move-object v3, v1

    .line 2709
    check-cast v3, Lokhttp3/OkHttpClient;

    .line 2710
    .line 2711
    if-nez v5, :cond_7a

    .line 2712
    .line 2713
    new-instance v1, Lretrofit2/HttpServiceMethod$CallAdapted;

    .line 2714
    .line 2715
    const/4 v6, 0x0

    .line 2716
    move-object v5, v2

    .line 2717
    move-object v2, v0

    .line 2718
    invoke-direct/range {v1 .. v6}, Lretrofit2/HttpServiceMethod$CallAdapted;-><init>(Lretrofit2/RequestFactory;Lokhttp3/OkHttpClient;Lretrofit2/Converter;Lretrofit2/CallAdapter;I)V

    .line 2719
    .line 2720
    .line 2721
    return-object v1

    .line 2722
    :cond_7a
    move-object v5, v2

    .line 2723
    move-object v2, v0

    .line 2724
    if-eqz v7, :cond_7b

    .line 2725
    .line 2726
    new-instance v1, Lretrofit2/HttpServiceMethod$CallAdapted;

    .line 2727
    .line 2728
    const/4 v6, 0x1

    .line 2729
    invoke-direct/range {v1 .. v6}, Lretrofit2/HttpServiceMethod$CallAdapted;-><init>(Lretrofit2/RequestFactory;Lokhttp3/OkHttpClient;Lretrofit2/Converter;Lretrofit2/CallAdapter;I)V

    .line 2730
    .line 2731
    .line 2732
    return-object v1

    .line 2733
    :cond_7b
    new-instance v1, Lretrofit2/HttpServiceMethod$SuspendForBody;

    .line 2734
    .line 2735
    invoke-direct/range {v1 .. v6}, Lretrofit2/HttpServiceMethod$SuspendForBody;-><init>(Lretrofit2/RequestFactory;Lokhttp3/OkHttpClient;Lretrofit2/Converter;Lretrofit2/CallAdapter;Z)V

    .line 2736
    .line 2737
    .line 2738
    return-object v1

    .line 2739
    :catch_3
    move-exception v0

    .line 2740
    const/4 v8, 0x1

    .line 2741
    new-array v2, v8, [Ljava/lang/Object;

    .line 2742
    .line 2743
    const/4 v11, 0x0

    .line 2744
    aput-object v9, v2, v11

    .line 2745
    .line 2746
    const-string v3, "Unable to create converter for %s"

    .line 2747
    .line 2748
    invoke-static {v1, v0, v3, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2749
    .line 2750
    .line 2751
    move-result-object v0

    .line 2752
    throw v0

    .line 2753
    :cond_7c
    const/4 v11, 0x0

    .line 2754
    const-string v0, "Response must include generic type (e.g., Response<String>)"

    .line 2755
    .line 2756
    new-array v2, v11, [Ljava/lang/Object;

    .line 2757
    .line 2758
    const/4 v7, 0x0

    .line 2759
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2760
    .line 2761
    .line 2762
    move-result-object v0

    .line 2763
    throw v0

    .line 2764
    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2765
    .line 2766
    const-string v2, "\'"

    .line 2767
    .line 2768
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2769
    .line 2770
    .line 2771
    invoke-static {v9}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2772
    .line 2773
    .line 2774
    move-result-object v2

    .line 2775
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2776
    .line 2777
    .line 2778
    move-result-object v2

    .line 2779
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    .line 2781
    .line 2782
    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    .line 2783
    .line 2784
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    .line 2786
    .line 2787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2788
    .line 2789
    .line 2790
    move-result-object v0

    .line 2791
    const/4 v11, 0x0

    .line 2792
    new-array v2, v11, [Ljava/lang/Object;

    .line 2793
    .line 2794
    const/4 v7, 0x0

    .line 2795
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2796
    .line 2797
    .line 2798
    move-result-object v0

    .line 2799
    throw v0

    .line 2800
    :catch_4
    move-exception v0

    .line 2801
    const/4 v11, 0x0

    .line 2802
    const/4 v8, 0x1

    .line 2803
    new-array v2, v8, [Ljava/lang/Object;

    .line 2804
    .line 2805
    aput-object v10, v2, v11

    .line 2806
    .line 2807
    const-string v3, "Unable to create call adapter for %s"

    .line 2808
    .line 2809
    invoke-static {v1, v0, v3, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2810
    .line 2811
    .line 2812
    move-result-object v0

    .line 2813
    throw v0

    .line 2814
    :cond_7e
    const/4 v7, 0x0

    .line 2815
    const/4 v11, 0x0

    .line 2816
    const-string v0, "Service methods cannot return void."

    .line 2817
    .line 2818
    new-array v2, v11, [Ljava/lang/Object;

    .line 2819
    .line 2820
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2821
    .line 2822
    .line 2823
    move-result-object v0

    .line 2824
    throw v0

    .line 2825
    :cond_7f
    const/4 v7, 0x0

    .line 2826
    const/4 v8, 0x1

    .line 2827
    const/4 v11, 0x0

    .line 2828
    new-array v0, v8, [Ljava/lang/Object;

    .line 2829
    .line 2830
    aput-object v2, v0, v11

    .line 2831
    .line 2832
    const-string v2, "Method return type must not include a type variable or wildcard: %s"

    .line 2833
    .line 2834
    invoke-static {v1, v7, v2, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2835
    .line 2836
    .line 2837
    move-result-object v0

    .line 2838
    throw v0

    .line 2839
    :cond_80
    move v11, v5

    .line 2840
    const/4 v7, 0x0

    .line 2841
    const-string v0, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    .line 2842
    .line 2843
    new-array v2, v11, [Ljava/lang/Object;

    .line 2844
    .line 2845
    invoke-static {v1, v7, v0, v2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 2846
    .line 2847
    .line 2848
    move-result-object v0

    .line 2849
    throw v0
.end method


# virtual methods
.method public abstract adapt(Lretrofit2/OkHttpCall;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
