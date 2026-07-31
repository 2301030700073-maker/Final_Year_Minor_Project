.class public final Lcoil3/fetch/DataUriFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    .locals 21

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
    sget-object v12, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    .line 22
    .line 23
    iget-object v13, v0, Lcoil3/fetch/DataUriFetcher;->uri:Lcoil3/Uri;

    .line 24
    .line 25
    iget-object v0, v0, Lcoil3/fetch/DataUriFetcher;->options:Lcoil3/request/Options;

    .line 26
    .line 27
    const/4 v14, 0x0

    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    iget-object v1, v13, Lcoil3/Uri;->authority:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "Invalid android.resource URI: "

    .line 34
    .line 35
    if-eqz v1, :cond_11

    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v1, v14

    .line 45
    :goto_0
    if-eqz v1, :cond_11

    .line 46
    .line 47
    invoke-static {v13}, Lcoil3/UriKt;->getPathSegments(Lcoil3/Uri;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v3, :cond_10

    .line 58
    .line 59
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_10

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iget-object v3, v0, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    :goto_1
    new-instance v13, Landroid/util/TypedValue;

    .line 95
    .line 96
    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v2, v13, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 100
    .line 101
    .line 102
    iget-object v13, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 103
    .line 104
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    if-eqz v15, :cond_2

    .line 113
    .line 114
    :goto_2
    move-object v6, v14

    .line 115
    goto :goto_3

    .line 116
    :cond_2
    invoke-static {v13, v7}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v7, v6}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-static {v5, v6, v6}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v10, v5, v9}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_3

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 140
    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget-object v6, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 149
    .line 150
    invoke-virtual {v6, v5}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    check-cast v6, Ljava/lang/String;

    .line 155
    .line 156
    if-nez v6, :cond_4

    .line 157
    .line 158
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v6, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    :cond_4
    :goto_3
    const-string/jumbo v5, "text/xml"

    .line 167
    .line 168
    .line 169
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_f

    .line 174
    .line 175
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_5

    .line 184
    .line 185
    invoke-static {v3, v2}, Lcoil3/util/UtilsKt;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :goto_4
    move-object v13, v1

    .line 190
    goto :goto_8

    .line 191
    :cond_5
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    :goto_5
    const/4 v6, 0x2

    .line 200
    if-eq v5, v6, :cond_6

    .line 201
    .line 202
    if-eq v5, v8, :cond_6

    .line 203
    .line 204
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    goto :goto_5

    .line 209
    :cond_6
    if-ne v5, v6, :cond_e

    .line 210
    .line 211
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 212
    .line 213
    const/16 v6, 0x18

    .line 214
    .line 215
    if-ge v5, v6, :cond_8

    .line 216
    .line 217
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    const-string/jumbo v6, "vector"

    .line 222
    .line 223
    .line 224
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-eqz v6, :cond_7

    .line 229
    .line 230
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    new-instance v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 239
    .line 240
    invoke-direct {v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v4, v1, v2, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 244
    .line 245
    .line 246
    :goto_6
    move-object v1, v6

    .line 247
    goto :goto_7

    .line 248
    :cond_7
    const-string v6, "animated-vector"

    .line 249
    .line 250
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_8

    .line 255
    .line 256
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    new-instance v6, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 265
    .line 266
    invoke-direct {v6, v3, v11}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Landroid/content/Context;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v4, v1, v2, v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_8
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    sget-object v5, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 278
    .line 279
    invoke-virtual {v4, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    if-eqz v1, :cond_d

    .line 284
    .line 285
    :goto_7
    goto :goto_4

    .line 286
    :goto_8
    sget-object v1, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 287
    .line 288
    instance-of v1, v13, Landroid/graphics/drawable/VectorDrawable;

    .line 289
    .line 290
    if-nez v1, :cond_a

    .line 291
    .line 292
    instance-of v1, v13, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 293
    .line 294
    if-eqz v1, :cond_9

    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_9
    move v1, v11

    .line 298
    goto :goto_a

    .line 299
    :cond_a
    :goto_9
    move v1, v8

    .line 300
    :goto_a
    new-instance v2, Lcoil3/fetch/ImageFetchResult;

    .line 301
    .line 302
    if-eqz v1, :cond_c

    .line 303
    .line 304
    sget-object v4, Lcoil3/request/ImageRequests_androidKt;->bitmapConfigKey:Lcoil3/Extras$Key;

    .line 305
    .line 306
    invoke-static {v0, v4}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    move-object v14, v4

    .line 311
    check-cast v14, Landroid/graphics/Bitmap$Config;

    .line 312
    .line 313
    iget-object v15, v0, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 314
    .line 315
    iget-object v4, v0, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 316
    .line 317
    sget-object v5, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 318
    .line 319
    invoke-static {v0, v5}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    move-object/from16 v17, v5

    .line 324
    .line 325
    check-cast v17, Lcoil3/size/Size;

    .line 326
    .line 327
    iget-object v0, v0, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 328
    .line 329
    sget-object v5, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 330
    .line 331
    if-ne v0, v5, :cond_b

    .line 332
    .line 333
    move/from16 v18, v8

    .line 334
    .line 335
    :goto_b
    move-object/from16 v16, v4

    .line 336
    .line 337
    goto :goto_c

    .line 338
    :cond_b
    move/from16 v18, v11

    .line 339
    .line 340
    goto :goto_b

    .line 341
    :goto_c
    invoke-static/range {v13 .. v18}, Lcoil3/util/UtilsKt;->convertToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 350
    .line 351
    invoke-direct {v13, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 352
    .line 353
    .line 354
    :cond_c
    invoke-static {v13}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-direct {v2, v0, v1, v12}, Lcoil3/fetch/ImageFetchResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;)V

    .line 359
    .line 360
    .line 361
    move-object v14, v2

    .line 362
    goto :goto_d

    .line 363
    :cond_d
    const-string v0, "Invalid resource ID: "

    .line 364
    .line 365
    invoke-static {v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    goto :goto_d

    .line 373
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 374
    .line 375
    const-string v1, "No start tag found."

    .line 376
    .line 377
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :cond_f
    new-instance v3, Landroid/util/TypedValue;

    .line 382
    .line 383
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    new-instance v14, Lcoil3/fetch/SourceFetchResult;

    .line 391
    .line 392
    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/InputStreamSource;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    new-instance v4, Lokio/RealBufferedSource;

    .line 397
    .line 398
    invoke-direct {v4, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, v0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 402
    .line 403
    new-instance v3, Lcoil3/decode/ResourceMetadata;

    .line 404
    .line 405
    invoke-direct {v3, v1, v2}, Lcoil3/decode/ResourceMetadata;-><init>(Ljava/lang/String;I)V

    .line 406
    .line 407
    .line 408
    new-instance v1, Lcoil3/decode/SourceImageSource;

    .line 409
    .line 410
    invoke-direct {v1, v4, v0, v3}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Landroidx/room/Room;)V

    .line 411
    .line 412
    .line 413
    invoke-direct {v14, v1, v6, v12}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 414
    .line 415
    .line 416
    goto :goto_d

    .line 417
    :cond_10
    invoke-static {v13, v2}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    goto :goto_d

    .line 421
    :cond_11
    invoke-static {v13, v2}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    :goto_d
    return-object v14

    .line 425
    :pswitch_0
    iget-object v1, v13, Lcoil3/Uri;->path:Ljava/lang/String;

    .line 426
    .line 427
    if-nez v1, :cond_12

    .line 428
    .line 429
    move-object v1, v9

    .line 430
    :cond_12
    const/16 v5, 0x21

    .line 431
    .line 432
    invoke-static {v5, v11, v4, v1}, Lkotlin/text/StringsKt;->indexOf$default(CIILjava/lang/CharSequence;)I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-eq v4, v3, :cond_15

    .line 437
    .line 438
    sget-object v3, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    invoke-static {v3}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    add-int/2addr v4, v8

    .line 449
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-static {v1}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    new-instance v4, Lcoil3/fetch/SourceFetchResult;

    .line 462
    .line 463
    iget-object v0, v0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    new-instance v5, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 469
    .line 470
    invoke-direct {v5, v11}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 471
    .line 472
    .line 473
    invoke-static {v3, v0, v5}, Lokio/internal/ZipFilesKt;->openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-static {v1, v0, v14, v14, v2}, Lnet/newpipe/app/AppKt;->ImageSource$default(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/RealDiskCache$RealSnapshot;I)Lcoil3/decode/FileImageSource;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v1}, Lokio/Path;->name()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-static {v10, v1, v9}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_13

    .line 494
    .line 495
    goto :goto_e

    .line 496
    :cond_13
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 497
    .line 498
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    sget-object v2, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 506
    .line 507
    invoke-virtual {v2, v1}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    move-object v14, v2

    .line 512
    check-cast v14, Ljava/lang/String;

    .line 513
    .line 514
    if-nez v14, :cond_14

    .line 515
    .line 516
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v14

    .line 524
    :cond_14
    :goto_e
    invoke-direct {v4, v0, v14, v12}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 525
    .line 526
    .line 527
    move-object v14, v4

    .line 528
    goto :goto_f

    .line 529
    :cond_15
    const-string v0, "Invalid jar:file URI: "

    .line 530
    .line 531
    invoke-static {v13, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    :goto_f
    return-object v14

    .line 535
    :pswitch_1
    sget-object v1, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 536
    .line 537
    invoke-static {v13}, Lcoil3/UriKt;->getFilePath(Lcoil3/Uri;)Ljava/lang/String;

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
    invoke-static {v1, v0, v14, v14, v2}, Lnet/newpipe/app/AppKt;->ImageSource$default(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/RealDiskCache$RealSnapshot;I)Lcoil3/decode/FileImageSource;

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
    goto :goto_10

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
    move-object v14, v2

    .line 586
    check-cast v14, Ljava/lang/String;

    .line 587
    .line 588
    if-nez v14, :cond_17

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
    move-result-object v14

    .line 598
    :cond_17
    :goto_10
    invoke-direct {v3, v0, v14, v12}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 599
    .line 600
    .line 601
    move-object v14, v3

    .line 602
    goto :goto_11

    .line 603
    :cond_18
    const-string v0, "filePath == null"

    .line 604
    .line 605
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    :goto_11
    return-object v14

    .line 609
    :pswitch_2
    invoke-static {v13}, Lcoil3/UriKt;->getPathSegments(Lcoil3/Uri;)Ljava/util/List;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/util/List;)Ljava/util/List;

    .line 614
    .line 615
    .line 616
    move-result-object v15

    .line 617
    const/16 v19, 0x0

    .line 618
    .line 619
    const/16 v20, 0x3e

    .line 620
    .line 621
    const-string v16, "/"

    .line 622
    .line 623
    const/16 v17, 0x0

    .line 624
    .line 625
    const/16 v18, 0x0

    .line 626
    .line 627
    invoke-static/range {v15 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    new-instance v2, Lcoil3/fetch/SourceFetchResult;

    .line 632
    .line 633
    iget-object v3, v0, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 634
    .line 635
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/InputStreamSource;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    new-instance v4, Lokio/RealBufferedSource;

    .line 648
    .line 649
    invoke-direct {v4, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 650
    .line 651
    .line 652
    iget-object v0, v0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 653
    .line 654
    new-instance v3, Lcoil3/decode/AssetMetadata;

    .line 655
    .line 656
    invoke-direct {v3, v1}, Lcoil3/decode/AssetMetadata;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    new-instance v8, Lcoil3/decode/SourceImageSource;

    .line 660
    .line 661
    invoke-direct {v8, v4, v0, v3}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Landroidx/room/Room;)V

    .line 662
    .line 663
    .line 664
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    if-eqz v0, :cond_19

    .line 669
    .line 670
    goto :goto_12

    .line 671
    :cond_19
    invoke-static {v1, v7}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-static {v0, v6}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-static {v5, v0, v0}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-static {v10, v0, v9}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-eqz v1, :cond_1a

    .line 692
    .line 693
    goto :goto_12

    .line 694
    :cond_1a
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 695
    .line 696
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    sget-object v1, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 704
    .line 705
    invoke-virtual {v1, v0}, Lkotlin/collections/builders/MapBuilder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    move-object v14, v1

    .line 710
    check-cast v14, Ljava/lang/String;

    .line 711
    .line 712
    if-nez v14, :cond_1b

    .line 713
    .line 714
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v14

    .line 722
    :cond_1b
    :goto_12
    invoke-direct {v2, v8, v14, v12}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 723
    .line 724
    .line 725
    return-object v2

    .line 726
    :pswitch_3
    iget-object v1, v13, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 727
    .line 728
    iget-object v2, v13, Lcoil3/Uri;->data:Ljava/lang/String;

    .line 729
    .line 730
    const-string v5, ";base64,"

    .line 731
    .line 732
    invoke-static {v1, v5, v11, v4}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    const-string v5, "invalid data uri: "

    .line 737
    .line 738
    if-eq v1, v3, :cond_1d

    .line 739
    .line 740
    const/16 v6, 0x3a

    .line 741
    .line 742
    invoke-static {v6, v11, v4, v2}, Lkotlin/text/StringsKt;->indexOf$default(CIILjava/lang/CharSequence;)I

    .line 743
    .line 744
    .line 745
    move-result v4

    .line 746
    if-eq v4, v3, :cond_1c

    .line 747
    .line 748
    add-int/2addr v4, v8

    .line 749
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    sget-object v4, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 754
    .line 755
    add-int/lit8 v1, v1, 0x8

    .line 756
    .line 757
    const/4 v5, 0x4

    .line 758
    invoke-static {v4, v2, v1, v5}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;II)[B

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    new-instance v2, Lokio/Buffer;

    .line 763
    .line 764
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 765
    .line 766
    .line 767
    array-length v4, v1

    .line 768
    invoke-virtual {v2, v4, v1}, Lokio/Buffer;->write(I[B)V

    .line 769
    .line 770
    .line 771
    iget-object v0, v0, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 772
    .line 773
    new-instance v1, Lcoil3/decode/SourceImageSource;

    .line 774
    .line 775
    invoke-direct {v1, v2, v0, v14}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Landroidx/room/Room;)V

    .line 776
    .line 777
    .line 778
    new-instance v14, Lcoil3/fetch/SourceFetchResult;

    .line 779
    .line 780
    sget-object v0, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    .line 781
    .line 782
    invoke-direct {v14, v1, v3, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 783
    .line 784
    .line 785
    goto :goto_13

    .line 786
    :cond_1c
    invoke-static {v13, v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    goto :goto_13

    .line 790
    :cond_1d
    invoke-static {v13, v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    :goto_13
    return-object v14

    .line 794
    nop

    .line 795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
