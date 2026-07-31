.class public abstract Lcoil3/util/MimeTypesKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final mimeTypeData:Lkotlin/collections/builders/MapBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "bin"

    .line 7
    .line 8
    const-string v2, "application/octet-stream"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "gz"

    .line 14
    .line 15
    const-string v2, "application/gzip"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "json"

    .line 21
    .line 22
    const-string v2, "application/json"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v1, "pdf"

    .line 28
    .line 29
    const-string v2, "application/pdf"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "yaml"

    .line 35
    .line 36
    .line 37
    const-string v2, "application/yaml"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string v1, "avif"

    .line 43
    .line 44
    const-string v2, "image/avif"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string v1, "avifs"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v1, "bmp"

    .line 55
    .line 56
    const-string v2, "image/bmp"

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v1, "cgm"

    .line 62
    .line 63
    const-string v2, "image/cgm"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v1, "g3"

    .line 69
    .line 70
    const-string v2, "image/g3fax"

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const-string v1, "gif"

    .line 76
    .line 77
    const-string v2, "image/gif"

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string v1, "heif"

    .line 83
    .line 84
    const-string v2, "image/heic"

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const-string v1, "heic"

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const-string v1, "ief"

    .line 95
    .line 96
    const-string v2, "image/ief"

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v1, "jpe"

    .line 102
    .line 103
    const-string v2, "image/jpeg"

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v1, "jpeg"

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const-string v1, "jpg"

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v1, "pjpg"

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string v1, "jfif"

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    const-string v1, "jfif-tbnl"

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string v1, "jif"

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    const-string v1, "png"

    .line 139
    .line 140
    const-string v2, "image/png"

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const-string v1, "btif"

    .line 146
    .line 147
    const-string v2, "image/prs.btif"

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string/jumbo v1, "svg"

    .line 153
    .line 154
    .line 155
    const-string v2, "image/svg+xml"

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-string/jumbo v1, "svgz"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    const-string/jumbo v1, "tif"

    .line 167
    .line 168
    .line 169
    const-string v2, "image/tiff"

    .line 170
    .line 171
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    const-string/jumbo v1, "tiff"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    const-string v1, "psd"

    .line 181
    .line 182
    const-string v2, "image/vnd.adobe.photoshop"

    .line 183
    .line 184
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const-string v1, "djv"

    .line 188
    .line 189
    const-string v2, "image/vnd.djvu"

    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    const-string v1, "djvu"

    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    const-string v1, "dwg"

    .line 200
    .line 201
    const-string v2, "image/vnd.dwg"

    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const-string v1, "dxf"

    .line 207
    .line 208
    const-string v2, "image/vnd.dxf"

    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const-string v1, "fbs"

    .line 214
    .line 215
    const-string v2, "image/vnd.fastbidsheet"

    .line 216
    .line 217
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const-string v1, "fpx"

    .line 221
    .line 222
    const-string v2, "image/vnd.fpx"

    .line 223
    .line 224
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    const-string v1, "fst"

    .line 228
    .line 229
    const-string v2, "image/vnd.fst"

    .line 230
    .line 231
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const-string v1, "mmr"

    .line 235
    .line 236
    const-string v2, "image/vnd.fujixerox.edmics-mmr"

    .line 237
    .line 238
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    const-string v1, "rlc"

    .line 242
    .line 243
    const-string v2, "image/vnd.fujixerox.edmics-rlc"

    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    const-string v1, "mdi"

    .line 249
    .line 250
    const-string v2, "image/vnd.ms-modi"

    .line 251
    .line 252
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    const-string v1, "npx"

    .line 256
    .line 257
    const-string v2, "image/vnd.net-fpx"

    .line 258
    .line 259
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    const-string/jumbo v1, "wbmp"

    .line 263
    .line 264
    .line 265
    const-string v2, "image/vnd.wap.wbmp"

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    const-string/jumbo v1, "xif"

    .line 271
    .line 272
    .line 273
    const-string v2, "image/vnd.xiff"

    .line 274
    .line 275
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    const-string/jumbo v1, "webp"

    .line 279
    .line 280
    .line 281
    const-string v2, "image/webp"

    .line 282
    .line 283
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    const-string v1, "dng"

    .line 287
    .line 288
    const-string v2, "image/x-adobe-dng"

    .line 289
    .line 290
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    const-string v1, "cr2"

    .line 294
    .line 295
    const-string v2, "image/x-canon-cr2"

    .line 296
    .line 297
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    const-string v1, "crw"

    .line 301
    .line 302
    const-string v2, "image/x-canon-crw"

    .line 303
    .line 304
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    const-string v1, "ras"

    .line 308
    .line 309
    const-string v2, "image/x-cmu-raster"

    .line 310
    .line 311
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    const-string v1, "cmx"

    .line 315
    .line 316
    const-string v2, "image/x-cmx"

    .line 317
    .line 318
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    const-string v1, "erf"

    .line 322
    .line 323
    const-string v2, "image/x-epson-erf"

    .line 324
    .line 325
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    const-string v1, "fh"

    .line 329
    .line 330
    const-string v2, "image/x-freehand"

    .line 331
    .line 332
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    const-string v1, "fh4"

    .line 336
    .line 337
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    const-string v1, "fh5"

    .line 341
    .line 342
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    const-string v1, "fh7"

    .line 346
    .line 347
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    const-string v1, "fhc"

    .line 351
    .line 352
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    const-string v1, "raf"

    .line 356
    .line 357
    const-string v2, "image/x-fuji-raf"

    .line 358
    .line 359
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    const-string v1, "icns"

    .line 363
    .line 364
    const-string v2, "image/x-icns"

    .line 365
    .line 366
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    const-string v1, "ico"

    .line 370
    .line 371
    const-string v2, "image/x-icon"

    .line 372
    .line 373
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    const-string v1, "dcr"

    .line 377
    .line 378
    const-string v2, "image/x-kodak-dcr"

    .line 379
    .line 380
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    const-string v1, "k25"

    .line 384
    .line 385
    const-string v2, "image/x-kodak-k25"

    .line 386
    .line 387
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    const-string v1, "kdc"

    .line 391
    .line 392
    const-string v2, "image/x-kodak-kdc"

    .line 393
    .line 394
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    const-string v1, "mrw"

    .line 398
    .line 399
    const-string v2, "image/x-minolta-mrw"

    .line 400
    .line 401
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    const-string v1, "nef"

    .line 405
    .line 406
    const-string v2, "image/x-nikon-nef"

    .line 407
    .line 408
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    const-string v1, "orf"

    .line 412
    .line 413
    const-string v2, "image/x-olympus-orf"

    .line 414
    .line 415
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    const-string v1, "raw"

    .line 419
    .line 420
    const-string v2, "image/x-panasonic-raw"

    .line 421
    .line 422
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    const-string v1, "rw2"

    .line 426
    .line 427
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    const-string v1, "rwl"

    .line 431
    .line 432
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    const-string v1, "pcx"

    .line 436
    .line 437
    const-string v2, "image/x-pcx"

    .line 438
    .line 439
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    const-string v1, "pef"

    .line 443
    .line 444
    const-string v2, "image/x-pentax-pef"

    .line 445
    .line 446
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    const-string v1, "ptx"

    .line 450
    .line 451
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    const-string v1, "pct"

    .line 455
    .line 456
    const-string v2, "image/x-pict"

    .line 457
    .line 458
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    const-string v1, "pic"

    .line 462
    .line 463
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    const-string v1, "pnm"

    .line 467
    .line 468
    const-string v2, "image/x-portable-anymap"

    .line 469
    .line 470
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    const-string v1, "pbm"

    .line 474
    .line 475
    const-string v2, "image/x-portable-bitmap"

    .line 476
    .line 477
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    const-string v1, "pgm"

    .line 481
    .line 482
    const-string v2, "image/x-portable-graymap"

    .line 483
    .line 484
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    const-string v1, "ppm"

    .line 488
    .line 489
    const-string v2, "image/x-portable-pixmap"

    .line 490
    .line 491
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    const-string v1, "rgb"

    .line 495
    .line 496
    const-string v2, "image/x-rgb"

    .line 497
    .line 498
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    const-string/jumbo v1, "x3f"

    .line 502
    .line 503
    .line 504
    const-string v2, "image/x-sigma-x3f"

    .line 505
    .line 506
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    const-string v1, "arw"

    .line 510
    .line 511
    const-string v2, "image/x-sony-arw"

    .line 512
    .line 513
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    const-string/jumbo v1, "sr2"

    .line 517
    .line 518
    .line 519
    const-string v2, "image/x-sony-sr2"

    .line 520
    .line 521
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    const-string/jumbo v1, "srf"

    .line 525
    .line 526
    .line 527
    const-string v2, "image/x-sony-srf"

    .line 528
    .line 529
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    const-string/jumbo v1, "xbm"

    .line 533
    .line 534
    .line 535
    const-string v2, "image/x-xbitmap"

    .line 536
    .line 537
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    const-string/jumbo v1, "xpm"

    .line 541
    .line 542
    .line 543
    const-string v2, "image/x-xpixmap"

    .line 544
    .line 545
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    const-string/jumbo v1, "xwd"

    .line 549
    .line 550
    .line 551
    const-string v2, "image/x-xwindowdump"

    .line 552
    .line 553
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    const-string v1, "css"

    .line 557
    .line 558
    const-string/jumbo v2, "text/css"

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    const-string v1, "csv"

    .line 565
    .line 566
    const-string/jumbo v2, "text/csv"

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    const-string v1, "htm"

    .line 573
    .line 574
    const-string/jumbo v2, "text/html"

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    const-string v1, "html"

    .line 581
    .line 582
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    const-string v1, "ics"

    .line 586
    .line 587
    const-string/jumbo v2, "text/calendar"

    .line 588
    .line 589
    .line 590
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    const-string v1, "js"

    .line 594
    .line 595
    const-string/jumbo v2, "text/javascript"

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    const-string v1, "mjs"

    .line 602
    .line 603
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    const-string v1, "md"

    .line 607
    .line 608
    const-string/jumbo v2, "text/markdown"

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    const-string/jumbo v1, "txt"

    .line 615
    .line 616
    .line 617
    const-string/jumbo v2, "text/plain"

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    const-string/jumbo v1, "xml"

    .line 624
    .line 625
    .line 626
    const-string/jumbo v2, "text/xml"

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    const-string v1, "3gp"

    .line 633
    .line 634
    const-string/jumbo v2, "video/3gpp"

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    const-string v1, "3g2"

    .line 641
    .line 642
    const-string/jumbo v2, "video/3gpp2"

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    const-string v1, "h261"

    .line 649
    .line 650
    const-string/jumbo v2, "video/h261"

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    const-string v1, "h263"

    .line 657
    .line 658
    const-string/jumbo v2, "video/h263"

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    const-string v1, "h264"

    .line 665
    .line 666
    const-string/jumbo v2, "video/h264"

    .line 667
    .line 668
    .line 669
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    const-string v1, "jpgv"

    .line 673
    .line 674
    const-string/jumbo v2, "video/jpeg"

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    const-string v1, "jpgm"

    .line 681
    .line 682
    const-string/jumbo v2, "video/jpm"

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    const-string v1, "jpm"

    .line 689
    .line 690
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    const-string v1, "mj2"

    .line 694
    .line 695
    const-string/jumbo v2, "video/mj2"

    .line 696
    .line 697
    .line 698
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    const-string v1, "mjp2"

    .line 702
    .line 703
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    const-string/jumbo v1, "ts"

    .line 707
    .line 708
    .line 709
    const-string/jumbo v2, "video/mp2t"

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    const-string v1, "mp4"

    .line 716
    .line 717
    const-string/jumbo v2, "video/mp4"

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    const-string v1, "mp4v"

    .line 724
    .line 725
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    const-string v1, "mpg4"

    .line 729
    .line 730
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    const-string v1, "m1v"

    .line 734
    .line 735
    const-string/jumbo v2, "video/mpeg"

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    const-string v1, "m2v"

    .line 742
    .line 743
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    const-string v1, "mpa"

    .line 747
    .line 748
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    const-string v1, "mpe"

    .line 752
    .line 753
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    const-string v1, "mpeg"

    .line 757
    .line 758
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    const-string v1, "mpg"

    .line 762
    .line 763
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    const-string v1, "ogv"

    .line 767
    .line 768
    const-string/jumbo v2, "video/ogg"

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    const-string v1, "mov"

    .line 775
    .line 776
    const-string/jumbo v2, "video/quicktime"

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    const-string v1, "qt"

    .line 783
    .line 784
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    const-string v1, "fvt"

    .line 788
    .line 789
    const-string/jumbo v2, "video/vnd.fvt"

    .line 790
    .line 791
    .line 792
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    const-string v1, "m4u"

    .line 796
    .line 797
    const-string/jumbo v2, "video/vnd.mpegurl"

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    const-string v1, "mxu"

    .line 804
    .line 805
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    const-string v1, "pyv"

    .line 809
    .line 810
    const-string/jumbo v2, "video/vnd.ms-playready.media.pyv"

    .line 811
    .line 812
    .line 813
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    const-string/jumbo v1, "viv"

    .line 817
    .line 818
    .line 819
    const-string/jumbo v2, "video/vnd.vivo"

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    const-string/jumbo v1, "webm"

    .line 826
    .line 827
    .line 828
    const-string/jumbo v2, "video/webm"

    .line 829
    .line 830
    .line 831
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    const-string v1, "f4v"

    .line 835
    .line 836
    const-string/jumbo v2, "video/x-f4v"

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    const-string v1, "fli"

    .line 843
    .line 844
    const-string/jumbo v2, "video/x-fli"

    .line 845
    .line 846
    .line 847
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    const-string v1, "flv"

    .line 851
    .line 852
    const-string/jumbo v2, "video/x-flv"

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    const-string v1, "m4v"

    .line 859
    .line 860
    const-string/jumbo v2, "video/x-m4v"

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    const-string v1, "mkv"

    .line 867
    .line 868
    const-string/jumbo v2, "video/x-matroska"

    .line 869
    .line 870
    .line 871
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    const-string v1, "asf"

    .line 875
    .line 876
    const-string/jumbo v2, "video/x-ms-asf"

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    const-string v1, "asx"

    .line 883
    .line 884
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    const-string/jumbo v1, "wm"

    .line 888
    .line 889
    .line 890
    const-string/jumbo v2, "video/x-ms-wm"

    .line 891
    .line 892
    .line 893
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    const-string/jumbo v1, "wmv"

    .line 897
    .line 898
    .line 899
    const-string/jumbo v2, "video/x-ms-wmv"

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    const-string/jumbo v1, "wmx"

    .line 906
    .line 907
    .line 908
    const-string/jumbo v2, "video/x-ms-wmx"

    .line 909
    .line 910
    .line 911
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    const-string/jumbo v1, "wvx"

    .line 915
    .line 916
    .line 917
    const-string/jumbo v2, "video/x-ms-wvx"

    .line 918
    .line 919
    .line 920
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    const-string v1, "avi"

    .line 924
    .line 925
    const-string/jumbo v2, "video/x-msvideo"

    .line 926
    .line 927
    .line 928
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    const-string v1, "movie"

    .line 932
    .line 933
    const-string/jumbo v2, "video/x-sgi-movie"

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    sput-object v0, Lcoil3/util/MimeTypesKt;->mimeTypeData:Lkotlin/collections/builders/MapBuilder;

    .line 944
    .line 945
    return-void
.end method
