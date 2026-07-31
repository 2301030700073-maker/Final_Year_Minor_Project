.class public final Lcoil3/fetch/DataUriFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final options:Lcoil3/request/Options;

.field public final uri:Lcoil3/Uri;


# direct methods
.method public synthetic constructor <init>(Lcoil3/Uri;Lcoil3/request/Options;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcoil3/fetch/DataUriFetcher;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/fetch/DataUriFetcher;->uri:Lcoil3/Uri;

    .line 4
    .line 5
    iput-object p2, p0, Lcoil3/fetch/DataUriFetcher;->options:Lcoil3/request/Options;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final fetch(Lcoil3/intercept/EngineInterceptor$fetch$1;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/fetch/DataUriFetcher;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x6

    .line 9
    const/16 v5, 0x2f

    .line 10
    .line 11
    const/16 v6, 0x3f

    .line 12
    .line 13
    const/16 v7, 0x23

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const-string v9, ""

    .line 17
    .line 18
    const/16 v10, 0x2e

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    iget-object v12, v0, Lcoil3/fetch/DataUriFetcher;->uri:Lcoil3/Uri;

    .line 22
    .line 23
    iget-object v0, v0, Lcoil3/fetch/DataUriFetcher;->options:Lcoil3/request/Options;

    .line 24
    .line 25
    const/4 v13, 0x0

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    iget-object v1, v12, Lcoil3/Uri;->authority:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "Invalid android.resource URI: "

    .line 32
    .line 33
    if-eqz v1, :cond_11

    .line 34
    .line 35
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v1, v13

    .line 43
    :goto_0
    if-eqz v1, :cond_11

    .line 44
    .line 45
    invoke-static {v12}, Lcoil3/UriKt;->getPathSegments(Lcoil3/Uri;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v3, :cond_10

    .line 56
    .line 57
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_10

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget-object v3, v0, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :goto_1
    new-instance v12, Landroid/util/TypedValue;

    .line 93
    .line 94
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v2, v12, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 98
    .line 99
    .line 100
    iget-object v12, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 101
    .line 102
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    if-eqz v14, :cond_2

    .line 111
    .line 112
    :goto_2
    move-object v6, v13

    .line 113
    goto :goto_3

    .line 114
    :cond_2
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-static {v7, v6}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-static {v5, v6, v6}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v10, v5, v9}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_3

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 138
    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    sget-object v6, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 147
    .line 148
    invoke-virtual {v6, v5}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Ljava/lang/String;

    .line 153
    .line 154
    if-nez v6, :cond_4

    .line 155
    .line 156
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v6, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    :cond_4
    :goto_3
    const-string v5, "text/xml"

    .line 165
    .line 166
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_f

    .line 171
    .line 172
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_5

    .line 181
    .line 182
    invoke-static {v3, v2}, Lcoil3/util/ContextsKt;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    :goto_4
    move-object v12, v1

    .line 187
    goto :goto_8

    .line 188
    :cond_5
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    :goto_5
    const/4 v6, 0x2

    .line 197
    if-eq v5, v6, :cond_6

    .line 198
    .line 199
    if-eq v5, v8, :cond_6

    .line 200
    .line 201
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    goto :goto_5

    .line 206
    :cond_6
    if-ne v5, v6, :cond_e

    .line 207
    .line 208
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 209
    .line 210
    const/16 v6, 0x18

    .line 211
    .line 212
    if-ge v5, v6, :cond_8

    .line 213
    .line 214
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    const-string/jumbo v6, "vector"

    .line 219
    .line 220
    .line 221
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_7

    .line 226
    .line 227
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    new-instance v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 236
    .line 237
    invoke-direct {v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v4, v1, v2, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 241
    .line 242
    .line 243
    :goto_6
    move-object v1, v6

    .line 244
    goto :goto_7

    .line 245
    :cond_7
    const-string v6, "animated-vector"

    .line 246
    .line 247
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_8

    .line 252
    .line 253
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    new-instance v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 262
    .line 263
    invoke-direct {v6, v3, v11}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v4, v1, v2, v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_8
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    sget-object v5, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 275
    .line 276
    invoke-virtual {v4, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    if-eqz v1, :cond_d

    .line 281
    .line 282
    :goto_7
    goto :goto_4

    .line 283
    :goto_8
    sget-object v1, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 284
    .line 285
    instance-of v1, v12, Landroid/graphics/drawable/VectorDrawable;

    .line 286
    .line 287
    if-nez v1, :cond_a

    .line 288
    .line 289
    instance-of v1, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 290
    .line 291
    if-eqz v1, :cond_9

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_9
    move v1, v11

    .line 295
    goto :goto_a

    .line 296
    :cond_a
    :goto_9
    move v1, v8

    .line 297
    :goto_a
    new-instance v2, Lcoil3/fetch/ImageFetchResult;

    .line 298
    .line 299
    if-eqz v1, :cond_c

    .line 300
    .line 301
    sget-object v4, Lcoil3/request/ImageRequests_androidKt;->bitmapConfigKey:Lcoil3/Extras$Key;

    .line 302
    .line 303
    invoke-static {v0, v4}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    move-object v13, v4

    .line 308
    check-cast v13, Landroid/graphics/Bitmap$Config;

    .line 309
    .line 310
    iget-object v14, v0, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 311
    .line 312
    iget-object v15, v0, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 313
    .line 314
    sget-object v4, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 315
    .line 316
    invoke-static {v0, v4}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    move-object/from16 v16, v4

    .line 321
    .line 322
    check-cast v16, Lcoil3/size/Size;

    .line 323
    .line 324
    iget-object v0, v0, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 325
    .line 326
    sget-object v4, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 327
    .line 328
    if-ne v0, v4, :cond_b

    .line 329
    .line 330
    move/from16 v17, v8

    .line 331
    .line 332
    goto :goto_b

    .line 333
    :cond_b
    move/from16 v17, v11

    .line 334
    .line 335
    :goto_b
    invoke-static/range {v12 .. v17}, Lkotlin/ResultKt;->convertToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 344
    .line 345
    invoke-direct {v12, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 346
    .line 347
    .line 348
    :cond_c
    invoke-static {v12}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    sget-object v3, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 353
    .line 354
    invoke-direct {v2, v0, v1, v3}, Lcoil3/fetch/ImageFetchResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;)V

    .line 355
    .line 356
    .line 357
    move-object v13, v2

    .line 358
    goto :goto_c

    .line 359
    :cond_d
    const-string v0, "Invalid resource ID: "

    .line 360
    .line 361
    invoke-static {v2, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    goto :goto_c

    .line 369
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 370
    .line 371
    const-string v1, "No start tag found."

    .line 372
    .line 373
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v0

    .line 377
    :cond_f
    new-instance v3, Landroid/util/TypedValue;

    .line 378
    .line 379
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    new-instance v13, Lcoil3/fetch/SourceFetchResult;

    .line 387
    .line 388
    invoke-static {v3}, Lokio/Okio__JvmOkioKt;->source(Ljava/io/InputStream;)Lokio/InputStreamSource;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    new-instance v4, Lokio/RealBufferedSource;

    .line 393
    .line 394
    invoke-direct {v4, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 395
    .line 396
    .line 397
    iget-object v0, v0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 398
    .line 399
    new-instance v3, Lcoil3/decode/ResourceMetadata;

    .line 400
    .line 401
    invoke-direct {v3, v2, v1}, Lcoil3/decode/ResourceMetadata;-><init>(ILjava/lang/String;)V

    .line 402
    .line 403
    .line 404
    new-instance v1, Lcoil3/decode/SourceImageSource;

    .line 405
    .line 406
    invoke-direct {v1, v4, v0, v3}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/util/UtilsKt;)V

    .line 407
    .line 408
    .line 409
    sget-object v0, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 410
    .line 411
    invoke-direct {v13, v1, v6, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 412
    .line 413
    .line 414
    goto :goto_c

    .line 415
    :cond_10
    invoke-static {v2, v12}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    goto :goto_c

    .line 419
    :cond_11
    invoke-static {v2, v12}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    :goto_c
    return-object v13

    .line 423
    :pswitch_0
    iget-object v1, v12, Lcoil3/Uri;->path:Ljava/lang/String;

    .line 424
    .line 425
    if-nez v1, :cond_12

    .line 426
    .line 427
    move-object v1, v9

    .line 428
    :cond_12
    const/16 v5, 0x21

    .line 429
    .line 430
    invoke-static {v1, v5, v11, v4}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    if-eq v4, v3, :cond_15

    .line 435
    .line 436
    sget-object v3, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-static {v3}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    add-int/2addr v4, v8

    .line 447
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-static {v1}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    new-instance v4, Lcoil3/fetch/SourceFetchResult;

    .line 460
    .line 461
    iget-object v0, v0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    new-instance v5, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 467
    .line 468
    invoke-direct {v5, v11}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 469
    .line 470
    .line 471
    invoke-static {v3, v0, v5}, Lokio/internal/ZipFilesKt;->openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-static {v1, v0, v13, v13, v2}, Lkotlin/text/RegexKt;->ImageSource$default(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/RealDiskCache$RealSnapshot;I)Lcoil3/decode/FileImageSource;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v1}, Lokio/Path;->name()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-static {v10, v1, v9}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-eqz v2, :cond_13

    .line 492
    .line 493
    goto :goto_d

    .line 494
    :cond_13
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 495
    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    sget-object v2, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 504
    .line 505
    invoke-virtual {v2, v1}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    move-object v13, v2

    .line 510
    check-cast v13, Ljava/lang/String;

    .line 511
    .line 512
    if-nez v13, :cond_14

    .line 513
    .line 514
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v13

    .line 522
    :cond_14
    :goto_d
    sget-object v1, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 523
    .line 524
    invoke-direct {v4, v0, v13, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 525
    .line 526
    .line 527
    move-object v13, v4

    .line 528
    goto :goto_e

    .line 529
    :cond_15
    const-string v0, "Invalid jar:file URI: "

    .line 530
    .line 531
    invoke-static {v0, v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    :goto_e
    return-object v13

    .line 535
    :pswitch_1
    sget-object v1, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 536
    .line 537
    invoke-static {v12}, Lcoil3/UriKt;->getFilePath(Lcoil3/Uri;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    if-eqz v1, :cond_18

    .line 542
    .line 543
    invoke-static {v1}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    new-instance v3, Lcoil3/fetch/SourceFetchResult;

    .line 548
    .line 549
    iget-object v0, v0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 550
    .line 551
    invoke-static {v1, v0, v13, v13, v2}, Lkotlin/text/RegexKt;->ImageSource$default(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/RealDiskCache$RealSnapshot;I)Lcoil3/decode/FileImageSource;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-virtual {v1}, Lokio/Path;->name()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-static {v10, v1, v9}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    if-eqz v2, :cond_16

    .line 568
    .line 569
    goto :goto_f

    .line 570
    :cond_16
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    .line 578
    .line 579
    sget-object v2, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 580
    .line 581
    invoke-virtual {v2, v1}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    move-object v13, v2

    .line 586
    check-cast v13, Ljava/lang/String;

    .line 587
    .line 588
    if-nez v13, :cond_17

    .line 589
    .line 590
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v13

    .line 598
    :cond_17
    :goto_f
    sget-object v1, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 599
    .line 600
    invoke-direct {v3, v0, v13, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 601
    .line 602
    .line 603
    move-object v13, v3

    .line 604
    goto :goto_10

    .line 605
    :cond_18
    const-string v0, "filePath == null"

    .line 606
    .line 607
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    :goto_10
    return-object v13

    .line 611
    :pswitch_2
    invoke-static {v12}, Lcoil3/UriKt;->getPathSegments(Lcoil3/Uri;)Ljava/util/List;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;)Ljava/util/List;

    .line 616
    .line 617
    .line 618
    move-result-object v14

    .line 619
    const/16 v18, 0x0

    .line 620
    .line 621
    const/16 v19, 0x3e

    .line 622
    .line 623
    const-string v15, "/"

    .line 624
    .line 625
    const/16 v16, 0x0

    .line 626
    .line 627
    const/16 v17, 0x0

    .line 628
    .line 629
    invoke-static/range {v14 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    new-instance v2, Lcoil3/fetch/SourceFetchResult;

    .line 634
    .line 635
    iget-object v3, v0, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 636
    .line 637
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-static {v3}, Lokio/Okio__JvmOkioKt;->source(Ljava/io/InputStream;)Lokio/InputStreamSource;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    new-instance v4, Lokio/RealBufferedSource;

    .line 650
    .line 651
    invoke-direct {v4, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 652
    .line 653
    .line 654
    iget-object v0, v0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 655
    .line 656
    new-instance v3, Lcoil3/decode/AssetMetadata;

    .line 657
    .line 658
    invoke-direct {v3, v1}, Lcoil3/decode/AssetMetadata;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    new-instance v8, Lcoil3/decode/SourceImageSource;

    .line 662
    .line 663
    invoke-direct {v8, v4, v0, v3}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/util/UtilsKt;)V

    .line 664
    .line 665
    .line 666
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-eqz v0, :cond_19

    .line 671
    .line 672
    goto :goto_11

    .line 673
    :cond_19
    invoke-static {v1, v7}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-static {v0, v6}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-static {v5, v0, v0}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-static {v10, v0, v9}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    if-eqz v1, :cond_1a

    .line 694
    .line 695
    goto :goto_11

    .line 696
    :cond_1a
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 697
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    .line 704
    .line 705
    sget-object v1, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 706
    .line 707
    invoke-virtual {v1, v0}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    move-object v13, v1

    .line 712
    check-cast v13, Ljava/lang/String;

    .line 713
    .line 714
    if-nez v13, :cond_1b

    .line 715
    .line 716
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v13

    .line 724
    :cond_1b
    :goto_11
    sget-object v0, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 725
    .line 726
    invoke-direct {v2, v8, v13, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 727
    .line 728
    .line 729
    return-object v2

    .line 730
    :pswitch_3
    iget-object v1, v12, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 731
    .line 732
    const-string v2, ";base64,"

    .line 733
    .line 734
    invoke-static {v1, v2, v11, v11, v4}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    const-string v5, "invalid data uri: "

    .line 739
    .line 740
    if-eq v2, v3, :cond_3f

    .line 741
    .line 742
    const/16 v6, 0x3a

    .line 743
    .line 744
    invoke-static {v1, v6, v11, v4}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 745
    .line 746
    .line 747
    move-result v6

    .line 748
    if-eq v6, v3, :cond_3e

    .line 749
    .line 750
    add-int/2addr v6, v8

    .line 751
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    sget-object v6, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 756
    .line 757
    const/16 v7, 0x8

    .line 758
    .line 759
    add-int/2addr v2, v7

    .line 760
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 761
    .line 762
    .line 763
    move-result v9

    .line 764
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    iget-object v10, v6, Lkotlin/io/encoding/Base64;->paddingOption:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 768
    .line 769
    iget-boolean v12, v6, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 772
    .line 773
    .line 774
    move-result v14

    .line 775
    invoke-static {v2, v9, v14}, Lcoil3/util/UtilsKt;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    sget-object v2, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 783
    .line 784
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    array-length v2, v1

    .line 792
    array-length v9, v1

    .line 793
    invoke-static {v11, v2, v9}, Lcoil3/util/UtilsKt;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 794
    .line 795
    .line 796
    const/16 v9, 0x3d

    .line 797
    .line 798
    const/4 v14, -0x2

    .line 799
    if-nez v2, :cond_1c

    .line 800
    .line 801
    move/from16 p1, v4

    .line 802
    .line 803
    move v4, v11

    .line 804
    move/from16 v16, v12

    .line 805
    .line 806
    goto :goto_16

    .line 807
    :cond_1c
    if-eq v2, v8, :cond_3d

    .line 808
    .line 809
    if-eqz v12, :cond_20

    .line 810
    .line 811
    move/from16 v16, v2

    .line 812
    .line 813
    move v15, v11

    .line 814
    :goto_12
    move/from16 p1, v4

    .line 815
    .line 816
    if-ge v15, v2, :cond_1d

    .line 817
    .line 818
    aget-byte v4, v1, v15

    .line 819
    .line 820
    and-int/lit16 v4, v4, 0xff

    .line 821
    .line 822
    sget-object v17, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 823
    .line 824
    aget v4, v17, v4

    .line 825
    .line 826
    if-gez v4, :cond_1f

    .line 827
    .line 828
    if-ne v4, v14, :cond_1e

    .line 829
    .line 830
    sub-int v4, v2, v15

    .line 831
    .line 832
    sub-int v16, v16, v4

    .line 833
    .line 834
    :cond_1d
    :goto_13
    move/from16 v4, v16

    .line 835
    .line 836
    :goto_14
    move/from16 v16, v12

    .line 837
    .line 838
    goto :goto_15

    .line 839
    :cond_1e
    add-int/lit8 v16, v16, -0x1

    .line 840
    .line 841
    :cond_1f
    add-int/lit8 v15, v15, 0x1

    .line 842
    .line 843
    move/from16 v4, p1

    .line 844
    .line 845
    goto :goto_12

    .line 846
    :cond_20
    move/from16 p1, v4

    .line 847
    .line 848
    add-int/lit8 v4, v2, -0x1

    .line 849
    .line 850
    aget-byte v4, v1, v4

    .line 851
    .line 852
    if-ne v4, v9, :cond_21

    .line 853
    .line 854
    add-int/lit8 v16, v2, -0x1

    .line 855
    .line 856
    add-int/lit8 v4, v2, -0x2

    .line 857
    .line 858
    aget-byte v4, v1, v4

    .line 859
    .line 860
    if-ne v4, v9, :cond_1d

    .line 861
    .line 862
    add-int/lit8 v16, v2, -0x2

    .line 863
    .line 864
    goto :goto_13

    .line 865
    :cond_21
    move v4, v2

    .line 866
    goto :goto_14

    .line 867
    :goto_15
    int-to-long v11, v4

    .line 868
    const-wide/16 v17, 0x6

    .line 869
    .line 870
    mul-long v11, v11, v17

    .line 871
    .line 872
    const-wide/16 v17, 0x8

    .line 873
    .line 874
    div-long v11, v11, v17

    .line 875
    .line 876
    long-to-int v4, v11

    .line 877
    :goto_16
    new-array v11, v4, [B

    .line 878
    .line 879
    iget-boolean v6, v6, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 880
    .line 881
    if-eqz v6, :cond_22

    .line 882
    .line 883
    sget-object v6, Lkotlin/io/encoding/Base64Kt;->base64UrlDecodeMap:[I

    .line 884
    .line 885
    goto :goto_17

    .line 886
    :cond_22
    sget-object v6, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 887
    .line 888
    :goto_17
    const/4 v12, -0x8

    .line 889
    move/from16 v20, v7

    .line 890
    .line 891
    move/from16 v17, v8

    .line 892
    .line 893
    move v13, v12

    .line 894
    const/4 v8, 0x0

    .line 895
    const/4 v15, 0x0

    .line 896
    const/16 v18, 0x0

    .line 897
    .line 898
    :goto_18
    const-string v7, ") at index "

    .line 899
    .line 900
    const-string v9, "\'("

    .line 901
    .line 902
    if-ge v8, v2, :cond_33

    .line 903
    .line 904
    if-ne v13, v12, :cond_23

    .line 905
    .line 906
    add-int/lit8 v3, v8, 0x3

    .line 907
    .line 908
    if-ge v3, v2, :cond_23

    .line 909
    .line 910
    add-int/lit8 v21, v8, 0x1

    .line 911
    .line 912
    aget-byte v12, v1, v8

    .line 913
    .line 914
    and-int/lit16 v12, v12, 0xff

    .line 915
    .line 916
    aget v12, v6, v12

    .line 917
    .line 918
    add-int/lit8 v22, v8, 0x2

    .line 919
    .line 920
    aget-byte v14, v1, v21

    .line 921
    .line 922
    and-int/lit16 v14, v14, 0xff

    .line 923
    .line 924
    aget v14, v6, v14

    .line 925
    .line 926
    move-object/from16 v21, v1

    .line 927
    .line 928
    aget-byte v1, v21, v22

    .line 929
    .line 930
    and-int/lit16 v1, v1, 0xff

    .line 931
    .line 932
    aget v1, v6, v1

    .line 933
    .line 934
    add-int/lit8 v22, v8, 0x4

    .line 935
    .line 936
    aget-byte v3, v21, v3

    .line 937
    .line 938
    and-int/lit16 v3, v3, 0xff

    .line 939
    .line 940
    aget v3, v6, v3

    .line 941
    .line 942
    shl-int/lit8 v12, v12, 0x12

    .line 943
    .line 944
    shl-int/lit8 v14, v14, 0xc

    .line 945
    .line 946
    or-int/2addr v12, v14

    .line 947
    shl-int/lit8 v1, v1, 0x6

    .line 948
    .line 949
    or-int/2addr v1, v12

    .line 950
    or-int/2addr v1, v3

    .line 951
    if-ltz v1, :cond_24

    .line 952
    .line 953
    add-int/lit8 v3, v15, 0x1

    .line 954
    .line 955
    shr-int/lit8 v7, v1, 0x10

    .line 956
    .line 957
    int-to-byte v7, v7

    .line 958
    aput-byte v7, v11, v15

    .line 959
    .line 960
    add-int/lit8 v7, v15, 0x2

    .line 961
    .line 962
    shr-int/lit8 v8, v1, 0x8

    .line 963
    .line 964
    int-to-byte v8, v8

    .line 965
    aput-byte v8, v11, v3

    .line 966
    .line 967
    add-int/lit8 v15, v15, 0x3

    .line 968
    .line 969
    int-to-byte v1, v1

    .line 970
    aput-byte v1, v11, v7

    .line 971
    .line 972
    move-object/from16 v1, v21

    .line 973
    .line 974
    move/from16 v8, v22

    .line 975
    .line 976
    const/4 v3, -0x1

    .line 977
    const/16 v9, 0x3d

    .line 978
    .line 979
    :goto_19
    const/4 v12, -0x8

    .line 980
    const/4 v14, -0x2

    .line 981
    goto :goto_18

    .line 982
    :cond_23
    move-object/from16 v21, v1

    .line 983
    .line 984
    :cond_24
    aget-byte v1, v21, v8

    .line 985
    .line 986
    and-int/lit16 v1, v1, 0xff

    .line 987
    .line 988
    aget v3, v6, v1

    .line 989
    .line 990
    if-gez v3, :cond_31

    .line 991
    .line 992
    const/4 v12, -0x2

    .line 993
    if-ne v3, v12, :cond_2f

    .line 994
    .line 995
    const/4 v3, -0x8

    .line 996
    if-eq v13, v3, :cond_2e

    .line 997
    .line 998
    const/4 v1, -0x6

    .line 999
    const-string v3, "The padding option is set to ABSENT, but the input has a pad character at index "

    .line 1000
    .line 1001
    if-eq v13, v1, :cond_2c

    .line 1002
    .line 1003
    const/4 v1, -0x4

    .line 1004
    if-eq v13, v1, :cond_26

    .line 1005
    .line 1006
    if-ne v13, v12, :cond_25

    .line 1007
    .line 1008
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    .line 1009
    .line 1010
    goto :goto_1e

    .line 1011
    :cond_25
    const-string v0, "Unreachable"

    .line 1012
    .line 1013
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    :goto_1b
    const/4 v13, 0x0

    .line 1017
    goto/16 :goto_24

    .line 1018
    .line 1019
    :cond_26
    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 1020
    .line 1021
    if-eq v10, v1, :cond_2b

    .line 1022
    .line 1023
    add-int/lit8 v8, v8, 0x1

    .line 1024
    .line 1025
    if-nez v16, :cond_27

    .line 1026
    .line 1027
    goto :goto_1d

    .line 1028
    :cond_27
    :goto_1c
    if-ge v8, v2, :cond_29

    .line 1029
    .line 1030
    aget-byte v1, v21, v8

    .line 1031
    .line 1032
    and-int/lit16 v1, v1, 0xff

    .line 1033
    .line 1034
    sget-object v3, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 1035
    .line 1036
    aget v1, v3, v1

    .line 1037
    .line 1038
    const/4 v3, -0x1

    .line 1039
    if-eq v1, v3, :cond_28

    .line 1040
    .line 1041
    goto :goto_1d

    .line 1042
    :cond_28
    add-int/lit8 v8, v8, 0x1

    .line 1043
    .line 1044
    goto :goto_1c

    .line 1045
    :cond_29
    :goto_1d
    if-eq v8, v2, :cond_2a

    .line 1046
    .line 1047
    aget-byte v1, v21, v8

    .line 1048
    .line 1049
    const/16 v12, 0x3d

    .line 1050
    .line 1051
    if-ne v1, v12, :cond_2a

    .line 1052
    .line 1053
    add-int/lit8 v8, v8, 0x1

    .line 1054
    .line 1055
    goto :goto_1e

    .line 1056
    :cond_2a
    const-string v0, "Missing one pad character at index "

    .line 1057
    .line 1058
    invoke-static {v8, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    goto :goto_1b

    .line 1066
    :cond_2b
    invoke-static {v8, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    goto :goto_1b

    .line 1074
    :cond_2c
    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 1075
    .line 1076
    if-eq v10, v1, :cond_2d

    .line 1077
    .line 1078
    goto :goto_1a

    .line 1079
    :goto_1e
    move/from16 v19, v17

    .line 1080
    .line 1081
    const/4 v12, -0x2

    .line 1082
    goto/16 :goto_20

    .line 1083
    .line 1084
    :cond_2d
    invoke-static {v8, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    goto :goto_1b

    .line 1092
    :cond_2e
    const-string v0, "Redundant pad character at index "

    .line 1093
    .line 1094
    invoke-static {v8, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    goto :goto_1b

    .line 1102
    :cond_2f
    const/16 v12, 0x3d

    .line 1103
    .line 1104
    if-eqz v16, :cond_30

    .line 1105
    .line 1106
    add-int/lit8 v8, v8, 0x1

    .line 1107
    .line 1108
    move v9, v12

    .line 1109
    move-object/from16 v1, v21

    .line 1110
    .line 1111
    const/4 v3, -0x1

    .line 1112
    goto/16 :goto_19

    .line 1113
    .line 1114
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1115
    .line 1116
    int-to-char v2, v1

    .line 1117
    invoke-static/range {v20 .. v20}, Lcoil3/util/UtilsKt;->checkRadix(I)V

    .line 1118
    .line 1119
    .line 1120
    move/from16 v3, v20

    .line 1121
    .line 1122
    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v1

    .line 1126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    .line 1128
    .line 1129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    const-string v4, "Invalid symbol \'"

    .line 1132
    .line 1133
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    throw v0

    .line 1159
    :cond_31
    const/16 v12, 0x3d

    .line 1160
    .line 1161
    add-int/lit8 v8, v8, 0x1

    .line 1162
    .line 1163
    shl-int/lit8 v1, v18, 0x6

    .line 1164
    .line 1165
    or-int v18, v1, v3

    .line 1166
    .line 1167
    add-int/lit8 v3, v13, 0x6

    .line 1168
    .line 1169
    if-ltz v3, :cond_32

    .line 1170
    .line 1171
    add-int/lit8 v1, v15, 0x1

    .line 1172
    .line 1173
    ushr-int v7, v18, v3

    .line 1174
    .line 1175
    int-to-byte v7, v7

    .line 1176
    aput-byte v7, v11, v15

    .line 1177
    .line 1178
    shl-int v3, v17, v3

    .line 1179
    .line 1180
    add-int/lit8 v3, v3, -0x1

    .line 1181
    .line 1182
    and-int v18, v18, v3

    .line 1183
    .line 1184
    add-int/lit8 v13, v13, -0x2

    .line 1185
    .line 1186
    move v15, v1

    .line 1187
    :goto_1f
    move v9, v12

    .line 1188
    move-object/from16 v1, v21

    .line 1189
    .line 1190
    const/4 v3, -0x1

    .line 1191
    const/4 v12, -0x8

    .line 1192
    const/4 v14, -0x2

    .line 1193
    const/16 v20, 0x8

    .line 1194
    .line 1195
    goto/16 :goto_18

    .line 1196
    .line 1197
    :cond_32
    move v13, v3

    .line 1198
    goto :goto_1f

    .line 1199
    :cond_33
    move-object/from16 v21, v1

    .line 1200
    .line 1201
    move v12, v14

    .line 1202
    const/16 v19, 0x0

    .line 1203
    .line 1204
    :goto_20
    if-eq v13, v12, :cond_3c

    .line 1205
    .line 1206
    const/4 v3, -0x8

    .line 1207
    if-eq v13, v3, :cond_35

    .line 1208
    .line 1209
    if-nez v19, :cond_35

    .line 1210
    .line 1211
    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 1212
    .line 1213
    if-eq v10, v1, :cond_34

    .line 1214
    .line 1215
    goto :goto_21

    .line 1216
    :cond_34
    const-string v0, "The padding option is set to PRESENT, but the input is not properly padded"

    .line 1217
    .line 1218
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    goto/16 :goto_1b

    .line 1222
    .line 1223
    :cond_35
    :goto_21
    if-nez v18, :cond_3b

    .line 1224
    .line 1225
    if-nez v16, :cond_36

    .line 1226
    .line 1227
    goto :goto_23

    .line 1228
    :cond_36
    :goto_22
    if-ge v8, v2, :cond_38

    .line 1229
    .line 1230
    aget-byte v1, v21, v8

    .line 1231
    .line 1232
    and-int/lit16 v1, v1, 0xff

    .line 1233
    .line 1234
    sget-object v3, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 1235
    .line 1236
    aget v1, v3, v1

    .line 1237
    .line 1238
    const/4 v3, -0x1

    .line 1239
    if-eq v1, v3, :cond_37

    .line 1240
    .line 1241
    goto :goto_23

    .line 1242
    :cond_37
    add-int/lit8 v8, v8, 0x1

    .line 1243
    .line 1244
    goto :goto_22

    .line 1245
    :cond_38
    :goto_23
    if-lt v8, v2, :cond_3a

    .line 1246
    .line 1247
    if-ne v15, v4, :cond_39

    .line 1248
    .line 1249
    new-instance v1, Lokio/Buffer;

    .line 1250
    .line 1251
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v1, v4, v11}, Lokio/Buffer;->write(I[B)V

    .line 1255
    .line 1256
    .line 1257
    iget-object v0, v0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 1258
    .line 1259
    invoke-static {v1, v0}, Lkotlin/text/RegexKt;->ImageSource$default(Lokio/BufferedSource;Lokio/FileSystem;)Lcoil3/decode/SourceImageSource;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    sget-object v1, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    .line 1264
    .line 1265
    new-instance v13, Lcoil3/fetch/SourceFetchResult;

    .line 1266
    .line 1267
    invoke-direct {v13, v0, v5, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 1268
    .line 1269
    .line 1270
    goto :goto_24

    .line 1271
    :cond_39
    const-string v0, "Check failed."

    .line 1272
    .line 1273
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    goto/16 :goto_1b

    .line 1277
    .line 1278
    :cond_3a
    aget-byte v0, v21, v8

    .line 1279
    .line 1280
    and-int/lit16 v0, v0, 0xff

    .line 1281
    .line 1282
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    const-string v2, "Symbol \'"

    .line 1285
    .line 1286
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    int-to-char v2, v0

    .line 1290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    .line 1296
    const/16 v3, 0x8

    .line 1297
    .line 1298
    invoke-static {v3}, Lcoil3/util/UtilsKt;->checkRadix(I)V

    .line 1299
    .line 1300
    .line 1301
    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v0

    .line 1305
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    .line 1313
    .line 1314
    add-int/lit8 v8, v8, -0x1

    .line 1315
    .line 1316
    const-string v0, " is prohibited after the pad character"

    .line 1317
    .line 1318
    invoke-static {v1, v8, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    goto/16 :goto_1b

    .line 1326
    .line 1327
    :cond_3b
    const-string v0, "The pad bits must be zeros"

    .line 1328
    .line 1329
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    goto/16 :goto_1b

    .line 1333
    .line 1334
    :cond_3c
    const-string v0, "The last unit of input does not have enough bits"

    .line 1335
    .line 1336
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1337
    .line 1338
    .line 1339
    goto/16 :goto_1b

    .line 1340
    .line 1341
    :cond_3d
    const-string v0, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "

    .line 1342
    .line 1343
    invoke-static {v2, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v0

    .line 1347
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1348
    .line 1349
    .line 1350
    goto/16 :goto_1b

    .line 1351
    .line 1352
    :cond_3e
    invoke-static {v5, v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1353
    .line 1354
    .line 1355
    goto/16 :goto_1b

    .line 1356
    .line 1357
    :cond_3f
    invoke-static {v5, v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1358
    .line 1359
    .line 1360
    goto/16 :goto_1b

    .line 1361
    .line 1362
    :goto_24
    return-object v13

    .line 1363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
