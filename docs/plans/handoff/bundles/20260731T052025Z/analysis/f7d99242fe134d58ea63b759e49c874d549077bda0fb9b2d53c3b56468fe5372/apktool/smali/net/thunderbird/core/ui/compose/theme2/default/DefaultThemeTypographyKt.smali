.class public abstract Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeTypographyKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final defaultTypography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;


# direct methods
.method static constructor <clinit>()V
    .locals 54

    .line 1
    new-instance v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 2
    .line 3
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    const/16 v1, 0x40

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v10

    .line 17
    const-wide v1, -0x4036666666666666L    # -0.2

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const v12, 0xfdff59

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 35
    .line 36
    .line 37
    move-object v13, v1

    .line 38
    const/16 v1, 0x2d

    .line 39
    .line 40
    invoke-static {v1}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    const/16 v1, 0x34

    .line 45
    .line 46
    invoke-static {v1}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v10

    .line 50
    const/4 v14, 0x0

    .line 51
    invoke-static {v14}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 56
    .line 57
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 58
    .line 59
    .line 60
    move-object v15, v1

    .line 61
    const/16 v16, 0x24

    .line 62
    .line 63
    invoke-static/range {v16 .. v16}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    const/16 v1, 0x2c

    .line 68
    .line 69
    invoke-static {v1}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 70
    .line 71
    .line 72
    move-result-wide v10

    .line 73
    invoke-static {v14}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 78
    .line 79
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 80
    .line 81
    .line 82
    move-object/from16 v17, v1

    .line 83
    .line 84
    const/16 v18, 0x20

    .line 85
    .line 86
    invoke-static/range {v18 .. v18}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    const/16 v1, 0x28

    .line 91
    .line 92
    invoke-static {v1}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v10

    .line 96
    invoke-static {v14}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 101
    .line 102
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 103
    .line 104
    .line 105
    move-object/from16 v19, v1

    .line 106
    .line 107
    const/16 v20, 0x1c

    .line 108
    .line 109
    invoke-static/range {v20 .. v20}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    invoke-static/range {v16 .. v16}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 114
    .line 115
    .line 116
    move-result-wide v10

    .line 117
    invoke-static {v14}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 118
    .line 119
    .line 120
    move-result-wide v7

    .line 121
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 122
    .line 123
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 124
    .line 125
    .line 126
    move-object/from16 v16, v1

    .line 127
    .line 128
    const/16 v21, 0x18

    .line 129
    .line 130
    invoke-static/range {v21 .. v21}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    invoke-static/range {v18 .. v18}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v10

    .line 138
    invoke-static {v14}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 143
    .line 144
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 145
    .line 146
    .line 147
    move-object/from16 v18, v1

    .line 148
    .line 149
    const/16 v1, 0x16

    .line 150
    .line 151
    invoke-static {v1}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    invoke-static/range {v20 .. v20}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 156
    .line 157
    .line 158
    move-result-wide v10

    .line 159
    invoke-static {v14}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 164
    .line 165
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 166
    .line 167
    .line 168
    move-object v14, v1

    .line 169
    sget-object v27, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 170
    .line 171
    const/16 v20, 0x10

    .line 172
    .line 173
    invoke-static/range {v20 .. v20}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v25

    .line 177
    invoke-static/range {v21 .. v21}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v31

    .line 181
    const-wide v34, 0x3fc999999999999aL    # 0.2

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    invoke-static/range {v34 .. v35}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 187
    .line 188
    .line 189
    move-result-wide v28

    .line 190
    new-instance v22, Landroidx/compose/ui/text/TextStyle;

    .line 191
    .line 192
    const/16 v30, 0x0

    .line 193
    .line 194
    const v33, 0xfdff59

    .line 195
    .line 196
    .line 197
    const-wide/16 v23, 0x0

    .line 198
    .line 199
    invoke-direct/range {v22 .. v33}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 200
    .line 201
    .line 202
    move-object/from16 v36, v22

    .line 203
    .line 204
    const/16 v37, 0xe

    .line 205
    .line 206
    invoke-static/range {v37 .. v37}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 207
    .line 208
    .line 209
    move-result-wide v25

    .line 210
    const/16 v38, 0x14

    .line 211
    .line 212
    invoke-static/range {v38 .. v38}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 213
    .line 214
    .line 215
    move-result-wide v31

    .line 216
    const-wide v39, 0x3fb999999999999aL    # 0.1

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    invoke-static/range {v39 .. v40}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 222
    .line 223
    .line 224
    move-result-wide v28

    .line 225
    new-instance v22, Landroidx/compose/ui/text/TextStyle;

    .line 226
    .line 227
    invoke-direct/range {v22 .. v33}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 228
    .line 229
    .line 230
    invoke-static/range {v20 .. v20}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 231
    .line 232
    .line 233
    move-result-wide v4

    .line 234
    invoke-static/range {v21 .. v21}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 235
    .line 236
    .line 237
    move-result-wide v10

    .line 238
    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    .line 239
    .line 240
    invoke-static/range {v23 .. v24}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 241
    .line 242
    .line 243
    move-result-wide v7

    .line 244
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 245
    .line 246
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 247
    .line 248
    .line 249
    move-object/from16 v21, v1

    .line 250
    .line 251
    invoke-static/range {v37 .. v37}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 252
    .line 253
    .line 254
    move-result-wide v4

    .line 255
    invoke-static/range {v38 .. v38}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 256
    .line 257
    .line 258
    move-result-wide v10

    .line 259
    invoke-static/range {v34 .. v35}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 260
    .line 261
    .line 262
    move-result-wide v7

    .line 263
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 264
    .line 265
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 266
    .line 267
    .line 268
    move-object/from16 v25, v1

    .line 269
    .line 270
    const/16 v26, 0xc

    .line 271
    .line 272
    invoke-static/range {v26 .. v26}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 273
    .line 274
    .line 275
    move-result-wide v4

    .line 276
    invoke-static/range {v20 .. v20}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 277
    .line 278
    .line 279
    move-result-wide v10

    .line 280
    const-wide v1, 0x3fd999999999999aL    # 0.4

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    invoke-static {v1, v2}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 286
    .line 287
    .line 288
    move-result-wide v7

    .line 289
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    .line 290
    .line 291
    const-wide/16 v2, 0x0

    .line 292
    .line 293
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 294
    .line 295
    .line 296
    sget-object v46, Landroidx/compose/ui/text/font/FontWeight;->SemiBold:Landroidx/compose/ui/text/font/FontWeight;

    .line 297
    .line 298
    invoke-static/range {v37 .. v37}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 299
    .line 300
    .line 301
    move-result-wide v44

    .line 302
    invoke-static/range {v38 .. v38}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 303
    .line 304
    .line 305
    move-result-wide v50

    .line 306
    invoke-static/range {v39 .. v40}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 307
    .line 308
    .line 309
    move-result-wide v47

    .line 310
    new-instance v41, Landroidx/compose/ui/text/TextStyle;

    .line 311
    .line 312
    const/16 v49, 0x0

    .line 313
    .line 314
    const v52, 0xfdff59

    .line 315
    .line 316
    .line 317
    const-wide/16 v42, 0x0

    .line 318
    .line 319
    invoke-direct/range {v41 .. v52}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 320
    .line 321
    .line 322
    sget-object v47, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 323
    .line 324
    invoke-static/range {v26 .. v26}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v45

    .line 328
    invoke-static/range {v20 .. v20}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 329
    .line 330
    .line 331
    move-result-wide v51

    .line 332
    invoke-static/range {v23 .. v24}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 333
    .line 334
    .line 335
    move-result-wide v48

    .line 336
    new-instance v42, Landroidx/compose/ui/text/TextStyle;

    .line 337
    .line 338
    const/16 v50, 0x0

    .line 339
    .line 340
    const v53, 0xfdff59

    .line 341
    .line 342
    .line 343
    const-wide/16 v43, 0x0

    .line 344
    .line 345
    invoke-direct/range {v42 .. v53}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 346
    .line 347
    .line 348
    move-object v7, v14

    .line 349
    move-object/from16 v14, v42

    .line 350
    .line 351
    const/16 v2, 0xb

    .line 352
    .line 353
    invoke-static {v2}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 354
    .line 355
    .line 356
    move-result-wide v45

    .line 357
    invoke-static/range {v20 .. v20}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 358
    .line 359
    .line 360
    move-result-wide v51

    .line 361
    invoke-static/range {v23 .. v24}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 362
    .line 363
    .line 364
    move-result-wide v48

    .line 365
    new-instance v42, Landroidx/compose/ui/text/TextStyle;

    .line 366
    .line 367
    invoke-direct/range {v42 .. v53}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 368
    .line 369
    .line 370
    move-object v12, v1

    .line 371
    move-object v1, v13

    .line 372
    move-object v2, v15

    .line 373
    move-object/from16 v5, v16

    .line 374
    .line 375
    move-object/from16 v3, v17

    .line 376
    .line 377
    move-object/from16 v6, v18

    .line 378
    .line 379
    move-object/from16 v4, v19

    .line 380
    .line 381
    move-object/from16 v10, v21

    .line 382
    .line 383
    move-object/from16 v9, v22

    .line 384
    .line 385
    move-object/from16 v11, v25

    .line 386
    .line 387
    move-object/from16 v8, v36

    .line 388
    .line 389
    move-object/from16 v13, v41

    .line 390
    .line 391
    move-object/from16 v15, v42

    .line 392
    .line 393
    invoke-direct/range {v0 .. v15}, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V

    .line 394
    .line 395
    .line 396
    sput-object v0, Lnet/thunderbird/core/ui/compose/theme2/default/DefaultThemeTypographyKt;->defaultTypography:Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 397
    .line 398
    return-void
.end method
