.class public final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->INBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p2, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 12
    .line 13
    iget p0, p2, Lorg/jetbrains/compose/resources/DensityQualifier;->dpi:I

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p1, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 20
    .line 21
    iget p1, p1, Lorg/jetbrains/compose/resources/DensityQualifier;->dpi:I

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :pswitch_0
    check-cast p1, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 33
    .line 34
    iget p0, p1, Lorg/jetbrains/compose/resources/DensityQualifier;->dpi:I

    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p2, Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 41
    .line 42
    iget p1, p2, Lorg/jetbrains/compose/resources/DensityQualifier;->dpi:I

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_1
    check-cast p1, Lokio/internal/ZipEntry;

    .line 54
    .line 55
    iget-object p0, p1, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 56
    .line 57
    check-cast p2, Lokio/internal/ZipEntry;

    .line 58
    .line 59
    iget-object p1, p2, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 60
    .line 61
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :pswitch_2
    check-cast p1, Ljava/lang/Comparable;

    .line 67
    .line 68
    check-cast p2, Ljava/lang/Comparable;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0

    .line 78
    :pswitch_3
    check-cast p1, Ljava/lang/reflect/Field;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p2, Ljava/lang/reflect/Field;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    return p0

    .line 95
    :pswitch_4
    check-cast p1, Lde/cketti/changelog/ReleaseItem;

    .line 96
    .line 97
    check-cast p2, Lde/cketti/changelog/ReleaseItem;

    .line 98
    .line 99
    iget p0, p1, Lde/cketti/changelog/ReleaseItem;->versionCode:I

    .line 100
    .line 101
    iget p1, p2, Lde/cketti/changelog/ReleaseItem;->versionCode:I

    .line 102
    .line 103
    if-ge p0, p1, :cond_0

    .line 104
    .line 105
    move v1, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    if-le p0, p1, :cond_1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move v1, v3

    .line 111
    :goto_0
    return v1

    .line 112
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 113
    .line 114
    check-cast p2, Ljava/lang/Integer;

    .line 115
    .line 116
    const/4 p0, 0x3

    .line 117
    new-array v0, p0, [F

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 124
    .line 125
    .line 126
    aget p1, v0, v3

    .line 127
    .line 128
    aget v4, v0, v2

    .line 129
    .line 130
    const/4 v5, 0x2

    .line 131
    aget v0, v0, v5

    .line 132
    .line 133
    new-array p0, p0, [F

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    invoke-static {p2, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 140
    .line 141
    .line 142
    aget p2, p0, v3

    .line 143
    .line 144
    aget v6, p0, v2

    .line 145
    .line 146
    aget p0, p0, v5

    .line 147
    .line 148
    cmpg-float v5, p1, p2

    .line 149
    .line 150
    if-gez v5, :cond_2

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    cmpl-float p1, p1, p2

    .line 154
    .line 155
    if-lez p1, :cond_3

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    cmpg-float p1, v4, v6

    .line 159
    .line 160
    if-gez p1, :cond_4

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    cmpl-float p1, v4, v6

    .line 164
    .line 165
    if-lez p1, :cond_5

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    cmpg-float p1, v0, p0

    .line 169
    .line 170
    if-gez p1, :cond_6

    .line 171
    .line 172
    :goto_1
    move v1, v2

    .line 173
    goto :goto_2

    .line 174
    :cond_6
    cmpl-float p0, v0, p0

    .line 175
    .line 176
    if-lez p0, :cond_7

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_7
    move v1, v3

    .line 180
    :goto_2
    return v1

    .line 181
    :pswitch_6
    check-cast p1, Ljava/lang/Comparable;

    .line 182
    .line 183
    check-cast p2, Ljava/lang/Comparable;

    .line 184
    .line 185
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    return p0

    .line 190
    :pswitch_7
    check-cast p1, Landroid/view/View;

    .line 191
    .line 192
    check-cast p2, Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    sub-int/2addr p0, p1

    .line 203
    return p0

    .line 204
    :pswitch_8
    check-cast p2, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 205
    .line 206
    iget-object p0, p2, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 207
    .line 208
    if-ne p0, v0, :cond_8

    .line 209
    .line 210
    move p0, v2

    .line 211
    goto :goto_3

    .line 212
    :cond_8
    move p0, v3

    .line 213
    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    check-cast p1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 218
    .line 219
    iget-object p1, p1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 220
    .line 221
    if-ne p1, v0, :cond_9

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_9
    move v2, v3

    .line 225
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    return p0

    .line 234
    :pswitch_9
    check-cast p1, Lcom/fsck/k9/mail/internet/ParameterSection;

    .line 235
    .line 236
    iget-object p0, p1, Lcom/fsck/k9/mail/internet/ParameterSection;->section:Ljava/lang/Integer;

    .line 237
    .line 238
    check-cast p2, Lcom/fsck/k9/mail/internet/ParameterSection;

    .line 239
    .line 240
    iget-object p1, p2, Lcom/fsck/k9/mail/internet/ParameterSection;->section:Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    return p0

    .line 247
    :pswitch_a
    check-cast p1, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 248
    .line 249
    check-cast p2, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    iget-object p0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 258
    .line 259
    const/4 p1, 0x0

    .line 260
    if-eqz p0, :cond_a

    .line 261
    .line 262
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    goto :goto_5

    .line 267
    :cond_a
    move-object p0, p1

    .line 268
    :goto_5
    iget-object p2, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 269
    .line 270
    if-eqz p2, :cond_b

    .line 271
    .line 272
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    :cond_b
    if-nez p0, :cond_c

    .line 277
    .line 278
    if-nez p1, :cond_c

    .line 279
    .line 280
    move v1, v3

    .line 281
    goto :goto_6

    .line 282
    :cond_c
    if-nez p0, :cond_d

    .line 283
    .line 284
    move v1, v2

    .line 285
    goto :goto_6

    .line 286
    :cond_d
    if-nez p1, :cond_e

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 290
    .line 291
    .line 292
    move-result-wide p1

    .line 293
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 294
    .line 295
    .line 296
    move-result-wide v0

    .line 297
    invoke-static {p1, p2, v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    :goto_6
    return v1

    .line 302
    :pswitch_b
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 303
    .line 304
    check-cast p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 305
    .line 306
    iget-boolean p0, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->starred:Z

    .line 307
    .line 308
    iget-object v0, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->sortKey:Ljava/lang/String;

    .line 309
    .line 310
    iget-boolean v4, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->starred:Z

    .line 311
    .line 312
    if-eq p0, v4, :cond_f

    .line 313
    .line 314
    if-eqz p0, :cond_14

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_f
    iget p0, p2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->timesContacted:I

    .line 318
    .line 319
    iget p2, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->timesContacted:I

    .line 320
    .line 321
    sub-int/2addr p0, p2

    .line 322
    if-eqz p0, :cond_10

    .line 323
    .line 324
    move v1, p0

    .line 325
    goto :goto_8

    .line 326
    :cond_10
    iget-object p0, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->sortKey:Ljava/lang/String;

    .line 327
    .line 328
    if-nez p0, :cond_11

    .line 329
    .line 330
    if-nez v0, :cond_11

    .line 331
    .line 332
    move v1, v3

    .line 333
    goto :goto_8

    .line 334
    :cond_11
    if-nez p0, :cond_12

    .line 335
    .line 336
    :goto_7
    move v1, v2

    .line 337
    goto :goto_8

    .line 338
    :cond_12
    if-nez v0, :cond_13

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_13
    sget-object p1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 342
    .line 343
    invoke-interface {p1, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    :cond_14
    :goto_8
    return v1

    .line 348
    :pswitch_c
    check-cast p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 349
    .line 350
    iget-object p0, p2, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 351
    .line 352
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 353
    .line 354
    if-ne p0, v0, :cond_15

    .line 355
    .line 356
    move p0, v2

    .line 357
    goto :goto_9

    .line 358
    :cond_15
    move p0, v3

    .line 359
    :goto_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    check-cast p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 364
    .line 365
    iget-object p1, p1, Lapp/k9mail/legacy/ui/folder/DisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 366
    .line 367
    iget-object p1, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 368
    .line 369
    if-ne p1, v0, :cond_16

    .line 370
    .line 371
    goto :goto_a

    .line 372
    :cond_16
    move v2, v3

    .line 373
    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    return p0

    .line 382
    :pswitch_d
    check-cast p2, Lapp/k9mail/feature/widget/message/list/MessageListItem;

    .line 383
    .line 384
    iget-wide v0, p2, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortMessageDate:J

    .line 385
    .line 386
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    check-cast p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;

    .line 391
    .line 392
    iget-wide p1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortMessageDate:J

    .line 393
    .line 394
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 399
    .line 400
    .line 401
    move-result p0

    .line 402
    return p0

    .line 403
    :pswitch_e
    check-cast p2, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 404
    .line 405
    iget-object p0, p2, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 406
    .line 407
    sget-object p2, Lcom/fsck/k9/mail/FolderType;->INBOX:Lcom/fsck/k9/mail/FolderType;

    .line 408
    .line 409
    if-ne p0, p2, :cond_17

    .line 410
    .line 411
    move p0, v2

    .line 412
    goto :goto_b

    .line 413
    :cond_17
    move p0, v3

    .line 414
    :goto_b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    check-cast p1, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 419
    .line 420
    iget-object p1, p1, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 421
    .line 422
    if-ne p1, p2, :cond_18

    .line 423
    .line 424
    goto :goto_c

    .line 425
    :cond_18
    move v2, v3

    .line 426
    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Object;)I

    .line 431
    .line 432
    .line 433
    move-result p0

    .line 434
    return p0

    .line 435
    :pswitch_f
    check-cast p1, Lorg/minidns/record/MX;

    .line 436
    .line 437
    iget p0, p1, Lorg/minidns/record/MX;->priority:I

    .line 438
    .line 439
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object p0

    .line 443
    check-cast p2, Lorg/minidns/record/MX;

    .line 444
    .line 445
    iget p1, p2, Lorg/minidns/record/MX;->priority:I

    .line 446
    .line 447
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 452
    .line 453
    .line 454
    move-result p0

    .line 455
    return p0

    .line 456
    :pswitch_10
    check-cast p1, [I

    .line 457
    .line 458
    check-cast p2, [I

    .line 459
    .line 460
    aget p0, p1, v3

    .line 461
    .line 462
    aget p1, p2, v3

    .line 463
    .line 464
    sub-int/2addr p0, p1

    .line 465
    return p0

    .line 466
    :pswitch_11
    check-cast p1, Landroidx/room/util/TableInfo$Index;

    .line 467
    .line 468
    iget-object p0, p1, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    .line 469
    .line 470
    check-cast p2, Landroidx/room/util/TableInfo$Index;

    .line 471
    .line 472
    iget-object p1, p2, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    .line 473
    .line 474
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 475
    .line 476
    .line 477
    move-result p0

    .line 478
    return p0

    .line 479
    :pswitch_12
    check-cast p1, Landroidx/room/util/TableInfo$Column;

    .line 480
    .line 481
    iget-object p0, p1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 482
    .line 483
    check-cast p2, Landroidx/room/util/TableInfo$Column;

    .line 484
    .line 485
    iget-object p1, p2, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 486
    .line 487
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 488
    .line 489
    .line 490
    move-result p0

    .line 491
    return p0

    .line 492
    :pswitch_13
    check-cast p1, Ljava/util/Map$Entry;

    .line 493
    .line 494
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object p0

    .line 498
    check-cast p0, Ljava/lang/Integer;

    .line 499
    .line 500
    check-cast p2, Ljava/util/Map$Entry;

    .line 501
    .line 502
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    check-cast p1, Ljava/lang/Integer;

    .line 507
    .line 508
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 509
    .line 510
    .line 511
    move-result p0

    .line 512
    return p0

    .line 513
    :pswitch_14
    check-cast p1, Ljava/util/Map$Entry;

    .line 514
    .line 515
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    check-cast p0, Ljava/lang/Integer;

    .line 520
    .line 521
    check-cast p2, Ljava/util/Map$Entry;

    .line 522
    .line 523
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    check-cast p1, Ljava/lang/Integer;

    .line 528
    .line 529
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 530
    .line 531
    .line 532
    move-result p0

    .line 533
    return p0

    .line 534
    :pswitch_15
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 535
    .line 536
    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 537
    .line 538
    iget-object p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 539
    .line 540
    if-nez p0, :cond_19

    .line 541
    .line 542
    move v0, v2

    .line 543
    goto :goto_d

    .line 544
    :cond_19
    move v0, v3

    .line 545
    :goto_d
    iget-object v4, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 546
    .line 547
    if-nez v4, :cond_1a

    .line 548
    .line 549
    move v4, v2

    .line 550
    goto :goto_e

    .line 551
    :cond_1a
    move v4, v3

    .line 552
    :goto_e
    if-eq v0, v4, :cond_1b

    .line 553
    .line 554
    if-nez p0, :cond_20

    .line 555
    .line 556
    goto :goto_f

    .line 557
    :cond_1b
    iget-boolean p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 558
    .line 559
    iget-boolean v0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 560
    .line 561
    if-eq p0, v0, :cond_1d

    .line 562
    .line 563
    if-eqz p0, :cond_1c

    .line 564
    .line 565
    goto :goto_10

    .line 566
    :cond_1c
    :goto_f
    move v1, v2

    .line 567
    goto :goto_10

    .line 568
    :cond_1d
    iget p0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 569
    .line 570
    iget v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 571
    .line 572
    sub-int v1, p0, v0

    .line 573
    .line 574
    if-eqz v1, :cond_1e

    .line 575
    .line 576
    goto :goto_10

    .line 577
    :cond_1e
    iget p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 578
    .line 579
    iget p1, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 580
    .line 581
    sub-int v1, p0, p1

    .line 582
    .line 583
    if-eqz v1, :cond_1f

    .line 584
    .line 585
    goto :goto_10

    .line 586
    :cond_1f
    move v1, v3

    .line 587
    :cond_20
    :goto_10
    return v1

    .line 588
    :pswitch_16
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 589
    .line 590
    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 591
    .line 592
    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 593
    .line 594
    iget p1, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 595
    .line 596
    sub-int/2addr p0, p1

    .line 597
    return p0

    .line 598
    :pswitch_17
    check-cast p1, Landroid/view/View;

    .line 599
    .line 600
    check-cast p2, Landroid/view/View;

    .line 601
    .line 602
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 603
    .line 604
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    .line 605
    .line 606
    .line 607
    move-result p0

    .line 608
    invoke-virtual {p2}, Landroid/view/View;->getZ()F

    .line 609
    .line 610
    .line 611
    move-result p1

    .line 612
    cmpl-float p2, p0, p1

    .line 613
    .line 614
    if-lez p2, :cond_21

    .line 615
    .line 616
    goto :goto_11

    .line 617
    :cond_21
    cmpg-float p0, p0, p1

    .line 618
    .line 619
    if-gez p0, :cond_22

    .line 620
    .line 621
    move v1, v2

    .line 622
    goto :goto_11

    .line 623
    :cond_22
    move v1, v3

    .line 624
    :goto_11
    return v1

    .line 625
    :pswitch_18
    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    .line 626
    .line 627
    check-cast p2, Landroidx/constraintlayout/core/SolverVariable;

    .line 628
    .line 629
    iget p0, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 630
    .line 631
    iget p1, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 632
    .line 633
    sub-int/2addr p0, p1

    .line 634
    return p0

    .line 635
    :pswitch_19
    check-cast p1, Lkotlin/Pair;

    .line 636
    .line 637
    iget-object p0, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 638
    .line 639
    check-cast p0, Ljava/lang/String;

    .line 640
    .line 641
    check-cast p2, Lkotlin/Pair;

    .line 642
    .line 643
    iget-object p1, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 644
    .line 645
    check-cast p1, Ljava/lang/String;

    .line 646
    .line 647
    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 648
    .line 649
    .line 650
    move-result p0

    .line 651
    return p0

    .line 652
    :pswitch_1a
    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 653
    .line 654
    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 655
    .line 656
    iget p0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 657
    .line 658
    iget p1, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 659
    .line 660
    sub-int/2addr p0, p1

    .line 661
    return p0

    .line 662
    nop

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
