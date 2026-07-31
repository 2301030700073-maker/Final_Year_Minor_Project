.class public abstract Lnet/newpipe/app/theme/ThemeKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final blackScheme:Landroidx/compose/material3/ColorScheme;

.field public static final darkScheme:Landroidx/compose/material3/ColorScheme;

.field public static final lightScheme:Landroidx/compose/material3/ColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 98

    .line 1
    sget-wide v1, Lnet/newpipe/app/theme/ColorKt;->primaryLight:J

    .line 2
    .line 3
    sget-wide v3, Lnet/newpipe/app/theme/ColorKt;->onPrimaryLight:J

    .line 4
    .line 5
    sget-wide v5, Lnet/newpipe/app/theme/ColorKt;->primaryContainerLight:J

    .line 6
    .line 7
    sget-wide v7, Lnet/newpipe/app/theme/ColorKt;->onPrimaryContainerLight:J

    .line 8
    .line 9
    sget-wide v11, Lnet/newpipe/app/theme/ColorKt;->secondaryLight:J

    .line 10
    .line 11
    sget-wide v13, Lnet/newpipe/app/theme/ColorKt;->onSecondaryLight:J

    .line 12
    .line 13
    sget-wide v15, Lnet/newpipe/app/theme/ColorKt;->secondaryContainerLight:J

    .line 14
    .line 15
    sget-wide v17, Lnet/newpipe/app/theme/ColorKt;->onSecondaryContainerLight:J

    .line 16
    .line 17
    sget-wide v19, Lnet/newpipe/app/theme/ColorKt;->tertiaryLight:J

    .line 18
    .line 19
    sget-wide v21, Lnet/newpipe/app/theme/ColorKt;->onTertiaryLight:J

    .line 20
    .line 21
    sget-wide v23, Lnet/newpipe/app/theme/ColorKt;->tertiaryContainerLight:J

    .line 22
    .line 23
    sget-wide v25, Lnet/newpipe/app/theme/ColorKt;->onTertiaryContainerLight:J

    .line 24
    .line 25
    sget-wide v43, Lnet/newpipe/app/theme/ColorKt;->errorLight:J

    .line 26
    .line 27
    sget-wide v45, Lnet/newpipe/app/theme/ColorKt;->onErrorLight:J

    .line 28
    .line 29
    sget-wide v47, Lnet/newpipe/app/theme/ColorKt;->errorContainerLight:J

    .line 30
    .line 31
    sget-wide v49, Lnet/newpipe/app/theme/ColorKt;->onErrorContainerLight:J

    .line 32
    .line 33
    sget-wide v27, Lnet/newpipe/app/theme/ColorKt;->backgroundLight:J

    .line 34
    .line 35
    sget-wide v29, Lnet/newpipe/app/theme/ColorKt;->onBackgroundLight:J

    .line 36
    .line 37
    sget-wide v31, Lnet/newpipe/app/theme/ColorKt;->surfaceLight:J

    .line 38
    .line 39
    sget-wide v33, Lnet/newpipe/app/theme/ColorKt;->onSurfaceLight:J

    .line 40
    .line 41
    sget-wide v35, Lnet/newpipe/app/theme/ColorKt;->surfaceVariantLight:J

    .line 42
    .line 43
    sget-wide v37, Lnet/newpipe/app/theme/ColorKt;->onSurfaceVariantLight:J

    .line 44
    .line 45
    sget-wide v51, Lnet/newpipe/app/theme/ColorKt;->outlineLight:J

    .line 46
    .line 47
    sget-wide v53, Lnet/newpipe/app/theme/ColorKt;->outlineVariantLight:J

    .line 48
    .line 49
    sget-wide v55, Lnet/newpipe/app/theme/ColorKt;->scrimLight:J

    .line 50
    .line 51
    sget-wide v39, Lnet/newpipe/app/theme/ColorKt;->inverseSurfaceLight:J

    .line 52
    .line 53
    sget-wide v41, Lnet/newpipe/app/theme/ColorKt;->inverseOnSurfaceLight:J

    .line 54
    .line 55
    sget-wide v9, Lnet/newpipe/app/theme/ColorKt;->inversePrimaryLight:J

    .line 56
    .line 57
    sget-wide v69, Lnet/newpipe/app/theme/ColorKt;->surfaceDimLight:J

    .line 58
    .line 59
    sget-wide v57, Lnet/newpipe/app/theme/ColorKt;->surfaceBrightLight:J

    .line 60
    .line 61
    sget-wide v67, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerLowestLight:J

    .line 62
    .line 63
    sget-wide v65, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerLowLight:J

    .line 64
    .line 65
    sget-wide v59, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerLight:J

    .line 66
    .line 67
    sget-wide v61, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerHighLight:J

    .line 68
    .line 69
    sget-wide v63, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerHighestLight:J

    .line 70
    .line 71
    const/high16 v71, 0x80000

    .line 72
    .line 73
    const v72, 0xfff0

    .line 74
    .line 75
    .line 76
    invoke-static/range {v1 .. v72}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-_VG5OTI$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Landroidx/compose/material3/ColorScheme;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lnet/newpipe/app/theme/ThemeKt;->lightScheme:Landroidx/compose/material3/ColorScheme;

    .line 81
    .line 82
    sget-wide v1, Lnet/newpipe/app/theme/ColorKt;->primaryDark:J

    .line 83
    .line 84
    sget-wide v3, Lnet/newpipe/app/theme/ColorKt;->onPrimaryDark:J

    .line 85
    .line 86
    sget-wide v5, Lnet/newpipe/app/theme/ColorKt;->primaryContainerDark:J

    .line 87
    .line 88
    sget-wide v7, Lnet/newpipe/app/theme/ColorKt;->onPrimaryContainerDark:J

    .line 89
    .line 90
    sget-wide v11, Lnet/newpipe/app/theme/ColorKt;->secondaryDark:J

    .line 91
    .line 92
    sget-wide v13, Lnet/newpipe/app/theme/ColorKt;->onSecondaryDark:J

    .line 93
    .line 94
    sget-wide v15, Lnet/newpipe/app/theme/ColorKt;->secondaryContainerDark:J

    .line 95
    .line 96
    sget-wide v17, Lnet/newpipe/app/theme/ColorKt;->onSecondaryContainerDark:J

    .line 97
    .line 98
    sget-wide v19, Lnet/newpipe/app/theme/ColorKt;->tertiaryDark:J

    .line 99
    .line 100
    sget-wide v21, Lnet/newpipe/app/theme/ColorKt;->onTertiaryDark:J

    .line 101
    .line 102
    sget-wide v23, Lnet/newpipe/app/theme/ColorKt;->tertiaryContainerDark:J

    .line 103
    .line 104
    sget-wide v25, Lnet/newpipe/app/theme/ColorKt;->onTertiaryContainerDark:J

    .line 105
    .line 106
    sget-wide v43, Lnet/newpipe/app/theme/ColorKt;->errorDark:J

    .line 107
    .line 108
    sget-wide v45, Lnet/newpipe/app/theme/ColorKt;->onErrorDark:J

    .line 109
    .line 110
    sget-wide v47, Lnet/newpipe/app/theme/ColorKt;->errorContainerDark:J

    .line 111
    .line 112
    sget-wide v49, Lnet/newpipe/app/theme/ColorKt;->onErrorContainerDark:J

    .line 113
    .line 114
    sget-wide v27, Lnet/newpipe/app/theme/ColorKt;->backgroundDark:J

    .line 115
    .line 116
    sget-wide v29, Lnet/newpipe/app/theme/ColorKt;->onBackgroundDark:J

    .line 117
    .line 118
    sget-wide v31, Lnet/newpipe/app/theme/ColorKt;->surfaceDark:J

    .line 119
    .line 120
    sget-wide v33, Lnet/newpipe/app/theme/ColorKt;->onSurfaceDark:J

    .line 121
    .line 122
    sget-wide v35, Lnet/newpipe/app/theme/ColorKt;->surfaceVariantDark:J

    .line 123
    .line 124
    sget-wide v37, Lnet/newpipe/app/theme/ColorKt;->onSurfaceVariantDark:J

    .line 125
    .line 126
    sget-wide v51, Lnet/newpipe/app/theme/ColorKt;->outlineDark:J

    .line 127
    .line 128
    sget-wide v53, Lnet/newpipe/app/theme/ColorKt;->outlineVariantDark:J

    .line 129
    .line 130
    sget-wide v55, Lnet/newpipe/app/theme/ColorKt;->scrimDark:J

    .line 131
    .line 132
    sget-wide v39, Lnet/newpipe/app/theme/ColorKt;->inverseSurfaceDark:J

    .line 133
    .line 134
    sget-wide v41, Lnet/newpipe/app/theme/ColorKt;->inverseOnSurfaceDark:J

    .line 135
    .line 136
    sget-wide v9, Lnet/newpipe/app/theme/ColorKt;->inversePrimaryDark:J

    .line 137
    .line 138
    sget-wide v69, Lnet/newpipe/app/theme/ColorKt;->surfaceDimDark:J

    .line 139
    .line 140
    sget-wide v57, Lnet/newpipe/app/theme/ColorKt;->surfaceBrightDark:J

    .line 141
    .line 142
    sget-wide v67, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerLowestDark:J

    .line 143
    .line 144
    sget-wide v65, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerLowDark:J

    .line 145
    .line 146
    sget-wide v59, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerDark:J

    .line 147
    .line 148
    sget-wide v61, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerHighDark:J

    .line 149
    .line 150
    sget-wide v63, Lnet/newpipe/app/theme/ColorKt;->surfaceContainerHighestDark:J

    .line 151
    .line 152
    invoke-static/range {v1 .. v72}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-_VG5OTI$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Landroidx/compose/material3/ColorScheme;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    sput-object v0, Lnet/newpipe/app/theme/ThemeKt;->darkScheme:Landroidx/compose/material3/ColorScheme;

    .line 157
    .line 158
    sget-wide v32, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 159
    .line 160
    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->primary:J

    .line 161
    .line 162
    iget-wide v4, v0, Landroidx/compose/material3/ColorScheme;->onPrimary:J

    .line 163
    .line 164
    iget-wide v6, v0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    .line 165
    .line 166
    iget-wide v8, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    .line 167
    .line 168
    iget-wide v10, v0, Landroidx/compose/material3/ColorScheme;->inversePrimary:J

    .line 169
    .line 170
    iget-wide v12, v0, Landroidx/compose/material3/ColorScheme;->secondary:J

    .line 171
    .line 172
    iget-wide v14, v0, Landroidx/compose/material3/ColorScheme;->onSecondary:J

    .line 173
    .line 174
    move-wide/from16 v16, v2

    .line 175
    .line 176
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    .line 177
    .line 178
    move-wide/from16 v18, v1

    .line 179
    .line 180
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryContainer:J

    .line 181
    .line 182
    move-wide/from16 v20, v1

    .line 183
    .line 184
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiary:J

    .line 185
    .line 186
    move-wide/from16 v22, v1

    .line 187
    .line 188
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onTertiary:J

    .line 189
    .line 190
    move-wide/from16 v24, v1

    .line 191
    .line 192
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    .line 193
    .line 194
    move-wide/from16 v26, v1

    .line 195
    .line 196
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    .line 197
    .line 198
    move-wide/from16 v28, v1

    .line 199
    .line 200
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->background:J

    .line 201
    .line 202
    move-wide/from16 v30, v1

    .line 203
    .line 204
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onBackground:J

    .line 205
    .line 206
    move-wide/from16 v34, v1

    .line 207
    .line 208
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurface:J

    .line 209
    .line 210
    move-wide/from16 v36, v1

    .line 211
    .line 212
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    .line 213
    .line 214
    move-wide/from16 v38, v1

    .line 215
    .line 216
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    .line 217
    .line 218
    move-wide/from16 v40, v1

    .line 219
    .line 220
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    .line 221
    .line 222
    move-wide/from16 v42, v1

    .line 223
    .line 224
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    .line 225
    .line 226
    move-wide/from16 v44, v1

    .line 227
    .line 228
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    .line 229
    .line 230
    move-wide/from16 v46, v1

    .line 231
    .line 232
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->error:J

    .line 233
    .line 234
    move-wide/from16 v48, v1

    .line 235
    .line 236
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onError:J

    .line 237
    .line 238
    move-wide/from16 v50, v1

    .line 239
    .line 240
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->errorContainer:J

    .line 241
    .line 242
    move-wide/from16 v52, v1

    .line 243
    .line 244
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onErrorContainer:J

    .line 245
    .line 246
    move-wide/from16 v54, v1

    .line 247
    .line 248
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outline:J

    .line 249
    .line 250
    move-wide/from16 v56, v1

    .line 251
    .line 252
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    .line 253
    .line 254
    move-wide/from16 v58, v1

    .line 255
    .line 256
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->scrim:J

    .line 257
    .line 258
    move-wide/from16 v60, v1

    .line 259
    .line 260
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceBright:J

    .line 261
    .line 262
    move-wide/from16 v62, v1

    .line 263
    .line 264
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceDim:J

    .line 265
    .line 266
    move-wide/from16 v64, v1

    .line 267
    .line 268
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    .line 269
    .line 270
    move-wide/from16 v66, v1

    .line 271
    .line 272
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHigh:J

    .line 273
    .line 274
    move-wide/from16 v68, v1

    .line 275
    .line 276
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerHighest:J

    .line 277
    .line 278
    move-wide/from16 v70, v1

    .line 279
    .line 280
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    .line 281
    .line 282
    move-wide/from16 v72, v1

    .line 283
    .line 284
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->surfaceContainerLowest:J

    .line 285
    .line 286
    move-wide/from16 v74, v1

    .line 287
    .line 288
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primaryFixed:J

    .line 289
    .line 290
    move-wide/from16 v76, v1

    .line 291
    .line 292
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->primaryFixedDim:J

    .line 293
    .line 294
    move-wide/from16 v78, v1

    .line 295
    .line 296
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixed:J

    .line 297
    .line 298
    move-wide/from16 v80, v1

    .line 299
    .line 300
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onPrimaryFixedVariant:J

    .line 301
    .line 302
    move-wide/from16 v82, v1

    .line 303
    .line 304
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondaryFixed:J

    .line 305
    .line 306
    move-wide/from16 v84, v1

    .line 307
    .line 308
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->secondaryFixedDim:J

    .line 309
    .line 310
    move-wide/from16 v86, v1

    .line 311
    .line 312
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixed:J

    .line 313
    .line 314
    move-wide/from16 v88, v1

    .line 315
    .line 316
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onSecondaryFixedVariant:J

    .line 317
    .line 318
    move-wide/from16 v90, v1

    .line 319
    .line 320
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiaryFixed:J

    .line 321
    .line 322
    move-wide/from16 v92, v1

    .line 323
    .line 324
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->tertiaryFixedDim:J

    .line 325
    .line 326
    move-wide/from16 v94, v1

    .line 327
    .line 328
    iget-wide v1, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixed:J

    .line 329
    .line 330
    move-wide/from16 v96, v1

    .line 331
    .line 332
    iget-wide v0, v0, Landroidx/compose/material3/ColorScheme;->onTertiaryFixedVariant:J

    .line 333
    .line 334
    move-wide/from16 v2, v16

    .line 335
    .line 336
    move-wide/from16 v16, v18

    .line 337
    .line 338
    move-wide/from16 v18, v20

    .line 339
    .line 340
    move-wide/from16 v20, v22

    .line 341
    .line 342
    move-wide/from16 v22, v24

    .line 343
    .line 344
    move-wide/from16 v24, v26

    .line 345
    .line 346
    move-wide/from16 v26, v28

    .line 347
    .line 348
    move-wide/from16 v28, v30

    .line 349
    .line 350
    move-wide/from16 v30, v34

    .line 351
    .line 352
    move-wide/from16 v34, v36

    .line 353
    .line 354
    move-wide/from16 v36, v38

    .line 355
    .line 356
    move-wide/from16 v38, v40

    .line 357
    .line 358
    move-wide/from16 v40, v42

    .line 359
    .line 360
    move-wide/from16 v42, v44

    .line 361
    .line 362
    move-wide/from16 v44, v46

    .line 363
    .line 364
    move-wide/from16 v46, v48

    .line 365
    .line 366
    move-wide/from16 v48, v50

    .line 367
    .line 368
    move-wide/from16 v50, v52

    .line 369
    .line 370
    move-wide/from16 v52, v54

    .line 371
    .line 372
    move-wide/from16 v54, v56

    .line 373
    .line 374
    move-wide/from16 v56, v58

    .line 375
    .line 376
    move-wide/from16 v58, v60

    .line 377
    .line 378
    move-wide/from16 v60, v62

    .line 379
    .line 380
    move-wide/from16 v62, v64

    .line 381
    .line 382
    move-wide/from16 v64, v66

    .line 383
    .line 384
    move-wide/from16 v66, v68

    .line 385
    .line 386
    move-wide/from16 v68, v70

    .line 387
    .line 388
    move-wide/from16 v70, v72

    .line 389
    .line 390
    move-wide/from16 v72, v74

    .line 391
    .line 392
    move-wide/from16 v74, v76

    .line 393
    .line 394
    move-wide/from16 v76, v78

    .line 395
    .line 396
    move-wide/from16 v78, v80

    .line 397
    .line 398
    move-wide/from16 v80, v82

    .line 399
    .line 400
    move-wide/from16 v82, v84

    .line 401
    .line 402
    move-wide/from16 v84, v86

    .line 403
    .line 404
    move-wide/from16 v86, v88

    .line 405
    .line 406
    move-wide/from16 v88, v90

    .line 407
    .line 408
    move-wide/from16 v90, v92

    .line 409
    .line 410
    move-wide/from16 v92, v94

    .line 411
    .line 412
    move-wide/from16 v94, v96

    .line 413
    .line 414
    move-wide/from16 v96, v0

    .line 415
    .line 416
    new-instance v1, Landroidx/compose/material3/ColorScheme;

    .line 417
    .line 418
    invoke-direct/range {v1 .. v97}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 419
    .line 420
    .line 421
    sput-object v1, Lnet/newpipe/app/theme/ThemeKt;->blackScheme:Landroidx/compose/material3/ColorScheme;

    .line 422
    .line 423
    return-void
.end method

.method public static final AppTheme(ZLandroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x2d756979

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    or-int/lit8 v0, p4, 0x12

    .line 10
    .line 11
    and-int/lit16 v1, v0, 0x93

    .line 12
    .line 13
    const/16 v2, 0x92

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    move v1, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v3

    .line 22
    :goto_0
    and-int/2addr v0, v4

    .line 23
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_11

    .line 28
    .line 29
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 30
    .line 31
    .line 32
    and-int/lit8 v0, p4, 0x1

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_2
    :goto_1
    sget-object p0, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 49
    .line 50
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    sget-object p1, Lnet/newpipe/app/theme/ThemeKt;->lightScheme:Landroidx/compose/material3/ColorScheme;

    .line 61
    .line 62
    sget-object v0, Lnet/newpipe/app/theme/ThemeKt;->darkScheme:Landroidx/compose/material3/ColorScheme;

    .line 63
    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    const v1, 0x5a3f20dd

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {p3}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    move-object p1, v0

    .line 79
    :cond_3
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_4
    const v1, 0x5a3f299b

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {p3}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-static {p3}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    or-int/2addr v5, v6

    .line 108
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-nez v5, :cond_5

    .line 113
    .line 114
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 115
    .line 116
    if-ne v6, v5, :cond_6

    .line 117
    .line 118
    :cond_5
    const-class v5, Lcom/russhwolf/settings/SharedPreferencesSettings;

    .line 119
    .line 120
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v2, v5, v4}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    check-cast v6, Lcom/russhwolf/settings/SharedPreferencesSettings;

    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object v2, v6, Lcom/russhwolf/settings/SharedPreferencesSettings;->delegate:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    const-string v4, "night_theme"

    .line 139
    .line 140
    const-string v5, "dark_theme"

    .line 141
    .line 142
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-nez v4, :cond_7

    .line 147
    .line 148
    move-object v4, v5

    .line 149
    :cond_7
    const-string v6, "black_theme"

    .line 150
    .line 151
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    sget-object v7, Lnet/newpipe/app/theme/ThemeKt;->blackScheme:Landroidx/compose/material3/ColorScheme;

    .line 156
    .line 157
    if-eqz v4, :cond_8

    .line 158
    .line 159
    move-object v4, v7

    .line 160
    goto :goto_2

    .line 161
    :cond_8
    move-object v4, v0

    .line 162
    :goto_2
    const-string/jumbo v8, "theme"

    .line 163
    .line 164
    .line 165
    const-string v9, "auto_device_theme"

    .line 166
    .line 167
    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    if-nez v2, :cond_9

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_9
    move-object v9, v2

    .line 175
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    const v8, -0x5e312840

    .line 180
    .line 181
    .line 182
    if-eq v2, v8, :cond_d

    .line 183
    .line 184
    const v0, 0x2d752d89

    .line 185
    .line 186
    .line 187
    if-eq v2, v0, :cond_b

    .line 188
    .line 189
    const v0, 0x7ea06560

    .line 190
    .line 191
    .line 192
    if-eq v2, v0, :cond_a

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_a
    const-string v0, "light_theme"

    .line 196
    .line 197
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_10

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_b
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_c

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_c
    move-object p1, v7

    .line 212
    goto :goto_5

    .line 213
    :cond_d
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-nez v2, :cond_f

    .line 218
    .line 219
    :goto_4
    if-nez v1, :cond_e

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_e
    move-object p1, v4

    .line 223
    goto :goto_5

    .line 224
    :cond_f
    move-object p1, v0

    .line 225
    :cond_10
    :goto_5
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 226
    .line 227
    .line 228
    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 229
    .line 230
    .line 231
    const/16 v0, 0x6000

    .line 232
    .line 233
    invoke-static {p1, p2, p3, v0}, Landroidx/compose/material3/MaterialThemeKt;->MaterialExpressiveTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 234
    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_11
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 238
    .line 239
    .line 240
    :goto_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 241
    .line 242
    .line 243
    move-result-object p3

    .line 244
    if-eqz p3, :cond_12

    .line 245
    .line 246
    new-instance v0, Lnet/newpipe/app/theme/ThemeKt$$ExternalSyntheticLambda0;

    .line 247
    .line 248
    invoke-direct {v0, p0, p1, p2, p4}, Lnet/newpipe/app/theme/ThemeKt$$ExternalSyntheticLambda0;-><init>(ZLandroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 249
    .line 250
    .line 251
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 252
    .line 253
    :cond_12
    return-void
.end method
