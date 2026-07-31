.class public final enum Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum CANCELLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final Companion:Lcom/fsck/k9/view/MessageCryptoDisplayStatus$Companion;

.field public static final enum DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_UNSIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum INCOMPLETE_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum INCOMPLETE_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum LOADING:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNSUPPORTED_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNSUPPORTED_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;


# instance fields
.field public final colorAttr:I

.field public final descriptionTextRes:Ljava/lang/Integer;

.field public final isEnabled:Z

.field public final statusIconRes:I

.field public final titleTextRes:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 44

    .line 1
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/16 v7, 0x18

    .line 5
    .line 6
    const-string v1, "LOADING"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const v3, 0x7f040471

    .line 10
    .line 11
    .line 12
    const v4, 0x7f080105

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->LOADING:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 20
    .line 21
    new-instance v1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 22
    .line 23
    const v2, 0x7f120238

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const v2, 0x7f120228

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    move-object v6, v8

    .line 38
    const/4 v8, 0x1

    .line 39
    const-string v2, "CANCELLED"

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    const v4, 0x7f04046d

    .line 43
    .line 44
    .line 45
    const v5, 0x7f0800eb

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v1 .. v8}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 49
    .line 50
    .line 51
    move-object v8, v6

    .line 52
    sput-object v1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->CANCELLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 53
    .line 54
    new-instance v9, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 55
    .line 56
    const v2, 0x7f12023a

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    move-object v14, v15

    .line 64
    const/4 v15, 0x0

    .line 65
    const/16 v16, 0x10

    .line 66
    .line 67
    const-string v10, "DISABLED"

    .line 68
    .line 69
    const/4 v11, 0x2

    .line 70
    const v12, 0x7f040471

    .line 71
    .line 72
    .line 73
    const v13, 0x7f080105

    .line 74
    .line 75
    .line 76
    invoke-direct/range {v9 .. v16}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 77
    .line 78
    .line 79
    move-object v2, v9

    .line 80
    sput-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 81
    .line 82
    new-instance v10, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 83
    .line 84
    const v3, 0x7f12023d

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v16

    .line 91
    const/16 v17, 0x1

    .line 92
    .line 93
    const-string v11, "UNENCRYPTED_SIGN_ERROR"

    .line 94
    .line 95
    const/4 v12, 0x3

    .line 96
    const v13, 0x7f040471

    .line 97
    .line 98
    .line 99
    move-object v15, v14

    .line 100
    const v14, 0x7f0800eb

    .line 101
    .line 102
    .line 103
    invoke-direct/range {v10 .. v17}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 104
    .line 105
    .line 106
    move-object/from16 v18, v10

    .line 107
    .line 108
    move-object v14, v15

    .line 109
    sput-object v18, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 110
    .line 111
    new-instance v10, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 112
    .line 113
    const v3, 0x7f120235

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v16

    .line 120
    const-string v11, "INCOMPLETE_SIGNED"

    .line 121
    .line 122
    const/4 v12, 0x4

    .line 123
    const v13, 0x7f04046d

    .line 124
    .line 125
    .line 126
    const v14, 0x7f0800eb

    .line 127
    .line 128
    .line 129
    invoke-direct/range {v10 .. v17}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 130
    .line 131
    .line 132
    move-object v11, v10

    .line 133
    sput-object v11, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 134
    .line 135
    new-instance v19, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 136
    .line 137
    const v3, 0x7f12023c

    .line 138
    .line 139
    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v24

    .line 144
    const v3, 0x7f120243

    .line 145
    .line 146
    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v25

    .line 151
    const/16 v26, 0x1

    .line 152
    .line 153
    const-string v20, "UNENCRYPTED_SIGN_VERIFIED"

    .line 154
    .line 155
    const/16 v21, 0x5

    .line 156
    .line 157
    const v22, 0x7f04046e

    .line 158
    .line 159
    .line 160
    const v23, 0x7f0801c8

    .line 161
    .line 162
    .line 163
    invoke-direct/range {v19 .. v26}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 164
    .line 165
    .line 166
    sput-object v19, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 167
    .line 168
    new-instance v20, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 169
    .line 170
    const/16 v26, 0x0

    .line 171
    .line 172
    const/16 v27, 0x11

    .line 173
    .line 174
    const-string v21, "UNENCRYPTED_SIGN_UNVERIFIED"

    .line 175
    .line 176
    const/16 v22, 0x6

    .line 177
    .line 178
    const v23, 0x7f04046e

    .line 179
    .line 180
    .line 181
    move-object/from16 v25, v24

    .line 182
    .line 183
    const v24, 0x7f0800cd

    .line 184
    .line 185
    .line 186
    invoke-direct/range {v20 .. v27}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 187
    .line 188
    .line 189
    sput-object v20, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 190
    .line 191
    new-instance v21, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 192
    .line 193
    const v3, 0x7f12023b

    .line 194
    .line 195
    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v27

    .line 200
    const v3, 0x7f120242

    .line 201
    .line 202
    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const/16 v28, 0x1

    .line 208
    .line 209
    const-string v22, "UNENCRYPTED_SIGN_UNKNOWN"

    .line 210
    .line 211
    const/16 v23, 0x7

    .line 212
    .line 213
    const v24, 0x7f040472

    .line 214
    .line 215
    .line 216
    const v25, 0x7f0800eb

    .line 217
    .line 218
    .line 219
    move-object/from16 v26, v27

    .line 220
    .line 221
    move-object/from16 v27, v3

    .line 222
    .line 223
    invoke-direct/range {v21 .. v28}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 224
    .line 225
    .line 226
    move-object/from16 v27, v26

    .line 227
    .line 228
    sput-object v21, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 229
    .line 230
    new-instance v22, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 231
    .line 232
    const v3, 0x7f120240

    .line 233
    .line 234
    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v28

    .line 239
    const/16 v29, 0x1

    .line 240
    .line 241
    const-string v23, "UNENCRYPTED_SIGN_MISMATCH"

    .line 242
    .line 243
    const/16 v24, 0x8

    .line 244
    .line 245
    const v25, 0x7f040471

    .line 246
    .line 247
    .line 248
    const v26, 0x7f0800eb

    .line 249
    .line 250
    .line 251
    invoke-direct/range {v22 .. v29}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 252
    .line 253
    .line 254
    move-object/from16 v12, v22

    .line 255
    .line 256
    sput-object v12, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 257
    .line 258
    new-instance v22, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 259
    .line 260
    const v3, 0x7f12023e

    .line 261
    .line 262
    .line 263
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v28

    .line 267
    const-string v23, "UNENCRYPTED_SIGN_EXPIRED"

    .line 268
    .line 269
    const/16 v24, 0x9

    .line 270
    .line 271
    invoke-direct/range {v22 .. v29}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 272
    .line 273
    .line 274
    move-object/from16 v13, v22

    .line 275
    .line 276
    sput-object v13, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 277
    .line 278
    new-instance v22, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 279
    .line 280
    const v3, 0x7f120241

    .line 281
    .line 282
    .line 283
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v28

    .line 287
    const-string v23, "UNENCRYPTED_SIGN_REVOKED"

    .line 288
    .line 289
    const/16 v24, 0xa

    .line 290
    .line 291
    invoke-direct/range {v22 .. v29}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 292
    .line 293
    .line 294
    move-object/from16 v14, v22

    .line 295
    .line 296
    sput-object v14, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 297
    .line 298
    new-instance v22, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 299
    .line 300
    const v3, 0x7f12023f

    .line 301
    .line 302
    .line 303
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v28

    .line 307
    const-string v23, "UNENCRYPTED_SIGN_INSECURE"

    .line 308
    .line 309
    const/16 v24, 0xb

    .line 310
    .line 311
    invoke-direct/range {v22 .. v29}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 312
    .line 313
    .line 314
    sput-object v22, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 315
    .line 316
    new-instance v23, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 317
    .line 318
    const v3, 0x7f120237

    .line 319
    .line 320
    .line 321
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v28

    .line 325
    const v3, 0x7f120233

    .line 326
    .line 327
    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v29

    .line 332
    const/16 v30, 0x1

    .line 333
    .line 334
    const-string v24, "ENCRYPTED_SIGN_VERIFIED"

    .line 335
    .line 336
    const/16 v25, 0xc

    .line 337
    .line 338
    const v26, 0x7f040470

    .line 339
    .line 340
    .line 341
    const v27, 0x7f0801c6

    .line 342
    .line 343
    .line 344
    invoke-direct/range {v23 .. v30}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 345
    .line 346
    .line 347
    sput-object v23, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 348
    .line 349
    new-instance v24, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 350
    .line 351
    const/16 v30, 0x0

    .line 352
    .line 353
    const/16 v31, 0x11

    .line 354
    .line 355
    const-string v25, "ENCRYPTED_SIGN_UNVERIFIED"

    .line 356
    .line 357
    const/16 v26, 0xd

    .line 358
    .line 359
    const v27, 0x7f040470

    .line 360
    .line 361
    .line 362
    move-object/from16 v29, v28

    .line 363
    .line 364
    const v28, 0x7f0800f3

    .line 365
    .line 366
    .line 367
    invoke-direct/range {v24 .. v31}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 368
    .line 369
    .line 370
    sput-object v24, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 371
    .line 372
    new-instance v25, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 373
    .line 374
    const v3, 0x7f120236

    .line 375
    .line 376
    .line 377
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v31

    .line 381
    const v3, 0x7f120232

    .line 382
    .line 383
    .line 384
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    const/16 v32, 0x1

    .line 389
    .line 390
    const-string v26, "ENCRYPTED_SIGN_UNKNOWN"

    .line 391
    .line 392
    const/16 v27, 0xe

    .line 393
    .line 394
    const v28, 0x7f040472

    .line 395
    .line 396
    .line 397
    const v29, 0x7f0800eb

    .line 398
    .line 399
    .line 400
    move-object/from16 v30, v31

    .line 401
    .line 402
    move-object/from16 v31, v3

    .line 403
    .line 404
    invoke-direct/range {v25 .. v32}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 405
    .line 406
    .line 407
    move-object/from16 v31, v30

    .line 408
    .line 409
    sput-object v25, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 410
    .line 411
    new-instance v26, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 412
    .line 413
    const v3, 0x7f120230

    .line 414
    .line 415
    .line 416
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v32

    .line 420
    const/16 v33, 0x1

    .line 421
    .line 422
    const-string v27, "ENCRYPTED_SIGN_MISMATCH"

    .line 423
    .line 424
    const/16 v28, 0xf

    .line 425
    .line 426
    const v29, 0x7f040471

    .line 427
    .line 428
    .line 429
    const v30, 0x7f0801c7

    .line 430
    .line 431
    .line 432
    invoke-direct/range {v26 .. v33}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 433
    .line 434
    .line 435
    move-object/from16 v15, v26

    .line 436
    .line 437
    sput-object v15, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 438
    .line 439
    new-instance v26, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 440
    .line 441
    const v3, 0x7f12022e

    .line 442
    .line 443
    .line 444
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v32

    .line 448
    const-string v27, "ENCRYPTED_SIGN_EXPIRED"

    .line 449
    .line 450
    const/16 v28, 0x10

    .line 451
    .line 452
    invoke-direct/range {v26 .. v33}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 453
    .line 454
    .line 455
    move-object/from16 v16, v26

    .line 456
    .line 457
    sput-object v16, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 458
    .line 459
    new-instance v26, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 460
    .line 461
    const v3, 0x7f120231

    .line 462
    .line 463
    .line 464
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v32

    .line 468
    const-string v27, "ENCRYPTED_SIGN_REVOKED"

    .line 469
    .line 470
    const/16 v28, 0x11

    .line 471
    .line 472
    invoke-direct/range {v26 .. v33}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 473
    .line 474
    .line 475
    move-object/from16 v17, v26

    .line 476
    .line 477
    sput-object v17, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 478
    .line 479
    new-instance v26, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 480
    .line 481
    const v3, 0x7f12022f

    .line 482
    .line 483
    .line 484
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 485
    .line 486
    .line 487
    move-result-object v32

    .line 488
    const-string v27, "ENCRYPTED_SIGN_INSECURE"

    .line 489
    .line 490
    const/16 v28, 0x12

    .line 491
    .line 492
    invoke-direct/range {v26 .. v33}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 493
    .line 494
    .line 495
    move-object/from16 v34, v26

    .line 496
    .line 497
    sput-object v34, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 498
    .line 499
    new-instance v26, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 500
    .line 501
    const v3, 0x7f12022d

    .line 502
    .line 503
    .line 504
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    .line 506
    .line 507
    move-result-object v32

    .line 508
    const-string v27, "ENCRYPTED_SIGN_ERROR"

    .line 509
    .line 510
    const/16 v28, 0x13

    .line 511
    .line 512
    invoke-direct/range {v26 .. v33}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v35, v26

    .line 516
    .line 517
    sput-object v35, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 518
    .line 519
    new-instance v26, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 520
    .line 521
    const v3, 0x7f12022b

    .line 522
    .line 523
    .line 524
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v32

    .line 528
    const-string v27, "ENCRYPTED_INSECURE"

    .line 529
    .line 530
    const/16 v28, 0x14

    .line 531
    .line 532
    const v29, 0x7f040473

    .line 533
    .line 534
    .line 535
    invoke-direct/range {v26 .. v33}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 536
    .line 537
    .line 538
    sput-object v26, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 539
    .line 540
    new-instance v36, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 541
    .line 542
    const v3, 0x7f120239

    .line 543
    .line 544
    .line 545
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 546
    .line 547
    .line 548
    move-result-object v41

    .line 549
    const v3, 0x7f120234

    .line 550
    .line 551
    .line 552
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v42

    .line 556
    const/16 v43, 0x1

    .line 557
    .line 558
    const-string v37, "ENCRYPTED_UNSIGNED"

    .line 559
    .line 560
    const/16 v38, 0x15

    .line 561
    .line 562
    const v39, 0x7f040471

    .line 563
    .line 564
    .line 565
    const v40, 0x7f0801c7

    .line 566
    .line 567
    .line 568
    invoke-direct/range {v36 .. v43}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 569
    .line 570
    .line 571
    sput-object v36, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_UNSIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 572
    .line 573
    new-instance v3, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 574
    .line 575
    const v4, 0x7f120229

    .line 576
    .line 577
    .line 578
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 579
    .line 580
    .line 581
    move-result-object v9

    .line 582
    const/4 v10, 0x1

    .line 583
    const-string v4, "ENCRYPTED_ERROR"

    .line 584
    .line 585
    const/16 v5, 0x16

    .line 586
    .line 587
    const v6, 0x7f040473

    .line 588
    .line 589
    .line 590
    const v7, 0x7f0801c7

    .line 591
    .line 592
    .line 593
    invoke-direct/range {v3 .. v10}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 594
    .line 595
    .line 596
    move-object/from16 v27, v3

    .line 597
    .line 598
    sput-object v27, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 599
    .line 600
    new-instance v3, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 601
    .line 602
    const v4, 0x7f12022a

    .line 603
    .line 604
    .line 605
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    const-string v4, "INCOMPLETE_ENCRYPTED"

    .line 610
    .line 611
    const/16 v5, 0x17

    .line 612
    .line 613
    const v6, 0x7f04046d

    .line 614
    .line 615
    .line 616
    const v7, 0x7f0800eb

    .line 617
    .line 618
    .line 619
    invoke-direct/range {v3 .. v10}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 620
    .line 621
    .line 622
    move-object/from16 v28, v3

    .line 623
    .line 624
    sput-object v28, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 625
    .line 626
    new-instance v3, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 627
    .line 628
    const v4, 0x7f12022c

    .line 629
    .line 630
    .line 631
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    .line 633
    .line 634
    move-result-object v9

    .line 635
    const-string v4, "ENCRYPTED_NO_PROVIDER"

    .line 636
    .line 637
    const/16 v5, 0x18

    .line 638
    .line 639
    const v6, 0x7f040473

    .line 640
    .line 641
    .line 642
    const v7, 0x7f0801c7

    .line 643
    .line 644
    .line 645
    invoke-direct/range {v3 .. v10}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 646
    .line 647
    .line 648
    move-object/from16 v29, v3

    .line 649
    .line 650
    sput-object v29, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 651
    .line 652
    new-instance v3, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 653
    .line 654
    const v4, 0x7f120244

    .line 655
    .line 656
    .line 657
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 658
    .line 659
    .line 660
    move-result-object v9

    .line 661
    const-string v4, "UNSUPPORTED_ENCRYPTED"

    .line 662
    .line 663
    const/16 v5, 0x19

    .line 664
    .line 665
    invoke-direct/range {v3 .. v10}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 666
    .line 667
    .line 668
    move-object/from16 v30, v3

    .line 669
    .line 670
    sput-object v30, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 671
    .line 672
    new-instance v3, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 673
    .line 674
    const v4, 0x7f120245

    .line 675
    .line 676
    .line 677
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 678
    .line 679
    .line 680
    move-result-object v9

    .line 681
    const-string v4, "UNSUPPORTED_SIGNED"

    .line 682
    .line 683
    const/16 v5, 0x1a

    .line 684
    .line 685
    const v6, 0x7f040471

    .line 686
    .line 687
    .line 688
    const v7, 0x7f080105

    .line 689
    .line 690
    .line 691
    invoke-direct/range {v3 .. v10}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 692
    .line 693
    .line 694
    sput-object v3, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 695
    .line 696
    const/16 v4, 0x1b

    .line 697
    .line 698
    new-array v4, v4, [Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 699
    .line 700
    const/4 v5, 0x0

    .line 701
    aput-object v0, v4, v5

    .line 702
    .line 703
    const/4 v0, 0x1

    .line 704
    aput-object v1, v4, v0

    .line 705
    .line 706
    const/4 v0, 0x2

    .line 707
    aput-object v2, v4, v0

    .line 708
    .line 709
    const/4 v0, 0x3

    .line 710
    aput-object v18, v4, v0

    .line 711
    .line 712
    const/4 v0, 0x4

    .line 713
    aput-object v11, v4, v0

    .line 714
    .line 715
    const/4 v0, 0x5

    .line 716
    aput-object v19, v4, v0

    .line 717
    .line 718
    const/4 v0, 0x6

    .line 719
    aput-object v20, v4, v0

    .line 720
    .line 721
    const/4 v0, 0x7

    .line 722
    aput-object v21, v4, v0

    .line 723
    .line 724
    const/16 v0, 0x8

    .line 725
    .line 726
    aput-object v12, v4, v0

    .line 727
    .line 728
    const/16 v0, 0x9

    .line 729
    .line 730
    aput-object v13, v4, v0

    .line 731
    .line 732
    const/16 v0, 0xa

    .line 733
    .line 734
    aput-object v14, v4, v0

    .line 735
    .line 736
    const/16 v0, 0xb

    .line 737
    .line 738
    aput-object v22, v4, v0

    .line 739
    .line 740
    const/16 v0, 0xc

    .line 741
    .line 742
    aput-object v23, v4, v0

    .line 743
    .line 744
    const/16 v0, 0xd

    .line 745
    .line 746
    aput-object v24, v4, v0

    .line 747
    .line 748
    const/16 v0, 0xe

    .line 749
    .line 750
    aput-object v25, v4, v0

    .line 751
    .line 752
    const/16 v0, 0xf

    .line 753
    .line 754
    aput-object v15, v4, v0

    .line 755
    .line 756
    const/16 v0, 0x10

    .line 757
    .line 758
    aput-object v16, v4, v0

    .line 759
    .line 760
    const/16 v0, 0x11

    .line 761
    .line 762
    aput-object v17, v4, v0

    .line 763
    .line 764
    const/16 v0, 0x12

    .line 765
    .line 766
    aput-object v34, v4, v0

    .line 767
    .line 768
    const/16 v0, 0x13

    .line 769
    .line 770
    aput-object v35, v4, v0

    .line 771
    .line 772
    const/16 v0, 0x14

    .line 773
    .line 774
    aput-object v26, v4, v0

    .line 775
    .line 776
    const/16 v0, 0x15

    .line 777
    .line 778
    aput-object v36, v4, v0

    .line 779
    .line 780
    const/16 v0, 0x16

    .line 781
    .line 782
    aput-object v27, v4, v0

    .line 783
    .line 784
    const/16 v0, 0x17

    .line 785
    .line 786
    aput-object v28, v4, v0

    .line 787
    .line 788
    const/16 v0, 0x18

    .line 789
    .line 790
    aput-object v29, v4, v0

    .line 791
    .line 792
    const/16 v0, 0x19

    .line 793
    .line 794
    aput-object v30, v4, v0

    .line 795
    .line 796
    const/16 v0, 0x1a

    .line 797
    .line 798
    aput-object v3, v4, v0

    .line 799
    .line 800
    sput-object v4, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->$VALUES:[Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 801
    .line 802
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus$Companion;

    .line 803
    .line 804
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 805
    .line 806
    .line 807
    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->Companion:Lcom/fsck/k9/view/MessageCryptoDisplayStatus$Companion;

    .line 808
    .line 809
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p7, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    and-int/lit8 v1, p7, 0x8

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    move-object p5, v2

    .line 14
    :cond_1
    and-int/lit8 p7, p7, 0x10

    .line 15
    .line 16
    if-eqz p7, :cond_2

    .line 17
    .line 18
    move-object p6, v2

    .line 19
    :cond_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->isEnabled:Z

    .line 23
    .line 24
    iput p3, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->colorAttr:I

    .line 25
    .line 26
    iput p4, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    .line 27
    .line 28
    iput-object p5, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->titleTextRes:Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object p6, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->descriptionTextRes:Ljava/lang/Integer;

    .line 31
    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->$VALUES:[Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 8
    .line 9
    return-object v0
.end method
