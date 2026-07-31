.class public abstract Lcom/fsck/k9/ui/settings/AboutViewModelKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final USED_LIBRARIES:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 2
    .line 3
    const-string v1, "Android Jetpack libraries"

    .line 4
    .line 5
    const-string v2, "https://developer.android.com/jetpack"

    .line 6
    .line 7
    const-string v3, "Apache License, Version 2.0"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 13
    .line 14
    const-string v2, "AndroidX Preference extended"

    .line 15
    .line 16
    const-string v4, "https://github.com/takisoft/preferencex-android"

    .line 17
    .line 18
    invoke-direct {v1, v2, v4, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/fsck/k9/ui/settings/Library;

    .line 22
    .line 23
    const-string v4, "AppAuth for Android"

    .line 24
    .line 25
    const-string v5, "https://github.com/openid/AppAuth-Android"

    .line 26
    .line 27
    invoke-direct {v2, v4, v5, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lcom/fsck/k9/ui/settings/Library;

    .line 31
    .line 32
    const-string v5, "Apache HttpComponents"

    .line 33
    .line 34
    const-string v6, "https://hc.apache.org/"

    .line 35
    .line 36
    invoke-direct {v4, v5, v6, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Lcom/fsck/k9/ui/settings/Library;

    .line 40
    .line 41
    const-string v6, "AutoValue"

    .line 42
    .line 43
    const-string v7, "https://github.com/google/auto"

    .line 44
    .line 45
    invoke-direct {v5, v6, v7, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v6, Lcom/fsck/k9/ui/settings/Library;

    .line 49
    .line 50
    const-string v7, "CircleImageView"

    .line 51
    .line 52
    const-string v8, "https://github.com/hdodenhof/CircleImageView"

    .line 53
    .line 54
    invoke-direct {v6, v7, v8, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v7, Lcom/fsck/k9/ui/settings/Library;

    .line 58
    .line 59
    const-string v8, "ckChangeLog"

    .line 60
    .line 61
    const-string v9, "https://github.com/cketti/ckChangeLog"

    .line 62
    .line 63
    invoke-direct {v7, v8, v9, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v8, Lcom/fsck/k9/ui/settings/Library;

    .line 67
    .line 68
    const-string v9, "Commons IO"

    .line 69
    .line 70
    const-string v10, "https://commons.apache.org/io/"

    .line 71
    .line 72
    invoke-direct {v8, v9, v10, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v9, Lcom/fsck/k9/ui/settings/Library;

    .line 76
    .line 77
    const-string v10, "ColorPicker"

    .line 78
    .line 79
    const-string v11, "https://github.com/gregkorossy/ColorPicker"

    .line 80
    .line 81
    invoke-direct {v9, v10, v11, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v10, Lcom/fsck/k9/ui/settings/Library;

    .line 85
    .line 86
    const-string v11, "DateTimePicker"

    .line 87
    .line 88
    const-string v12, "https://github.com/gregkorossy/DateTimePicker"

    .line 89
    .line 90
    invoke-direct {v10, v11, v12, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v11, Lcom/fsck/k9/ui/settings/Library;

    .line 94
    .line 95
    const-string v12, "Error Prone annotations"

    .line 96
    .line 97
    const-string v13, "https://github.com/google/error-prone"

    .line 98
    .line 99
    invoke-direct {v11, v12, v13, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v12, Lcom/fsck/k9/ui/settings/Library;

    .line 103
    .line 104
    const-string v13, "FlexboxLayout"

    .line 105
    .line 106
    const-string v14, "https://github.com/google/flexbox-layout"

    .line 107
    .line 108
    invoke-direct {v12, v13, v14, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v13, Lcom/fsck/k9/ui/settings/Library;

    .line 112
    .line 113
    const-string v14, "FastAdapter"

    .line 114
    .line 115
    const-string v15, "https://github.com/mikepenz/FastAdapter"

    .line 116
    .line 117
    invoke-direct {v13, v14, v15, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v14, Lcom/fsck/k9/ui/settings/Library;

    .line 121
    .line 122
    const-string v15, "https://github.com/bumptech/glide"

    .line 123
    .line 124
    move-object/from16 v16, v0

    .line 125
    .line 126
    const-string v0, "BSD, part MIT and Apache 2.0"

    .line 127
    .line 128
    move-object/from16 v17, v1

    .line 129
    .line 130
    const-string v1, "Glide"

    .line 131
    .line 132
    invoke-direct {v14, v1, v15, v0}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 136
    .line 137
    const-string v1, "jsoup"

    .line 138
    .line 139
    const-string v15, "https://jsoup.org/"

    .line 140
    .line 141
    move-object/from16 v18, v2

    .line 142
    .line 143
    const-string v2, "MIT License"

    .line 144
    .line 145
    invoke-direct {v0, v1, v15, v2}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 149
    .line 150
    const-string v15, "jutf7"

    .line 151
    .line 152
    move-object/from16 v19, v0

    .line 153
    .line 154
    const-string v0, "http://jutf7.sourceforge.net/"

    .line 155
    .line 156
    invoke-direct {v1, v15, v0, v2}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 160
    .line 161
    const-string v15, "http://www.jcraft.com/jzlib/"

    .line 162
    .line 163
    move-object/from16 v20, v1

    .line 164
    .line 165
    const-string v1, "BSD-style License"

    .line 166
    .line 167
    move-object/from16 v21, v4

    .line 168
    .line 169
    const-string v4, "JZlib"

    .line 170
    .line 171
    invoke-direct {v0, v4, v15, v1}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 175
    .line 176
    const-string v4, "https://jcip.net/"

    .line 177
    .line 178
    const-string v15, "Public License"

    .line 179
    .line 180
    move-object/from16 v22, v0

    .line 181
    .line 182
    const-string v0, "jcip-annotations"

    .line 183
    .line 184
    invoke-direct {v1, v0, v4, v15}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 188
    .line 189
    const-string v4, "Jetbrains Annotations for JVM-based languages"

    .line 190
    .line 191
    const-string v15, "https://github.com/JetBrains/java-annotations"

    .line 192
    .line 193
    invoke-direct {v0, v4, v15, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    new-instance v4, Lcom/fsck/k9/ui/settings/Library;

    .line 197
    .line 198
    const-string v15, "Jetbrains Compose Runtime"

    .line 199
    .line 200
    move-object/from16 v23, v0

    .line 201
    .line 202
    const-string v0, "https://github.com/JetBrains/compose-multiplatform-core"

    .line 203
    .line 204
    invoke-direct {v4, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 208
    .line 209
    const-string v15, "Koin"

    .line 210
    .line 211
    move-object/from16 v24, v1

    .line 212
    .line 213
    const-string v1, "https://insert-koin.io/"

    .line 214
    .line 215
    invoke-direct {v0, v15, v1, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 219
    .line 220
    const-string v15, "Kotlin Android Extensions Runtime"

    .line 221
    .line 222
    move-object/from16 v25, v0

    .line 223
    .line 224
    const-string v0, "https://github.com/JetBrains/kotlin/tree/master/plugins/android-extensions/android-extensions-runtime"

    .line 225
    .line 226
    invoke-direct {v1, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 230
    .line 231
    const-string v15, "Kotlin Parcelize Runtime"

    .line 232
    .line 233
    move-object/from16 v26, v1

    .line 234
    .line 235
    const-string v1, "https://github.com/JetBrains/kotlin"

    .line 236
    .line 237
    invoke-direct {v0, v15, v1, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 241
    .line 242
    const-string v15, "Kotlin Standard Library"

    .line 243
    .line 244
    move-object/from16 v27, v0

    .line 245
    .line 246
    const-string v0, "https://kotlinlang.org/api/latest/jvm/stdlib/"

    .line 247
    .line 248
    invoke-direct {v1, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 252
    .line 253
    const-string v15, "KotlinX Coroutines"

    .line 254
    .line 255
    move-object/from16 v28, v1

    .line 256
    .line 257
    const-string v1, "https://github.com/Kotlin/kotlinx.coroutines"

    .line 258
    .line 259
    invoke-direct {v0, v15, v1, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 263
    .line 264
    const-string v15, "KotlinX DateTime"

    .line 265
    .line 266
    move-object/from16 v29, v0

    .line 267
    .line 268
    const-string v0, "https://github.com/Kotlin/kotlinx-datetime"

    .line 269
    .line 270
    invoke-direct {v1, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 274
    .line 275
    const-string v15, "KotlinX Immutable Collections"

    .line 276
    .line 277
    move-object/from16 v30, v1

    .line 278
    .line 279
    const-string v1, "https://github.com/Kotlin/kotlinx.collections.immutable"

    .line 280
    .line 281
    invoke-direct {v0, v15, v1, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 285
    .line 286
    const-string v15, "KotlinX Serialization"

    .line 287
    .line 288
    move-object/from16 v31, v0

    .line 289
    .line 290
    const-string v0, "https://github.com/Kotlin/kotlinx.serialization"

    .line 291
    .line 292
    invoke-direct {v1, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 296
    .line 297
    const-string v15, "ListenableFuture"

    .line 298
    .line 299
    move-object/from16 v32, v1

    .line 300
    .line 301
    const-string v1, "https://github.com/google/guava"

    .line 302
    .line 303
    invoke-direct {v0, v15, v1, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 307
    .line 308
    const-string v15, "Material Components for Android"

    .line 309
    .line 310
    move-object/from16 v33, v0

    .line 311
    .line 312
    const-string v0, "https://github.com/material-components/material-components-android"

    .line 313
    .line 314
    invoke-direct {v1, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 318
    .line 319
    const-string v15, "Mime4j"

    .line 320
    .line 321
    move-object/from16 v34, v1

    .line 322
    .line 323
    const-string v1, "https://james.apache.org/mime4j/"

    .line 324
    .line 325
    invoke-direct {v0, v15, v1, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 329
    .line 330
    const-string v15, "https://github.com/MiniDNS/minidns"

    .line 331
    .line 332
    move-object/from16 v35, v0

    .line 333
    .line 334
    const-string v0, "Multiple, Apache License, Version 2.0"

    .line 335
    .line 336
    move-object/from16 v36, v4

    .line 337
    .line 338
    const-string v4, "MiniDNS"

    .line 339
    .line 340
    invoke-direct {v1, v4, v15, v0}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 344
    .line 345
    const-string v4, "Moshi"

    .line 346
    .line 347
    const-string v15, "https://github.com/square/moshi"

    .line 348
    .line 349
    invoke-direct {v0, v4, v15, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    new-instance v4, Lcom/fsck/k9/ui/settings/Library;

    .line 353
    .line 354
    const-string v15, "OkHttp"

    .line 355
    .line 356
    move-object/from16 v37, v0

    .line 357
    .line 358
    const-string v0, "https://github.com/square/okhttp"

    .line 359
    .line 360
    invoke-direct {v4, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 364
    .line 365
    const-string v15, "Okio"

    .line 366
    .line 367
    move-object/from16 v38, v1

    .line 368
    .line 369
    const-string v1, "https://github.com/square/okio"

    .line 370
    .line 371
    invoke-direct {v0, v15, v1, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 375
    .line 376
    const-string v15, "SafeContentResolver"

    .line 377
    .line 378
    move-object/from16 v39, v0

    .line 379
    .line 380
    const-string v0, "https://github.com/cketti/SafeContentResolver"

    .line 381
    .line 382
    invoke-direct {v1, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 386
    .line 387
    const-string v15, "SearchPreference"

    .line 388
    .line 389
    move-object/from16 v40, v1

    .line 390
    .line 391
    const-string v1, "https://github.com/ByteHamster/SearchPreference"

    .line 392
    .line 393
    invoke-direct {v0, v15, v1, v2}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 397
    .line 398
    const-string v15, "SLF4J"

    .line 399
    .line 400
    move-object/from16 v41, v0

    .line 401
    .line 402
    const-string v0, "https://www.slf4j.org/"

    .line 403
    .line 404
    invoke-direct {v1, v15, v0, v2}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 408
    .line 409
    const-string v2, "Stately"

    .line 410
    .line 411
    const-string v15, "https://github.com/touchlab/Stately"

    .line 412
    .line 413
    invoke-direct {v0, v2, v15, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    new-instance v2, Lcom/fsck/k9/ui/settings/Library;

    .line 417
    .line 418
    const-string v15, "Timber"

    .line 419
    .line 420
    move-object/from16 v42, v0

    .line 421
    .line 422
    const-string v0, "https://github.com/JakeWharton/timber"

    .line 423
    .line 424
    invoke-direct {v2, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    new-instance v0, Lcom/fsck/k9/ui/settings/Library;

    .line 428
    .line 429
    const-string v15, "TokenAutoComplete"

    .line 430
    .line 431
    move-object/from16 v43, v1

    .line 432
    .line 433
    const-string v1, "https://github.com/splitwise/TokenAutoComplete/"

    .line 434
    .line 435
    invoke-direct {v0, v15, v1, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    new-instance v1, Lcom/fsck/k9/ui/settings/Library;

    .line 439
    .line 440
    const-string v15, "ZXing"

    .line 441
    .line 442
    move-object/from16 v44, v0

    .line 443
    .line 444
    const-string v0, "https://github.com/zxing/zxing"

    .line 445
    .line 446
    invoke-direct {v1, v15, v0, v3}, Lcom/fsck/k9/ui/settings/Library;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const/16 v0, 0x2a

    .line 450
    .line 451
    new-array v0, v0, [Lcom/fsck/k9/ui/settings/Library;

    .line 452
    .line 453
    const/4 v3, 0x0

    .line 454
    aput-object v16, v0, v3

    .line 455
    .line 456
    const/4 v3, 0x1

    .line 457
    aput-object v17, v0, v3

    .line 458
    .line 459
    const/4 v3, 0x2

    .line 460
    aput-object v18, v0, v3

    .line 461
    .line 462
    const/4 v3, 0x3

    .line 463
    aput-object v21, v0, v3

    .line 464
    .line 465
    const/4 v3, 0x4

    .line 466
    aput-object v5, v0, v3

    .line 467
    .line 468
    const/4 v3, 0x5

    .line 469
    aput-object v6, v0, v3

    .line 470
    .line 471
    const/4 v3, 0x6

    .line 472
    aput-object v7, v0, v3

    .line 473
    .line 474
    const/4 v3, 0x7

    .line 475
    aput-object v8, v0, v3

    .line 476
    .line 477
    const/16 v3, 0x8

    .line 478
    .line 479
    aput-object v9, v0, v3

    .line 480
    .line 481
    const/16 v3, 0x9

    .line 482
    .line 483
    aput-object v10, v0, v3

    .line 484
    .line 485
    const/16 v3, 0xa

    .line 486
    .line 487
    aput-object v11, v0, v3

    .line 488
    .line 489
    const/16 v3, 0xb

    .line 490
    .line 491
    aput-object v12, v0, v3

    .line 492
    .line 493
    const/16 v3, 0xc

    .line 494
    .line 495
    aput-object v13, v0, v3

    .line 496
    .line 497
    const/16 v3, 0xd

    .line 498
    .line 499
    aput-object v14, v0, v3

    .line 500
    .line 501
    const/16 v3, 0xe

    .line 502
    .line 503
    aput-object v19, v0, v3

    .line 504
    .line 505
    const/16 v3, 0xf

    .line 506
    .line 507
    aput-object v20, v0, v3

    .line 508
    .line 509
    const/16 v3, 0x10

    .line 510
    .line 511
    aput-object v22, v0, v3

    .line 512
    .line 513
    const/16 v3, 0x11

    .line 514
    .line 515
    aput-object v24, v0, v3

    .line 516
    .line 517
    const/16 v3, 0x12

    .line 518
    .line 519
    aput-object v23, v0, v3

    .line 520
    .line 521
    const/16 v3, 0x13

    .line 522
    .line 523
    aput-object v36, v0, v3

    .line 524
    .line 525
    const/16 v3, 0x14

    .line 526
    .line 527
    aput-object v25, v0, v3

    .line 528
    .line 529
    const/16 v3, 0x15

    .line 530
    .line 531
    aput-object v26, v0, v3

    .line 532
    .line 533
    const/16 v3, 0x16

    .line 534
    .line 535
    aput-object v27, v0, v3

    .line 536
    .line 537
    const/16 v3, 0x17

    .line 538
    .line 539
    aput-object v28, v0, v3

    .line 540
    .line 541
    const/16 v3, 0x18

    .line 542
    .line 543
    aput-object v29, v0, v3

    .line 544
    .line 545
    const/16 v3, 0x19

    .line 546
    .line 547
    aput-object v30, v0, v3

    .line 548
    .line 549
    const/16 v3, 0x1a

    .line 550
    .line 551
    aput-object v31, v0, v3

    .line 552
    .line 553
    const/16 v3, 0x1b

    .line 554
    .line 555
    aput-object v32, v0, v3

    .line 556
    .line 557
    const/16 v3, 0x1c

    .line 558
    .line 559
    aput-object v33, v0, v3

    .line 560
    .line 561
    const/16 v3, 0x1d

    .line 562
    .line 563
    aput-object v34, v0, v3

    .line 564
    .line 565
    const/16 v3, 0x1e

    .line 566
    .line 567
    aput-object v35, v0, v3

    .line 568
    .line 569
    const/16 v3, 0x1f

    .line 570
    .line 571
    aput-object v38, v0, v3

    .line 572
    .line 573
    const/16 v3, 0x20

    .line 574
    .line 575
    aput-object v37, v0, v3

    .line 576
    .line 577
    const/16 v3, 0x21

    .line 578
    .line 579
    aput-object v4, v0, v3

    .line 580
    .line 581
    const/16 v3, 0x22

    .line 582
    .line 583
    aput-object v39, v0, v3

    .line 584
    .line 585
    const/16 v3, 0x23

    .line 586
    .line 587
    aput-object v40, v0, v3

    .line 588
    .line 589
    const/16 v3, 0x24

    .line 590
    .line 591
    aput-object v41, v0, v3

    .line 592
    .line 593
    const/16 v3, 0x25

    .line 594
    .line 595
    aput-object v43, v0, v3

    .line 596
    .line 597
    const/16 v3, 0x26

    .line 598
    .line 599
    aput-object v42, v0, v3

    .line 600
    .line 601
    const/16 v3, 0x27

    .line 602
    .line 603
    aput-object v2, v0, v3

    .line 604
    .line 605
    const/16 v2, 0x28

    .line 606
    .line 607
    aput-object v44, v0, v2

    .line 608
    .line 609
    const/16 v2, 0x29

    .line 610
    .line 611
    aput-object v1, v0, v2

    .line 612
    .line 613
    invoke-static {v0}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    sput-object v0, Lcom/fsck/k9/ui/settings/AboutViewModelKt;->USED_LIBRARIES:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 618
    .line 619
    return-void
.end method
