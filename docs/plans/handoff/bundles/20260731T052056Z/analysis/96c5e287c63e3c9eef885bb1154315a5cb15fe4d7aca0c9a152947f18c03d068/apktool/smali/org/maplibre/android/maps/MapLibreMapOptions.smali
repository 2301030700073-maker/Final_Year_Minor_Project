.class public final Lorg/maplibre/android/maps/MapLibreMapOptions;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/maps/MapLibreMapOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionJournalEnabled:Z

.field public actionJournalLogFileCount:J

.field public actionJournalLogFileSize:J

.field public actionJournalPath:Ljava/lang/String;

.field public actionJournalRenderingReportInterval:I

.field public apiBaseUri:Ljava/lang/String;

.field public attributionEnabled:Z

.field public attributionGravity:I

.field public attributionMargins:[I

.field public attributionTintColor:I

.field public cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

.field public compassEnabled:Z

.field public compassGravity:I

.field public compassImage:Landroid/graphics/drawable/Drawable;

.field public compassMargins:[I

.field public crossSourceCollisions:Z

.field public debugActive:Z

.field public doubleTapGesturesEnabled:Z

.field public fadeCompassFacingNorth:Z

.field public foregroundLoadColor:I

.field public horizontalScrollGesturesEnabled:Z

.field public localIdeographFontFamilies:[Ljava/lang/String;

.field public localIdeographFontFamily:Ljava/lang/String;

.field public localIdeographFontFamilyEnabled:Z

.field public logoEnabled:Z

.field public logoGravity:I

.field public logoMargins:[I

.field public maxPitch:D

.field public maxZoom:D

.field public minPitch:D

.field public minZoom:D

.field public pixelRatio:F

.field public prefetchZoomDelta:I

.field public prefetchesTiles:Z

.field public quickZoomGesturesEnabled:Z

.field public rotateGesturesEnabled:Z

.field public scrollGesturesEnabled:Z

.field public textureMode:Z

.field public tiltGesturesEnabled:Z

.field public translucentTextureSurface:Z

.field public zMediaOverlay:Z

.field public zoomGesturesEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 22

    .line 1
    sget-object v0, Lorg/maplibre/android/R$styleable;->maplibre_MapView:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object/from16 v2, p0

    .line 5
    .line 6
    move-object/from16 v3, p1

    .line 7
    .line 8
    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    new-instance v0, Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 19
    .line 20
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 21
    .line 22
    const v5, 0x800035

    .line 23
    .line 24
    .line 25
    iput v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 26
    .line 27
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 28
    .line 29
    const v6, 0x800053

    .line 30
    .line 31
    .line 32
    iput v6, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 33
    .line 34
    const/4 v7, -0x1

    .line 35
    iput v7, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 36
    .line 37
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 38
    .line 39
    iput v6, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 40
    .line 41
    const-wide/16 v8, 0x0

    .line 42
    .line 43
    iput-wide v8, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 44
    .line 45
    const-wide v10, 0x4039800000000000L    # 25.5

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    iput-wide v10, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 51
    .line 52
    iput-wide v8, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 53
    .line 54
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 55
    .line 56
    iput-wide v8, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 57
    .line 58
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 59
    .line 60
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 61
    .line 62
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 63
    .line 64
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 65
    .line 66
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 67
    .line 68
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 69
    .line 70
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 71
    .line 72
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 73
    .line 74
    const/4 v8, 0x4

    .line 75
    iput v8, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 76
    .line 77
    iput-boolean v1, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 78
    .line 79
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 80
    .line 81
    iput-boolean v4, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 82
    .line 83
    iput-boolean v1, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 84
    .line 85
    const-string v9, ""

    .line 86
    .line 87
    iput-object v9, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 88
    .line 89
    const-wide/32 v9, 0x100000

    .line 90
    .line 91
    .line 92
    iput-wide v9, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    .line 93
    .line 94
    const-wide/16 v9, 0x5

    .line 95
    .line 96
    iput-wide v9, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    .line 97
    .line 98
    const/16 v9, 0x3c

    .line 99
    .line 100
    iput v9, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    iput-object v11, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 121
    .line 122
    :try_start_0
    new-instance v11, Lorg/maplibre/android/camera/CameraPosition$Builder;

    .line 123
    .line 124
    invoke-direct {v11, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Landroid/content/res/TypedArray;)V

    .line 125
    .line 126
    .line 127
    new-instance v12, Lorg/maplibre/android/camera/CameraPosition;

    .line 128
    .line 129
    iget-object v13, v11, Lorg/maplibre/android/camera/CameraPosition$Builder;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 130
    .line 131
    iget-wide v14, v11, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom:D

    .line 132
    .line 133
    move/from16 v21, v10

    .line 134
    .line 135
    iget-wide v9, v11, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt:D

    .line 136
    .line 137
    iget-wide v1, v11, Lorg/maplibre/android/camera/CameraPosition$Builder;->bearing:D

    .line 138
    .line 139
    const/16 v20, 0x0

    .line 140
    .line 141
    move-wide/from16 v18, v1

    .line 142
    .line 143
    move-wide/from16 v16, v9

    .line 144
    .line 145
    invoke-direct/range {v12 .. v20}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    .line 146
    .line 147
    .line 148
    iput-object v12, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 149
    .line 150
    const/4 v1, 0x5

    .line 151
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-nez v9, :cond_0

    .line 166
    .line 167
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :cond_0
    :goto_0
    const/16 v2, 0x38

    .line 174
    .line 175
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 180
    .line 181
    const/16 v2, 0x36

    .line 182
    .line 183
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 188
    .line 189
    const/16 v2, 0x2d

    .line 190
    .line 191
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 196
    .line 197
    const/16 v2, 0x35

    .line 198
    .line 199
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 204
    .line 205
    const/16 v2, 0x37

    .line 206
    .line 207
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 212
    .line 213
    const/16 v2, 0x2c

    .line 214
    .line 215
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 220
    .line 221
    const/16 v2, 0x34

    .line 222
    .line 223
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 228
    .line 229
    const/16 v2, 0x10

    .line 230
    .line 231
    const/high16 v9, 0x41cc0000    # 25.5f

    .line 232
    .line 233
    invoke-virtual {v3, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    float-to-double v9, v2

    .line 238
    iput-wide v9, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 239
    .line 240
    const/16 v2, 0x11

    .line 241
    .line 242
    const/4 v9, 0x0

    .line 243
    invoke-virtual {v3, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    float-to-double v10, v2

    .line 248
    iput-wide v10, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 249
    .line 250
    const/16 v2, 0x9

    .line 251
    .line 252
    const/high16 v10, 0x42700000    # 60.0f

    .line 253
    .line 254
    invoke-virtual {v3, v2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    float-to-double v10, v2

    .line 259
    iput-wide v10, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 260
    .line 261
    const/16 v2, 0xa

    .line 262
    .line 263
    invoke-virtual {v3, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    float-to-double v10, v2

    .line 268
    iput-wide v10, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 269
    .line 270
    const/16 v2, 0x24

    .line 271
    .line 272
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 277
    .line 278
    const/16 v2, 0x27

    .line 279
    .line 280
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 285
    .line 286
    const/high16 v2, 0x40800000    # 4.0f

    .line 287
    .line 288
    mul-float v10, v21, v2

    .line 289
    .line 290
    const/16 v2, 0x29

    .line 291
    .line 292
    invoke-virtual {v3, v2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    float-to-int v2, v2

    .line 297
    const/16 v5, 0x2b

    .line 298
    .line 299
    invoke-virtual {v3, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    float-to-int v5, v5

    .line 304
    const/16 v11, 0x2a

    .line 305
    .line 306
    invoke-virtual {v3, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    float-to-int v11, v11

    .line 311
    const/16 v12, 0x28

    .line 312
    .line 313
    invoke-virtual {v3, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 314
    .line 315
    .line 316
    move-result v12

    .line 317
    float-to-int v12, v12

    .line 318
    filled-new-array {v2, v5, v11, v12}, [I

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    .line 323
    .line 324
    const/16 v2, 0x26

    .line 325
    .line 326
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 331
    .line 332
    const/16 v2, 0x25

    .line 333
    .line 334
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    if-nez v2, :cond_1

    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    sget-object v5, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 345
    .line 346
    const v5, 0x7f080250

    .line 347
    .line 348
    .line 349
    const/4 v11, 0x0

    .line 350
    invoke-virtual {v2, v5, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    :cond_1
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    .line 355
    .line 356
    const/16 v2, 0x2e

    .line 357
    .line 358
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 363
    .line 364
    const/16 v2, 0x2f

    .line 365
    .line 366
    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 371
    .line 372
    const/16 v2, 0x31

    .line 373
    .line 374
    invoke-virtual {v3, v2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    float-to-int v2, v2

    .line 379
    const/16 v5, 0x33

    .line 380
    .line 381
    invoke-virtual {v3, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    float-to-int v5, v5

    .line 386
    const/16 v11, 0x32

    .line 387
    .line 388
    invoke-virtual {v3, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 389
    .line 390
    .line 391
    move-result v11

    .line 392
    float-to-int v11, v11

    .line 393
    const/16 v12, 0x30

    .line 394
    .line 395
    invoke-virtual {v3, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    float-to-int v12, v12

    .line 400
    filled-new-array {v2, v5, v11, v12}, [I

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    .line 405
    .line 406
    const/16 v2, 0x23

    .line 407
    .line 408
    invoke-virtual {v3, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 413
    .line 414
    const/16 v2, 0x1d

    .line 415
    .line 416
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 421
    .line 422
    const/16 v2, 0x1e

    .line 423
    .line 424
    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 429
    .line 430
    const/high16 v2, 0x42b80000    # 92.0f

    .line 431
    .line 432
    mul-float v2, v2, v21

    .line 433
    .line 434
    const/16 v5, 0x20

    .line 435
    .line 436
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    float-to-int v2, v2

    .line 441
    const/16 v5, 0x22

    .line 442
    .line 443
    invoke-virtual {v3, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    float-to-int v5, v5

    .line 448
    const/16 v6, 0x21

    .line 449
    .line 450
    invoke-virtual {v3, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    float-to-int v6, v6

    .line 455
    const/16 v7, 0x1f

    .line 456
    .line 457
    invoke-virtual {v3, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    float-to-int v7, v7

    .line 462
    filled-new-array {v2, v5, v6, v7}, [I

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    .line 467
    .line 468
    const/16 v2, 0x1b

    .line 469
    .line 470
    const/4 v5, 0x0

    .line 471
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    .line 476
    .line 477
    const/16 v2, 0x1c

    .line 478
    .line 479
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    .line 484
    .line 485
    const/16 v2, 0x13

    .line 486
    .line 487
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 492
    .line 493
    const/16 v2, 0x1a

    .line 494
    .line 495
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 500
    .line 501
    const/16 v2, 0x14

    .line 502
    .line 503
    const/4 v5, 0x0

    .line 504
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 509
    .line 510
    const/16 v2, 0x16

    .line 511
    .line 512
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 517
    .line 518
    const/16 v2, 0x17

    .line 519
    .line 520
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    if-eqz v2, :cond_2

    .line 525
    .line 526
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-static {v2}, Lorg/maplibre/android/utils/FontUtils;->extractValidFont([Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    .line 539
    .line 540
    goto :goto_1

    .line 541
    :cond_2
    const/16 v2, 0x18

    .line 542
    .line 543
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    if-nez v2, :cond_3

    .line 548
    .line 549
    const-string v2, "sans-serif"

    .line 550
    .line 551
    :cond_3
    filled-new-array {v2}, [Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-static {v2}, Lorg/maplibre/android/utils/FontUtils;->extractValidFont([Ljava/lang/String;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    iput-object v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    .line 560
    .line 561
    :goto_1
    const/16 v2, 0x19

    .line 562
    .line 563
    invoke-virtual {v3, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 568
    .line 569
    const/16 v2, 0x15

    .line 570
    .line 571
    const v5, -0xf161f

    .line 572
    .line 573
    .line 574
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    iput v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->foregroundLoadColor:I

    .line 579
    .line 580
    const/16 v2, 0x12

    .line 581
    .line 582
    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 587
    .line 588
    const/4 v5, 0x0

    .line 589
    invoke-virtual {v3, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    iput-boolean v2, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 594
    .line 595
    const/4 v2, 0x2

    .line 596
    const/high16 v5, 0x100000

    .line 597
    .line 598
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    int-to-long v5, v2

    .line 603
    iput-wide v5, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    .line 604
    .line 605
    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    int-to-long v1, v1

    .line 610
    iput-wide v1, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    .line 611
    .line 612
    const/4 v1, 0x3

    .line 613
    const/16 v2, 0x3c

    .line 614
    .line 615
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    iput v1, v0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    .line 621
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 622
    .line 623
    .line 624
    return-object v0

    .line 625
    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    .line 627
    .line 628
    throw v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_28

    .line 7
    .line 8
    const-class v1, Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 19
    .line 20
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    .line 21
    .line 22
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    .line 23
    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 28
    .line 29
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 30
    .line 31
    if-eq v1, v2, :cond_3

    .line 32
    .line 33
    return v0

    .line 34
    :cond_3
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 35
    .line 36
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 37
    .line 38
    if-eq v1, v2, :cond_4

    .line 39
    .line 40
    return v0

    .line 41
    :cond_4
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    if-eqz v2, :cond_6

    .line 55
    .line 56
    :goto_0
    return v0

    .line 57
    :cond_6
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 58
    .line 59
    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 60
    .line 61
    if-eq v1, v2, :cond_7

    .line 62
    .line 63
    return v0

    .line 64
    :cond_7
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 65
    .line 66
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 67
    .line 68
    if-eq v1, v2, :cond_8

    .line 69
    .line 70
    return v0

    .line 71
    :cond_8
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 72
    .line 73
    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 74
    .line 75
    if-eq v1, v2, :cond_9

    .line 76
    .line 77
    return v0

    .line 78
    :cond_9
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 79
    .line 80
    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 81
    .line 82
    if-eq v1, v2, :cond_a

    .line 83
    .line 84
    return v0

    .line 85
    :cond_a
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 86
    .line 87
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 88
    .line 89
    if-eq v1, v2, :cond_b

    .line 90
    .line 91
    return v0

    .line 92
    :cond_b
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 93
    .line 94
    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 95
    .line 96
    if-eq v1, v2, :cond_c

    .line 97
    .line 98
    return v0

    .line 99
    :cond_c
    iget-wide v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 100
    .line 101
    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 102
    .line 103
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_d

    .line 108
    .line 109
    return v0

    .line 110
    :cond_d
    iget-wide v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 111
    .line 112
    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 113
    .line 114
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_e

    .line 119
    .line 120
    return v0

    .line 121
    :cond_e
    iget-wide v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 122
    .line 123
    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 124
    .line 125
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_f

    .line 130
    .line 131
    return v0

    .line 132
    :cond_f
    iget-wide v1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 133
    .line 134
    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 135
    .line 136
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_10

    .line 141
    .line 142
    return v0

    .line 143
    :cond_10
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 144
    .line 145
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 146
    .line 147
    if-eq v1, v2, :cond_11

    .line 148
    .line 149
    return v0

    .line 150
    :cond_11
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 151
    .line 152
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 153
    .line 154
    if-eq v1, v2, :cond_12

    .line 155
    .line 156
    return v0

    .line 157
    :cond_12
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 158
    .line 159
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 160
    .line 161
    if-eq v1, v2, :cond_13

    .line 162
    .line 163
    return v0

    .line 164
    :cond_13
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 165
    .line 166
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 167
    .line 168
    if-eq v1, v2, :cond_14

    .line 169
    .line 170
    return v0

    .line 171
    :cond_14
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 172
    .line 173
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 174
    .line 175
    if-eq v1, v2, :cond_15

    .line 176
    .line 177
    return v0

    .line 178
    :cond_15
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 179
    .line 180
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 181
    .line 182
    if-eq v1, v2, :cond_16

    .line 183
    .line 184
    return v0

    .line 185
    :cond_16
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 186
    .line 187
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 188
    .line 189
    if-eq v1, v2, :cond_17

    .line 190
    .line 191
    return v0

    .line 192
    :cond_17
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 193
    .line 194
    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 195
    .line 196
    if-eqz v1, :cond_18

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_19

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_18
    if-eqz v2, :cond_19

    .line 206
    .line 207
    :goto_1
    return v0

    .line 208
    :cond_19
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    .line 209
    .line 210
    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    .line 211
    .line 212
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-nez v1, :cond_1a

    .line 217
    .line 218
    return v0

    .line 219
    :cond_1a
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    .line 220
    .line 221
    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    .line 222
    .line 223
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_1b

    .line 228
    .line 229
    return v0

    .line 230
    :cond_1b
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    .line 231
    .line 232
    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    .line 233
    .line 234
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_1c

    .line 239
    .line 240
    return v0

    .line 241
    :cond_1c
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    .line 244
    .line 245
    if-eqz v1, :cond_1d

    .line 246
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_1e

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_1d
    if-eqz v2, :cond_1e

    .line 255
    .line 256
    :goto_2
    return v0

    .line 257
    :cond_1e
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 258
    .line 259
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 260
    .line 261
    if-eq v1, v2, :cond_1f

    .line 262
    .line 263
    return v0

    .line 264
    :cond_1f
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 265
    .line 266
    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 267
    .line 268
    if-eq v1, v2, :cond_20

    .line 269
    .line 270
    return v0

    .line 271
    :cond_20
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 272
    .line 273
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 274
    .line 275
    if-eq v1, v2, :cond_21

    .line 276
    .line 277
    return v0

    .line 278
    :cond_21
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 279
    .line 280
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 281
    .line 282
    if-eq v1, v2, :cond_22

    .line 283
    .line 284
    return v0

    .line 285
    :cond_22
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    .line 286
    .line 287
    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_23

    .line 294
    .line 295
    return v0

    .line 296
    :cond_23
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    .line 297
    .line 298
    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-nez v1, :cond_24

    .line 305
    .line 306
    return v0

    .line 307
    :cond_24
    iget v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 308
    .line 309
    iget v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 310
    .line 311
    cmpl-float v1, v1, v2

    .line 312
    .line 313
    if-eqz v1, :cond_25

    .line 314
    .line 315
    return v0

    .line 316
    :cond_25
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 317
    .line 318
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 319
    .line 320
    if-eq v1, v2, :cond_26

    .line 321
    .line 322
    return v0

    .line 323
    :cond_26
    iget-boolean v1, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 324
    .line 325
    iget-boolean v2, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 326
    .line 327
    if-eq v1, v2, :cond_27

    .line 328
    .line 329
    return v0

    .line 330
    :cond_27
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 331
    .line 332
    iget-object p1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    :cond_28
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/maplibre/android/camera/CameraPosition;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    .line 15
    .line 16
    add-int/2addr v0, v2

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 20
    .line 21
    add-int/2addr v0, v2

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 25
    .line 26
    add-int/2addr v0, v2

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 30
    .line 31
    add-int/2addr v0, v2

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v2, v1

    .line 44
    :goto_1
    add-int/2addr v0, v2

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    .line 48
    .line 49
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr v2, v0

    .line 54
    mul-int/lit8 v2, v2, 0x1f

    .line 55
    .line 56
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 57
    .line 58
    add-int/2addr v2, v0

    .line 59
    mul-int/lit8 v2, v2, 0x1f

    .line 60
    .line 61
    iget v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 62
    .line 63
    add-int/2addr v2, v0

    .line 64
    mul-int/lit8 v2, v2, 0x1f

    .line 65
    .line 66
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    .line 67
    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 76
    .line 77
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    .line 80
    iget-boolean v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 81
    .line 82
    add-int/2addr v0, v2

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 86
    .line 87
    add-int/2addr v0, v2

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-object v2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    .line 91
    .line 92
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    add-int/2addr v2, v0

    .line 97
    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 98
    .line 99
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    mul-int/lit8 v2, v2, 0x1f

    .line 104
    .line 105
    const/16 v0, 0x20

    .line 106
    .line 107
    ushr-long v5, v3, v0

    .line 108
    .line 109
    xor-long/2addr v3, v5

    .line 110
    long-to-int v3, v3

    .line 111
    add-int/2addr v2, v3

    .line 112
    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 113
    .line 114
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    mul-int/lit8 v2, v2, 0x1f

    .line 119
    .line 120
    ushr-long v5, v3, v0

    .line 121
    .line 122
    xor-long/2addr v3, v5

    .line 123
    long-to-int v3, v3

    .line 124
    add-int/2addr v2, v3

    .line 125
    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 126
    .line 127
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    mul-int/lit8 v2, v2, 0x1f

    .line 132
    .line 133
    ushr-long v5, v3, v0

    .line 134
    .line 135
    xor-long/2addr v3, v5

    .line 136
    long-to-int v3, v3

    .line 137
    add-int/2addr v2, v3

    .line 138
    iget-wide v3, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 139
    .line 140
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    mul-int/lit8 v2, v2, 0x1f

    .line 145
    .line 146
    ushr-long v5, v3, v0

    .line 147
    .line 148
    xor-long/2addr v3, v5

    .line 149
    long-to-int v0, v3

    .line 150
    add-int/2addr v2, v0

    .line 151
    mul-int/lit8 v2, v2, 0x1f

    .line 152
    .line 153
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 154
    .line 155
    add-int/2addr v2, v0

    .line 156
    mul-int/lit8 v2, v2, 0x1f

    .line 157
    .line 158
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 159
    .line 160
    add-int/2addr v2, v0

    .line 161
    mul-int/lit8 v2, v2, 0x1f

    .line 162
    .line 163
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 164
    .line 165
    add-int/2addr v2, v0

    .line 166
    mul-int/lit8 v2, v2, 0x1f

    .line 167
    .line 168
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 169
    .line 170
    add-int/2addr v2, v0

    .line 171
    mul-int/lit8 v2, v2, 0x1f

    .line 172
    .line 173
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 174
    .line 175
    add-int/2addr v2, v0

    .line 176
    mul-int/lit8 v2, v2, 0x1f

    .line 177
    .line 178
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 179
    .line 180
    add-int/2addr v2, v0

    .line 181
    mul-int/lit8 v2, v2, 0x1f

    .line 182
    .line 183
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 184
    .line 185
    add-int/2addr v2, v0

    .line 186
    mul-int/lit8 v2, v2, 0x1f

    .line 187
    .line 188
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v0, :cond_2

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    goto :goto_2

    .line 197
    :cond_2
    move v0, v1

    .line 198
    :goto_2
    add-int/2addr v2, v0

    .line 199
    mul-int/lit8 v2, v2, 0x1f

    .line 200
    .line 201
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    .line 202
    .line 203
    add-int/2addr v2, v0

    .line 204
    mul-int/lit8 v2, v2, 0x1f

    .line 205
    .line 206
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    .line 207
    .line 208
    add-int/2addr v2, v0

    .line 209
    mul-int/lit8 v2, v2, 0x1f

    .line 210
    .line 211
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 212
    .line 213
    add-int/2addr v2, v0

    .line 214
    mul-int/lit8 v2, v2, 0x1f

    .line 215
    .line 216
    iget v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 217
    .line 218
    add-int/2addr v2, v0

    .line 219
    mul-int/lit8 v2, v2, 0x1f

    .line 220
    .line 221
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 222
    .line 223
    add-int/2addr v2, v0

    .line 224
    mul-int/lit8 v2, v2, 0x1f

    .line 225
    .line 226
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 227
    .line 228
    add-int/2addr v2, v0

    .line 229
    mul-int/lit8 v2, v2, 0x1f

    .line 230
    .line 231
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    .line 232
    .line 233
    if-eqz v0, :cond_3

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    goto :goto_3

    .line 240
    :cond_3
    move v0, v1

    .line 241
    :goto_3
    add-int/2addr v2, v0

    .line 242
    mul-int/lit8 v2, v2, 0x1f

    .line 243
    .line 244
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    .line 245
    .line 246
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    add-int/2addr v2, v0

    .line 251
    mul-int/lit8 v2, v2, 0x1f

    .line 252
    .line 253
    iget v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 254
    .line 255
    float-to-int v0, v0

    .line 256
    add-int/2addr v2, v0

    .line 257
    mul-int/lit8 v2, v2, 0x1f

    .line 258
    .line 259
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 260
    .line 261
    add-int/2addr v2, v0

    .line 262
    mul-int/lit8 v2, v2, 0x1f

    .line 263
    .line 264
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 265
    .line 266
    add-int/2addr v2, v0

    .line 267
    mul-int/lit8 v2, v2, 0x1f

    .line 268
    .line 269
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 270
    .line 271
    if-eqz v0, :cond_4

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    :cond_4
    add-int/2addr v2, v1

    .line 278
    mul-int/lit8 v2, v2, 0x1f

    .line 279
    .line 280
    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    .line 281
    .line 282
    long-to-int v0, v0

    .line 283
    add-int/2addr v2, v0

    .line 284
    mul-int/lit8 v2, v2, 0x1f

    .line 285
    .line 286
    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    .line 287
    .line 288
    long-to-int v0, v0

    .line 289
    add-int/2addr v2, v0

    .line 290
    mul-int/lit8 v2, v2, 0x1f

    .line 291
    .line 292
    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    .line 293
    .line 294
    add-int/2addr v2, p0

    .line 295
    return v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 13
    .line 14
    int-to-byte v0, v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassGravity:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassMargins:[I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->fadeCompassFacingNorth:Z

    .line 29
    .line 30
    int-to-byte v0, v0

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassImage:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-static {v0}, Lokhttp3/HttpUrl$Companion;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    .line 46
    .line 47
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 48
    .line 49
    int-to-byte p2, p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    .line 52
    .line 53
    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoGravity:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoMargins:[I

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 61
    .line 62
    .line 63
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 64
    .line 65
    int-to-byte p2, p2

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    .line 68
    .line 69
    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionGravity:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionMargins:[I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 77
    .line 78
    .line 79
    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionTintColor:I

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 87
    .line 88
    .line 89
    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 92
    .line 93
    .line 94
    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 97
    .line 98
    .line 99
    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 102
    .line 103
    .line 104
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 105
    .line 106
    int-to-byte p2, p2

    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    .line 109
    .line 110
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 111
    .line 112
    int-to-byte p2, p2

    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 114
    .line 115
    .line 116
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 117
    .line 118
    int-to-byte p2, p2

    .line 119
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 120
    .line 121
    .line 122
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 123
    .line 124
    int-to-byte p2, p2

    .line 125
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    .line 127
    .line 128
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 129
    .line 130
    int-to-byte p2, p2

    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 132
    .line 133
    .line 134
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 135
    .line 136
    int-to-byte p2, p2

    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 138
    .line 139
    .line 140
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 141
    .line 142
    int-to-byte p2, p2

    .line 143
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->textureMode:Z

    .line 152
    .line 153
    int-to-byte p2, p2

    .line 154
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 155
    .line 156
    .line 157
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->translucentTextureSurface:Z

    .line 158
    .line 159
    int-to-byte p2, p2

    .line 160
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    .line 162
    .line 163
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 164
    .line 165
    int-to-byte p2, p2

    .line 166
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    .line 168
    .line 169
    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 170
    .line 171
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    .line 173
    .line 174
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->zMediaOverlay:Z

    .line 175
    .line 176
    int-to-byte p2, p2

    .line 177
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    .line 179
    .line 180
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilyEnabled:Z

    .line 181
    .line 182
    int-to-byte p2, p2

    .line 183
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    .line 185
    .line 186
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamily:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->localIdeographFontFamilies:[Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 199
    .line 200
    .line 201
    iget p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->foregroundLoadColor:I

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    .line 205
    .line 206
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 207
    .line 208
    int-to-byte p2, p2

    .line 209
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 210
    .line 211
    .line 212
    iget-boolean p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 213
    .line 214
    int-to-byte p2, p2

    .line 215
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    .line 224
    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    .line 227
    .line 228
    iget-wide v0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    .line 229
    .line 230
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    .line 232
    .line 233
    iget p0, p0, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    .line 234
    .line 235
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    .line 237
    .line 238
    return-void
.end method
