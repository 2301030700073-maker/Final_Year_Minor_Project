.class public final Lorg/openintents/openpgp/OpenPgpError$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/openintents/openpgp/OpenPgpError$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget p0, p0, Lorg/openintents/openpgp/OpenPgpError$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-instance v2, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 22
    .line 23
    invoke-direct {v2, p1, p0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;-><init>(Landroid/os/Parcel;I)V

    .line 24
    .line 25
    .line 26
    add-int/2addr v1, v0

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 28
    .line 29
    .line 30
    return-object v2

    .line 31
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    new-instance v2, Lorg/openintents/openpgp/OpenPgpMetadata;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, v2, Lorg/openintents/openpgp/OpenPgpMetadata;->filename:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iput-object v3, v2, Lorg/openintents/openpgp/OpenPgpMetadata;->mimeType:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    iput-wide v3, v2, Lorg/openintents/openpgp/OpenPgpMetadata;->modificationTime:J

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    iput-wide v3, v2, Lorg/openintents/openpgp/OpenPgpMetadata;->originalSize:J

    .line 71
    .line 72
    const/4 v3, 0x2

    .line 73
    if-lt p0, v3, :cond_0

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    iput-object p0, v2, Lorg/openintents/openpgp/OpenPgpMetadata;->charset:Ljava/lang/String;

    .line 80
    .line 81
    :cond_0
    add-int/2addr v1, v0

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    .line 84
    .line 85
    return-object v2

    .line 86
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-le p0, v1, :cond_1

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    move-object v5, v2

    .line 110
    :goto_0
    if-le p0, v1, :cond_2

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :cond_2
    new-instance p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 117
    .line 118
    invoke-direct {p0, v4, v5, v2}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;-><init>(I[B[B)V

    .line 119
    .line 120
    .line 121
    add-int/2addr v3, v0

    .line 122
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    new-instance v1, Lorg/openintents/openpgp/AutocryptPeerUpdate;

    .line 138
    .line 139
    invoke-direct {v1, p1}, Lorg/openintents/openpgp/AutocryptPeerUpdate;-><init>(Landroid/os/Parcel;)V

    .line 140
    .line 141
    .line 142
    add-int/2addr v0, p0

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    .line 145
    .line 146
    return-object v1

    .line 147
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance v2, Lnet/thunderbird/core/android/account/Identity;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_3

    .line 173
    .line 174
    move v7, v1

    .line 175
    goto :goto_1

    .line 176
    :cond_3
    move v7, v0

    .line 177
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-direct/range {v2 .. v8}, Lnet/thunderbird/core/android/account/Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-object v2

    .line 185
    :pswitch_4
    new-instance p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 186
    .line 187
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_4

    .line 195
    .line 196
    move v3, v1

    .line 197
    goto :goto_2

    .line 198
    :cond_4
    move v3, v0

    .line 199
    :goto_2
    iput-boolean v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowCollapse:Z

    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_5

    .line 206
    .line 207
    move v0, v1

    .line 208
    :cond_5
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->performBestGuess:Z

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->parcelableClassName:Ljava/lang/String;

    .line 215
    .line 216
    const-string v1, "Serializable"

    .line 217
    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_6

    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ljava/util/ArrayList;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->parcelableClassName:Ljava/lang/String;

    .line 234
    .line 235
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    .line 249
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Lcom/tokenautocomplete/Tokenizer;

    .line 266
    .line 267
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenizer:Lcom/tokenautocomplete/Tokenizer;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-lez v0, :cond_7

    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->contentText:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenStarts:[I

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenEnds:[I

    .line 292
    .line 293
    :cond_7
    move-object v2, p0

    .line 294
    goto :goto_4

    .line 295
    :catch_0
    move-exception v0

    .line 296
    move-object p0, v0

    .line 297
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :catch_1
    move-exception v0

    .line 302
    move-object p0, v0

    .line 303
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 304
    .line 305
    .line 306
    :goto_4
    return-object v2

    .line 307
    :pswitch_5
    new-instance p0, Lcom/tokenautocomplete/CharacterTokenizer;

    .line 308
    .line 309
    const-class v0, Ljava/lang/Character;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-direct {p0, v0, p1}, Lcom/tokenautocomplete/CharacterTokenizer;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return-object p0

    .line 327
    :pswitch_6
    new-instance p0, Lcom/takisoft/preferencex/TimePickerPreference$SavedState;

    .line 328
    .line 329
    invoke-direct {p0, p1}, Lcom/takisoft/preferencex/TimePickerPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 330
    .line 331
    .line 332
    return-object p0

    .line 333
    :pswitch_7
    new-instance p0, Lcom/takisoft/preferencex/DatePickerPreference$SavedState;

    .line 334
    .line 335
    invoke-direct {p0, p1}, Lcom/takisoft/preferencex/DatePickerPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 336
    .line 337
    .line 338
    return-object p0

    .line 339
    :pswitch_8
    new-instance p0, Lcom/takisoft/preferencex/ColorPickerPreference$SavedState;

    .line 340
    .line 341
    invoke-direct {p0, p1}, Lcom/takisoft/preferencex/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 342
    .line 343
    .line 344
    return-object p0

    .line 345
    :pswitch_9
    new-instance p0, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 346
    .line 347
    invoke-direct {p0, p1}, Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 348
    .line 349
    .line 350
    return-object p0

    .line 351
    :pswitch_a
    new-instance p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 352
    .line 353
    invoke-direct {p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 354
    .line 355
    .line 356
    return-object p0

    .line 357
    :pswitch_b
    new-instance p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 358
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    .line 361
    .line 362
    const/4 v0, -0x1

    .line 363
    iput v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSelectedColorIndex:I

    .line 364
    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iput-object v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    iput v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSelectedColor:I

    .line 376
    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    iput v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColumns:I

    .line 382
    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    iput v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSize:I

    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    iput v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSwatchLength:I

    .line 394
    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    iput v0, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mMarginSize:I

    .line 400
    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    iput p1, p0, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSelectedColorIndex:I

    .line 406
    .line 407
    return-object p0

    .line 408
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 412
    .line 413
    .line 414
    move-result p0

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    new-instance v1, Lorg/openintents/openpgp/OpenPgpError;

    .line 420
    .line 421
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    iput v2, v1, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    .line 429
    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    iput-object v2, v1, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 435
    .line 436
    add-int/2addr v0, p0

    .line 437
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 438
    .line 439
    .line 440
    return-object v1

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lorg/openintents/openpgp/OpenPgpError$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lorg/openintents/openpgp/OpenPgpMetadata;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lorg/openintents/openpgp/AutocryptPeerUpdate;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lnet/thunderbird/core/android/account/Identity;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lcom/tokenautocomplete/CharacterTokenizer;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lcom/takisoft/preferencex/TimePickerPreference$SavedState;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lcom/takisoft/preferencex/DatePickerPreference$SavedState;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lcom/takisoft/preferencex/ColorPickerPreference$SavedState;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lcom/takisoft/datetimepicker/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Lorg/openintents/openpgp/OpenPgpError;

    .line 46
    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
