.class public final Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field public static final DEBUG:Z

.field public static final EXIF_ASCII_PREFIX:[B

.field public static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final HEIF_BRAND_AVIF:[B

.field public static final HEIF_BRAND_AVIS:[B

.field public static final HEIF_BRAND_HEIC:[B

.field public static final HEIF_BRAND_MIF1:[B

.field public static final HEIF_TYPE_FTYP:[B

.field public static final IDENTIFIER_EXIF_APP1:[B

.field public static final IDENTIFIER_XMP_APP1:[B

.field public static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field public static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field public static final JPEG_SIGNATURE:[B

.field public static final ORF_MAKER_NOTE_HEADER_1:[B

.field public static final ORF_MAKER_NOTE_HEADER_2:[B

.field public static final PNG_ITXT_XMP_KEYWORD:[B

.field public static final PNG_SIGNATURE:[B

.field public static final RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

.field public static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final WEBP_CHUNK_TYPE_EXIF:[B

.field public static final WEBP_SIGNATURE_1:[B

.field public static final WEBP_SIGNATURE_2:[B

.field public static final sExifPointerTagMap:Ljava/util/HashMap;

.field public static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field public static final sExifTagMapsForWriting:[Ljava/util/HashMap;


# instance fields
.field public mAreThumbnailStripsConsecutive:Z

.field public final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field public final mAttributes:[Ljava/util/HashMap;

.field public final mAttributesOffsets:Ljava/util/HashSet;

.field public mExifByteOrder:Ljava/nio/ByteOrder;

.field public final mFilename:Ljava/lang/String;

.field public final mIsExifDataOnly:Z

.field public mMimeType:I

.field public mOffsetToExifData:I

.field public mOrfMakerNoteOffset:I

.field public mOrfThumbnailLength:I

.field public mOrfThumbnailOffset:I

.field public final mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field public mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 127

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "ExifInterface"

    .line 7
    .line 8
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sput-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x6

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v6, 0x8

    .line 25
    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const/4 v8, 0x4

    .line 31
    new-array v9, v8, [Ljava/lang/Integer;

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    aput-object v3, v9, v10

    .line 35
    .line 36
    aput-object v5, v9, v2

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    aput-object v1, v9, v5

    .line 40
    .line 41
    aput-object v7, v9, v0

    .line 42
    .line 43
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    const/4 v11, 0x7

    .line 51
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    const/4 v14, 0x5

    .line 60
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    move/from16 v16, v10

    .line 65
    .line 66
    new-array v10, v8, [Ljava/lang/Integer;

    .line 67
    .line 68
    aput-object v9, v10, v16

    .line 69
    .line 70
    aput-object v12, v10, v2

    .line 71
    .line 72
    aput-object v13, v10, v5

    .line 73
    .line 74
    aput-object v15, v10, v0

    .line 75
    .line 76
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    filled-new-array {v6, v6, v6}, [I

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 84
    .line 85
    filled-new-array {v6}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 90
    .line 91
    new-array v10, v0, [B

    .line 92
    .line 93
    fill-array-data v10, :array_0

    .line 94
    .line 95
    .line 96
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 97
    .line 98
    new-array v10, v8, [B

    .line 99
    .line 100
    fill-array-data v10, :array_1

    .line 101
    .line 102
    .line 103
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 104
    .line 105
    new-array v10, v8, [B

    .line 106
    .line 107
    fill-array-data v10, :array_2

    .line 108
    .line 109
    .line 110
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 111
    .line 112
    new-array v10, v8, [B

    .line 113
    .line 114
    fill-array-data v10, :array_3

    .line 115
    .line 116
    .line 117
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 118
    .line 119
    new-array v10, v8, [B

    .line 120
    .line 121
    fill-array-data v10, :array_4

    .line 122
    .line 123
    .line 124
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    .line 125
    .line 126
    new-array v10, v8, [B

    .line 127
    .line 128
    fill-array-data v10, :array_5

    .line 129
    .line 130
    .line 131
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 132
    .line 133
    new-array v10, v4, [B

    .line 134
    .line 135
    fill-array-data v10, :array_6

    .line 136
    .line 137
    .line 138
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 139
    .line 140
    const/16 v10, 0xa

    .line 141
    .line 142
    new-array v13, v10, [B

    .line 143
    .line 144
    fill-array-data v13, :array_7

    .line 145
    .line 146
    .line 147
    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 148
    .line 149
    new-array v13, v6, [B

    .line 150
    .line 151
    fill-array-data v13, :array_8

    .line 152
    .line 153
    .line 154
    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 155
    .line 156
    const-string v13, "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000"

    .line 157
    .line 158
    move/from16 v17, v10

    .line 159
    .line 160
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 161
    .line 162
    invoke-virtual {v13, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    .line 167
    .line 168
    new-array v10, v8, [B

    .line 169
    .line 170
    fill-array-data v10, :array_9

    .line 171
    .line 172
    .line 173
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 174
    .line 175
    new-array v10, v8, [B

    .line 176
    .line 177
    fill-array-data v10, :array_a

    .line 178
    .line 179
    .line 180
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 181
    .line 182
    new-array v10, v8, [B

    .line 183
    .line 184
    fill-array-data v10, :array_b

    .line 185
    .line 186
    .line 187
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 188
    .line 189
    const-string v10, "VP8X"

    .line 190
    .line 191
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 196
    .line 197
    .line 198
    const-string v10, "VP8L"

    .line 199
    .line 200
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 205
    .line 206
    .line 207
    const-string v10, "VP8 "

    .line 208
    .line 209
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 214
    .line 215
    .line 216
    const-string v10, "ANIM"

    .line 217
    .line 218
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 223
    .line 224
    .line 225
    const-string v10, "ANMF"

    .line 226
    .line 227
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 232
    .line 233
    .line 234
    const-string v30, "DOUBLE"

    .line 235
    .line 236
    const-string v31, "IFD"

    .line 237
    .line 238
    const-string v18, ""

    .line 239
    .line 240
    const-string v19, "BYTE"

    .line 241
    .line 242
    const-string v20, "STRING"

    .line 243
    .line 244
    const-string v21, "USHORT"

    .line 245
    .line 246
    const-string v22, "ULONG"

    .line 247
    .line 248
    const-string v23, "URATIONAL"

    .line 249
    .line 250
    const-string v24, "SBYTE"

    .line 251
    .line 252
    const-string v25, "UNDEFINED"

    .line 253
    .line 254
    const-string v26, "SSHORT"

    .line 255
    .line 256
    const-string v27, "SLONG"

    .line 257
    .line 258
    const-string v28, "SRATIONAL"

    .line 259
    .line 260
    const-string v29, "SINGLE"

    .line 261
    .line 262
    filled-new-array/range {v18 .. v31}, [Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 267
    .line 268
    const/16 v10, 0xe

    .line 269
    .line 270
    new-array v13, v10, [I

    .line 271
    .line 272
    fill-array-data v13, :array_c

    .line 273
    .line 274
    .line 275
    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 276
    .line 277
    new-array v13, v6, [B

    .line 278
    .line 279
    fill-array-data v13, :array_d

    .line 280
    .line 281
    .line 282
    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 283
    .line 284
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 285
    .line 286
    move/from16 v18, v10

    .line 287
    .line 288
    const-string v10, "NewSubfileType"

    .line 289
    .line 290
    move/from16 v19, v6

    .line 291
    .line 292
    const/16 v6, 0xfe

    .line 293
    .line 294
    invoke-direct {v13, v10, v6, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 295
    .line 296
    .line 297
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 298
    .line 299
    const-string v2, "SubfileType"

    .line 300
    .line 301
    const/16 v11, 0xff

    .line 302
    .line 303
    invoke-direct {v6, v2, v11, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 304
    .line 305
    .line 306
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 307
    .line 308
    const/16 v4, 0x100

    .line 309
    .line 310
    const-string v14, "ImageWidth"

    .line 311
    .line 312
    invoke-direct {v11, v4, v0, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 316
    .line 317
    const/16 v4, 0x101

    .line 318
    .line 319
    const-string v5, "ImageLength"

    .line 320
    .line 321
    invoke-direct {v14, v4, v0, v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 322
    .line 323
    .line 324
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 325
    .line 326
    const-string v4, "BitsPerSample"

    .line 327
    .line 328
    const/16 v8, 0x102

    .line 329
    .line 330
    invoke-direct {v5, v4, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 331
    .line 332
    .line 333
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 334
    .line 335
    move-object/from16 v31, v5

    .line 336
    .line 337
    const-string v5, "Compression"

    .line 338
    .line 339
    move-object/from16 v32, v6

    .line 340
    .line 341
    const/16 v6, 0x103

    .line 342
    .line 343
    invoke-direct {v8, v5, v6, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 344
    .line 345
    .line 346
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 347
    .line 348
    move-object/from16 v34, v8

    .line 349
    .line 350
    const-string v8, "PhotometricInterpretation"

    .line 351
    .line 352
    move-object/from16 v35, v11

    .line 353
    .line 354
    const/16 v11, 0x106

    .line 355
    .line 356
    invoke-direct {v6, v8, v11, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 357
    .line 358
    .line 359
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 360
    .line 361
    const-string v0, "ImageDescription"

    .line 362
    .line 363
    move-object/from16 v38, v6

    .line 364
    .line 365
    const/16 v6, 0x10e

    .line 366
    .line 367
    move-object/from16 v39, v13

    .line 368
    .line 369
    const/4 v13, 0x2

    .line 370
    invoke-direct {v11, v0, v6, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 371
    .line 372
    .line 373
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 374
    .line 375
    move-object/from16 v41, v11

    .line 376
    .line 377
    const-string v11, "Make"

    .line 378
    .line 379
    move-object/from16 v42, v14

    .line 380
    .line 381
    const/16 v14, 0x10f

    .line 382
    .line 383
    invoke-direct {v6, v11, v14, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 384
    .line 385
    .line 386
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 387
    .line 388
    move-object/from16 v44, v6

    .line 389
    .line 390
    const/16 v6, 0x110

    .line 391
    .line 392
    move-object/from16 v45, v7

    .line 393
    .line 394
    const-string v7, "Model"

    .line 395
    .line 396
    invoke-direct {v14, v7, v6, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 397
    .line 398
    .line 399
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 400
    .line 401
    const/16 v13, 0x111

    .line 402
    .line 403
    move-object/from16 v46, v14

    .line 404
    .line 405
    const-string v14, "StripOffsets"

    .line 406
    .line 407
    move-object/from16 v48, v1

    .line 408
    .line 409
    move-object/from16 v47, v12

    .line 410
    .line 411
    const/4 v1, 0x4

    .line 412
    const/4 v12, 0x3

    .line 413
    invoke-direct {v6, v13, v12, v1, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 414
    .line 415
    .line 416
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 417
    .line 418
    const-string v13, "Orientation"

    .line 419
    .line 420
    move-object/from16 v49, v6

    .line 421
    .line 422
    const/16 v6, 0x112

    .line 423
    .line 424
    invoke-direct {v1, v13, v6, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 425
    .line 426
    .line 427
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 428
    .line 429
    const-string v13, "SamplesPerPixel"

    .line 430
    .line 431
    move-object/from16 v50, v1

    .line 432
    .line 433
    const/16 v1, 0x115

    .line 434
    .line 435
    invoke-direct {v6, v13, v1, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 436
    .line 437
    .line 438
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 439
    .line 440
    const-string v13, "RowsPerStrip"

    .line 441
    .line 442
    move-object/from16 v51, v6

    .line 443
    .line 444
    const/16 v6, 0x116

    .line 445
    .line 446
    move-object/from16 v52, v9

    .line 447
    .line 448
    const/4 v9, 0x4

    .line 449
    invoke-direct {v1, v6, v12, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 450
    .line 451
    .line 452
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 453
    .line 454
    const-string v13, "StripByteCounts"

    .line 455
    .line 456
    move-object/from16 v53, v1

    .line 457
    .line 458
    const/16 v1, 0x117

    .line 459
    .line 460
    invoke-direct {v6, v1, v12, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 461
    .line 462
    .line 463
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 464
    .line 465
    const-string v9, "XResolution"

    .line 466
    .line 467
    const/16 v12, 0x11a

    .line 468
    .line 469
    const/4 v13, 0x5

    .line 470
    invoke-direct {v1, v9, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 471
    .line 472
    .line 473
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 474
    .line 475
    const-string v12, "YResolution"

    .line 476
    .line 477
    move-object/from16 v54, v1

    .line 478
    .line 479
    const/16 v1, 0x11b

    .line 480
    .line 481
    invoke-direct {v9, v12, v1, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 482
    .line 483
    .line 484
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 485
    .line 486
    const-string v12, "PlanarConfiguration"

    .line 487
    .line 488
    const/16 v13, 0x11c

    .line 489
    .line 490
    move-object/from16 v55, v6

    .line 491
    .line 492
    const/4 v6, 0x3

    .line 493
    invoke-direct {v1, v12, v13, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 494
    .line 495
    .line 496
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 497
    .line 498
    const-string v13, "ResolutionUnit"

    .line 499
    .line 500
    move-object/from16 v56, v1

    .line 501
    .line 502
    const/16 v1, 0x128

    .line 503
    .line 504
    invoke-direct {v12, v13, v1, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 505
    .line 506
    .line 507
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 508
    .line 509
    const-string v13, "TransferFunction"

    .line 510
    .line 511
    move-object/from16 v57, v9

    .line 512
    .line 513
    const/16 v9, 0x12d

    .line 514
    .line 515
    invoke-direct {v1, v13, v9, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 516
    .line 517
    .line 518
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 519
    .line 520
    const-string v9, "Software"

    .line 521
    .line 522
    const/16 v13, 0x131

    .line 523
    .line 524
    move-object/from16 v58, v1

    .line 525
    .line 526
    const/4 v1, 0x2

    .line 527
    invoke-direct {v6, v9, v13, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 528
    .line 529
    .line 530
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 531
    .line 532
    const-string v13, "DateTime"

    .line 533
    .line 534
    move-object/from16 v59, v6

    .line 535
    .line 536
    const/16 v6, 0x132

    .line 537
    .line 538
    invoke-direct {v9, v13, v6, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 539
    .line 540
    .line 541
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 542
    .line 543
    const-string v13, "Artist"

    .line 544
    .line 545
    move-object/from16 v60, v9

    .line 546
    .line 547
    const/16 v9, 0x13b

    .line 548
    .line 549
    invoke-direct {v6, v13, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 550
    .line 551
    .line 552
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 553
    .line 554
    const-string v9, "WhitePoint"

    .line 555
    .line 556
    const/16 v13, 0x13e

    .line 557
    .line 558
    move-object/from16 v61, v6

    .line 559
    .line 560
    const/4 v6, 0x5

    .line 561
    invoke-direct {v1, v9, v13, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 562
    .line 563
    .line 564
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 565
    .line 566
    const-string v13, "PrimaryChromaticities"

    .line 567
    .line 568
    move-object/from16 v62, v1

    .line 569
    .line 570
    const/16 v1, 0x13f

    .line 571
    .line 572
    invoke-direct {v9, v13, v1, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 573
    .line 574
    .line 575
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 576
    .line 577
    const-string v6, "SubIFDPointer"

    .line 578
    .line 579
    const/16 v13, 0x14a

    .line 580
    .line 581
    move-object/from16 v63, v9

    .line 582
    .line 583
    const/4 v9, 0x4

    .line 584
    invoke-direct {v1, v6, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 585
    .line 586
    .line 587
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 588
    .line 589
    move-object/from16 v64, v1

    .line 590
    .line 591
    const-string v1, "JPEGInterchangeFormat"

    .line 592
    .line 593
    move-object/from16 v65, v12

    .line 594
    .line 595
    const/16 v12, 0x201

    .line 596
    .line 597
    invoke-direct {v13, v1, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 598
    .line 599
    .line 600
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 601
    .line 602
    const-string v12, "JPEGInterchangeFormatLength"

    .line 603
    .line 604
    move-object/from16 v66, v13

    .line 605
    .line 606
    const/16 v13, 0x202

    .line 607
    .line 608
    invoke-direct {v1, v12, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 609
    .line 610
    .line 611
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 612
    .line 613
    const-string v12, "YCbCrCoefficients"

    .line 614
    .line 615
    const/16 v13, 0x211

    .line 616
    .line 617
    move-object/from16 v67, v1

    .line 618
    .line 619
    const/4 v1, 0x5

    .line 620
    invoke-direct {v9, v12, v13, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 621
    .line 622
    .line 623
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 624
    .line 625
    const-string v12, "YCbCrSubSampling"

    .line 626
    .line 627
    const/16 v13, 0x212

    .line 628
    .line 629
    move-object/from16 v68, v9

    .line 630
    .line 631
    const/4 v9, 0x3

    .line 632
    invoke-direct {v1, v12, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 633
    .line 634
    .line 635
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 636
    .line 637
    const-string v13, "YCbCrPositioning"

    .line 638
    .line 639
    move-object/from16 v69, v1

    .line 640
    .line 641
    const/16 v1, 0x213

    .line 642
    .line 643
    invoke-direct {v12, v13, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 644
    .line 645
    .line 646
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 647
    .line 648
    const-string v9, "ReferenceBlackWhite"

    .line 649
    .line 650
    const/16 v13, 0x214

    .line 651
    .line 652
    move-object/from16 v70, v12

    .line 653
    .line 654
    const/4 v12, 0x5

    .line 655
    invoke-direct {v1, v9, v13, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 656
    .line 657
    .line 658
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 659
    .line 660
    const-string v12, "Copyright"

    .line 661
    .line 662
    const v13, 0x8298

    .line 663
    .line 664
    .line 665
    move-object/from16 v71, v1

    .line 666
    .line 667
    const/4 v1, 0x2

    .line 668
    invoke-direct {v9, v12, v13, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 669
    .line 670
    .line 671
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 672
    .line 673
    const-string v12, "ExifIFDPointer"

    .line 674
    .line 675
    const v13, 0x8769

    .line 676
    .line 677
    .line 678
    move-object/from16 v72, v9

    .line 679
    .line 680
    const/4 v9, 0x4

    .line 681
    invoke-direct {v1, v12, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 682
    .line 683
    .line 684
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 685
    .line 686
    move-object/from16 v73, v1

    .line 687
    .line 688
    const-string v1, "GPSInfoIFDPointer"

    .line 689
    .line 690
    move-object/from16 v74, v3

    .line 691
    .line 692
    const v3, 0x8825

    .line 693
    .line 694
    .line 695
    invoke-direct {v13, v1, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 696
    .line 697
    .line 698
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 699
    .line 700
    move-object/from16 v75, v13

    .line 701
    .line 702
    const-string v13, "SensorTopBorder"

    .line 703
    .line 704
    invoke-direct {v3, v13, v9, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 705
    .line 706
    .line 707
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 708
    .line 709
    move-object/from16 v76, v3

    .line 710
    .line 711
    const-string v3, "SensorLeftBorder"

    .line 712
    .line 713
    move-object/from16 v77, v15

    .line 714
    .line 715
    const/4 v15, 0x5

    .line 716
    invoke-direct {v13, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 717
    .line 718
    .line 719
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 720
    .line 721
    const-string v15, "SensorBottomBorder"

    .line 722
    .line 723
    move-object/from16 v78, v13

    .line 724
    .line 725
    const/4 v13, 0x6

    .line 726
    invoke-direct {v3, v15, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 727
    .line 728
    .line 729
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 730
    .line 731
    const-string v15, "SensorRightBorder"

    .line 732
    .line 733
    move-object/from16 v79, v3

    .line 734
    .line 735
    const/4 v3, 0x7

    .line 736
    invoke-direct {v13, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 737
    .line 738
    .line 739
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 740
    .line 741
    const-string v15, "ISO"

    .line 742
    .line 743
    const/16 v3, 0x17

    .line 744
    .line 745
    move-object/from16 v80, v13

    .line 746
    .line 747
    const/4 v13, 0x3

    .line 748
    invoke-direct {v9, v15, v3, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 749
    .line 750
    .line 751
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 752
    .line 753
    const-string v15, "JpgFromRaw"

    .line 754
    .line 755
    move/from16 v81, v3

    .line 756
    .line 757
    const/16 v3, 0x2e

    .line 758
    .line 759
    move-object/from16 v82, v9

    .line 760
    .line 761
    const/4 v9, 0x7

    .line 762
    invoke-direct {v13, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 763
    .line 764
    .line 765
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 766
    .line 767
    const-string v9, "Xmp"

    .line 768
    .line 769
    const/16 v15, 0x2bc

    .line 770
    .line 771
    move-object/from16 v83, v13

    .line 772
    .line 773
    const/4 v13, 0x1

    .line 774
    invoke-direct {v3, v9, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 775
    .line 776
    .line 777
    const/16 v9, 0x2a

    .line 778
    .line 779
    new-array v9, v9, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 780
    .line 781
    aput-object v39, v9, v16

    .line 782
    .line 783
    aput-object v32, v9, v13

    .line 784
    .line 785
    const/16 v27, 0x2

    .line 786
    .line 787
    aput-object v35, v9, v27

    .line 788
    .line 789
    const/16 v37, 0x3

    .line 790
    .line 791
    aput-object v42, v9, v37

    .line 792
    .line 793
    const/16 v29, 0x4

    .line 794
    .line 795
    aput-object v31, v9, v29

    .line 796
    .line 797
    const/16 v25, 0x5

    .line 798
    .line 799
    aput-object v34, v9, v25

    .line 800
    .line 801
    const/16 v24, 0x6

    .line 802
    .line 803
    aput-object v38, v9, v24

    .line 804
    .line 805
    const/16 v22, 0x7

    .line 806
    .line 807
    aput-object v41, v9, v22

    .line 808
    .line 809
    aput-object v44, v9, v19

    .line 810
    .line 811
    const/16 v13, 0x9

    .line 812
    .line 813
    aput-object v46, v9, v13

    .line 814
    .line 815
    aput-object v49, v9, v17

    .line 816
    .line 817
    const/16 v15, 0xb

    .line 818
    .line 819
    aput-object v50, v9, v15

    .line 820
    .line 821
    move/from16 v31, v15

    .line 822
    .line 823
    const/16 v15, 0xc

    .line 824
    .line 825
    aput-object v51, v9, v15

    .line 826
    .line 827
    move/from16 v32, v15

    .line 828
    .line 829
    const/16 v15, 0xd

    .line 830
    .line 831
    aput-object v53, v9, v15

    .line 832
    .line 833
    aput-object v55, v9, v18

    .line 834
    .line 835
    move/from16 v34, v15

    .line 836
    .line 837
    const/16 v15, 0xf

    .line 838
    .line 839
    aput-object v54, v9, v15

    .line 840
    .line 841
    move/from16 v35, v15

    .line 842
    .line 843
    const/16 v15, 0x10

    .line 844
    .line 845
    aput-object v57, v9, v15

    .line 846
    .line 847
    move/from16 v38, v15

    .line 848
    .line 849
    const/16 v15, 0x11

    .line 850
    .line 851
    aput-object v56, v9, v15

    .line 852
    .line 853
    move/from16 v39, v15

    .line 854
    .line 855
    const/16 v15, 0x12

    .line 856
    .line 857
    aput-object v65, v9, v15

    .line 858
    .line 859
    const/16 v41, 0x13

    .line 860
    .line 861
    aput-object v58, v9, v41

    .line 862
    .line 863
    const/16 v41, 0x14

    .line 864
    .line 865
    aput-object v59, v9, v41

    .line 866
    .line 867
    const/16 v41, 0x15

    .line 868
    .line 869
    aput-object v60, v9, v41

    .line 870
    .line 871
    const/16 v41, 0x16

    .line 872
    .line 873
    aput-object v61, v9, v41

    .line 874
    .line 875
    aput-object v62, v9, v81

    .line 876
    .line 877
    const/16 v41, 0x18

    .line 878
    .line 879
    aput-object v63, v9, v41

    .line 880
    .line 881
    const/16 v41, 0x19

    .line 882
    .line 883
    aput-object v64, v9, v41

    .line 884
    .line 885
    move/from16 v41, v15

    .line 886
    .line 887
    const/16 v15, 0x1a

    .line 888
    .line 889
    aput-object v66, v9, v15

    .line 890
    .line 891
    const/16 v42, 0x1b

    .line 892
    .line 893
    aput-object v67, v9, v42

    .line 894
    .line 895
    const/16 v42, 0x1c

    .line 896
    .line 897
    aput-object v68, v9, v42

    .line 898
    .line 899
    const/16 v42, 0x1d

    .line 900
    .line 901
    aput-object v69, v9, v42

    .line 902
    .line 903
    const/16 v42, 0x1e

    .line 904
    .line 905
    aput-object v70, v9, v42

    .line 906
    .line 907
    const/16 v42, 0x1f

    .line 908
    .line 909
    aput-object v71, v9, v42

    .line 910
    .line 911
    const/16 v42, 0x20

    .line 912
    .line 913
    aput-object v72, v9, v42

    .line 914
    .line 915
    const/16 v42, 0x21

    .line 916
    .line 917
    aput-object v73, v9, v42

    .line 918
    .line 919
    const/16 v42, 0x22

    .line 920
    .line 921
    aput-object v75, v9, v42

    .line 922
    .line 923
    const/16 v42, 0x23

    .line 924
    .line 925
    aput-object v76, v9, v42

    .line 926
    .line 927
    const/16 v42, 0x24

    .line 928
    .line 929
    aput-object v78, v9, v42

    .line 930
    .line 931
    const/16 v42, 0x25

    .line 932
    .line 933
    aput-object v79, v9, v42

    .line 934
    .line 935
    const/16 v42, 0x26

    .line 936
    .line 937
    aput-object v80, v9, v42

    .line 938
    .line 939
    const/16 v42, 0x27

    .line 940
    .line 941
    aput-object v82, v9, v42

    .line 942
    .line 943
    const/16 v42, 0x28

    .line 944
    .line 945
    aput-object v83, v9, v42

    .line 946
    .line 947
    const/16 v42, 0x29

    .line 948
    .line 949
    aput-object v3, v9, v42

    .line 950
    .line 951
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 952
    .line 953
    move/from16 v42, v15

    .line 954
    .line 955
    const-string v15, "ExposureTime"

    .line 956
    .line 957
    move/from16 v44, v13

    .line 958
    .line 959
    const v13, 0x829a

    .line 960
    .line 961
    .line 962
    move-object/from16 v46, v9

    .line 963
    .line 964
    const/4 v9, 0x5

    .line 965
    invoke-direct {v3, v15, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 966
    .line 967
    .line 968
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 969
    .line 970
    const-string v15, "FNumber"

    .line 971
    .line 972
    move-object/from16 v49, v3

    .line 973
    .line 974
    const v3, 0x829d

    .line 975
    .line 976
    .line 977
    invoke-direct {v13, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 978
    .line 979
    .line 980
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 981
    .line 982
    const-string v9, "ExposureProgram"

    .line 983
    .line 984
    const v15, 0x8822

    .line 985
    .line 986
    .line 987
    move-object/from16 v50, v13

    .line 988
    .line 989
    const/4 v13, 0x3

    .line 990
    invoke-direct {v3, v9, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 991
    .line 992
    .line 993
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 994
    .line 995
    const-string v15, "SpectralSensitivity"

    .line 996
    .line 997
    const v13, 0x8824

    .line 998
    .line 999
    .line 1000
    move-object/from16 v51, v3

    .line 1001
    .line 1002
    const/4 v3, 0x2

    .line 1003
    invoke-direct {v9, v15, v13, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1004
    .line 1005
    .line 1006
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1007
    .line 1008
    const-string v13, "PhotographicSensitivity"

    .line 1009
    .line 1010
    const v15, 0x8827

    .line 1011
    .line 1012
    .line 1013
    move-object/from16 v53, v9

    .line 1014
    .line 1015
    const/4 v9, 0x3

    .line 1016
    invoke-direct {v3, v13, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1017
    .line 1018
    .line 1019
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1020
    .line 1021
    const-string v15, "OECF"

    .line 1022
    .line 1023
    const v9, 0x8828

    .line 1024
    .line 1025
    .line 1026
    move-object/from16 v54, v3

    .line 1027
    .line 1028
    const/4 v3, 0x7

    .line 1029
    invoke-direct {v13, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1030
    .line 1031
    .line 1032
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1033
    .line 1034
    const-string v9, "SensitivityType"

    .line 1035
    .line 1036
    const v15, 0x8830

    .line 1037
    .line 1038
    .line 1039
    move-object/from16 v55, v13

    .line 1040
    .line 1041
    const/4 v13, 0x3

    .line 1042
    invoke-direct {v3, v9, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1043
    .line 1044
    .line 1045
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1046
    .line 1047
    const-string v13, "StandardOutputSensitivity"

    .line 1048
    .line 1049
    const v15, 0x8831

    .line 1050
    .line 1051
    .line 1052
    move-object/from16 v56, v3

    .line 1053
    .line 1054
    const/4 v3, 0x4

    .line 1055
    invoke-direct {v9, v13, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1056
    .line 1057
    .line 1058
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1059
    .line 1060
    const-string v15, "RecommendedExposureIndex"

    .line 1061
    .line 1062
    move-object/from16 v57, v9

    .line 1063
    .line 1064
    const v9, 0x8832

    .line 1065
    .line 1066
    .line 1067
    invoke-direct {v13, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1068
    .line 1069
    .line 1070
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1071
    .line 1072
    const-string v15, "ISOSpeed"

    .line 1073
    .line 1074
    move-object/from16 v58, v13

    .line 1075
    .line 1076
    const v13, 0x8833

    .line 1077
    .line 1078
    .line 1079
    invoke-direct {v9, v15, v13, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1080
    .line 1081
    .line 1082
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1083
    .line 1084
    const-string v15, "ISOSpeedLatitudeyyy"

    .line 1085
    .line 1086
    move-object/from16 v59, v9

    .line 1087
    .line 1088
    const v9, 0x8834

    .line 1089
    .line 1090
    .line 1091
    invoke-direct {v13, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1092
    .line 1093
    .line 1094
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1095
    .line 1096
    const-string v15, "ISOSpeedLatitudezzz"

    .line 1097
    .line 1098
    move-object/from16 v60, v13

    .line 1099
    .line 1100
    const v13, 0x8835

    .line 1101
    .line 1102
    .line 1103
    invoke-direct {v9, v15, v13, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1107
    .line 1108
    const-string v13, "ExifVersion"

    .line 1109
    .line 1110
    const v15, 0x9000

    .line 1111
    .line 1112
    .line 1113
    move-object/from16 v61, v9

    .line 1114
    .line 1115
    const/4 v9, 0x2

    .line 1116
    invoke-direct {v3, v13, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1117
    .line 1118
    .line 1119
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1120
    .line 1121
    const-string v15, "DateTimeOriginal"

    .line 1122
    .line 1123
    move-object/from16 v62, v3

    .line 1124
    .line 1125
    const v3, 0x9003

    .line 1126
    .line 1127
    .line 1128
    invoke-direct {v13, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1129
    .line 1130
    .line 1131
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1132
    .line 1133
    const-string v15, "DateTimeDigitized"

    .line 1134
    .line 1135
    move-object/from16 v63, v13

    .line 1136
    .line 1137
    const v13, 0x9004

    .line 1138
    .line 1139
    .line 1140
    invoke-direct {v3, v15, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1141
    .line 1142
    .line 1143
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1144
    .line 1145
    const-string v15, "OffsetTime"

    .line 1146
    .line 1147
    move-object/from16 v64, v3

    .line 1148
    .line 1149
    const v3, 0x9010

    .line 1150
    .line 1151
    .line 1152
    invoke-direct {v13, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1153
    .line 1154
    .line 1155
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1156
    .line 1157
    const-string v15, "OffsetTimeOriginal"

    .line 1158
    .line 1159
    move-object/from16 v65, v13

    .line 1160
    .line 1161
    const v13, 0x9011

    .line 1162
    .line 1163
    .line 1164
    invoke-direct {v3, v15, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1165
    .line 1166
    .line 1167
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1168
    .line 1169
    const-string v15, "OffsetTimeDigitized"

    .line 1170
    .line 1171
    move-object/from16 v66, v3

    .line 1172
    .line 1173
    const v3, 0x9012

    .line 1174
    .line 1175
    .line 1176
    invoke-direct {v13, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1177
    .line 1178
    .line 1179
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1180
    .line 1181
    const-string v9, "ComponentsConfiguration"

    .line 1182
    .line 1183
    const v15, 0x9101

    .line 1184
    .line 1185
    .line 1186
    move-object/from16 v67, v13

    .line 1187
    .line 1188
    const/4 v13, 0x7

    .line 1189
    invoke-direct {v3, v9, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1190
    .line 1191
    .line 1192
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1193
    .line 1194
    const-string v13, "CompressedBitsPerPixel"

    .line 1195
    .line 1196
    const v15, 0x9102

    .line 1197
    .line 1198
    .line 1199
    move-object/from16 v68, v3

    .line 1200
    .line 1201
    const/4 v3, 0x5

    .line 1202
    invoke-direct {v9, v13, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1203
    .line 1204
    .line 1205
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1206
    .line 1207
    const-string v15, "ShutterSpeedValue"

    .line 1208
    .line 1209
    const v3, 0x9201

    .line 1210
    .line 1211
    .line 1212
    move-object/from16 v69, v9

    .line 1213
    .line 1214
    move/from16 v9, v17

    .line 1215
    .line 1216
    invoke-direct {v13, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1217
    .line 1218
    .line 1219
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1220
    .line 1221
    const-string v15, "ApertureValue"

    .line 1222
    .line 1223
    const v9, 0x9202

    .line 1224
    .line 1225
    .line 1226
    move-object/from16 v70, v13

    .line 1227
    .line 1228
    const/4 v13, 0x5

    .line 1229
    invoke-direct {v3, v15, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1230
    .line 1231
    .line 1232
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1233
    .line 1234
    const-string v13, "BrightnessValue"

    .line 1235
    .line 1236
    const v15, 0x9203

    .line 1237
    .line 1238
    .line 1239
    move-object/from16 v71, v3

    .line 1240
    .line 1241
    const/16 v3, 0xa

    .line 1242
    .line 1243
    invoke-direct {v9, v13, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1244
    .line 1245
    .line 1246
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1247
    .line 1248
    const-string v15, "ExposureBiasValue"

    .line 1249
    .line 1250
    move-object/from16 v72, v9

    .line 1251
    .line 1252
    const v9, 0x9204

    .line 1253
    .line 1254
    .line 1255
    invoke-direct {v13, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1256
    .line 1257
    .line 1258
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1259
    .line 1260
    const-string v9, "MaxApertureValue"

    .line 1261
    .line 1262
    const v15, 0x9205

    .line 1263
    .line 1264
    .line 1265
    move-object/from16 v73, v13

    .line 1266
    .line 1267
    const/4 v13, 0x5

    .line 1268
    invoke-direct {v3, v9, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1269
    .line 1270
    .line 1271
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1272
    .line 1273
    const-string v15, "SubjectDistance"

    .line 1274
    .line 1275
    move-object/from16 v75, v3

    .line 1276
    .line 1277
    const v3, 0x9206

    .line 1278
    .line 1279
    .line 1280
    invoke-direct {v9, v15, v3, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1281
    .line 1282
    .line 1283
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1284
    .line 1285
    const-string v13, "MeteringMode"

    .line 1286
    .line 1287
    const v15, 0x9207

    .line 1288
    .line 1289
    .line 1290
    move-object/from16 v76, v9

    .line 1291
    .line 1292
    const/4 v9, 0x3

    .line 1293
    invoke-direct {v3, v13, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1294
    .line 1295
    .line 1296
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1297
    .line 1298
    const-string v15, "LightSource"

    .line 1299
    .line 1300
    move-object/from16 v78, v3

    .line 1301
    .line 1302
    const v3, 0x9208

    .line 1303
    .line 1304
    .line 1305
    invoke-direct {v13, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1306
    .line 1307
    .line 1308
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1309
    .line 1310
    const-string v15, "Flash"

    .line 1311
    .line 1312
    move-object/from16 v79, v13

    .line 1313
    .line 1314
    const v13, 0x9209

    .line 1315
    .line 1316
    .line 1317
    invoke-direct {v3, v15, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1318
    .line 1319
    .line 1320
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1321
    .line 1322
    const-string v15, "FocalLength"

    .line 1323
    .line 1324
    const v9, 0x920a

    .line 1325
    .line 1326
    .line 1327
    move-object/from16 v80, v3

    .line 1328
    .line 1329
    const/4 v3, 0x5

    .line 1330
    invoke-direct {v13, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1331
    .line 1332
    .line 1333
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1334
    .line 1335
    const-string v9, "SubjectArea"

    .line 1336
    .line 1337
    const v15, 0x9214

    .line 1338
    .line 1339
    .line 1340
    move-object/from16 v82, v13

    .line 1341
    .line 1342
    const/4 v13, 0x3

    .line 1343
    invoke-direct {v3, v9, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1344
    .line 1345
    .line 1346
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1347
    .line 1348
    const-string v13, "MakerNote"

    .line 1349
    .line 1350
    const v15, 0x927c

    .line 1351
    .line 1352
    .line 1353
    move-object/from16 v83, v3

    .line 1354
    .line 1355
    const/4 v3, 0x7

    .line 1356
    invoke-direct {v9, v13, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1357
    .line 1358
    .line 1359
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1360
    .line 1361
    const-string v15, "UserComment"

    .line 1362
    .line 1363
    move-object/from16 v84, v9

    .line 1364
    .line 1365
    const v9, 0x9286

    .line 1366
    .line 1367
    .line 1368
    invoke-direct {v13, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1369
    .line 1370
    .line 1371
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1372
    .line 1373
    const-string v9, "SubSecTime"

    .line 1374
    .line 1375
    const v15, 0x9290

    .line 1376
    .line 1377
    .line 1378
    move-object/from16 v85, v13

    .line 1379
    .line 1380
    const/4 v13, 0x2

    .line 1381
    invoke-direct {v3, v9, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1382
    .line 1383
    .line 1384
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1385
    .line 1386
    const-string v15, "SubSecTimeOriginal"

    .line 1387
    .line 1388
    move-object/from16 v86, v3

    .line 1389
    .line 1390
    const v3, 0x9291

    .line 1391
    .line 1392
    .line 1393
    invoke-direct {v9, v15, v3, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1394
    .line 1395
    .line 1396
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1397
    .line 1398
    const-string v15, "SubSecTimeDigitized"

    .line 1399
    .line 1400
    move-object/from16 v87, v9

    .line 1401
    .line 1402
    const v9, 0x9292

    .line 1403
    .line 1404
    .line 1405
    invoke-direct {v3, v15, v9, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1406
    .line 1407
    .line 1408
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1409
    .line 1410
    const-string v13, "FlashpixVersion"

    .line 1411
    .line 1412
    const v15, 0xa000

    .line 1413
    .line 1414
    .line 1415
    move-object/from16 v88, v3

    .line 1416
    .line 1417
    const/4 v3, 0x7

    .line 1418
    invoke-direct {v9, v13, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1419
    .line 1420
    .line 1421
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1422
    .line 1423
    const-string v13, "ColorSpace"

    .line 1424
    .line 1425
    const v15, 0xa001

    .line 1426
    .line 1427
    .line 1428
    move-object/from16 v89, v9

    .line 1429
    .line 1430
    const/4 v9, 0x3

    .line 1431
    invoke-direct {v3, v13, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1432
    .line 1433
    .line 1434
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1435
    .line 1436
    const-string v15, "PixelXDimension"

    .line 1437
    .line 1438
    move-object/from16 v90, v3

    .line 1439
    .line 1440
    const v3, 0xa002

    .line 1441
    .line 1442
    .line 1443
    move-object/from16 v91, v1

    .line 1444
    .line 1445
    const/4 v1, 0x4

    .line 1446
    invoke-direct {v13, v3, v9, v1, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 1447
    .line 1448
    .line 1449
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1450
    .line 1451
    const-string v15, "PixelYDimension"

    .line 1452
    .line 1453
    move-object/from16 v92, v13

    .line 1454
    .line 1455
    const v13, 0xa003

    .line 1456
    .line 1457
    .line 1458
    invoke-direct {v3, v13, v9, v1, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1462
    .line 1463
    const-string v13, "RelatedSoundFile"

    .line 1464
    .line 1465
    const v15, 0xa004

    .line 1466
    .line 1467
    .line 1468
    const/4 v1, 0x2

    .line 1469
    invoke-direct {v9, v13, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1470
    .line 1471
    .line 1472
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1473
    .line 1474
    const-string v13, "InteroperabilityIFDPointer"

    .line 1475
    .line 1476
    const v15, 0xa005

    .line 1477
    .line 1478
    .line 1479
    move-object/from16 v93, v3

    .line 1480
    .line 1481
    const/4 v3, 0x4

    .line 1482
    invoke-direct {v1, v13, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1483
    .line 1484
    .line 1485
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1486
    .line 1487
    const-string v13, "FlashEnergy"

    .line 1488
    .line 1489
    const v15, 0xa20b

    .line 1490
    .line 1491
    .line 1492
    move-object/from16 v94, v1

    .line 1493
    .line 1494
    const/4 v1, 0x5

    .line 1495
    invoke-direct {v3, v13, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1496
    .line 1497
    .line 1498
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1499
    .line 1500
    const-string v15, "SpatialFrequencyResponse"

    .line 1501
    .line 1502
    const v1, 0xa20c

    .line 1503
    .line 1504
    .line 1505
    move-object/from16 v95, v3

    .line 1506
    .line 1507
    const/4 v3, 0x7

    .line 1508
    invoke-direct {v13, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1509
    .line 1510
    .line 1511
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1512
    .line 1513
    const-string v3, "FocalPlaneXResolution"

    .line 1514
    .line 1515
    const v15, 0xa20e

    .line 1516
    .line 1517
    .line 1518
    move-object/from16 v96, v9

    .line 1519
    .line 1520
    const/4 v9, 0x5

    .line 1521
    invoke-direct {v1, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1522
    .line 1523
    .line 1524
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1525
    .line 1526
    const-string v15, "FocalPlaneYResolution"

    .line 1527
    .line 1528
    move-object/from16 v97, v1

    .line 1529
    .line 1530
    const v1, 0xa20f

    .line 1531
    .line 1532
    .line 1533
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1534
    .line 1535
    .line 1536
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1537
    .line 1538
    const-string v9, "FocalPlaneResolutionUnit"

    .line 1539
    .line 1540
    const v15, 0xa210

    .line 1541
    .line 1542
    .line 1543
    move-object/from16 v98, v3

    .line 1544
    .line 1545
    const/4 v3, 0x3

    .line 1546
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1547
    .line 1548
    .line 1549
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1550
    .line 1551
    const-string v15, "SubjectLocation"

    .line 1552
    .line 1553
    move-object/from16 v99, v1

    .line 1554
    .line 1555
    const v1, 0xa214

    .line 1556
    .line 1557
    .line 1558
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1559
    .line 1560
    .line 1561
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1562
    .line 1563
    const-string v15, "ExposureIndex"

    .line 1564
    .line 1565
    const v3, 0xa215

    .line 1566
    .line 1567
    .line 1568
    move-object/from16 v100, v9

    .line 1569
    .line 1570
    const/4 v9, 0x5

    .line 1571
    invoke-direct {v1, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1572
    .line 1573
    .line 1574
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1575
    .line 1576
    const-string v9, "SensingMethod"

    .line 1577
    .line 1578
    const v15, 0xa217

    .line 1579
    .line 1580
    .line 1581
    move-object/from16 v101, v1

    .line 1582
    .line 1583
    const/4 v1, 0x3

    .line 1584
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1585
    .line 1586
    .line 1587
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1588
    .line 1589
    const-string v9, "FileSource"

    .line 1590
    .line 1591
    const v15, 0xa300

    .line 1592
    .line 1593
    .line 1594
    move-object/from16 v102, v3

    .line 1595
    .line 1596
    const/4 v3, 0x7

    .line 1597
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1598
    .line 1599
    .line 1600
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1601
    .line 1602
    const-string v15, "SceneType"

    .line 1603
    .line 1604
    move-object/from16 v103, v1

    .line 1605
    .line 1606
    const v1, 0xa301

    .line 1607
    .line 1608
    .line 1609
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1610
    .line 1611
    .line 1612
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1613
    .line 1614
    const-string v15, "CFAPattern"

    .line 1615
    .line 1616
    move-object/from16 v104, v9

    .line 1617
    .line 1618
    const v9, 0xa302

    .line 1619
    .line 1620
    .line 1621
    invoke-direct {v1, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1622
    .line 1623
    .line 1624
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1625
    .line 1626
    const-string v9, "CustomRendered"

    .line 1627
    .line 1628
    const v15, 0xa401

    .line 1629
    .line 1630
    .line 1631
    move-object/from16 v105, v1

    .line 1632
    .line 1633
    const/4 v1, 0x3

    .line 1634
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1635
    .line 1636
    .line 1637
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1638
    .line 1639
    const-string v15, "ExposureMode"

    .line 1640
    .line 1641
    move-object/from16 v106, v3

    .line 1642
    .line 1643
    const v3, 0xa402

    .line 1644
    .line 1645
    .line 1646
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1647
    .line 1648
    .line 1649
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1650
    .line 1651
    const-string v15, "WhiteBalance"

    .line 1652
    .line 1653
    move-object/from16 v107, v9

    .line 1654
    .line 1655
    const v9, 0xa403

    .line 1656
    .line 1657
    .line 1658
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1659
    .line 1660
    .line 1661
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1662
    .line 1663
    const-string v15, "DigitalZoomRatio"

    .line 1664
    .line 1665
    const v1, 0xa404

    .line 1666
    .line 1667
    .line 1668
    move-object/from16 v108, v3

    .line 1669
    .line 1670
    const/4 v3, 0x5

    .line 1671
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1672
    .line 1673
    .line 1674
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1675
    .line 1676
    const-string v3, "FocalLengthIn35mmFilm"

    .line 1677
    .line 1678
    const v15, 0xa405

    .line 1679
    .line 1680
    .line 1681
    move-object/from16 v109, v9

    .line 1682
    .line 1683
    const/4 v9, 0x3

    .line 1684
    invoke-direct {v1, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1685
    .line 1686
    .line 1687
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1688
    .line 1689
    const-string v15, "SceneCaptureType"

    .line 1690
    .line 1691
    move-object/from16 v110, v1

    .line 1692
    .line 1693
    const v1, 0xa406

    .line 1694
    .line 1695
    .line 1696
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1697
    .line 1698
    .line 1699
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1700
    .line 1701
    const-string v15, "GainControl"

    .line 1702
    .line 1703
    move-object/from16 v111, v3

    .line 1704
    .line 1705
    const v3, 0xa407

    .line 1706
    .line 1707
    .line 1708
    invoke-direct {v1, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1709
    .line 1710
    .line 1711
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1712
    .line 1713
    const-string v15, "Contrast"

    .line 1714
    .line 1715
    move-object/from16 v112, v1

    .line 1716
    .line 1717
    const v1, 0xa408

    .line 1718
    .line 1719
    .line 1720
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1721
    .line 1722
    .line 1723
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1724
    .line 1725
    const-string v15, "Saturation"

    .line 1726
    .line 1727
    move-object/from16 v113, v3

    .line 1728
    .line 1729
    const v3, 0xa409

    .line 1730
    .line 1731
    .line 1732
    invoke-direct {v1, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1733
    .line 1734
    .line 1735
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1736
    .line 1737
    const-string v15, "Sharpness"

    .line 1738
    .line 1739
    move-object/from16 v114, v1

    .line 1740
    .line 1741
    const v1, 0xa40a

    .line 1742
    .line 1743
    .line 1744
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1745
    .line 1746
    .line 1747
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1748
    .line 1749
    const-string v15, "DeviceSettingDescription"

    .line 1750
    .line 1751
    const v9, 0xa40b

    .line 1752
    .line 1753
    .line 1754
    move-object/from16 v115, v3

    .line 1755
    .line 1756
    const/4 v3, 0x7

    .line 1757
    invoke-direct {v1, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1758
    .line 1759
    .line 1760
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1761
    .line 1762
    const-string v9, "SubjectDistanceRange"

    .line 1763
    .line 1764
    const v15, 0xa40c

    .line 1765
    .line 1766
    .line 1767
    move-object/from16 v116, v1

    .line 1768
    .line 1769
    const/4 v1, 0x3

    .line 1770
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1771
    .line 1772
    .line 1773
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1774
    .line 1775
    const-string v9, "ImageUniqueID"

    .line 1776
    .line 1777
    const v15, 0xa420

    .line 1778
    .line 1779
    .line 1780
    move-object/from16 v117, v3

    .line 1781
    .line 1782
    const/4 v3, 0x2

    .line 1783
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1784
    .line 1785
    .line 1786
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1787
    .line 1788
    const-string v15, "CameraOwnerName"

    .line 1789
    .line 1790
    move-object/from16 v118, v1

    .line 1791
    .line 1792
    const v1, 0xa430

    .line 1793
    .line 1794
    .line 1795
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1796
    .line 1797
    .line 1798
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1799
    .line 1800
    const-string v15, "BodySerialNumber"

    .line 1801
    .line 1802
    move-object/from16 v119, v9

    .line 1803
    .line 1804
    const v9, 0xa431

    .line 1805
    .line 1806
    .line 1807
    invoke-direct {v1, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1808
    .line 1809
    .line 1810
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1811
    .line 1812
    const-string v15, "LensSpecification"

    .line 1813
    .line 1814
    const v3, 0xa432

    .line 1815
    .line 1816
    .line 1817
    move-object/from16 v120, v1

    .line 1818
    .line 1819
    const/4 v1, 0x5

    .line 1820
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1821
    .line 1822
    .line 1823
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1824
    .line 1825
    const-string v3, "LensMake"

    .line 1826
    .line 1827
    const v15, 0xa433

    .line 1828
    .line 1829
    .line 1830
    move-object/from16 v121, v9

    .line 1831
    .line 1832
    const/4 v9, 0x2

    .line 1833
    invoke-direct {v1, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1834
    .line 1835
    .line 1836
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1837
    .line 1838
    const-string v15, "LensModel"

    .line 1839
    .line 1840
    move-object/from16 v122, v1

    .line 1841
    .line 1842
    const v1, 0xa434

    .line 1843
    .line 1844
    .line 1845
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1846
    .line 1847
    .line 1848
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1849
    .line 1850
    const-string v9, "Gamma"

    .line 1851
    .line 1852
    const v15, 0xa500

    .line 1853
    .line 1854
    .line 1855
    move-object/from16 v123, v3

    .line 1856
    .line 1857
    const/4 v3, 0x5

    .line 1858
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1859
    .line 1860
    .line 1861
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1862
    .line 1863
    const-string v9, "DNGVersion"

    .line 1864
    .line 1865
    const v15, 0xc612

    .line 1866
    .line 1867
    .line 1868
    move-object/from16 v124, v1

    .line 1869
    .line 1870
    const/4 v1, 0x1

    .line 1871
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1872
    .line 1873
    .line 1874
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1875
    .line 1876
    const-string v15, "DefaultCropSize"

    .line 1877
    .line 1878
    move/from16 v21, v1

    .line 1879
    .line 1880
    const v1, 0xc620

    .line 1881
    .line 1882
    .line 1883
    move-object/from16 v125, v3

    .line 1884
    .line 1885
    move-object/from16 v126, v13

    .line 1886
    .line 1887
    const/4 v3, 0x3

    .line 1888
    const/4 v13, 0x4

    .line 1889
    invoke-direct {v9, v1, v3, v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 1890
    .line 1891
    .line 1892
    const/16 v1, 0x4a

    .line 1893
    .line 1894
    new-array v1, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1895
    .line 1896
    aput-object v49, v1, v16

    .line 1897
    .line 1898
    aput-object v50, v1, v21

    .line 1899
    .line 1900
    const/16 v27, 0x2

    .line 1901
    .line 1902
    aput-object v51, v1, v27

    .line 1903
    .line 1904
    aput-object v53, v1, v3

    .line 1905
    .line 1906
    aput-object v54, v1, v13

    .line 1907
    .line 1908
    const/16 v25, 0x5

    .line 1909
    .line 1910
    aput-object v55, v1, v25

    .line 1911
    .line 1912
    const/16 v24, 0x6

    .line 1913
    .line 1914
    aput-object v56, v1, v24

    .line 1915
    .line 1916
    const/16 v22, 0x7

    .line 1917
    .line 1918
    aput-object v57, v1, v22

    .line 1919
    .line 1920
    aput-object v58, v1, v19

    .line 1921
    .line 1922
    aput-object v59, v1, v44

    .line 1923
    .line 1924
    const/16 v17, 0xa

    .line 1925
    .line 1926
    aput-object v60, v1, v17

    .line 1927
    .line 1928
    aput-object v61, v1, v31

    .line 1929
    .line 1930
    aput-object v62, v1, v32

    .line 1931
    .line 1932
    aput-object v63, v1, v34

    .line 1933
    .line 1934
    aput-object v64, v1, v18

    .line 1935
    .line 1936
    aput-object v65, v1, v35

    .line 1937
    .line 1938
    aput-object v66, v1, v38

    .line 1939
    .line 1940
    aput-object v67, v1, v39

    .line 1941
    .line 1942
    aput-object v68, v1, v41

    .line 1943
    .line 1944
    const/16 v3, 0x13

    .line 1945
    .line 1946
    aput-object v69, v1, v3

    .line 1947
    .line 1948
    const/16 v3, 0x14

    .line 1949
    .line 1950
    aput-object v70, v1, v3

    .line 1951
    .line 1952
    const/16 v3, 0x15

    .line 1953
    .line 1954
    aput-object v71, v1, v3

    .line 1955
    .line 1956
    const/16 v3, 0x16

    .line 1957
    .line 1958
    aput-object v72, v1, v3

    .line 1959
    .line 1960
    aput-object v73, v1, v81

    .line 1961
    .line 1962
    const/16 v3, 0x18

    .line 1963
    .line 1964
    aput-object v75, v1, v3

    .line 1965
    .line 1966
    const/16 v3, 0x19

    .line 1967
    .line 1968
    aput-object v76, v1, v3

    .line 1969
    .line 1970
    aput-object v78, v1, v42

    .line 1971
    .line 1972
    const/16 v3, 0x1b

    .line 1973
    .line 1974
    aput-object v79, v1, v3

    .line 1975
    .line 1976
    const/16 v3, 0x1c

    .line 1977
    .line 1978
    aput-object v80, v1, v3

    .line 1979
    .line 1980
    const/16 v3, 0x1d

    .line 1981
    .line 1982
    aput-object v82, v1, v3

    .line 1983
    .line 1984
    const/16 v3, 0x1e

    .line 1985
    .line 1986
    aput-object v83, v1, v3

    .line 1987
    .line 1988
    const/16 v3, 0x1f

    .line 1989
    .line 1990
    aput-object v84, v1, v3

    .line 1991
    .line 1992
    const/16 v3, 0x20

    .line 1993
    .line 1994
    aput-object v85, v1, v3

    .line 1995
    .line 1996
    const/16 v3, 0x21

    .line 1997
    .line 1998
    aput-object v86, v1, v3

    .line 1999
    .line 2000
    const/16 v3, 0x22

    .line 2001
    .line 2002
    aput-object v87, v1, v3

    .line 2003
    .line 2004
    const/16 v3, 0x23

    .line 2005
    .line 2006
    aput-object v88, v1, v3

    .line 2007
    .line 2008
    const/16 v3, 0x24

    .line 2009
    .line 2010
    aput-object v89, v1, v3

    .line 2011
    .line 2012
    const/16 v3, 0x25

    .line 2013
    .line 2014
    aput-object v90, v1, v3

    .line 2015
    .line 2016
    const/16 v3, 0x26

    .line 2017
    .line 2018
    aput-object v92, v1, v3

    .line 2019
    .line 2020
    const/16 v3, 0x27

    .line 2021
    .line 2022
    aput-object v93, v1, v3

    .line 2023
    .line 2024
    const/16 v3, 0x28

    .line 2025
    .line 2026
    aput-object v96, v1, v3

    .line 2027
    .line 2028
    const/16 v3, 0x29

    .line 2029
    .line 2030
    aput-object v94, v1, v3

    .line 2031
    .line 2032
    const/16 v3, 0x2a

    .line 2033
    .line 2034
    aput-object v95, v1, v3

    .line 2035
    .line 2036
    const/16 v3, 0x2b

    .line 2037
    .line 2038
    aput-object v126, v1, v3

    .line 2039
    .line 2040
    const/16 v3, 0x2c

    .line 2041
    .line 2042
    aput-object v97, v1, v3

    .line 2043
    .line 2044
    const/16 v3, 0x2d

    .line 2045
    .line 2046
    aput-object v98, v1, v3

    .line 2047
    .line 2048
    const/16 v3, 0x2e

    .line 2049
    .line 2050
    aput-object v99, v1, v3

    .line 2051
    .line 2052
    const/16 v3, 0x2f

    .line 2053
    .line 2054
    aput-object v100, v1, v3

    .line 2055
    .line 2056
    const/16 v3, 0x30

    .line 2057
    .line 2058
    aput-object v101, v1, v3

    .line 2059
    .line 2060
    const/16 v3, 0x31

    .line 2061
    .line 2062
    aput-object v102, v1, v3

    .line 2063
    .line 2064
    const/16 v3, 0x32

    .line 2065
    .line 2066
    aput-object v103, v1, v3

    .line 2067
    .line 2068
    const/16 v3, 0x33

    .line 2069
    .line 2070
    aput-object v104, v1, v3

    .line 2071
    .line 2072
    const/16 v3, 0x34

    .line 2073
    .line 2074
    aput-object v105, v1, v3

    .line 2075
    .line 2076
    const/16 v3, 0x35

    .line 2077
    .line 2078
    aput-object v106, v1, v3

    .line 2079
    .line 2080
    const/16 v3, 0x36

    .line 2081
    .line 2082
    aput-object v107, v1, v3

    .line 2083
    .line 2084
    const/16 v3, 0x37

    .line 2085
    .line 2086
    aput-object v108, v1, v3

    .line 2087
    .line 2088
    const/16 v3, 0x38

    .line 2089
    .line 2090
    aput-object v109, v1, v3

    .line 2091
    .line 2092
    const/16 v3, 0x39

    .line 2093
    .line 2094
    aput-object v110, v1, v3

    .line 2095
    .line 2096
    const/16 v3, 0x3a

    .line 2097
    .line 2098
    aput-object v111, v1, v3

    .line 2099
    .line 2100
    const/16 v3, 0x3b

    .line 2101
    .line 2102
    aput-object v112, v1, v3

    .line 2103
    .line 2104
    const/16 v3, 0x3c

    .line 2105
    .line 2106
    aput-object v113, v1, v3

    .line 2107
    .line 2108
    const/16 v3, 0x3d

    .line 2109
    .line 2110
    aput-object v114, v1, v3

    .line 2111
    .line 2112
    const/16 v3, 0x3e

    .line 2113
    .line 2114
    aput-object v115, v1, v3

    .line 2115
    .line 2116
    const/16 v3, 0x3f

    .line 2117
    .line 2118
    aput-object v116, v1, v3

    .line 2119
    .line 2120
    const/16 v3, 0x40

    .line 2121
    .line 2122
    aput-object v117, v1, v3

    .line 2123
    .line 2124
    const/16 v3, 0x41

    .line 2125
    .line 2126
    aput-object v118, v1, v3

    .line 2127
    .line 2128
    const/16 v3, 0x42

    .line 2129
    .line 2130
    aput-object v119, v1, v3

    .line 2131
    .line 2132
    const/16 v3, 0x43

    .line 2133
    .line 2134
    aput-object v120, v1, v3

    .line 2135
    .line 2136
    const/16 v3, 0x44

    .line 2137
    .line 2138
    aput-object v121, v1, v3

    .line 2139
    .line 2140
    const/16 v3, 0x45

    .line 2141
    .line 2142
    aput-object v122, v1, v3

    .line 2143
    .line 2144
    const/16 v3, 0x46

    .line 2145
    .line 2146
    aput-object v123, v1, v3

    .line 2147
    .line 2148
    const/16 v3, 0x47

    .line 2149
    .line 2150
    aput-object v124, v1, v3

    .line 2151
    .line 2152
    const/16 v3, 0x48

    .line 2153
    .line 2154
    aput-object v125, v1, v3

    .line 2155
    .line 2156
    const/16 v3, 0x49

    .line 2157
    .line 2158
    aput-object v9, v1, v3

    .line 2159
    .line 2160
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2161
    .line 2162
    const-string v9, "GPSVersionID"

    .line 2163
    .line 2164
    move/from16 v15, v16

    .line 2165
    .line 2166
    const/4 v13, 0x1

    .line 2167
    invoke-direct {v3, v9, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2168
    .line 2169
    .line 2170
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2171
    .line 2172
    const-string v15, "GPSLatitudeRef"

    .line 2173
    .line 2174
    move-object/from16 v49, v1

    .line 2175
    .line 2176
    const/4 v1, 0x2

    .line 2177
    invoke-direct {v9, v15, v13, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2178
    .line 2179
    .line 2180
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2181
    .line 2182
    const-string v15, "GPSLatitude"

    .line 2183
    .line 2184
    move-object/from16 v50, v3

    .line 2185
    .line 2186
    move-object/from16 v51, v9

    .line 2187
    .line 2188
    const/4 v3, 0x5

    .line 2189
    const/16 v9, 0xa

    .line 2190
    .line 2191
    invoke-direct {v13, v1, v3, v9, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 2192
    .line 2193
    .line 2194
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2195
    .line 2196
    const-string v3, "GPSLongitudeRef"

    .line 2197
    .line 2198
    const/4 v9, 0x3

    .line 2199
    invoke-direct {v15, v3, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2200
    .line 2201
    .line 2202
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2203
    .line 2204
    const-string v3, "GPSLongitude"

    .line 2205
    .line 2206
    move-object/from16 v53, v13

    .line 2207
    .line 2208
    move-object/from16 v54, v15

    .line 2209
    .line 2210
    const/4 v9, 0x4

    .line 2211
    const/4 v13, 0x5

    .line 2212
    const/16 v15, 0xa

    .line 2213
    .line 2214
    invoke-direct {v1, v9, v13, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 2215
    .line 2216
    .line 2217
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2218
    .line 2219
    const-string v9, "GPSAltitudeRef"

    .line 2220
    .line 2221
    const/4 v15, 0x1

    .line 2222
    invoke-direct {v3, v9, v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2223
    .line 2224
    .line 2225
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2226
    .line 2227
    const-string v15, "GPSAltitude"

    .line 2228
    .line 2229
    move-object/from16 v55, v1

    .line 2230
    .line 2231
    const/4 v1, 0x6

    .line 2232
    invoke-direct {v9, v15, v1, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2233
    .line 2234
    .line 2235
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2236
    .line 2237
    const-string v15, "GPSTimeStamp"

    .line 2238
    .line 2239
    move-object/from16 v56, v3

    .line 2240
    .line 2241
    const/4 v3, 0x7

    .line 2242
    invoke-direct {v1, v15, v3, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2243
    .line 2244
    .line 2245
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2246
    .line 2247
    const-string v13, "GPSSatellites"

    .line 2248
    .line 2249
    move-object/from16 v57, v1

    .line 2250
    .line 2251
    move/from16 v15, v19

    .line 2252
    .line 2253
    const/4 v1, 0x2

    .line 2254
    invoke-direct {v3, v13, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2255
    .line 2256
    .line 2257
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2258
    .line 2259
    const-string v15, "GPSStatus"

    .line 2260
    .line 2261
    move-object/from16 v58, v3

    .line 2262
    .line 2263
    move/from16 v3, v44

    .line 2264
    .line 2265
    invoke-direct {v13, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2266
    .line 2267
    .line 2268
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2269
    .line 2270
    const-string v15, "GPSMeasureMode"

    .line 2271
    .line 2272
    move-object/from16 v59, v9

    .line 2273
    .line 2274
    const/16 v9, 0xa

    .line 2275
    .line 2276
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2277
    .line 2278
    .line 2279
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2280
    .line 2281
    const-string v15, "GPSDOP"

    .line 2282
    .line 2283
    move-object/from16 v60, v3

    .line 2284
    .line 2285
    move/from16 v3, v31

    .line 2286
    .line 2287
    const/4 v1, 0x5

    .line 2288
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2289
    .line 2290
    .line 2291
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2292
    .line 2293
    const-string v15, "GPSSpeedRef"

    .line 2294
    .line 2295
    move-object/from16 v61, v9

    .line 2296
    .line 2297
    move/from16 v9, v32

    .line 2298
    .line 2299
    const/4 v1, 0x2

    .line 2300
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2301
    .line 2302
    .line 2303
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2304
    .line 2305
    const-string v15, "GPSSpeed"

    .line 2306
    .line 2307
    move-object/from16 v62, v3

    .line 2308
    .line 2309
    move/from16 v3, v34

    .line 2310
    .line 2311
    const/4 v1, 0x5

    .line 2312
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2313
    .line 2314
    .line 2315
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2316
    .line 2317
    const-string v15, "GPSTrackRef"

    .line 2318
    .line 2319
    move-object/from16 v63, v9

    .line 2320
    .line 2321
    move/from16 v9, v18

    .line 2322
    .line 2323
    const/4 v1, 0x2

    .line 2324
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2325
    .line 2326
    .line 2327
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2328
    .line 2329
    const-string v15, "GPSTrack"

    .line 2330
    .line 2331
    move-object/from16 v64, v3

    .line 2332
    .line 2333
    move/from16 v3, v35

    .line 2334
    .line 2335
    const/4 v1, 0x5

    .line 2336
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2337
    .line 2338
    .line 2339
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2340
    .line 2341
    const-string v15, "GPSImgDirectionRef"

    .line 2342
    .line 2343
    move-object/from16 v65, v9

    .line 2344
    .line 2345
    move/from16 v9, v38

    .line 2346
    .line 2347
    const/4 v1, 0x2

    .line 2348
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2349
    .line 2350
    .line 2351
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2352
    .line 2353
    const-string v15, "GPSImgDirection"

    .line 2354
    .line 2355
    move-object/from16 v66, v3

    .line 2356
    .line 2357
    move/from16 v3, v39

    .line 2358
    .line 2359
    const/4 v1, 0x5

    .line 2360
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2361
    .line 2362
    .line 2363
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2364
    .line 2365
    const-string v15, "GPSMapDatum"

    .line 2366
    .line 2367
    move-object/from16 v67, v9

    .line 2368
    .line 2369
    move/from16 v9, v41

    .line 2370
    .line 2371
    const/4 v1, 0x2

    .line 2372
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2373
    .line 2374
    .line 2375
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2376
    .line 2377
    const-string v15, "GPSDestLatitudeRef"

    .line 2378
    .line 2379
    move-object/from16 v68, v3

    .line 2380
    .line 2381
    const/16 v3, 0x13

    .line 2382
    .line 2383
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2384
    .line 2385
    .line 2386
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2387
    .line 2388
    const-string v15, "GPSDestLatitude"

    .line 2389
    .line 2390
    const/16 v1, 0x14

    .line 2391
    .line 2392
    move-object/from16 v69, v9

    .line 2393
    .line 2394
    const/4 v9, 0x5

    .line 2395
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2396
    .line 2397
    .line 2398
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2399
    .line 2400
    const-string v15, "GPSDestLongitudeRef"

    .line 2401
    .line 2402
    const/16 v9, 0x15

    .line 2403
    .line 2404
    move-object/from16 v70, v3

    .line 2405
    .line 2406
    const/4 v3, 0x2

    .line 2407
    invoke-direct {v1, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2408
    .line 2409
    .line 2410
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2411
    .line 2412
    const-string v15, "GPSDestLongitude"

    .line 2413
    .line 2414
    const/16 v3, 0x16

    .line 2415
    .line 2416
    move-object/from16 v71, v1

    .line 2417
    .line 2418
    const/4 v1, 0x5

    .line 2419
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2420
    .line 2421
    .line 2422
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2423
    .line 2424
    const-string v15, "GPSDestBearingRef"

    .line 2425
    .line 2426
    move-object/from16 v72, v9

    .line 2427
    .line 2428
    move/from16 v9, v81

    .line 2429
    .line 2430
    const/4 v1, 0x2

    .line 2431
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2432
    .line 2433
    .line 2434
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2435
    .line 2436
    const-string v15, "GPSDestBearing"

    .line 2437
    .line 2438
    const/16 v1, 0x18

    .line 2439
    .line 2440
    move-object/from16 v73, v3

    .line 2441
    .line 2442
    const/4 v3, 0x5

    .line 2443
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2444
    .line 2445
    .line 2446
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2447
    .line 2448
    const-string v15, "GPSDestDistanceRef"

    .line 2449
    .line 2450
    const/16 v3, 0x19

    .line 2451
    .line 2452
    move-object/from16 v75, v9

    .line 2453
    .line 2454
    const/4 v9, 0x2

    .line 2455
    invoke-direct {v1, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2456
    .line 2457
    .line 2458
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2459
    .line 2460
    const-string v9, "GPSDestDistance"

    .line 2461
    .line 2462
    move-object/from16 v76, v1

    .line 2463
    .line 2464
    move/from16 v1, v42

    .line 2465
    .line 2466
    const/4 v15, 0x5

    .line 2467
    invoke-direct {v3, v9, v1, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2468
    .line 2469
    .line 2470
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2471
    .line 2472
    const-string v9, "GPSProcessingMethod"

    .line 2473
    .line 2474
    const/16 v15, 0x1b

    .line 2475
    .line 2476
    move-object/from16 v78, v3

    .line 2477
    .line 2478
    const/4 v3, 0x7

    .line 2479
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2480
    .line 2481
    .line 2482
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2483
    .line 2484
    const-string v15, "GPSAreaInformation"

    .line 2485
    .line 2486
    move-object/from16 v79, v1

    .line 2487
    .line 2488
    const/16 v1, 0x1c

    .line 2489
    .line 2490
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2491
    .line 2492
    .line 2493
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2494
    .line 2495
    const-string v3, "GPSDateStamp"

    .line 2496
    .line 2497
    const/16 v15, 0x1d

    .line 2498
    .line 2499
    move-object/from16 v80, v9

    .line 2500
    .line 2501
    const/4 v9, 0x2

    .line 2502
    invoke-direct {v1, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2503
    .line 2504
    .line 2505
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2506
    .line 2507
    const-string v9, "GPSDifferential"

    .line 2508
    .line 2509
    const/16 v15, 0x1e

    .line 2510
    .line 2511
    move-object/from16 v82, v1

    .line 2512
    .line 2513
    const/4 v1, 0x3

    .line 2514
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2515
    .line 2516
    .line 2517
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2518
    .line 2519
    const-string v15, "GPSHPositioningError"

    .line 2520
    .line 2521
    move/from16 v37, v1

    .line 2522
    .line 2523
    const/16 v1, 0x1f

    .line 2524
    .line 2525
    move-object/from16 v83, v3

    .line 2526
    .line 2527
    const/4 v3, 0x5

    .line 2528
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2529
    .line 2530
    .line 2531
    const/16 v1, 0x20

    .line 2532
    .line 2533
    new-array v1, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2534
    .line 2535
    const/16 v16, 0x0

    .line 2536
    .line 2537
    aput-object v50, v1, v16

    .line 2538
    .line 2539
    const/16 v21, 0x1

    .line 2540
    .line 2541
    aput-object v51, v1, v21

    .line 2542
    .line 2543
    const/16 v27, 0x2

    .line 2544
    .line 2545
    aput-object v53, v1, v27

    .line 2546
    .line 2547
    aput-object v54, v1, v37

    .line 2548
    .line 2549
    const/16 v29, 0x4

    .line 2550
    .line 2551
    aput-object v55, v1, v29

    .line 2552
    .line 2553
    aput-object v56, v1, v3

    .line 2554
    .line 2555
    const/16 v24, 0x6

    .line 2556
    .line 2557
    aput-object v59, v1, v24

    .line 2558
    .line 2559
    const/16 v22, 0x7

    .line 2560
    .line 2561
    aput-object v57, v1, v22

    .line 2562
    .line 2563
    const/16 v19, 0x8

    .line 2564
    .line 2565
    aput-object v58, v1, v19

    .line 2566
    .line 2567
    const/16 v44, 0x9

    .line 2568
    .line 2569
    aput-object v13, v1, v44

    .line 2570
    .line 2571
    const/16 v17, 0xa

    .line 2572
    .line 2573
    aput-object v60, v1, v17

    .line 2574
    .line 2575
    const/16 v31, 0xb

    .line 2576
    .line 2577
    aput-object v61, v1, v31

    .line 2578
    .line 2579
    const/16 v32, 0xc

    .line 2580
    .line 2581
    aput-object v62, v1, v32

    .line 2582
    .line 2583
    const/16 v34, 0xd

    .line 2584
    .line 2585
    aput-object v63, v1, v34

    .line 2586
    .line 2587
    const/16 v18, 0xe

    .line 2588
    .line 2589
    aput-object v64, v1, v18

    .line 2590
    .line 2591
    const/16 v35, 0xf

    .line 2592
    .line 2593
    aput-object v65, v1, v35

    .line 2594
    .line 2595
    const/16 v38, 0x10

    .line 2596
    .line 2597
    aput-object v66, v1, v38

    .line 2598
    .line 2599
    const/16 v39, 0x11

    .line 2600
    .line 2601
    aput-object v67, v1, v39

    .line 2602
    .line 2603
    const/16 v41, 0x12

    .line 2604
    .line 2605
    aput-object v68, v1, v41

    .line 2606
    .line 2607
    const/16 v3, 0x13

    .line 2608
    .line 2609
    aput-object v69, v1, v3

    .line 2610
    .line 2611
    const/16 v3, 0x14

    .line 2612
    .line 2613
    aput-object v70, v1, v3

    .line 2614
    .line 2615
    const/16 v3, 0x15

    .line 2616
    .line 2617
    aput-object v71, v1, v3

    .line 2618
    .line 2619
    const/16 v3, 0x16

    .line 2620
    .line 2621
    aput-object v72, v1, v3

    .line 2622
    .line 2623
    const/16 v81, 0x17

    .line 2624
    .line 2625
    aput-object v73, v1, v81

    .line 2626
    .line 2627
    const/16 v3, 0x18

    .line 2628
    .line 2629
    aput-object v75, v1, v3

    .line 2630
    .line 2631
    const/16 v3, 0x19

    .line 2632
    .line 2633
    aput-object v76, v1, v3

    .line 2634
    .line 2635
    const/16 v42, 0x1a

    .line 2636
    .line 2637
    aput-object v78, v1, v42

    .line 2638
    .line 2639
    const/16 v3, 0x1b

    .line 2640
    .line 2641
    aput-object v79, v1, v3

    .line 2642
    .line 2643
    const/16 v3, 0x1c

    .line 2644
    .line 2645
    aput-object v80, v1, v3

    .line 2646
    .line 2647
    const/16 v3, 0x1d

    .line 2648
    .line 2649
    aput-object v82, v1, v3

    .line 2650
    .line 2651
    const/16 v3, 0x1e

    .line 2652
    .line 2653
    aput-object v83, v1, v3

    .line 2654
    .line 2655
    const/16 v3, 0x1f

    .line 2656
    .line 2657
    aput-object v9, v1, v3

    .line 2658
    .line 2659
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2660
    .line 2661
    const-string v9, "InteroperabilityIndex"

    .line 2662
    .line 2663
    const/4 v13, 0x1

    .line 2664
    const/4 v15, 0x2

    .line 2665
    invoke-direct {v3, v9, v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2666
    .line 2667
    .line 2668
    new-array v9, v13, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2669
    .line 2670
    const/16 v16, 0x0

    .line 2671
    .line 2672
    aput-object v3, v9, v16

    .line 2673
    .line 2674
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2675
    .line 2676
    const/4 v13, 0x4

    .line 2677
    const/16 v15, 0xfe

    .line 2678
    .line 2679
    invoke-direct {v3, v10, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2680
    .line 2681
    .line 2682
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2683
    .line 2684
    const/16 v15, 0xff

    .line 2685
    .line 2686
    invoke-direct {v10, v2, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2687
    .line 2688
    .line 2689
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2690
    .line 2691
    const-string v15, "ThumbnailImageWidth"

    .line 2692
    .line 2693
    move-object/from16 v20, v1

    .line 2694
    .line 2695
    move-object/from16 v23, v3

    .line 2696
    .line 2697
    const/4 v1, 0x3

    .line 2698
    const/16 v3, 0x100

    .line 2699
    .line 2700
    invoke-direct {v2, v3, v1, v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 2701
    .line 2702
    .line 2703
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2704
    .line 2705
    const-string v15, "ThumbnailImageLength"

    .line 2706
    .line 2707
    move-object/from16 v50, v2

    .line 2708
    .line 2709
    const/16 v2, 0x101

    .line 2710
    .line 2711
    invoke-direct {v3, v2, v1, v13, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 2712
    .line 2713
    .line 2714
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2715
    .line 2716
    const/16 v13, 0x102

    .line 2717
    .line 2718
    invoke-direct {v2, v4, v13, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2719
    .line 2720
    .line 2721
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2722
    .line 2723
    const/16 v13, 0x103

    .line 2724
    .line 2725
    invoke-direct {v4, v5, v13, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2726
    .line 2727
    .line 2728
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2729
    .line 2730
    const/16 v13, 0x106

    .line 2731
    .line 2732
    invoke-direct {v5, v8, v13, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2733
    .line 2734
    .line 2735
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2736
    .line 2737
    const/4 v13, 0x2

    .line 2738
    const/16 v15, 0x10e

    .line 2739
    .line 2740
    invoke-direct {v8, v0, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2741
    .line 2742
    .line 2743
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2744
    .line 2745
    const/16 v15, 0x10f

    .line 2746
    .line 2747
    invoke-direct {v0, v11, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2748
    .line 2749
    .line 2750
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2751
    .line 2752
    const/16 v15, 0x110

    .line 2753
    .line 2754
    invoke-direct {v11, v7, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2755
    .line 2756
    .line 2757
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2758
    .line 2759
    const/4 v13, 0x4

    .line 2760
    const/16 v15, 0x111

    .line 2761
    .line 2762
    invoke-direct {v7, v15, v1, v13, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 2763
    .line 2764
    .line 2765
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2766
    .line 2767
    const-string v15, "ThumbnailOrientation"

    .line 2768
    .line 2769
    move-object/from16 v33, v0

    .line 2770
    .line 2771
    const/16 v0, 0x112

    .line 2772
    .line 2773
    invoke-direct {v13, v15, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2774
    .line 2775
    .line 2776
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2777
    .line 2778
    const-string v15, "SamplesPerPixel"

    .line 2779
    .line 2780
    move-object/from16 v36, v2

    .line 2781
    .line 2782
    const/16 v2, 0x115

    .line 2783
    .line 2784
    invoke-direct {v0, v15, v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2785
    .line 2786
    .line 2787
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2788
    .line 2789
    const-string v15, "RowsPerStrip"

    .line 2790
    .line 2791
    move-object/from16 v40, v0

    .line 2792
    .line 2793
    const/16 v0, 0x116

    .line 2794
    .line 2795
    move-object/from16 v43, v3

    .line 2796
    .line 2797
    const/4 v3, 0x4

    .line 2798
    invoke-direct {v2, v0, v1, v3, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 2799
    .line 2800
    .line 2801
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2802
    .line 2803
    const-string v15, "StripByteCounts"

    .line 2804
    .line 2805
    move-object/from16 v51, v2

    .line 2806
    .line 2807
    const/16 v2, 0x117

    .line 2808
    .line 2809
    invoke-direct {v0, v2, v1, v3, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 2810
    .line 2811
    .line 2812
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2813
    .line 2814
    const-string v2, "XResolution"

    .line 2815
    .line 2816
    const/16 v3, 0x11a

    .line 2817
    .line 2818
    const/4 v15, 0x5

    .line 2819
    invoke-direct {v1, v2, v3, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2820
    .line 2821
    .line 2822
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2823
    .line 2824
    const-string v3, "YResolution"

    .line 2825
    .line 2826
    move-object/from16 v53, v0

    .line 2827
    .line 2828
    const/16 v0, 0x11b

    .line 2829
    .line 2830
    invoke-direct {v2, v3, v0, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2831
    .line 2832
    .line 2833
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2834
    .line 2835
    const-string v3, "PlanarConfiguration"

    .line 2836
    .line 2837
    const/16 v15, 0x11c

    .line 2838
    .line 2839
    move-object/from16 v54, v1

    .line 2840
    .line 2841
    const/4 v1, 0x3

    .line 2842
    invoke-direct {v0, v3, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2843
    .line 2844
    .line 2845
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2846
    .line 2847
    const-string v15, "ResolutionUnit"

    .line 2848
    .line 2849
    move-object/from16 v55, v0

    .line 2850
    .line 2851
    const/16 v0, 0x128

    .line 2852
    .line 2853
    invoke-direct {v3, v15, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2854
    .line 2855
    .line 2856
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2857
    .line 2858
    const-string v15, "TransferFunction"

    .line 2859
    .line 2860
    move-object/from16 v56, v2

    .line 2861
    .line 2862
    const/16 v2, 0x12d

    .line 2863
    .line 2864
    invoke-direct {v0, v15, v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2865
    .line 2866
    .line 2867
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2868
    .line 2869
    const-string v2, "Software"

    .line 2870
    .line 2871
    const/16 v15, 0x131

    .line 2872
    .line 2873
    move-object/from16 v57, v0

    .line 2874
    .line 2875
    const/4 v0, 0x2

    .line 2876
    invoke-direct {v1, v2, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2877
    .line 2878
    .line 2879
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2880
    .line 2881
    const-string v15, "DateTime"

    .line 2882
    .line 2883
    move-object/from16 v58, v1

    .line 2884
    .line 2885
    const/16 v1, 0x132

    .line 2886
    .line 2887
    invoke-direct {v2, v15, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2888
    .line 2889
    .line 2890
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2891
    .line 2892
    const-string v15, "Artist"

    .line 2893
    .line 2894
    move-object/from16 v59, v2

    .line 2895
    .line 2896
    const/16 v2, 0x13b

    .line 2897
    .line 2898
    invoke-direct {v1, v15, v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2899
    .line 2900
    .line 2901
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2902
    .line 2903
    const-string v2, "WhitePoint"

    .line 2904
    .line 2905
    const/16 v15, 0x13e

    .line 2906
    .line 2907
    move-object/from16 v60, v1

    .line 2908
    .line 2909
    const/4 v1, 0x5

    .line 2910
    invoke-direct {v0, v2, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2911
    .line 2912
    .line 2913
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2914
    .line 2915
    const-string v15, "PrimaryChromaticities"

    .line 2916
    .line 2917
    move-object/from16 v61, v0

    .line 2918
    .line 2919
    const/16 v0, 0x13f

    .line 2920
    .line 2921
    invoke-direct {v2, v15, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2922
    .line 2923
    .line 2924
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2925
    .line 2926
    const/4 v1, 0x4

    .line 2927
    const/16 v15, 0x14a

    .line 2928
    .line 2929
    invoke-direct {v0, v6, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2930
    .line 2931
    .line 2932
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2933
    .line 2934
    move-object/from16 v62, v0

    .line 2935
    .line 2936
    const-string v0, "JPEGInterchangeFormat"

    .line 2937
    .line 2938
    move-object/from16 v63, v2

    .line 2939
    .line 2940
    const/16 v2, 0x201

    .line 2941
    .line 2942
    invoke-direct {v15, v0, v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2943
    .line 2944
    .line 2945
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2946
    .line 2947
    const-string v2, "JPEGInterchangeFormatLength"

    .line 2948
    .line 2949
    move-object/from16 v64, v3

    .line 2950
    .line 2951
    const/16 v3, 0x202

    .line 2952
    .line 2953
    invoke-direct {v0, v2, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2954
    .line 2955
    .line 2956
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2957
    .line 2958
    const-string v2, "YCbCrCoefficients"

    .line 2959
    .line 2960
    const/16 v3, 0x211

    .line 2961
    .line 2962
    move-object/from16 v65, v0

    .line 2963
    .line 2964
    const/4 v0, 0x5

    .line 2965
    invoke-direct {v1, v2, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2966
    .line 2967
    .line 2968
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2969
    .line 2970
    const-string v2, "YCbCrSubSampling"

    .line 2971
    .line 2972
    const/16 v3, 0x212

    .line 2973
    .line 2974
    move-object/from16 v66, v1

    .line 2975
    .line 2976
    const/4 v1, 0x3

    .line 2977
    invoke-direct {v0, v2, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2978
    .line 2979
    .line 2980
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2981
    .line 2982
    const-string v3, "YCbCrPositioning"

    .line 2983
    .line 2984
    move-object/from16 v67, v0

    .line 2985
    .line 2986
    const/16 v0, 0x213

    .line 2987
    .line 2988
    invoke-direct {v2, v3, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2989
    .line 2990
    .line 2991
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2992
    .line 2993
    const-string v1, "ReferenceBlackWhite"

    .line 2994
    .line 2995
    const/16 v3, 0x214

    .line 2996
    .line 2997
    move-object/from16 v68, v2

    .line 2998
    .line 2999
    const/4 v2, 0x5

    .line 3000
    invoke-direct {v0, v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3001
    .line 3002
    .line 3003
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3004
    .line 3005
    const-string v2, "Copyright"

    .line 3006
    .line 3007
    const v3, 0x8298

    .line 3008
    .line 3009
    .line 3010
    move-object/from16 v69, v0

    .line 3011
    .line 3012
    const/4 v0, 0x2

    .line 3013
    invoke-direct {v1, v2, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3014
    .line 3015
    .line 3016
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3017
    .line 3018
    const v2, 0x8769

    .line 3019
    .line 3020
    .line 3021
    const/4 v3, 0x4

    .line 3022
    invoke-direct {v0, v12, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3023
    .line 3024
    .line 3025
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3026
    .line 3027
    move-object/from16 v70, v0

    .line 3028
    .line 3029
    move-object/from16 v71, v1

    .line 3030
    .line 3031
    move-object/from16 v0, v91

    .line 3032
    .line 3033
    const v1, 0x8825

    .line 3034
    .line 3035
    .line 3036
    invoke-direct {v2, v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3037
    .line 3038
    .line 3039
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3040
    .line 3041
    const-string v3, "DNGVersion"

    .line 3042
    .line 3043
    move-object/from16 v72, v2

    .line 3044
    .line 3045
    const v2, 0xc612

    .line 3046
    .line 3047
    .line 3048
    move-object/from16 v73, v4

    .line 3049
    .line 3050
    const/4 v4, 0x1

    .line 3051
    invoke-direct {v1, v3, v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3052
    .line 3053
    .line 3054
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3055
    .line 3056
    const-string v3, "DefaultCropSize"

    .line 3057
    .line 3058
    move/from16 v21, v4

    .line 3059
    .line 3060
    const v4, 0xc620

    .line 3061
    .line 3062
    .line 3063
    move-object/from16 v75, v1

    .line 3064
    .line 3065
    move-object/from16 v76, v5

    .line 3066
    .line 3067
    const/4 v1, 0x3

    .line 3068
    const/4 v5, 0x4

    .line 3069
    invoke-direct {v2, v4, v1, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(IIILjava/lang/String;)V

    .line 3070
    .line 3071
    .line 3072
    const/16 v3, 0x25

    .line 3073
    .line 3074
    new-array v3, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3075
    .line 3076
    const/16 v16, 0x0

    .line 3077
    .line 3078
    aput-object v23, v3, v16

    .line 3079
    .line 3080
    aput-object v10, v3, v21

    .line 3081
    .line 3082
    const/16 v27, 0x2

    .line 3083
    .line 3084
    aput-object v50, v3, v27

    .line 3085
    .line 3086
    aput-object v43, v3, v1

    .line 3087
    .line 3088
    aput-object v36, v3, v5

    .line 3089
    .line 3090
    const/16 v25, 0x5

    .line 3091
    .line 3092
    aput-object v73, v3, v25

    .line 3093
    .line 3094
    const/16 v24, 0x6

    .line 3095
    .line 3096
    aput-object v76, v3, v24

    .line 3097
    .line 3098
    const/16 v22, 0x7

    .line 3099
    .line 3100
    aput-object v8, v3, v22

    .line 3101
    .line 3102
    const/16 v19, 0x8

    .line 3103
    .line 3104
    aput-object v33, v3, v19

    .line 3105
    .line 3106
    const/16 v44, 0x9

    .line 3107
    .line 3108
    aput-object v11, v3, v44

    .line 3109
    .line 3110
    const/16 v17, 0xa

    .line 3111
    .line 3112
    aput-object v7, v3, v17

    .line 3113
    .line 3114
    const/16 v31, 0xb

    .line 3115
    .line 3116
    aput-object v13, v3, v31

    .line 3117
    .line 3118
    const/16 v32, 0xc

    .line 3119
    .line 3120
    aput-object v40, v3, v32

    .line 3121
    .line 3122
    const/16 v34, 0xd

    .line 3123
    .line 3124
    aput-object v51, v3, v34

    .line 3125
    .line 3126
    const/16 v18, 0xe

    .line 3127
    .line 3128
    aput-object v53, v3, v18

    .line 3129
    .line 3130
    const/16 v35, 0xf

    .line 3131
    .line 3132
    aput-object v54, v3, v35

    .line 3133
    .line 3134
    const/16 v38, 0x10

    .line 3135
    .line 3136
    aput-object v56, v3, v38

    .line 3137
    .line 3138
    const/16 v39, 0x11

    .line 3139
    .line 3140
    aput-object v55, v3, v39

    .line 3141
    .line 3142
    const/16 v41, 0x12

    .line 3143
    .line 3144
    aput-object v64, v3, v41

    .line 3145
    .line 3146
    const/16 v1, 0x13

    .line 3147
    .line 3148
    aput-object v57, v3, v1

    .line 3149
    .line 3150
    const/16 v1, 0x14

    .line 3151
    .line 3152
    aput-object v58, v3, v1

    .line 3153
    .line 3154
    const/16 v1, 0x15

    .line 3155
    .line 3156
    aput-object v59, v3, v1

    .line 3157
    .line 3158
    const/16 v1, 0x16

    .line 3159
    .line 3160
    aput-object v60, v3, v1

    .line 3161
    .line 3162
    const/16 v81, 0x17

    .line 3163
    .line 3164
    aput-object v61, v3, v81

    .line 3165
    .line 3166
    const/16 v1, 0x18

    .line 3167
    .line 3168
    aput-object v63, v3, v1

    .line 3169
    .line 3170
    const/16 v1, 0x19

    .line 3171
    .line 3172
    aput-object v62, v3, v1

    .line 3173
    .line 3174
    const/16 v42, 0x1a

    .line 3175
    .line 3176
    aput-object v15, v3, v42

    .line 3177
    .line 3178
    const/16 v1, 0x1b

    .line 3179
    .line 3180
    aput-object v65, v3, v1

    .line 3181
    .line 3182
    const/16 v1, 0x1c

    .line 3183
    .line 3184
    aput-object v66, v3, v1

    .line 3185
    .line 3186
    const/16 v1, 0x1d

    .line 3187
    .line 3188
    aput-object v67, v3, v1

    .line 3189
    .line 3190
    const/16 v1, 0x1e

    .line 3191
    .line 3192
    aput-object v68, v3, v1

    .line 3193
    .line 3194
    const/16 v1, 0x1f

    .line 3195
    .line 3196
    aput-object v69, v3, v1

    .line 3197
    .line 3198
    const/16 v1, 0x20

    .line 3199
    .line 3200
    aput-object v71, v3, v1

    .line 3201
    .line 3202
    const/16 v1, 0x21

    .line 3203
    .line 3204
    aput-object v70, v3, v1

    .line 3205
    .line 3206
    const/16 v1, 0x22

    .line 3207
    .line 3208
    aput-object v72, v3, v1

    .line 3209
    .line 3210
    const/16 v1, 0x23

    .line 3211
    .line 3212
    aput-object v75, v3, v1

    .line 3213
    .line 3214
    const/16 v1, 0x24

    .line 3215
    .line 3216
    aput-object v2, v3, v1

    .line 3217
    .line 3218
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3219
    .line 3220
    const/4 v13, 0x3

    .line 3221
    const/16 v15, 0x111

    .line 3222
    .line 3223
    invoke-direct {v1, v14, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3224
    .line 3225
    .line 3226
    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3227
    .line 3228
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3229
    .line 3230
    const-string v2, "ThumbnailImage"

    .line 3231
    .line 3232
    const/16 v4, 0x100

    .line 3233
    .line 3234
    const/4 v13, 0x7

    .line 3235
    invoke-direct {v1, v2, v4, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3236
    .line 3237
    .line 3238
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3239
    .line 3240
    const-string v4, "CameraSettingsIFDPointer"

    .line 3241
    .line 3242
    const/16 v5, 0x2020

    .line 3243
    .line 3244
    const/4 v13, 0x4

    .line 3245
    invoke-direct {v2, v4, v5, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3246
    .line 3247
    .line 3248
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3249
    .line 3250
    const-string v5, "ImageProcessingIFDPointer"

    .line 3251
    .line 3252
    const/16 v7, 0x2040

    .line 3253
    .line 3254
    invoke-direct {v4, v5, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3255
    .line 3256
    .line 3257
    const/4 v5, 0x3

    .line 3258
    new-array v7, v5, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3259
    .line 3260
    const/16 v16, 0x0

    .line 3261
    .line 3262
    aput-object v1, v7, v16

    .line 3263
    .line 3264
    const/4 v1, 0x1

    .line 3265
    aput-object v2, v7, v1

    .line 3266
    .line 3267
    const/4 v15, 0x2

    .line 3268
    aput-object v4, v7, v15

    .line 3269
    .line 3270
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3271
    .line 3272
    const-string v4, "PreviewImageStart"

    .line 3273
    .line 3274
    const/16 v5, 0x101

    .line 3275
    .line 3276
    invoke-direct {v2, v4, v5, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3277
    .line 3278
    .line 3279
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3280
    .line 3281
    const-string v5, "PreviewImageLength"

    .line 3282
    .line 3283
    const/16 v8, 0x102

    .line 3284
    .line 3285
    invoke-direct {v4, v5, v8, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3286
    .line 3287
    .line 3288
    new-array v5, v15, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3289
    .line 3290
    aput-object v2, v5, v16

    .line 3291
    .line 3292
    aput-object v4, v5, v1

    .line 3293
    .line 3294
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3295
    .line 3296
    const-string v4, "AspectFrame"

    .line 3297
    .line 3298
    const/16 v8, 0x1113

    .line 3299
    .line 3300
    const/4 v13, 0x3

    .line 3301
    invoke-direct {v2, v4, v8, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3302
    .line 3303
    .line 3304
    new-array v4, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3305
    .line 3306
    aput-object v2, v4, v16

    .line 3307
    .line 3308
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3309
    .line 3310
    const-string v8, "ColorSpace"

    .line 3311
    .line 3312
    const/16 v10, 0x37

    .line 3313
    .line 3314
    invoke-direct {v2, v8, v10, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3315
    .line 3316
    .line 3317
    new-array v8, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3318
    .line 3319
    aput-object v2, v8, v16

    .line 3320
    .line 3321
    const/16 v15, 0xa

    .line 3322
    .line 3323
    new-array v2, v15, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3324
    .line 3325
    aput-object v46, v2, v16

    .line 3326
    .line 3327
    aput-object v49, v2, v1

    .line 3328
    .line 3329
    const/16 v27, 0x2

    .line 3330
    .line 3331
    aput-object v20, v2, v27

    .line 3332
    .line 3333
    aput-object v9, v2, v13

    .line 3334
    .line 3335
    const/4 v9, 0x4

    .line 3336
    aput-object v3, v2, v9

    .line 3337
    .line 3338
    const/16 v25, 0x5

    .line 3339
    .line 3340
    aput-object v46, v2, v25

    .line 3341
    .line 3342
    const/16 v24, 0x6

    .line 3343
    .line 3344
    aput-object v7, v2, v24

    .line 3345
    .line 3346
    const/16 v22, 0x7

    .line 3347
    .line 3348
    aput-object v5, v2, v22

    .line 3349
    .line 3350
    const/16 v19, 0x8

    .line 3351
    .line 3352
    aput-object v4, v2, v19

    .line 3353
    .line 3354
    const/16 v44, 0x9

    .line 3355
    .line 3356
    aput-object v8, v2, v44

    .line 3357
    .line 3358
    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3359
    .line 3360
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3361
    .line 3362
    const/16 v15, 0x14a

    .line 3363
    .line 3364
    invoke-direct {v1, v6, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3365
    .line 3366
    .line 3367
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3368
    .line 3369
    const v3, 0x8769

    .line 3370
    .line 3371
    .line 3372
    invoke-direct {v2, v12, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3373
    .line 3374
    .line 3375
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3376
    .line 3377
    const v4, 0x8825

    .line 3378
    .line 3379
    .line 3380
    invoke-direct {v3, v0, v4, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3381
    .line 3382
    .line 3383
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3384
    .line 3385
    const-string v4, "InteroperabilityIFDPointer"

    .line 3386
    .line 3387
    const v5, 0xa005

    .line 3388
    .line 3389
    .line 3390
    invoke-direct {v0, v4, v5, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3391
    .line 3392
    .line 3393
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3394
    .line 3395
    const-string v5, "CameraSettingsIFDPointer"

    .line 3396
    .line 3397
    const/16 v6, 0x2020

    .line 3398
    .line 3399
    const/4 v13, 0x1

    .line 3400
    invoke-direct {v4, v5, v6, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3401
    .line 3402
    .line 3403
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3404
    .line 3405
    const-string v6, "ImageProcessingIFDPointer"

    .line 3406
    .line 3407
    const/16 v7, 0x2040

    .line 3408
    .line 3409
    invoke-direct {v5, v6, v7, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3410
    .line 3411
    .line 3412
    const/4 v6, 0x6

    .line 3413
    new-array v6, v6, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3414
    .line 3415
    const/16 v16, 0x0

    .line 3416
    .line 3417
    aput-object v1, v6, v16

    .line 3418
    .line 3419
    aput-object v2, v6, v13

    .line 3420
    .line 3421
    const/16 v27, 0x2

    .line 3422
    .line 3423
    aput-object v3, v6, v27

    .line 3424
    .line 3425
    const/16 v37, 0x3

    .line 3426
    .line 3427
    aput-object v0, v6, v37

    .line 3428
    .line 3429
    const/16 v29, 0x4

    .line 3430
    .line 3431
    aput-object v4, v6, v29

    .line 3432
    .line 3433
    const/16 v25, 0x5

    .line 3434
    .line 3435
    aput-object v5, v6, v25

    .line 3436
    .line 3437
    sput-object v6, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3438
    .line 3439
    const/16 v9, 0xa

    .line 3440
    .line 3441
    new-array v0, v9, [Ljava/util/HashMap;

    .line 3442
    .line 3443
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3444
    .line 3445
    new-array v0, v9, [Ljava/util/HashMap;

    .line 3446
    .line 3447
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3448
    .line 3449
    new-instance v0, Ljava/util/HashSet;

    .line 3450
    .line 3451
    const-string v1, "ExposureTime"

    .line 3452
    .line 3453
    const-string v2, "SubjectDistance"

    .line 3454
    .line 3455
    const-string v3, "FNumber"

    .line 3456
    .line 3457
    const-string v4, "DigitalZoomRatio"

    .line 3458
    .line 3459
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 3460
    .line 3461
    .line 3462
    move-result-object v1

    .line 3463
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 3464
    .line 3465
    .line 3466
    move-result-object v1

    .line 3467
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3468
    .line 3469
    .line 3470
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 3471
    .line 3472
    .line 3473
    move-result-object v0

    .line 3474
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

    .line 3475
    .line 3476
    new-instance v0, Ljava/util/HashMap;

    .line 3477
    .line 3478
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3479
    .line 3480
    .line 3481
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 3482
    .line 3483
    const-string v0, "US-ASCII"

    .line 3484
    .line 3485
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 3486
    .line 3487
    .line 3488
    move-result-object v0

    .line 3489
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 3490
    .line 3491
    const-string v1, "Exif\u0000\u0000"

    .line 3492
    .line 3493
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 3494
    .line 3495
    .line 3496
    move-result-object v1

    .line 3497
    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 3498
    .line 3499
    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 3500
    .line 3501
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 3502
    .line 3503
    .line 3504
    move-result-object v0

    .line 3505
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 3506
    .line 3507
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3508
    .line 3509
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3510
    .line 3511
    const-string/jumbo v2, "yyyy:MM:dd HH:mm:ss"

    .line 3512
    .line 3513
    .line 3514
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3515
    .line 3516
    .line 3517
    const-string v2, "UTC"

    .line 3518
    .line 3519
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 3520
    .line 3521
    .line 3522
    move-result-object v2

    .line 3523
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3524
    .line 3525
    .line 3526
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3527
    .line 3528
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    .line 3529
    .line 3530
    .line 3531
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3532
    .line 3533
    .line 3534
    const-string v1, "UTC"

    .line 3535
    .line 3536
    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 3537
    .line 3538
    .line 3539
    move-result-object v1

    .line 3540
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3541
    .line 3542
    .line 3543
    const/4 v15, 0x0

    .line 3544
    :goto_0
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3545
    .line 3546
    array-length v1, v0

    .line 3547
    if-ge v15, v1, :cond_1

    .line 3548
    .line 3549
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3550
    .line 3551
    new-instance v2, Ljava/util/HashMap;

    .line 3552
    .line 3553
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3554
    .line 3555
    .line 3556
    aput-object v2, v1, v15

    .line 3557
    .line 3558
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3559
    .line 3560
    new-instance v2, Ljava/util/HashMap;

    .line 3561
    .line 3562
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3563
    .line 3564
    .line 3565
    aput-object v2, v1, v15

    .line 3566
    .line 3567
    aget-object v0, v0, v15

    .line 3568
    .line 3569
    array-length v1, v0

    .line 3570
    const/4 v2, 0x0

    .line 3571
    :goto_1
    if-ge v2, v1, :cond_0

    .line 3572
    .line 3573
    aget-object v3, v0, v2

    .line 3574
    .line 3575
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3576
    .line 3577
    aget-object v4, v4, v15

    .line 3578
    .line 3579
    iget v5, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3580
    .line 3581
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3582
    .line 3583
    .line 3584
    move-result-object v5

    .line 3585
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    .line 3587
    .line 3588
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3589
    .line 3590
    aget-object v4, v4, v15

    .line 3591
    .line 3592
    iget-object v5, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3593
    .line 3594
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    .line 3596
    .line 3597
    add-int/lit8 v2, v2, 0x1

    .line 3598
    .line 3599
    goto :goto_1

    .line 3600
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 3601
    .line 3602
    goto :goto_0

    .line 3603
    :cond_1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 3604
    .line 3605
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3606
    .line 3607
    const/16 v16, 0x0

    .line 3608
    .line 3609
    aget-object v2, v1, v16

    .line 3610
    .line 3611
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3612
    .line 3613
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3614
    .line 3615
    .line 3616
    move-result-object v2

    .line 3617
    move-object/from16 v3, v77

    .line 3618
    .line 3619
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3620
    .line 3621
    .line 3622
    const/16 v21, 0x1

    .line 3623
    .line 3624
    aget-object v2, v1, v21

    .line 3625
    .line 3626
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3627
    .line 3628
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3629
    .line 3630
    .line 3631
    move-result-object v2

    .line 3632
    move-object/from16 v3, v74

    .line 3633
    .line 3634
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3635
    .line 3636
    .line 3637
    const/16 v27, 0x2

    .line 3638
    .line 3639
    aget-object v2, v1, v27

    .line 3640
    .line 3641
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3642
    .line 3643
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3644
    .line 3645
    .line 3646
    move-result-object v2

    .line 3647
    move-object/from16 v3, v52

    .line 3648
    .line 3649
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3650
    .line 3651
    .line 3652
    const/16 v37, 0x3

    .line 3653
    .line 3654
    aget-object v2, v1, v37

    .line 3655
    .line 3656
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3657
    .line 3658
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3659
    .line 3660
    .line 3661
    move-result-object v2

    .line 3662
    move-object/from16 v3, v48

    .line 3663
    .line 3664
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3665
    .line 3666
    .line 3667
    const/16 v29, 0x4

    .line 3668
    .line 3669
    aget-object v2, v1, v29

    .line 3670
    .line 3671
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3672
    .line 3673
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3674
    .line 3675
    .line 3676
    move-result-object v2

    .line 3677
    move-object/from16 v3, v47

    .line 3678
    .line 3679
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3680
    .line 3681
    .line 3682
    const/16 v25, 0x5

    .line 3683
    .line 3684
    aget-object v1, v1, v25

    .line 3685
    .line 3686
    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3687
    .line 3688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3689
    .line 3690
    .line 3691
    move-result-object v1

    .line 3692
    move-object/from16 v2, v45

    .line 3693
    .line 3694
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3695
    .line 3696
    .line 3697
    const-string v0, ".*[1-9].*"

    .line 3698
    .line 3699
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3700
    .line 3701
    .line 3702
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3703
    .line 3704
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3705
    .line 3706
    .line 3707
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3708
    .line 3709
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3710
    .line 3711
    .line 3712
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3713
    .line 3714
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3715
    .line 3716
    .line 3717
    return-void

    .line 3718
    nop

    .line 3719
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 3720
    .line 3721
    .line 3722
    .line 3723
    .line 3724
    .line 3725
    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    .line 3726
    .line 3727
    .line 3728
    .line 3729
    .line 3730
    .line 3731
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    .line 3732
    .line 3733
    .line 3734
    .line 3735
    .line 3736
    .line 3737
    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    .line 3738
    .line 3739
    .line 3740
    .line 3741
    .line 3742
    .line 3743
    :array_4
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    .line 3744
    .line 3745
    .line 3746
    .line 3747
    .line 3748
    .line 3749
    :array_5
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    .line 3750
    .line 3751
    .line 3752
    .line 3753
    .line 3754
    .line 3755
    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 3756
    .line 3757
    .line 3758
    .line 3759
    .line 3760
    .line 3761
    .line 3762
    nop

    .line 3763
    :array_7
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 3764
    .line 3765
    .line 3766
    .line 3767
    .line 3768
    .line 3769
    .line 3770
    .line 3771
    .line 3772
    nop

    .line 3773
    :array_8
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    .line 3774
    .line 3775
    .line 3776
    .line 3777
    .line 3778
    .line 3779
    .line 3780
    .line 3781
    :array_9
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    .line 3782
    .line 3783
    .line 3784
    .line 3785
    .line 3786
    .line 3787
    :array_a
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    .line 3788
    .line 3789
    .line 3790
    .line 3791
    .line 3792
    .line 3793
    :array_b
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    .line 3794
    .line 3795
    .line 3796
    .line 3797
    .line 3798
    .line 3799
    :array_c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    .line 3800
    .line 3801
    .line 3802
    .line 3803
    .line 3804
    .line 3805
    .line 3806
    .line 3807
    .line 3808
    .line 3809
    .line 3810
    .line 3811
    .line 3812
    .line 3813
    .line 3814
    .line 3815
    .line 3816
    .line 3817
    .line 3818
    .line 3819
    .line 3820
    .line 3821
    .line 3822
    .line 3823
    .line 3824
    .line 3825
    .line 3826
    .line 3827
    .line 3828
    .line 3829
    .line 3830
    .line 3831
    :array_d
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    new-array v1, v1, [Ljava/util/HashMap;

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/HashSet;

    .line 18
    .line 19
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-boolean v2, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    .line 28
    .line 29
    instance-of v3, p1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 30
    .line 31
    const-string v4, "ExifInterface"

    .line 32
    .line 33
    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    move-object v3, p1

    .line 38
    check-cast v3, Landroid/content/res/AssetManager$AssetInputStream;

    .line 39
    .line 40
    iput-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 41
    .line 42
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    instance-of v3, p1, Ljava/io/FileInputStream;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    move-object v3, p1

    .line 50
    check-cast v3, Ljava/io/FileInputStream;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    :try_start_0
    sget v7, Landroid/system/OsConstants;->SEEK_CUR:I

    .line 57
    .line 58
    const-wide/16 v8, 0x0

    .line 59
    .line 60
    invoke-static {v6, v8, v9, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    if-eqz v5, :cond_1

    .line 73
    .line 74
    const-string v3, "The file descriptor for the given input is not seekable"

    .line 75
    .line 76
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 80
    .line 81
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 82
    .line 83
    :goto_0
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    .line 84
    .line 85
    move v3, v2

    .line 86
    :goto_1
    :try_start_1
    array-length v6, v0

    .line 87
    if-ge v3, v6, :cond_2

    .line 88
    .line 89
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 90
    .line 91
    new-instance v7, Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    aput-object v7, v6, v3

    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :catch_1
    move-exception p1

    .line 105
    goto/16 :goto_7

    .line 106
    .line 107
    :catch_2
    move-exception p1

    .line 108
    goto/16 :goto_7

    .line 109
    .line 110
    :cond_2
    if-nez v1, :cond_3

    .line 111
    .line 112
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 113
    .line 114
    const/16 v3, 0x1388

    .line 115
    .line 116
    invoke-direct {v0, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 124
    .line 125
    move-object p1, v0

    .line 126
    :cond_3
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 127
    .line 128
    const/16 v3, 0xe

    .line 129
    .line 130
    const/16 v6, 0xd

    .line 131
    .line 132
    const/16 v7, 0x9

    .line 133
    .line 134
    const/4 v8, 0x4

    .line 135
    if-eq v0, v8, :cond_b

    .line 136
    .line 137
    if-eq v0, v7, :cond_b

    .line 138
    .line 139
    if-eq v0, v6, :cond_b

    .line 140
    .line 141
    if-ne v0, v3, :cond_4

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_4
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 145
    .line 146
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    .line 148
    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z

    .line 152
    .line 153
    .line 154
    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    if-nez p1, :cond_a

    .line 156
    .line 157
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 158
    .line 159
    .line 160
    if-eqz v5, :cond_12

    .line 161
    .line 162
    :goto_2
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_a

    .line 166
    .line 167
    :cond_5
    :try_start_2
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 168
    .line 169
    const/16 v1, 0xc

    .line 170
    .line 171
    if-eq p1, v1, :cond_9

    .line 172
    .line 173
    const/16 v1, 0xf

    .line 174
    .line 175
    if-ne p1, v1, :cond_6

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_6
    const/4 v1, 0x7

    .line 179
    if-ne p1, v1, :cond_7

    .line 180
    .line 181
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_7
    const/16 v1, 0xa

    .line 186
    .line 187
    if-ne p1, v1, :cond_8

    .line 188
    .line 189
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_9
    :goto_3
    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 198
    .line 199
    .line 200
    :cond_a
    :goto_4
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 201
    .line 202
    int-to-long v1, p1

    .line 203
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 207
    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_b
    :goto_5
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 211
    .line 212
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 213
    .line 214
    .line 215
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 216
    .line 217
    if-ne p1, v8, :cond_c

    .line 218
    .line 219
    invoke-virtual {p0, v0, v2, v2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_c
    if-ne p1, v6, :cond_d

    .line 224
    .line 225
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_d
    if-ne p1, v7, :cond_e

    .line 230
    .line 231
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_e
    if-ne p1, v3, :cond_f

    .line 236
    .line 237
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    .line 239
    .line 240
    :cond_f
    :goto_6
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 241
    .line 242
    .line 243
    if-eqz v5, :cond_12

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :goto_7
    if-eqz v5, :cond_11

    .line 247
    .line 248
    :try_start_3
    const-string v0, "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 249
    .line 250
    invoke-static {v4, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    .line 252
    .line 253
    goto :goto_9

    .line 254
    :goto_8
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 255
    .line 256
    .line 257
    if-eqz v5, :cond_10

    .line 258
    .line 259
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 260
    .line 261
    .line 262
    :cond_10
    throw p1

    .line 263
    :cond_11
    :goto_9
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 264
    .line 265
    .line 266
    if-eqz v5, :cond_12

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_12
    :goto_a
    return-void
.end method

.method public static readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    const-string v1, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4d4d

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string p0, "readExifSegment: Byte Align MM"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string v0, "Invalid byte order: "

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :cond_2
    if-eqz v2, :cond_3

    .line 39
    .line 40
    const-string p0, "readExifSegment: Byte Align II"

    .line 41
    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_3
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    .line 47
    return-object p0
.end method


# virtual methods
.method public final addDefaultValuesForCompatibility()V
    .locals 7

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v3, "DateTime"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    aget-object v4, v2, v1

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v0, "ImageWidth"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    aget-object v3, v2, v1

    .line 40
    .line 41
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 42
    .line 43
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    const-string v0, "ImageLength"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    aget-object v3, v2, v1

    .line 59
    .line 60
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 61
    .line 62
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    const-string v0, "Orientation"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    aget-object v1, v2, v1

    .line 78
    .line 79
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 80
    .line 81
    invoke-static {v4, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_3
    const-string v0, "LightSource"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    aget-object v1, v2, v1

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 100
    .line 101
    invoke-static {v4, v5, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iget v2, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 13
    .line 14
    const-string v3, "GPSTimeStamp"

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_4

    .line 21
    .line 22
    const/4 p1, 0x5

    .line 23
    const-string v3, "ExifInterface"

    .line 24
    .line 25
    if-eq v2, p1, :cond_1

    .line 26
    .line 27
    const/16 p1, 0xa

    .line 28
    .line 29
    if-eq v2, p1, :cond_1

    .line 30
    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p1, "GPS Timestamp format is not rational. format="

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_1
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    array-length p1, p0

    .line 60
    const/4 v1, 0x3

    .line 61
    if-eq p1, v1, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 p1, 0x0

    .line 65
    aget-object v0, p0, p1

    .line 66
    .line 67
    iget-wide v2, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 68
    .line 69
    long-to-float v2, v2

    .line 70
    iget-wide v3, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 71
    .line 72
    long-to-float v0, v3

    .line 73
    div-float/2addr v2, v0

    .line 74
    float-to-int v0, v2

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v2, 0x1

    .line 80
    aget-object v3, p0, v2

    .line 81
    .line 82
    iget-wide v4, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 83
    .line 84
    long-to-float v4, v4

    .line 85
    iget-wide v5, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 86
    .line 87
    long-to-float v3, v5

    .line 88
    div-float/2addr v4, v3

    .line 89
    float-to-int v3, v4

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v4, 0x2

    .line 95
    aget-object p0, p0, v4

    .line 96
    .line 97
    iget-wide v5, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 98
    .line 99
    long-to-float v5, v5

    .line 100
    iget-wide v6, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    .line 101
    .line 102
    long-to-float p0, v6

    .line 103
    div-float/2addr v5, p0

    .line 104
    float-to-int p0, v5

    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-array v1, v1, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object v0, v1, p1

    .line 112
    .line 113
    aput-object v3, v1, v2

    .line 114
    .line 115
    aput-object p0, v1, v4

    .line 116
    .line 117
    const-string p0, "%02d:%02d:%02d"

    .line 118
    .line 119
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "Invalid GPS Timestamp array. array="

    .line 127
    .line 128
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_4
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->RATIONAL_TAGS_HANDLED_AS_DECIMALS_FOR_COMPATIBILITY:Ljava/util/Set;

    .line 147
    .line 148
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 153
    .line 154
    if-eqz p1, :cond_5

    .line 155
    .line 156
    :try_start_0
    invoke-virtual {v1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    .line 157
    .line 158
    .line 159
    move-result-wide p0

    .line 160
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-object p0

    .line 165
    :catch_0
    :goto_1
    return-object v0

    .line 166
    :cond_5
    invoke-virtual {v1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :cond_6
    const-string p0, "tag shouldn\'t be null"

    .line 172
    .line 173
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v0
.end method

.method public final getAttributeInt(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return p0

    .line 15
    :catch_0
    :goto_0
    return p2
.end method

.method public final getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    const-string v1, "ISOSpeedRatings"

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "ExifInterface"

    .line 17
    .line 18
    const-string v1, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 19
    .line 20
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string p1, "PhotographicSensitivity"

    .line 24
    .line 25
    :cond_1
    const-string v1, "Xmp"

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    if-eq v2, v3, :cond_3

    .line 37
    .line 38
    const/16 v3, 0x9

    .line 39
    .line 40
    if-eq v2, v3, :cond_2

    .line 41
    .line 42
    const/16 v3, 0xf

    .line 43
    .line 44
    if-eq v2, v3, :cond_2

    .line 45
    .line 46
    const/16 v3, 0xc

    .line 47
    .line 48
    if-eq v2, v3, :cond_2

    .line 49
    .line 50
    const/16 v3, 0xd

    .line 51
    .line 52
    if-eq v2, v3, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    return-object v2

    .line 60
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 61
    :goto_1
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 62
    .line 63
    array-length v3, v3

    .line 64
    if-ge v2, v3, :cond_5

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 67
    .line 68
    aget-object v3, v3, v2

    .line 69
    .line 70
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    return-object v3

    .line 79
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 89
    .line 90
    if-eqz p0, :cond_6

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_6
    return-object v0

    .line 94
    :cond_7
    const-string p0, "tag shouldn\'t be null"

    .line 95
    .line 96
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v0
.end method

.method public final getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 12

    .line 1
    const-string/jumbo v0, "yes"

    .line 2
    .line 3
    .line 4
    const-string v1, "Heif meta: "

    .line 5
    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v3, 0x1c

    .line 9
    .line 10
    if-lt v2, v3, :cond_f

    .line 11
    .line 12
    const/16 v3, 0xf

    .line 13
    .line 14
    const/16 v4, 0x1f

    .line 15
    .line 16
    if-ne p2, v3, :cond_1

    .line 17
    .line 18
    if-lt v2, v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "Reading EXIF from AVIF files is supported from SDK 31 and above"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    .line 28
    .line 29
    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 30
    .line 31
    .line 32
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$1;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 38
    .line 39
    .line 40
    const/16 v2, 0x21

    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/16 v3, 0x22

    .line 47
    .line 48
    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/16 v5, 0x1a

    .line 53
    .line 54
    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const/16 v6, 0x11

    .line 59
    .line 60
    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    const/16 v0, 0x1d

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/16 v5, 0x1e

    .line 77
    .line 78
    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    move-object p0, v0

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :catch_0
    move-exception v0

    .line 92
    move-object p0, v0

    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    const/16 v0, 0x12

    .line 102
    .line 103
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/16 v4, 0x13

    .line 108
    .line 109
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const/16 v4, 0x18

    .line 114
    .line 115
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    const/4 v0, 0x0

    .line 121
    move-object v4, v0

    .line 122
    move-object v5, v4

    .line 123
    :goto_1
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    :try_start_1
    aget-object v8, v6, v7

    .line 129
    .line 130
    const-string v9, "ImageWidth"

    .line 131
    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 137
    .line 138
    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_4
    if-eqz v5, :cond_5

    .line 146
    .line 147
    aget-object v8, v6, v7

    .line 148
    .line 149
    const-string v9, "ImageLength"

    .line 150
    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 156
    .line 157
    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_5
    const/4 v8, 0x6

    .line 165
    if-eqz v4, :cond_9

    .line 166
    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    const/16 v10, 0x5a

    .line 172
    .line 173
    if-eq v9, v10, :cond_8

    .line 174
    .line 175
    const/16 v10, 0xb4

    .line 176
    .line 177
    if-eq v9, v10, :cond_7

    .line 178
    .line 179
    const/16 v10, 0x10e

    .line 180
    .line 181
    if-eq v9, v10, :cond_6

    .line 182
    .line 183
    const/4 v9, 0x1

    .line 184
    goto :goto_2

    .line 185
    :cond_6
    const/16 v9, 0x8

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    const/4 v9, 0x3

    .line 189
    goto :goto_2

    .line 190
    :cond_8
    move v9, v8

    .line 191
    :goto_2
    aget-object v6, v6, v7

    .line 192
    .line 193
    const-string v10, "Orientation"

    .line 194
    .line 195
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 196
    .line 197
    invoke-static {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    :cond_9
    if-eqz v2, :cond_c

    .line 205
    .line 206
    if-eqz v3, :cond_c

    .line 207
    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-le v3, v8, :cond_b

    .line 217
    .line 218
    int-to-long v9, v2

    .line 219
    invoke-virtual {p1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 220
    .line 221
    .line 222
    new-array v6, v8, [B

    .line 223
    .line 224
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 225
    .line 226
    .line 227
    add-int/2addr v2, v8

    .line 228
    add-int/lit8 v3, v3, -0x6

    .line 229
    .line 230
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 231
    .line 232
    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-eqz v6, :cond_a

    .line 237
    .line 238
    new-array v3, v3, [B

    .line 239
    .line 240
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 241
    .line 242
    .line 243
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 244
    .line 245
    invoke-virtual {p0, v7, v3}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_a
    new-instance p0, Ljava/io/IOException;

    .line 250
    .line 251
    const-string p1, "Invalid identifier"

    .line 252
    .line 253
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p0

    .line 257
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .line 258
    .line 259
    const-string p1, "Invalid exif length"

    .line 260
    .line 261
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p0

    .line 265
    :cond_c
    :goto_3
    const/16 v2, 0x29

    .line 266
    .line 267
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    const/16 v3, 0x2a

    .line 272
    .line 273
    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    if-eqz v2, :cond_d

    .line 278
    .line 279
    if-eqz v3, :cond_d

    .line 280
    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v11

    .line 289
    int-to-long v7, v2

    .line 290
    invoke-virtual {p1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 291
    .line 292
    .line 293
    new-array v9, v11, [B

    .line 294
    .line 295
    invoke-virtual {p1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 296
    .line 297
    .line 298
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 299
    .line 300
    const/4 v10, 0x1

    .line 301
    invoke-direct/range {v6 .. v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 302
    .line 303
    .line 304
    iput-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 305
    .line 306
    :cond_d
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 307
    .line 308
    if-eqz p0, :cond_e

    .line 309
    .line 310
    const-string p0, "ExifInterface"

    .line 311
    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string/jumbo v0, "x"

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v0, ", rotation "

    .line 330
    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    .line 343
    .line 344
    :cond_e
    :try_start_2
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    .line 346
    .line 347
    :catch_1
    return-void

    .line 348
    :goto_4
    :try_start_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 349
    .line 350
    const-string v0, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 351
    .line 352
    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    :goto_5
    :try_start_4
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 357
    .line 358
    .line 359
    :catch_2
    throw p0

    .line 360
    :cond_f
    const-string p0, "Reading EXIF from HEIC files is supported from SDK 28 and above"

    .line 361
    .line 362
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-void
.end method

.method public final getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 19

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
    const-string v3, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "getJpegAttributes starting with: "

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    iput-object v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v6, "Invalid marker: "

    .line 39
    .line 40
    const/4 v7, -0x1

    .line 41
    if-ne v5, v7, :cond_11

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    const/16 v9, -0x28

    .line 48
    .line 49
    if-ne v8, v9, :cond_10

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    :goto_0
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-ne v6, v7, :cond_f

    .line 57
    .line 58
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eq v8, v7, :cond_e

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v9, "Found JPEG segment indicator: "

    .line 71
    .line 72
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    and-int/lit16 v9, v8, 0xff

    .line 76
    .line 77
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    const/16 v6, -0x27

    .line 92
    .line 93
    if-eq v8, v6, :cond_d

    .line 94
    .line 95
    const/16 v6, -0x26

    .line 96
    .line 97
    if-ne v8, v6, :cond_2

    .line 98
    .line 99
    goto/16 :goto_7

    .line 100
    .line 101
    :cond_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    add-int/lit8 v9, v6, -0x2

    .line 106
    .line 107
    add-int/lit8 v5, v5, 0x4

    .line 108
    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v11, "JPEG segment: "

    .line 114
    .line 115
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    and-int/lit16 v11, v8, 0xff

    .line 119
    .line 120
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v11, " (length: "

    .line 128
    .line 129
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v11, ")"

    .line 136
    .line 137
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_3
    const-string v10, "Invalid length"

    .line 148
    .line 149
    if-ltz v9, :cond_c

    .line 150
    .line 151
    const/16 v11, -0x1f

    .line 152
    .line 153
    const/4 v12, 0x0

    .line 154
    if-eq v8, v11, :cond_8

    .line 155
    .line 156
    const/4 v11, -0x2

    .line 157
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 158
    .line 159
    const/4 v14, 0x1

    .line 160
    if-eq v8, v11, :cond_6

    .line 161
    .line 162
    packed-switch v8, :pswitch_data_0

    .line 163
    .line 164
    .line 165
    packed-switch v8, :pswitch_data_1

    .line 166
    .line 167
    .line 168
    packed-switch v8, :pswitch_data_2

    .line 169
    .line 170
    .line 171
    packed-switch v8, :pswitch_data_3

    .line 172
    .line 173
    .line 174
    goto/16 :goto_6

    .line 175
    .line 176
    :pswitch_0
    invoke-virtual {v1, v14}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 177
    .line 178
    .line 179
    aget-object v8, v13, v2

    .line 180
    .line 181
    const/4 v9, 0x4

    .line 182
    if-eq v2, v9, :cond_4

    .line 183
    .line 184
    const-string v11, "ImageLength"

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    const-string v11, "ThumbnailImageLength"

    .line 188
    .line 189
    :goto_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    int-to-long v14, v12

    .line 194
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 195
    .line 196
    invoke-static {v14, v15, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    aget-object v8, v13, v2

    .line 204
    .line 205
    if-eq v2, v9, :cond_5

    .line 206
    .line 207
    const-string v9, "ImageWidth"

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_5
    const-string v9, "ThumbnailImageWidth"

    .line 211
    .line 212
    :goto_3
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    int-to-long v11, v11

    .line 217
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 218
    .line 219
    invoke-static {v11, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    invoke-virtual {v8, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    add-int/lit8 v9, v6, -0x7

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_6
    new-array v6, v9, [B

    .line 230
    .line 231
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 232
    .line 233
    .line 234
    const-string v8, "UserComment"

    .line 235
    .line 236
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    if-nez v9, :cond_7

    .line 241
    .line 242
    aget-object v9, v13, v14

    .line 243
    .line 244
    new-instance v11, Ljava/lang/String;

    .line 245
    .line 246
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 247
    .line 248
    invoke-direct {v11, v6, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v9, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    :cond_7
    :goto_4
    move v9, v12

    .line 259
    goto :goto_6

    .line 260
    :cond_8
    new-array v6, v9, [B

    .line 261
    .line 262
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 263
    .line 264
    .line 265
    add-int v8, v5, v9

    .line 266
    .line 267
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 268
    .line 269
    invoke-static {v6, v11}, Lorg/jsoup/helper/Validate;->startsWith([B[B)Z

    .line 270
    .line 271
    .line 272
    move-result v13

    .line 273
    if-eqz v13, :cond_9

    .line 274
    .line 275
    array-length v13, v11

    .line 276
    invoke-static {v6, v13, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    add-int v5, p2, v5

    .line 281
    .line 282
    array-length v9, v11

    .line 283
    add-int/2addr v5, v9

    .line 284
    iput v5, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 285
    .line 286
    invoke-virtual {v0, v2, v6}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 287
    .line 288
    .line 289
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 290
    .line 291
    invoke-direct {v5, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v5}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_9
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 299
    .line 300
    invoke-static {v6, v11}, Lorg/jsoup/helper/Validate;->startsWith([B[B)Z

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    if-eqz v13, :cond_a

    .line 305
    .line 306
    array-length v13, v11

    .line 307
    add-int/2addr v5, v13

    .line 308
    array-length v11, v11

    .line 309
    invoke-static {v6, v11, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 314
    .line 315
    array-length v9, v6

    .line 316
    int-to-long v14, v5

    .line 317
    const/16 v17, 0x1

    .line 318
    .line 319
    move-object/from16 v16, v6

    .line 320
    .line 321
    move/from16 v18, v9

    .line 322
    .line 323
    invoke-direct/range {v13 .. v18}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 324
    .line 325
    .line 326
    iput-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 327
    .line 328
    :cond_a
    :goto_5
    move v5, v8

    .line 329
    goto :goto_4

    .line 330
    :goto_6
    if-ltz v9, :cond_b

    .line 331
    .line 332
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 333
    .line 334
    .line 335
    add-int/2addr v5, v9

    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_b
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :cond_c
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    return-void

    .line 346
    :cond_d
    :goto_7
    iget-object v0, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 347
    .line 348
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 349
    .line 350
    return-void

    .line 351
    :cond_e
    move v5, v6

    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_f
    and-int/lit16 v0, v6, 0xff

    .line 355
    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const-string v1, "Invalid marker:"

    .line 361
    .line 362
    invoke-static {v0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :cond_10
    and-int/lit16 v0, v5, 0xff

    .line 367
    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {v0, v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :cond_11
    and-int/lit16 v0, v5, 0xff

    .line 377
    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {v0, v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    nop

    .line 387
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 20
    .line 21
    array-length v5, v4

    .line 22
    const/4 v6, 0x4

    .line 23
    if-ge v0, v5, :cond_23

    .line 24
    .line 25
    aget-byte v5, v2, v0

    .line 26
    .line 27
    aget-byte v4, v4, v0

    .line 28
    .line 29
    if-eq v5, v4, :cond_22

    .line 30
    .line 31
    const-string v0, "FUJIFILMCCD-RAW"

    .line 32
    .line 33
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_1
    array-length v5, v0

    .line 43
    if-ge v4, v5, :cond_21

    .line 44
    .line 45
    aget-byte v5, v2, v4

    .line 46
    .line 47
    aget-byte v7, v0, v4

    .line 48
    .line 49
    if-eq v5, v7, :cond_20

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x1

    .line 53
    :try_start_0
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 54
    .line 55
    invoke-direct {v7, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    .line 57
    .line 58
    :try_start_1
    invoke-virtual {v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v8, v0

    .line 63
    new-array v0, v6, [B

    .line 64
    .line 65
    invoke-virtual {v7, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 66
    .line 67
    .line 68
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    .line 69
    .line 70
    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 71
    .line 72
    .line 73
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    :goto_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 77
    .line 78
    .line 79
    const/16 p1, 0x0

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    goto/16 :goto_9

    .line 83
    .line 84
    :cond_0
    const-wide/16 v10, 0x1

    .line 85
    .line 86
    cmp-long v0, v8, v10

    .line 87
    .line 88
    const-wide/16 v12, 0x8

    .line 89
    .line 90
    if-nez v0, :cond_1

    .line 91
    .line 92
    :try_start_2
    invoke-virtual {v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    const-wide/16 v14, 0x10

    .line 97
    .line 98
    cmp-long v0, v8, v14

    .line 99
    .line 100
    if-gez v0, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    move-object v4, v7

    .line 105
    goto/16 :goto_17

    .line 106
    .line 107
    :catch_0
    move-exception v0

    .line 108
    const/16 p1, 0x0

    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :cond_1
    move-wide v14, v12

    .line 113
    :cond_2
    const-wide/16 v16, 0x1388

    .line 114
    .line 115
    cmp-long v0, v8, v16

    .line 116
    .line 117
    if-lez v0, :cond_3

    .line 118
    .line 119
    move-wide/from16 v8, v16

    .line 120
    .line 121
    :cond_3
    sub-long/2addr v8, v14

    .line 122
    cmp-long v0, v8, v12

    .line 123
    .line 124
    if-gez v0, :cond_4

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    new-array v0, v6, [B

    .line 128
    .line 129
    const-wide/16 v12, 0x0

    .line 130
    .line 131
    const/4 v14, 0x0

    .line 132
    const/4 v15, 0x0

    .line 133
    const/16 v16, 0x0

    .line 134
    .line 135
    :goto_3
    const-wide/16 v17, 0x4

    .line 136
    .line 137
    div-long v17, v8, v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .line 139
    cmp-long v17, v12, v17

    .line 140
    .line 141
    if-gez v17, :cond_d

    .line 142
    .line 143
    :try_start_3
    invoke-virtual {v7, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .line 145
    .line 146
    cmp-long v17, v12, v10

    .line 147
    .line 148
    if-nez v17, :cond_5

    .line 149
    .line 150
    const/16 p1, 0x0

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_5
    const/16 p1, 0x0

    .line 154
    .line 155
    :try_start_4
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    .line 156
    .line 157
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_6

    .line 162
    .line 163
    move v14, v5

    .line 164
    goto :goto_5

    .line 165
    :cond_6
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    .line 166
    .line 167
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_7

    .line 172
    .line 173
    move v15, v5

    .line 174
    goto :goto_5

    .line 175
    :cond_7
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    .line 176
    .line 177
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_8

    .line 182
    .line 183
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    .line 184
    .line 185
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 186
    .line 187
    .line 188
    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    if-eqz v3, :cond_9

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :catch_1
    move-exception v0

    .line 193
    goto :goto_8

    .line 194
    :cond_8
    :goto_4
    move/from16 v16, v5

    .line 195
    .line 196
    :cond_9
    :goto_5
    if-eqz v14, :cond_b

    .line 197
    .line 198
    if-eqz v15, :cond_a

    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 201
    .line 202
    .line 203
    const/16 v0, 0xc

    .line 204
    .line 205
    goto :goto_9

    .line 206
    :cond_a
    if-eqz v16, :cond_b

    .line 207
    .line 208
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 209
    .line 210
    .line 211
    const/16 v0, 0xf

    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_b
    :goto_6
    add-long/2addr v12, v10

    .line 215
    goto :goto_3

    .line 216
    :catch_2
    const/16 p1, 0x0

    .line 217
    .line 218
    :goto_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 219
    .line 220
    .line 221
    :cond_c
    move/from16 v0, p1

    .line 222
    .line 223
    goto :goto_9

    .line 224
    :cond_d
    const/16 p1, 0x0

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :catchall_1
    move-exception v0

    .line 228
    goto/16 :goto_17

    .line 229
    .line 230
    :catch_3
    move-exception v0

    .line 231
    const/16 p1, 0x0

    .line 232
    .line 233
    move-object v7, v4

    .line 234
    :goto_8
    :try_start_5
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 235
    .line 236
    if-eqz v3, :cond_e

    .line 237
    .line 238
    const-string v3, "ExifInterface"

    .line 239
    .line 240
    const-string v8, "Exception parsing HEIF file type box."

    .line 241
    .line 242
    invoke-static {v3, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    .line 244
    .line 245
    :cond_e
    if-eqz v7, :cond_c

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :goto_9
    if-eqz v0, :cond_f

    .line 249
    .line 250
    return v0

    .line 251
    :cond_f
    :try_start_6
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 252
    .line 253
    invoke-direct {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 254
    .line 255
    .line 256
    :try_start_7
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 261
    .line 262
    iput-object v0, v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 263
    .line 264
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 265
    .line 266
    .line 267
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 268
    const/16 v7, 0x4f52

    .line 269
    .line 270
    if-eq v0, v7, :cond_11

    .line 271
    .line 272
    const/16 v7, 0x5352

    .line 273
    .line 274
    if-ne v0, v7, :cond_10

    .line 275
    .line 276
    goto :goto_a

    .line 277
    :cond_10
    move/from16 v0, p1

    .line 278
    .line 279
    goto :goto_b

    .line 280
    :cond_11
    :goto_a
    move v0, v5

    .line 281
    :goto_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 282
    .line 283
    .line 284
    goto :goto_e

    .line 285
    :catchall_2
    move-exception v0

    .line 286
    move-object v4, v3

    .line 287
    goto :goto_c

    .line 288
    :catchall_3
    move-exception v0

    .line 289
    goto :goto_c

    .line 290
    :catch_4
    move-object v3, v4

    .line 291
    goto :goto_d

    .line 292
    :goto_c
    if-eqz v4, :cond_12

    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 295
    .line 296
    .line 297
    :cond_12
    throw v0

    .line 298
    :catch_5
    :goto_d
    if-eqz v3, :cond_13

    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 301
    .line 302
    .line 303
    :cond_13
    move/from16 v0, p1

    .line 304
    .line 305
    :goto_e
    if-eqz v0, :cond_14

    .line 306
    .line 307
    const/4 v0, 0x7

    .line 308
    return v0

    .line 309
    :cond_14
    :try_start_8
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 310
    .line 311
    invoke-direct {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 312
    .line 313
    .line 314
    :try_start_9
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 319
    .line 320
    iput-object v0, v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 321
    .line 322
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 323
    .line 324
    .line 325
    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 326
    const/16 v1, 0x55

    .line 327
    .line 328
    if-ne v0, v1, :cond_15

    .line 329
    .line 330
    goto :goto_f

    .line 331
    :cond_15
    move/from16 v5, p1

    .line 332
    .line 333
    :goto_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 334
    .line 335
    .line 336
    goto :goto_12

    .line 337
    :catchall_4
    move-exception v0

    .line 338
    move-object v4, v3

    .line 339
    goto :goto_10

    .line 340
    :catch_6
    move-object v4, v3

    .line 341
    goto :goto_11

    .line 342
    :catchall_5
    move-exception v0

    .line 343
    :goto_10
    if-eqz v4, :cond_16

    .line 344
    .line 345
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 346
    .line 347
    .line 348
    :cond_16
    throw v0

    .line 349
    :catch_7
    :goto_11
    if-eqz v4, :cond_17

    .line 350
    .line 351
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 352
    .line 353
    .line 354
    :cond_17
    move/from16 v5, p1

    .line 355
    .line 356
    :goto_12
    if-eqz v5, :cond_18

    .line 357
    .line 358
    const/16 v0, 0xa

    .line 359
    .line 360
    return v0

    .line 361
    :cond_18
    move/from16 v0, p1

    .line 362
    .line 363
    :goto_13
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 364
    .line 365
    array-length v3, v1

    .line 366
    if-ge v0, v3, :cond_1e

    .line 367
    .line 368
    aget-byte v3, v2, v0

    .line 369
    .line 370
    aget-byte v1, v1, v0

    .line 371
    .line 372
    if-eq v3, v1, :cond_1d

    .line 373
    .line 374
    move/from16 v0, p1

    .line 375
    .line 376
    :goto_14
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 377
    .line 378
    array-length v3, v1

    .line 379
    if-ge v0, v3, :cond_1a

    .line 380
    .line 381
    aget-byte v3, v2, v0

    .line 382
    .line 383
    aget-byte v1, v1, v0

    .line 384
    .line 385
    if-eq v3, v1, :cond_19

    .line 386
    .line 387
    goto :goto_16

    .line 388
    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 389
    .line 390
    goto :goto_14

    .line 391
    :cond_1a
    move/from16 v0, p1

    .line 392
    .line 393
    :goto_15
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 394
    .line 395
    array-length v4, v3

    .line 396
    if-ge v0, v4, :cond_1c

    .line 397
    .line 398
    array-length v4, v1

    .line 399
    add-int/2addr v4, v0

    .line 400
    add-int/2addr v4, v6

    .line 401
    aget-byte v4, v2, v4

    .line 402
    .line 403
    aget-byte v3, v3, v0

    .line 404
    .line 405
    if-eq v4, v3, :cond_1b

    .line 406
    .line 407
    :goto_16
    return p1

    .line 408
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 409
    .line 410
    goto :goto_15

    .line 411
    :cond_1c
    const/16 v0, 0xe

    .line 412
    .line 413
    return v0

    .line 414
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    .line 415
    .line 416
    goto :goto_13

    .line 417
    :cond_1e
    const/16 v0, 0xd

    .line 418
    .line 419
    return v0

    .line 420
    :goto_17
    if-eqz v4, :cond_1f

    .line 421
    .line 422
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 423
    .line 424
    .line 425
    :cond_1f
    throw v0

    .line 426
    :cond_20
    const/16 p1, 0x0

    .line 427
    .line 428
    add-int/lit8 v4, v4, 0x1

    .line 429
    .line 430
    goto/16 :goto_1

    .line 431
    .line 432
    :cond_21
    const/16 v0, 0x9

    .line 433
    .line 434
    return v0

    .line 435
    :cond_22
    const/16 p1, 0x0

    .line 436
    .line 437
    add-int/lit8 v0, v0, 0x1

    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_23
    return v6
.end method

.method public final getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string v2, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 22
    .line 23
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    iput-object v1, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    new-array v3, v3, [B

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 41
    .line 42
    .line 43
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 44
    .line 45
    array-length v5, v4

    .line 46
    new-array v5, v5, [B

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-wide/16 v3, 0x8

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-wide/16 v3, 0xc

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 75
    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    aget-object v2, p1, v1

    .line 80
    .line 81
    const-string v3, "PreviewImageStart"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 88
    .line 89
    aget-object v1, p1, v1

    .line 90
    .line 91
    const-string v3, "PreviewImageLength"

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    aget-object v4, p1, v3

    .line 105
    .line 106
    const-string v5, "JPEGInterchangeFormat"

    .line 107
    .line 108
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    aget-object v2, p1, v3

    .line 112
    .line 113
    const-string v3, "JPEGInterchangeFormatLength"

    .line 114
    .line 115
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    const/16 v1, 0x8

    .line 119
    .line 120
    aget-object v1, p1, v1

    .line 121
    .line 122
    const-string v2, "AspectFrame"

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, [I

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    array-length v2, v1

    .line 143
    const/4 v3, 0x4

    .line 144
    if-eq v2, v3, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const/4 v2, 0x2

    .line 148
    aget v2, v1, v2

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    aget v4, v1, v3

    .line 152
    .line 153
    if-le v2, v4, :cond_6

    .line 154
    .line 155
    const/4 v5, 0x3

    .line 156
    aget v5, v1, v5

    .line 157
    .line 158
    aget v1, v1, v0

    .line 159
    .line 160
    if-le v5, v1, :cond_6

    .line 161
    .line 162
    sub-int/2addr v2, v4

    .line 163
    add-int/2addr v2, v0

    .line 164
    sub-int/2addr v5, v1

    .line 165
    add-int/2addr v5, v0

    .line 166
    if-ge v2, v5, :cond_4

    .line 167
    .line 168
    add-int/2addr v2, v5

    .line 169
    sub-int v5, v2, v5

    .line 170
    .line 171
    sub-int/2addr v2, v5

    .line 172
    :cond_4
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 173
    .line 174
    invoke-static {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 179
    .line 180
    invoke-static {v5, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    aget-object v1, p1, v3

    .line 185
    .line 186
    const-string v2, "ImageWidth"

    .line 187
    .line 188
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    aget-object p1, p1, v3

    .line 192
    .line 193
    const-string v0, "ImageLength"

    .line 194
    .line 195
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string p1, "Invalid aspect frame values. frame="

    .line 202
    .line 203
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    const-string p1, "ExifInterface"

    .line 218
    .line 219
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :cond_6
    return-void
.end method

.method public final getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "getPngAttributes starting with: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "ExifInterface"

    .line 24
    .line 25
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    iput-object v2, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    iget v2, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 33
    .line 34
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    .line 35
    .line 36
    array-length v3, v3

    .line 37
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    move v4, v3

    .line 42
    move v5, v4

    .line 43
    :goto_0
    if-eqz v4, :cond_1

    .line 44
    .line 45
    if-nez v5, :cond_4

    .line 46
    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget v8, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 56
    .line 57
    add-int v9, v8, v6

    .line 58
    .line 59
    add-int/lit8 v9, v9, 0x4

    .line 60
    .line 61
    sub-int/2addr v8, v2

    .line 62
    const/16 v10, 0x10

    .line 63
    .line 64
    if-ne v8, v10, :cond_3

    .line 65
    .line 66
    const v10, 0x49484452

    .line 67
    .line 68
    .line 69
    if-ne v7, v10, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 73
    .line 74
    const-string v1, "Encountered invalid PNG file--IHDR chunk should appear as the first chunk"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_3
    :goto_1
    const v10, 0x49454e44    # 808164.25f

    .line 81
    .line 82
    .line 83
    if-ne v7, v10, :cond_5

    .line 84
    .line 85
    :cond_4
    return-void

    .line 86
    :cond_5
    const v10, 0x65584966

    .line 87
    .line 88
    .line 89
    const/4 v11, 0x1

    .line 90
    if-ne v7, v10, :cond_7

    .line 91
    .line 92
    if-nez v4, :cond_7

    .line 93
    .line 94
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 95
    .line 96
    new-array v4, v6, [B

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    new-instance v8, Ljava/util/zip/CRC32;

    .line 106
    .line 107
    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 108
    .line 109
    .line 110
    ushr-int/lit8 v10, v7, 0x18

    .line 111
    .line 112
    invoke-virtual {v8, v10}, Ljava/util/zip/CRC32;->update(I)V

    .line 113
    .line 114
    .line 115
    ushr-int/lit8 v10, v7, 0x10

    .line 116
    .line 117
    invoke-virtual {v8, v10}, Ljava/util/zip/CRC32;->update(I)V

    .line 118
    .line 119
    .line 120
    ushr-int/lit8 v10, v7, 0x8

    .line 121
    .line 122
    invoke-virtual {v8, v10}, Ljava/util/zip/CRC32;->update(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v7}, Ljava/util/zip/CRC32;->update(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v12

    .line 135
    long-to-int v7, v12

    .line 136
    if-ne v7, v6, :cond_6

    .line 137
    .line 138
    invoke-virtual {v0, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 142
    .line 143
    .line 144
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 145
    .line 146
    invoke-direct {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 150
    .line 151
    .line 152
    move v4, v11

    .line 153
    goto :goto_2

    .line 154
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v2, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, ", calculated CRC value: "

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    .line 175
    .line 176
    .line 177
    move-result-wide v2

    .line 178
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_7
    const v8, 0x69545874

    .line 190
    .line 191
    .line 192
    if-ne v7, v8, :cond_8

    .line 193
    .line 194
    if-nez v5, :cond_8

    .line 195
    .line 196
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->PNG_ITXT_XMP_KEYWORD:[B

    .line 197
    .line 198
    array-length v8, v7

    .line 199
    if-lt v6, v8, :cond_8

    .line 200
    .line 201
    array-length v8, v7

    .line 202
    new-array v10, v8, [B

    .line 203
    .line 204
    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 205
    .line 206
    .line 207
    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-eqz v7, :cond_8

    .line 212
    .line 213
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 214
    .line 215
    sub-int/2addr v5, v2

    .line 216
    sub-int/2addr v6, v8

    .line 217
    new-array v15, v6, [B

    .line 218
    .line 219
    invoke-virtual {v1, v15}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 220
    .line 221
    .line 222
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 223
    .line 224
    const/16 v16, 0x1

    .line 225
    .line 226
    int-to-long v13, v5

    .line 227
    move/from16 v17, v6

    .line 228
    .line 229
    invoke-direct/range {v12 .. v17}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 230
    .line 231
    .line 232
    iput-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpFromSeparateMarker:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 233
    .line 234
    move v5, v11

    .line 235
    :cond_8
    :goto_2
    iget v6, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 236
    .line 237
    sub-int/2addr v9, v6

    .line 238
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Ljava/io/IOException;

    .line 245
    .line 246
    const-string v2, "Encountered corrupt PNG file."

    .line 247
    .line 248
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    throw v1
.end method

.method public final getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "getRafAttributes starting with: "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/16 v2, 0x54

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v3, v2, [B

    .line 31
    .line 32
    new-array v4, v2, [B

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    iget v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 72
    .line 73
    sub-int v5, v3, v5

    .line 74
    .line 75
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 82
    .line 83
    invoke-direct {v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x5

    .line 87
    invoke-virtual {p0, v5, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 88
    .line 89
    .line 90
    iget v3, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 91
    .line 92
    sub-int/2addr v2, v3

    .line 93
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 97
    .line 98
    iput-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    const-string v3, "numberOfDirectoryEntry: "

    .line 107
    .line 108
    invoke-static {v2, v3, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    const/4 v3, 0x0

    .line 112
    move v4, v3

    .line 113
    :goto_0
    if-ge v4, v2, :cond_3

    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 124
    .line 125
    iget v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 126
    .line 127
    if-ne v5, v7, :cond_2

    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 138
    .line 139
    invoke-static {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 144
    .line 145
    invoke-static {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 150
    .line 151
    aget-object v6, p0, v3

    .line 152
    .line 153
    const-string v7, "ImageLength"

    .line 154
    .line 155
    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    aget-object p0, p0, v3

    .line 159
    .line 160
    const-string v3, "ImageWidth"

    .line 161
    .line 162
    invoke-virtual {p0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    if-eqz v1, :cond_3

    .line 166
    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v1, "Updated to length: "

    .line 170
    .line 171
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v1, ", width: "

    .line 178
    .line 179
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_2
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 194
    .line 195
    .line 196
    add-int/lit8 v4, v4, 0x1

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_3
    return-void
.end method

.method public final getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object v1, p1, v0

    .line 32
    .line 33
    const-string v2, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 46
    .line 47
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    iput-object v1, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x9

    .line 59
    .line 60
    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 61
    .line 62
    .line 63
    aget-object p0, p1, v1

    .line 64
    .line 65
    const-string v1, "ColorSpace"

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 72
    .line 73
    if-eqz p0, :cond_0

    .line 74
    .line 75
    aget-object p1, p1, v0

    .line 76
    .line 77
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public final getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getRw2Attributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    aget-object v1, p1, v0

    .line 31
    .line 32
    const-string v2, "JpgFromRaw"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 43
    .line 44
    iget-object v3, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 45
    .line 46
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 50
    .line 51
    long-to-int v1, v3

    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {p0, v2, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 54
    .line 55
    .line 56
    :cond_1
    aget-object p0, p1, v0

    .line 57
    .line 58
    const-string v0, "ISO"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    aget-object v1, p1, v0

    .line 68
    .line 69
    const-string v2, "PhotographicSensitivity"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 76
    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    aget-object p1, p1, v0

    .line 82
    .line 83
    invoke-virtual {p1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public final getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z
    .locals 6

    .line 1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string p0, "ExifInterface"

    .line 17
    .line 18
    const-string p1, "Given data is not EXIF-only."

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    const/16 v1, 0x400

    .line 25
    .line 26
    new-array v1, v1, [B

    .line 27
    .line 28
    move v3, v2

    .line 29
    :goto_0
    array-length v4, v1

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    array-length v4, v1

    .line 33
    mul-int/lit8 v4, v4, 0x2

    .line 34
    .line 35
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    iget-object v4, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 40
    .line 41
    array-length v5, v1

    .line 42
    sub-int/2addr v5, v3

    .line 43
    invoke-virtual {v4, v1, v3, v5}, Ljava/io/DataInputStream;->read([BII)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, -0x1

    .line 48
    if-eq v4, v5, :cond_2

    .line 49
    .line 50
    add-int/2addr v3, v4

    .line 51
    iget v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 52
    .line 53
    add-int/2addr v5, v4

    .line 54
    iput v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    array-length v0, v0

    .line 62
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 63
    .line 64
    invoke-virtual {p0, v2, p1}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    return p0
.end method

.method public final getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getWebpAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, 0x8

    .line 39
    .line 40
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 44
    .line 45
    .line 46
    array-length v1, v1

    .line 47
    add-int/lit8 v1, v1, 0x8

    .line 48
    .line 49
    :goto_0
    const/4 v2, 0x4

    .line 50
    :try_start_0
    new-array v2, v2, [B

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    add-int/lit8 v1, v1, 0x8

    .line 60
    .line 61
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    .line 62
    .line 63
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    new-array v0, v3, [B

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 75
    .line 76
    invoke-static {v0, p1}, Lorg/jsoup/helper/Validate;->startsWith([B[B)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    array-length p1, p1

    .line 83
    invoke-static {v0, p1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_1
    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment(I[B)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 94
    .line 95
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    rem-int/lit8 v2, v3, 0x2

    .line 103
    .line 104
    const/4 v4, 0x1

    .line 105
    if-ne v2, v4, :cond_3

    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    :cond_3
    add-int/2addr v1, v3

    .line 110
    if-ne v1, v0, :cond_4

    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    if-gt v1, v0, :cond_5

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 120
    .line 121
    const-string p1, "Encountered WebP file with invalid chunk size"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    move-exception p0

    .line 128
    new-instance p1, Ljava/io/IOException;

    .line 129
    .line 130
    const-string v0, "Encountered corrupt WebP file."

    .line 131
    .line 132
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method

.method public final handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    if-lez p2, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 54
    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    new-array p0, p2, [B

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 63
    .line 64
    .line 65
    :cond_1
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 66
    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p1, "Setting thumbnail attributes with offset: "

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, ", length: "

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string p1, "ExifInterface"

    .line 92
    .line 93
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public final isThumbnail(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/16 p1, 0x200

    .line 34
    .line 35
    if-gt v0, p1, :cond_0

    .line 36
    .line 37
    if-gt p0, p1, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public final parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget p0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    if-eq p0, v1, :cond_1

    .line 21
    .line 22
    const/16 p0, 0x2a

    .line 23
    .line 24
    if-ne v0, p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p0, "Invalid start code: "

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    if-lt p0, v0, :cond_3

    .line 44
    .line 45
    add-int/lit8 p0, p0, -0x8

    .line 46
    .line 47
    if-lez p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void

    .line 53
    :cond_3
    const-string p1, "Invalid first Ifd offset: "

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final printAttributes()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    const-string v2, "The size of tag group["

    .line 8
    .line 9
    const-string v3, "]: "

    .line 10
    .line 11
    invoke-static {v0, v2, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aget-object v3, v1, v0

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "ExifInterface"

    .line 29
    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    aget-object v1, v1, v0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v6, "tagName: "

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", tagType: "

    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ", tagValue: \'"

    .line 90
    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, "\'"

    .line 104
    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public final readExifSegment(I[B)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 8
    .line 9
    iget v4, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 10
    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string v6, "ExifInterface"

    .line 25
    .line 26
    sget-boolean v7, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    const-string v8, "numberOfDirectoryEntry: "

    .line 31
    .line 32
    invoke-static {v3, v8, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-gtz v3, :cond_1

    .line 36
    .line 37
    goto/16 :goto_13

    .line 38
    .line 39
    :cond_1
    const/4 v9, 0x0

    .line 40
    :goto_0
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 41
    .line 42
    if-ge v9, v3, :cond_2d

    .line 43
    .line 44
    const/16 v16, 0x0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    const-wide/16 v17, 0x0

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    const/16 v19, 0x1

    .line 61
    .line 62
    iget v11, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 63
    .line 64
    int-to-long v10, v11

    .line 65
    const-wide/16 v21, 0x4

    .line 66
    .line 67
    add-long v10, v10, v21

    .line 68
    .line 69
    sget-object v23, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 70
    .line 71
    const/16 v24, 0x4

    .line 72
    .line 73
    aget-object v15, v23, v2

    .line 74
    .line 75
    move/from16 v25, v3

    .line 76
    .line 77
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 86
    .line 87
    const/16 v23, 0x2

    .line 88
    .line 89
    if-eqz v7, :cond_3

    .line 90
    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v26

    .line 95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v27

    .line 99
    const/16 v28, 0x3

    .line 100
    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    iget-object v15, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const/4 v15, 0x0

    .line 107
    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v29

    .line 111
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v30

    .line 115
    move/from16 v31, v7

    .line 116
    .line 117
    const/4 v7, 0x5

    .line 118
    new-array v7, v7, [Ljava/lang/Object;

    .line 119
    .line 120
    aput-object v26, v7, v16

    .line 121
    .line 122
    aput-object v27, v7, v19

    .line 123
    .line 124
    aput-object v15, v7, v23

    .line 125
    .line 126
    aput-object v29, v7, v28

    .line 127
    .line 128
    aput-object v30, v7, v24

    .line 129
    .line 130
    const-string v15, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 131
    .line 132
    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    move/from16 v31, v7

    .line 141
    .line 142
    const/16 v28, 0x3

    .line 143
    .line 144
    :goto_2
    if-nez v3, :cond_5

    .line 145
    .line 146
    if-eqz v31, :cond_4

    .line 147
    .line 148
    const-string v7, "Skip the tag entry since tag number is not defined: "

    .line 149
    .line 150
    invoke-static {v8, v7, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    move/from16 v30, v8

    .line 154
    .line 155
    goto/16 :goto_a

    .line 156
    .line 157
    :cond_5
    if-lez v12, :cond_6

    .line 158
    .line 159
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 160
    .line 161
    array-length v15, v7

    .line 162
    if-lt v12, v15, :cond_7

    .line 163
    .line 164
    :cond_6
    move/from16 v30, v8

    .line 165
    .line 166
    goto/16 :goto_9

    .line 167
    .line 168
    :cond_7
    iget v15, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 169
    .line 170
    move-object/from16 v29, v7

    .line 171
    .line 172
    const/4 v7, 0x7

    .line 173
    if-eq v15, v7, :cond_9

    .line 174
    .line 175
    if-ne v12, v7, :cond_8

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_8
    if-eq v15, v12, :cond_9

    .line 179
    .line 180
    iget v7, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 181
    .line 182
    if-ne v7, v12, :cond_a

    .line 183
    .line 184
    :cond_9
    :goto_3
    move/from16 v30, v8

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_a
    move/from16 v30, v8

    .line 188
    .line 189
    move/from16 v8, v24

    .line 190
    .line 191
    if-eq v15, v8, :cond_b

    .line 192
    .line 193
    if-ne v7, v8, :cond_c

    .line 194
    .line 195
    :cond_b
    move/from16 v8, v28

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_c
    const/16 v8, 0x9

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :goto_4
    if-ne v12, v8, :cond_c

    .line 202
    .line 203
    :goto_5
    const/4 v7, 0x7

    .line 204
    goto :goto_7

    .line 205
    :goto_6
    if-eq v15, v8, :cond_d

    .line 206
    .line 207
    if-ne v7, v8, :cond_e

    .line 208
    .line 209
    :cond_d
    const/16 v8, 0x8

    .line 210
    .line 211
    if-ne v12, v8, :cond_e

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_e
    const/16 v8, 0xc

    .line 215
    .line 216
    if-eq v15, v8, :cond_f

    .line 217
    .line 218
    if-ne v7, v8, :cond_10

    .line 219
    .line 220
    :cond_f
    const/16 v7, 0xb

    .line 221
    .line 222
    if-ne v12, v7, :cond_10

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_10
    if-eqz v31, :cond_15

    .line 226
    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v8, "Skip the tag entry since data format ("

    .line 230
    .line 231
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 235
    .line 236
    aget-object v8, v8, v12

    .line 237
    .line 238
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v8, ") is unexpected for tag: "

    .line 242
    .line 243
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v8, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto :goto_a

    .line 259
    :goto_7
    if-ne v12, v7, :cond_11

    .line 260
    .line 261
    move v12, v15

    .line 262
    :cond_11
    int-to-long v7, v13

    .line 263
    aget v15, v29, v12

    .line 264
    .line 265
    move-wide/from16 v32, v7

    .line 266
    .line 267
    int-to-long v7, v15

    .line 268
    mul-long v7, v7, v32

    .line 269
    .line 270
    cmp-long v15, v7, v17

    .line 271
    .line 272
    if-ltz v15, :cond_13

    .line 273
    .line 274
    const-wide/32 v32, 0x7fffffff

    .line 275
    .line 276
    .line 277
    cmp-long v15, v7, v32

    .line 278
    .line 279
    if-lez v15, :cond_12

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_12
    move/from16 v15, v19

    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_13
    :goto_8
    if-eqz v31, :cond_14

    .line 286
    .line 287
    const-string v15, "Skip the tag entry since the number of components is invalid: "

    .line 288
    .line 289
    invoke-static {v13, v15, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_14
    move/from16 v15, v16

    .line 293
    .line 294
    goto :goto_b

    .line 295
    :goto_9
    if-eqz v31, :cond_15

    .line 296
    .line 297
    const-string v7, "Skip the tag entry since data format is invalid: "

    .line 298
    .line 299
    invoke-static {v12, v7, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_15
    :goto_a
    move/from16 v15, v16

    .line 303
    .line 304
    move-wide/from16 v7, v17

    .line 305
    .line 306
    :goto_b
    if-nez v15, :cond_16

    .line 307
    .line 308
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 309
    .line 310
    .line 311
    move/from16 v29, v9

    .line 312
    .line 313
    goto/16 :goto_12

    .line 314
    .line 315
    :cond_16
    cmp-long v15, v7, v21

    .line 316
    .line 317
    move/from16 v29, v9

    .line 318
    .line 319
    const-string v9, "Compression"

    .line 320
    .line 321
    if-lez v15, :cond_1a

    .line 322
    .line 323
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    move-object/from16 v32, v14

    .line 328
    .line 329
    if-eqz v31, :cond_17

    .line 330
    .line 331
    const-string v14, "seek to data offset: "

    .line 332
    .line 333
    invoke-static {v15, v14, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :cond_17
    iget v14, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 337
    .line 338
    move-wide/from16 v33, v10

    .line 339
    .line 340
    const/4 v10, 0x7

    .line 341
    if-ne v14, v10, :cond_18

    .line 342
    .line 343
    const-string v10, "MakerNote"

    .line 344
    .line 345
    iget-object v11, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-eqz v10, :cond_19

    .line 352
    .line 353
    iput v15, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 354
    .line 355
    :cond_18
    move/from16 v21, v13

    .line 356
    .line 357
    goto :goto_c

    .line 358
    :cond_19
    const/4 v10, 0x6

    .line 359
    if-ne v2, v10, :cond_18

    .line 360
    .line 361
    const-string v11, "ThumbnailImage"

    .line 362
    .line 363
    iget-object v14, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v11

    .line 369
    if-eqz v11, :cond_18

    .line 370
    .line 371
    iput v15, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 372
    .line 373
    iput v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 374
    .line 375
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 376
    .line 377
    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    iget v11, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 382
    .line 383
    move/from16 v21, v13

    .line 384
    .line 385
    int-to-long v13, v11

    .line 386
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 387
    .line 388
    invoke-static {v13, v14, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 393
    .line 394
    int-to-long v13, v13

    .line 395
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 396
    .line 397
    invoke-static {v13, v14, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    const/16 v24, 0x4

    .line 402
    .line 403
    aget-object v13, v32, v24

    .line 404
    .line 405
    invoke-virtual {v13, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    aget-object v10, v32, v24

    .line 409
    .line 410
    const-string v13, "JPEGInterchangeFormat"

    .line 411
    .line 412
    invoke-virtual {v10, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    aget-object v10, v32, v24

    .line 416
    .line 417
    const-string v11, "JPEGInterchangeFormatLength"

    .line 418
    .line 419
    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    :goto_c
    int-to-long v10, v15

    .line 423
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 424
    .line 425
    .line 426
    goto :goto_d

    .line 427
    :cond_1a
    move-wide/from16 v33, v10

    .line 428
    .line 429
    move/from16 v21, v13

    .line 430
    .line 431
    move-object/from16 v32, v14

    .line 432
    .line 433
    :goto_d
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 434
    .line 435
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v10

    .line 439
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    check-cast v2, Ljava/lang/Integer;

    .line 444
    .line 445
    if-eqz v31, :cond_1b

    .line 446
    .line 447
    new-instance v10, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v11, "nextIfdType: "

    .line 450
    .line 451
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v11, " byteCount: "

    .line 458
    .line 459
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v10

    .line 469
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    :cond_1b
    if-eqz v2, :cond_26

    .line 473
    .line 474
    const/4 v10, 0x3

    .line 475
    if-eq v12, v10, :cond_1f

    .line 476
    .line 477
    const/4 v8, 0x4

    .line 478
    if-eq v12, v8, :cond_1e

    .line 479
    .line 480
    const/16 v8, 0x8

    .line 481
    .line 482
    if-eq v12, v8, :cond_1d

    .line 483
    .line 484
    const/16 v8, 0x9

    .line 485
    .line 486
    if-eq v12, v8, :cond_1c

    .line 487
    .line 488
    const/16 v7, 0xd

    .line 489
    .line 490
    if-eq v12, v7, :cond_1c

    .line 491
    .line 492
    const-wide/16 v7, -0x1

    .line 493
    .line 494
    goto :goto_f

    .line 495
    :cond_1c
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 496
    .line 497
    .line 498
    move-result v7

    .line 499
    :goto_e
    int-to-long v7, v7

    .line 500
    goto :goto_f

    .line 501
    :cond_1d
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    goto :goto_e

    .line 506
    :cond_1e
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    int-to-long v7, v7

    .line 511
    const-wide v9, 0xffffffffL

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    and-long/2addr v7, v9

    .line 517
    goto :goto_f

    .line 518
    :cond_1f
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 519
    .line 520
    .line 521
    move-result v7

    .line 522
    goto :goto_e

    .line 523
    :goto_f
    if-eqz v31, :cond_20

    .line 524
    .line 525
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 526
    .line 527
    .line 528
    move-result-object v9

    .line 529
    iget-object v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 530
    .line 531
    move/from16 v10, v23

    .line 532
    .line 533
    new-array v10, v10, [Ljava/lang/Object;

    .line 534
    .line 535
    aput-object v9, v10, v16

    .line 536
    .line 537
    aput-object v3, v10, v19

    .line 538
    .line 539
    const-string v3, "Offset: %d, tagName: %s"

    .line 540
    .line 541
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    :cond_20
    cmp-long v3, v7, v17

    .line 549
    .line 550
    const-string v9, ")"

    .line 551
    .line 552
    const/4 v10, -0x1

    .line 553
    if-lez v3, :cond_24

    .line 554
    .line 555
    if-eq v4, v10, :cond_21

    .line 556
    .line 557
    int-to-long v11, v4

    .line 558
    cmp-long v3, v7, v11

    .line 559
    .line 560
    if-gez v3, :cond_24

    .line 561
    .line 562
    :cond_21
    long-to-int v3, v7

    .line 563
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-nez v3, :cond_23

    .line 572
    .line 573
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 581
    .line 582
    .line 583
    :cond_22
    :goto_10
    move-wide/from16 v10, v33

    .line 584
    .line 585
    goto :goto_11

    .line 586
    :cond_23
    if-eqz v31, :cond_22

    .line 587
    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    const-string v10, "Skip jump into the IFD since it has already been read: IfdType "

    .line 591
    .line 592
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    const-string v2, " (at "

    .line 599
    .line 600
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .line 615
    .line 616
    goto :goto_10

    .line 617
    :cond_24
    if-eqz v31, :cond_22

    .line 618
    .line 619
    const-string v2, "Skip jump into the IFD since its offset is invalid: "

    .line 620
    .line 621
    invoke-static {v7, v8, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    if-eq v4, v10, :cond_25

    .line 626
    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v2, " (total length: "

    .line 636
    .line 637
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    :cond_25
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    goto :goto_10

    .line 654
    :goto_11
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 655
    .line 656
    .line 657
    goto :goto_12

    .line 658
    :cond_26
    move-wide/from16 v10, v33

    .line 659
    .line 660
    iget v2, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 661
    .line 662
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 663
    .line 664
    add-int/2addr v2, v13

    .line 665
    long-to-int v7, v7

    .line 666
    new-array v7, v7, [B

    .line 667
    .line 668
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 669
    .line 670
    .line 671
    new-instance v19, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 672
    .line 673
    int-to-long v13, v2

    .line 674
    move-object/from16 v22, v7

    .line 675
    .line 676
    move/from16 v23, v12

    .line 677
    .line 678
    move/from16 v24, v21

    .line 679
    .line 680
    move-wide/from16 v20, v13

    .line 681
    .line 682
    invoke-direct/range {v19 .. v24}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 683
    .line 684
    .line 685
    move-object/from16 v2, v19

    .line 686
    .line 687
    aget-object v7, v32, p2

    .line 688
    .line 689
    iget-object v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    const-string v7, "DNGVersion"

    .line 695
    .line 696
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    move-result v7

    .line 700
    if-eqz v7, :cond_27

    .line 701
    .line 702
    const/4 v8, 0x3

    .line 703
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 704
    .line 705
    :cond_27
    const-string v7, "Make"

    .line 706
    .line 707
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v7

    .line 711
    if-nez v7, :cond_28

    .line 712
    .line 713
    const-string v7, "Model"

    .line 714
    .line 715
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v7

    .line 719
    if-eqz v7, :cond_29

    .line 720
    .line 721
    :cond_28
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 722
    .line 723
    invoke-virtual {v2, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v7

    .line 727
    const-string v8, "PENTAX"

    .line 728
    .line 729
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 730
    .line 731
    .line 732
    move-result v7

    .line 733
    if-nez v7, :cond_2a

    .line 734
    .line 735
    :cond_29
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    if-eqz v3, :cond_2b

    .line 740
    .line 741
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 742
    .line 743
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    const v3, 0xffff

    .line 748
    .line 749
    .line 750
    if-ne v2, v3, :cond_2b

    .line 751
    .line 752
    :cond_2a
    const/16 v8, 0x8

    .line 753
    .line 754
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 755
    .line 756
    :cond_2b
    iget v2, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 757
    .line 758
    int-to-long v2, v2

    .line 759
    cmp-long v2, v2, v10

    .line 760
    .line 761
    if-eqz v2, :cond_2c

    .line 762
    .line 763
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 764
    .line 765
    .line 766
    :cond_2c
    :goto_12
    add-int/lit8 v9, v29, 0x1

    .line 767
    .line 768
    int-to-short v9, v9

    .line 769
    move/from16 v2, p2

    .line 770
    .line 771
    move/from16 v3, v25

    .line 772
    .line 773
    move/from16 v7, v31

    .line 774
    .line 775
    goto/16 :goto_0

    .line 776
    .line 777
    :cond_2d
    move/from16 v31, v7

    .line 778
    .line 779
    move-object/from16 v32, v14

    .line 780
    .line 781
    const/16 v16, 0x0

    .line 782
    .line 783
    const-wide/16 v17, 0x0

    .line 784
    .line 785
    const/16 v19, 0x1

    .line 786
    .line 787
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 788
    .line 789
    .line 790
    move-result v2

    .line 791
    if-eqz v31, :cond_2e

    .line 792
    .line 793
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    move/from16 v4, v19

    .line 798
    .line 799
    new-array v4, v4, [Ljava/lang/Object;

    .line 800
    .line 801
    aput-object v3, v4, v16

    .line 802
    .line 803
    const-string v3, "nextIfdOffset: %d"

    .line 804
    .line 805
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    :cond_2e
    int-to-long v3, v2

    .line 813
    cmp-long v7, v3, v17

    .line 814
    .line 815
    if-lez v7, :cond_31

    .line 816
    .line 817
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 818
    .line 819
    .line 820
    move-result-object v7

    .line 821
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    if-nez v5, :cond_30

    .line 826
    .line 827
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 828
    .line 829
    .line 830
    const/4 v8, 0x4

    .line 831
    aget-object v2, v32, v8

    .line 832
    .line 833
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    if-eqz v2, :cond_2f

    .line 838
    .line 839
    invoke-virtual {v0, v1, v8}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 840
    .line 841
    .line 842
    return-void

    .line 843
    :cond_2f
    const/4 v7, 0x5

    .line 844
    aget-object v2, v32, v7

    .line 845
    .line 846
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    if-eqz v2, :cond_32

    .line 851
    .line 852
    invoke-virtual {v0, v1, v7}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 853
    .line 854
    .line 855
    return-void

    .line 856
    :cond_30
    if-eqz v31, :cond_32

    .line 857
    .line 858
    const-string v0, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 859
    .line 860
    invoke-static {v2, v0, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    return-void

    .line 864
    :cond_31
    if-eqz v31, :cond_32

    .line 865
    .line 866
    const-string v0, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 867
    .line 868
    invoke-static {v2, v0, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    :cond_32
    :goto_13
    return-void
.end method

.method public final replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v0, p0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    aget-object v0, p0, p1

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    aget-object v0, p0, p1

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 26
    .line 27
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    aget-object p0, p0, p1

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    const-string v3, "Compression"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 17
    .line 18
    if-eqz v3, :cond_10

    .line 19
    .line 20
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x6

    .line 27
    const/4 v5, 0x1

    .line 28
    if-eq v3, v5, :cond_1

    .line 29
    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    if-eq v3, v6, :cond_1

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string v3, "BitsPerSample"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 48
    .line 49
    const-string v6, "ExifInterface"

    .line 50
    .line 51
    if-eqz v3, :cond_e

    .line 52
    .line 53
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 54
    .line 55
    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, [I

    .line 60
    .line 61
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 62
    .line 63
    invoke-static {v7, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget v8, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 71
    .line 72
    const/4 v9, 0x3

    .line 73
    if-ne v8, v9, :cond_e

    .line 74
    .line 75
    const-string v8, "PhotometricInterpretation"

    .line 76
    .line 77
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 82
    .line 83
    if-eqz v8, :cond_e

    .line 84
    .line 85
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-virtual {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-ne v8, v5, :cond_3

    .line 92
    .line 93
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 94
    .line 95
    invoke-static {v3, v9}, Ljava/util/Arrays;->equals([I[I)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_4

    .line 100
    .line 101
    :cond_3
    if-ne v8, v4, :cond_e

    .line 102
    .line 103
    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([I[I)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_e

    .line 108
    .line 109
    :cond_4
    :goto_0
    const-string v3, " bytes."

    .line 110
    .line 111
    const-string v4, "StripOffsets"

    .line 112
    .line 113
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 118
    .line 119
    const-string v7, "StripByteCounts"

    .line 120
    .line 121
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 126
    .line 127
    if-eqz v4, :cond_f

    .line 128
    .line 129
    if-eqz v2, :cond_f

    .line 130
    .line 131
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 132
    .line 133
    invoke-virtual {v4, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->convertToLongArray(Ljava/io/Serializable;)[J

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 142
    .line 143
    invoke-virtual {v2, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->convertToLongArray(Ljava/io/Serializable;)[J

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v4, :cond_d

    .line 152
    .line 153
    array-length v7, v4

    .line 154
    if-nez v7, :cond_5

    .line 155
    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :cond_5
    if-eqz v2, :cond_c

    .line 159
    .line 160
    array-length v7, v2

    .line 161
    if-nez v7, :cond_6

    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_6
    array-length v7, v4

    .line 166
    array-length v8, v2

    .line 167
    if-eq v7, v8, :cond_7

    .line 168
    .line 169
    const-string v0, "stripOffsets and stripByteCounts should have same length."

    .line 170
    .line 171
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    :cond_7
    array-length v7, v2

    .line 177
    const/4 v8, 0x0

    .line 178
    const-wide/16 v9, 0x0

    .line 179
    .line 180
    move v11, v8

    .line 181
    :goto_1
    if-ge v11, v7, :cond_8

    .line 182
    .line 183
    aget-wide v12, v2, v11

    .line 184
    .line 185
    add-long/2addr v9, v12

    .line 186
    add-int/lit8 v11, v11, 0x1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_8
    long-to-int v7, v9

    .line 190
    new-array v7, v7, [B

    .line 191
    .line 192
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 193
    .line 194
    move v9, v8

    .line 195
    move v10, v9

    .line 196
    move v11, v10

    .line 197
    :goto_2
    array-length v12, v4

    .line 198
    if-ge v9, v12, :cond_b

    .line 199
    .line 200
    aget-wide v12, v4, v9

    .line 201
    .line 202
    long-to-int v12, v12

    .line 203
    aget-wide v13, v2, v9

    .line 204
    .line 205
    long-to-int v13, v13

    .line 206
    array-length v14, v4

    .line 207
    sub-int/2addr v14, v5

    .line 208
    if-ge v9, v14, :cond_9

    .line 209
    .line 210
    add-int v14, v12, v13

    .line 211
    .line 212
    int-to-long v14, v14

    .line 213
    add-int/lit8 v16, v9, 0x1

    .line 214
    .line 215
    aget-wide v16, v4, v16

    .line 216
    .line 217
    cmp-long v14, v14, v16

    .line 218
    .line 219
    if-eqz v14, :cond_9

    .line 220
    .line 221
    iput-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 222
    .line 223
    :cond_9
    sub-int/2addr v12, v10

    .line 224
    if-gez v12, :cond_a

    .line 225
    .line 226
    const-string v0, "Invalid strip offset value"

    .line 227
    .line 228
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_a
    :try_start_0
    invoke-virtual {v1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    .line 234
    .line 235
    add-int/2addr v10, v12

    .line 236
    new-array v12, v13, [B

    .line 237
    .line 238
    :try_start_1
    invoke-virtual {v1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    .line 240
    .line 241
    add-int/2addr v10, v13

    .line 242
    invoke-static {v12, v8, v7, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    .line 244
    .line 245
    add-int/2addr v11, v13

    .line 246
    add-int/lit8 v9, v9, 0x1

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v1, "Failed to read "

    .line 252
    .line 253
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v1, "Failed to skip "

    .line 273
    .line 274
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_b
    iget-boolean v0, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    .line 292
    .line 293
    if-eqz v0, :cond_f

    .line 294
    .line 295
    aget-wide v0, v4, v8

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_c
    :goto_3
    const-string v0, "stripByteCounts should not be null or have zero length."

    .line 299
    .line 300
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_d
    :goto_4
    const-string v0, "stripOffsets should not be null or have zero length."

    .line 305
    .line 306
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_e
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 311
    .line 312
    if-eqz v0, :cond_f

    .line 313
    .line 314
    const-string v0, "Unsupported data type value"

    .line 315
    .line 316
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    :cond_f
    :goto_5
    return-void

    .line 320
    :cond_10
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 321
    .line 322
    .line 323
    return-void
.end method

.method public final swapBasedOnImageSize(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "ExifInterface"

    .line 10
    .line 11
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    aget-object v1, v0, p2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    aget-object v1, v0, p1

    .line 25
    .line 26
    const-string v4, "ImageLength"

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 33
    .line 34
    aget-object v5, v0, p1

    .line 35
    .line 36
    const-string v6, "ImageWidth"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 43
    .line 44
    aget-object v7, v0, p2

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 51
    .line 52
    aget-object v7, v0, p2

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-eqz v4, :cond_3

    .line 66
    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v6, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-ge v1, v3, :cond_6

    .line 95
    .line 96
    if-ge v2, p0, :cond_6

    .line 97
    .line 98
    aget-object p0, v0, p1

    .line 99
    .line 100
    aget-object v1, v0, p2

    .line 101
    .line 102
    aput-object v1, v0, p1

    .line 103
    .line 104
    aput-object p0, v0, p2

    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    :goto_0
    if-eqz v3, :cond_6

    .line 108
    .line 109
    const-string p0, "Second image does not contain valid size information"

    .line 110
    .line 111
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 116
    .line 117
    const-string p0, "First image does not contain valid size information"

    .line 118
    .line 119
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 124
    .line 125
    const-string p0, "Cannot perform swap since only one image data exists"

    .line 126
    .line 127
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_6
    return-void
.end method

.method public final updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p2

    .line 4
    .line 5
    const-string v2, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 12
    .line 13
    aget-object v2, v0, p2

    .line 14
    .line 15
    const-string v3, "SensorTopBorder"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 22
    .line 23
    aget-object v3, v0, p2

    .line 24
    .line 25
    const-string v4, "SensorLeftBorder"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 32
    .line 33
    aget-object v4, v0, p2

    .line 34
    .line 35
    const-string v5, "SensorBottomBorder"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 42
    .line 43
    aget-object v5, v0, p2

    .line 44
    .line 45
    const-string v6, "SensorRightBorder"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 52
    .line 53
    const-string v6, "ImageLength"

    .line 54
    .line 55
    const-string v7, "ImageWidth"

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget p1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 62
    .line 63
    const-string v3, "Invalid crop size values. cropSize="

    .line 64
    .line 65
    const-string v4, "ExifInterface"

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x2

    .line 70
    const/4 v10, 0x5

    .line 71
    if-ne p1, v10, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    array-length v1, p1

    .line 82
    if-eq v1, v9, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    aget-object v1, p1, v8

    .line 86
    .line 87
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 88
    .line 89
    new-array v3, v5, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 90
    .line 91
    aput-object v1, v3, v8

    .line 92
    .line 93
    invoke-static {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    aget-object p1, p1, v5

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 100
    .line 101
    new-array v2, v5, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 102
    .line 103
    aput-object p1, v2, v8

    .line 104
    .line 105
    invoke-static {v2, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, [I

    .line 135
    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    array-length v1, p1

    .line 139
    if-eq v1, v9, :cond_3

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    aget v1, p1, v8

    .line 143
    .line 144
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 145
    .line 146
    invoke-static {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    aget p1, p1, v5

    .line 151
    .line 152
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 153
    .line 154
    invoke-static {p1, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    :goto_1
    aget-object p1, v0, p2

    .line 159
    .line 160
    invoke-virtual {p1, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    aget-object p1, v0, p2

    .line 164
    .line 165
    invoke-virtual {p1, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_5
    if-eqz v2, :cond_6

    .line 190
    .line 191
    if-eqz v3, :cond_6

    .line 192
    .line 193
    if-eqz v4, :cond_6

    .line 194
    .line 195
    if-eqz v5, :cond_6

    .line 196
    .line 197
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 198
    .line 199
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 204
    .line 205
    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 210
    .line 211
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 216
    .line 217
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-le v1, p1, :cond_8

    .line 222
    .line 223
    if-le v2, v3, :cond_8

    .line 224
    .line 225
    sub-int/2addr v1, p1

    .line 226
    sub-int/2addr v2, v3

    .line 227
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 228
    .line 229
    invoke-static {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object p0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 234
    .line 235
    invoke-static {v2, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    aget-object v1, v0, p2

    .line 240
    .line 241
    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    aget-object p1, v0, p2

    .line 245
    .line 246
    invoke-virtual {p1, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_6
    aget-object v1, v0, p2

    .line 251
    .line 252
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 257
    .line 258
    aget-object v2, v0, p2

    .line 259
    .line 260
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 265
    .line 266
    if-eqz v1, :cond_7

    .line 267
    .line 268
    if-nez v2, :cond_8

    .line 269
    .line 270
    :cond_7
    aget-object v1, v0, p2

    .line 271
    .line 272
    const-string v2, "JPEGInterchangeFormat"

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 279
    .line 280
    aget-object v0, v0, p2

    .line 281
    .line 282
    const-string v2, "JPEGInterchangeFormatLength"

    .line 283
    .line 284
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 289
    .line 290
    if-eqz v1, :cond_8

    .line 291
    .line 292
    if-eqz v0, :cond_8

    .line 293
    .line 294
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 295
    .line 296
    invoke-virtual {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    int-to-long v2, v0

    .line 307
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 308
    .line 309
    .line 310
    new-array v1, v1, [B

    .line 311
    .line 312
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 313
    .line 314
    .line 315
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 316
    .line 317
    invoke-direct {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 321
    .line 322
    .line 323
    :cond_8
    return-void
.end method

.method public final validateImages()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-virtual {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v5, v3, v4

    .line 17
    .line 18
    const-string v6, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 25
    .line 26
    aget-object v4, v3, v4

    .line 27
    .line 28
    const-string v6, "PixelYDimension"

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 35
    .line 36
    const-string v6, "ImageLength"

    .line 37
    .line 38
    const-string v7, "ImageWidth"

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    aget-object v8, v3, v0

    .line 45
    .line 46
    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    aget-object v5, v3, v0

    .line 50
    .line 51
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v4, v3, v2

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget-object v4, v3, v1

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    aget-object v4, v3, v1

    .line 71
    .line 72
    aput-object v4, v3, v2

    .line 73
    .line 74
    new-instance v4, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    aput-object v4, v3, v1

    .line 80
    .line 81
    :cond_1
    aget-object v3, v3, v2

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    const-string v3, "ExifInterface"

    .line 90
    .line 91
    const-string v4, "No image meets the size requirements of a thumbnail image."

    .line 92
    .line 93
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v3, "ThumbnailOrientation"

    .line 97
    .line 98
    const-string v4, "Orientation"

    .line 99
    .line 100
    invoke-virtual {p0, v0, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, "ThumbnailImageLength"

    .line 104
    .line 105
    invoke-virtual {p0, v0, v5, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v8, "ThumbnailImageWidth"

    .line 109
    .line 110
    invoke-virtual {p0, v0, v8, v7}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1, v5, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1, v8, v7}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2, v6, v5}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2, v7, v8}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
