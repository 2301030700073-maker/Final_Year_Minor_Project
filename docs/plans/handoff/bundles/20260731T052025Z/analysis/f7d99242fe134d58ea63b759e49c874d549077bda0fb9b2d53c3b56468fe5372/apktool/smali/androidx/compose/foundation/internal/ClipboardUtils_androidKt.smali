.class public abstract Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EmptyStackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 3
    .line 4
    sput-object v0, Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;->EmptyStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 5
    .line 6
    return-void
.end method

.method public static final toClipEntry(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/platform/ClipEntry;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/platform/ClipEntry;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/text/AnnotatedString;->spanStylesOrNull:Ljava/util/ArrayList;

    .line 6
    .line 7
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v4, v2

    .line 14
    :goto_0
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_1
    new-instance v4, Landroid/text/SpannableString;

    .line 25
    .line 26
    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroidx/compose/foundation/internal/DecodeHelper;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iput-object v5, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    move-object v2, v3

    .line 43
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_1
    if-ge v6, v3, :cond_15

    .line 49
    .line 50
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 55
    .line 56
    iget-object v8, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v8, Landroidx/compose/ui/text/SpanStyle;

    .line 59
    .line 60
    iget v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 61
    .line 62
    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 63
    .line 64
    iget-object v10, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 65
    .line 66
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    iput-object v10, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 74
    .line 75
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 76
    .line 77
    iget-wide v11, v8, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 78
    .line 79
    iget-wide v13, v8, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 80
    .line 81
    move v15, v6

    .line 82
    iget-wide v5, v8, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 83
    .line 84
    move-object/from16 v16, v2

    .line 85
    .line 86
    move/from16 v17, v3

    .line 87
    .line 88
    invoke-interface {v10}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    move/from16 v18, v9

    .line 93
    .line 94
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 95
    .line 96
    invoke-static {v2, v3, v9, v10}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/4 v3, 0x1

    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 104
    .line 105
    .line 106
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 107
    .line 108
    move-object/from16 v19, v4

    .line 109
    .line 110
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    iget-object v2, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 115
    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move-object/from16 v19, v4

    .line 121
    .line 122
    :goto_2
    sget-wide v2, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 123
    .line 124
    invoke-static {v5, v6, v2, v3}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    move/from16 v20, v4

    .line 129
    .line 130
    const/4 v4, 0x2

    .line 131
    if-nez v20, :cond_4

    .line 132
    .line 133
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v5, v6}, Landroidx/compose/foundation/internal/DecodeHelper;->encode--R2X_6o(J)V

    .line 137
    .line 138
    .line 139
    :cond_4
    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 140
    .line 141
    const/4 v6, 0x3

    .line 142
    if-eqz v5, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 145
    .line 146
    .line 147
    iget v5, v5, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 148
    .line 149
    iget-object v6, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    :cond_5
    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 155
    .line 156
    if-eqz v5, :cond_8

    .line 157
    .line 158
    iget v5, v5, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 159
    .line 160
    const/4 v6, 0x4

    .line 161
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 162
    .line 163
    .line 164
    if-nez v5, :cond_7

    .line 165
    .line 166
    :cond_6
    const/4 v6, 0x0

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    const/4 v6, 0x1

    .line 169
    if-ne v5, v6, :cond_6

    .line 170
    .line 171
    const/4 v6, 0x1

    .line 172
    :goto_3
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 173
    .line 174
    .line 175
    :cond_8
    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 176
    .line 177
    if-eqz v5, :cond_d

    .line 178
    .line 179
    iget v5, v5, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 180
    .line 181
    const/4 v6, 0x5

    .line 182
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 183
    .line 184
    .line 185
    if-nez v5, :cond_a

    .line 186
    .line 187
    :cond_9
    const/4 v4, 0x0

    .line 188
    goto :goto_4

    .line 189
    :cond_a
    const v6, 0xffff

    .line 190
    .line 191
    .line 192
    if-ne v5, v6, :cond_b

    .line 193
    .line 194
    const/4 v4, 0x1

    .line 195
    goto :goto_4

    .line 196
    :cond_b
    const/4 v6, 0x1

    .line 197
    if-ne v5, v6, :cond_c

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_c
    if-ne v5, v4, :cond_9

    .line 201
    .line 202
    const/4 v4, 0x3

    .line 203
    :goto_4
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 204
    .line 205
    .line 206
    :cond_d
    iget-object v4, v8, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz v4, :cond_e

    .line 209
    .line 210
    const/4 v5, 0x6

    .line 211
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 212
    .line 213
    .line 214
    iget-object v5, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 215
    .line 216
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_e
    invoke-static {v13, v14, v2, v3}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-nez v2, :cond_f

    .line 224
    .line 225
    const/4 v2, 0x7

    .line 226
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v13, v14}, Landroidx/compose/foundation/internal/DecodeHelper;->encode--R2X_6o(J)V

    .line 230
    .line 231
    .line 232
    :cond_f
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 233
    .line 234
    if-eqz v2, :cond_10

    .line 235
    .line 236
    iget v2, v2, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 237
    .line 238
    const/16 v3, 0x8

    .line 239
    .line 240
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(F)V

    .line 244
    .line 245
    .line 246
    :cond_10
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 247
    .line 248
    if-eqz v2, :cond_11

    .line 249
    .line 250
    const/16 v3, 0x9

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 253
    .line 254
    .line 255
    iget v3, v2, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 256
    .line 257
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(F)V

    .line 258
    .line 259
    .line 260
    iget v2, v2, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(F)V

    .line 263
    .line 264
    .line 265
    :cond_11
    invoke-static {v11, v12, v9, v10}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_12

    .line 270
    .line 271
    const/16 v2, 0xa

    .line 272
    .line 273
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 274
    .line 275
    .line 276
    iget-object v2, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 277
    .line 278
    invoke-virtual {v2, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    .line 280
    .line 281
    :cond_12
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 282
    .line 283
    if-eqz v2, :cond_13

    .line 284
    .line 285
    const/16 v3, 0xb

    .line 286
    .line 287
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 288
    .line 289
    .line 290
    iget v2, v2, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 291
    .line 292
    iget-object v3, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 293
    .line 294
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    .line 296
    .line 297
    :cond_13
    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 298
    .line 299
    if-eqz v2, :cond_14

    .line 300
    .line 301
    const/16 v3, 0xc

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(B)V

    .line 304
    .line 305
    .line 306
    iget-wide v3, v2, Landroidx/compose/ui/graphics/Shadow;->color:J

    .line 307
    .line 308
    iget-object v5, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 309
    .line 310
    invoke-virtual {v5, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 311
    .line 312
    .line 313
    iget-wide v3, v2, Landroidx/compose/ui/graphics/Shadow;->offset:J

    .line 314
    .line 315
    const/16 v5, 0x20

    .line 316
    .line 317
    shr-long v5, v3, v5

    .line 318
    .line 319
    long-to-int v5, v5

    .line 320
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(F)V

    .line 325
    .line 326
    .line 327
    const-wide v5, 0xffffffffL

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    and-long/2addr v3, v5

    .line 333
    long-to-int v3, v3

    .line 334
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(F)V

    .line 339
    .line 340
    .line 341
    iget v2, v2, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    .line 342
    .line 343
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/DecodeHelper;->encode(F)V

    .line 344
    .line 345
    .line 346
    :cond_14
    new-instance v2, Landroid/text/Annotation;

    .line 347
    .line 348
    iget-object v3, v0, Landroidx/compose/foundation/internal/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 349
    .line 350
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    const/4 v4, 0x0

    .line 355
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    const-string v5, "androidx.compose.text.SpanStyle"

    .line 360
    .line 361
    invoke-direct {v2, v5, v3}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const/16 v3, 0x21

    .line 365
    .line 366
    move/from16 v6, v18

    .line 367
    .line 368
    move-object/from16 v5, v19

    .line 369
    .line 370
    invoke-virtual {v5, v2, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 371
    .line 372
    .line 373
    add-int/lit8 v6, v15, 0x1

    .line 374
    .line 375
    move-object v4, v5

    .line 376
    move-object/from16 v2, v16

    .line 377
    .line 378
    move/from16 v3, v17

    .line 379
    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :cond_15
    move-object v5, v4

    .line 383
    move-object v0, v5

    .line 384
    :goto_5
    const-string v2, "plain text"

    .line 385
    .line 386
    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-direct {v1, v0}, Landroidx/compose/ui/platform/ClipEntry;-><init>(Landroid/content/ClipData;)V

    .line 391
    .line 392
    .line 393
    return-object v1
.end method
