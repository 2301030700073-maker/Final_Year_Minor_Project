.class public final synthetic Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/download/DownloadDialog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

.field public final synthetic f$3:Landroid/net/Uri;

.field public final synthetic f$4:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/download/DownloadDialog;ILorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

    .line 5
    .line 6
    iput p2, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$2:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$3:Landroid/net/Uri;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$4:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lorg/schabi/newpipe/download/DownloadDialog;->$r8$clinit:I

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6
    .line 7
    .line 8
    iget v1, v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$1:I

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

    .line 15
    .line 16
    iget-object v3, v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$4:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 17
    .line 18
    iget-object v4, v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$5:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$6:Ljava/lang/String;

    .line 21
    .line 22
    const v6, 0x7f130156

    .line 23
    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    if-eqz v1, :cond_11

    .line 28
    .line 29
    const/4 v9, 0x1

    .line 30
    if-eq v1, v9, :cond_10

    .line 31
    .line 32
    const/4 v10, 0x2

    .line 33
    if-eq v1, v10, :cond_0

    .line 34
    .line 35
    const/4 v9, 0x3

    .line 36
    if-eq v1, v9, :cond_10

    .line 37
    .line 38
    goto/16 :goto_e

    .line 39
    .line 40
    :cond_0
    iget-object v1, v3, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    .line 41
    .line 42
    new-instance v10, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x2e

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ltz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    sub-int/2addr v11, v9

    .line 60
    if-ne v0, v11, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    filled-new-array {v11, v0}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_0
    move-object v11, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    const-string v0, ""

    .line 78
    .line 79
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_0

    .line 84
    :goto_2
    aget-object v0, v11, v8

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    iget-object v0, v3, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/TreeDocumentFile;

    .line 91
    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    :try_start_0
    invoke-static {v1}, Lj$/nio/file/Files;->list(Lj$/nio/file/Path;)Lj$/util/stream/Stream;

    .line 95
    .line 96
    .line 97
    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/16 v14, 0x16

    .line 101
    .line 102
    invoke-direct {v0, v14}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v13, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v14, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;

    .line 110
    .line 111
    const/16 v15, 0xc

    .line 112
    .line 113
    invoke-direct {v14, v12, v15}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v14}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    invoke-interface {v0, v14}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/util/Collection;

    .line 129
    .line 130
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    :try_start_2
    invoke-interface {v13}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    .line 135
    .line 136
    goto/16 :goto_9

    .line 137
    .line 138
    :catch_0
    move-exception v0

    .line 139
    goto :goto_4

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    move-object v14, v0

    .line 142
    if-eqz v13, :cond_3

    .line 143
    .line 144
    :try_start_3
    invoke-interface {v13}, Lj$/util/stream/BaseStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    :try_start_4
    invoke-virtual {v14, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    :goto_3
    throw v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 153
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v14, "Exception while traversing "

    .line 156
    .line 157
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const-string v13, "StoredDirectoryHelper"

    .line 168
    .line 169
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_4
    iget-object v0, v0, Landroidx/documentfile/provider/TreeDocumentFile;->mUri:Landroid/net/Uri;

    .line 174
    .line 175
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    const-string v0, "_display_name"

    .line 184
    .line 185
    filled-new-array {v0}, [Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    iget-object v0, v3, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    filled-new-array {v12}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v17

    .line 199
    const/16 v18, 0x0

    .line 200
    .line 201
    const-string v16, "(LOWER(_display_name) LIKE ?%"

    .line 202
    .line 203
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-eqz v1, :cond_7

    .line 208
    .line 209
    :cond_5
    :goto_5
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_7

    .line 214
    .line 215
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-eqz v13, :cond_6

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    if-eqz v13, :cond_5

    .line 235
    .line 236
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :goto_6
    move-object v2, v0

    .line 241
    goto :goto_7

    .line 242
    :catchall_2
    move-exception v0

    .line 243
    goto :goto_6

    .line 244
    :goto_7
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 245
    .line 246
    .line 247
    goto :goto_8

    .line 248
    :catchall_3
    move-exception v0

    .line 249
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    :goto_8
    throw v2

    .line 253
    :cond_7
    if-eqz v1, :cond_8

    .line 254
    .line 255
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 256
    .line 257
    .line 258
    :cond_8
    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_9

    .line 263
    .line 264
    invoke-virtual {v3, v4, v5, v9}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    goto/16 :goto_c

    .line 269
    .line 270
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    if-eqz v13, :cond_b

    .line 283
    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v13

    .line 288
    check-cast v13, Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v13

    .line 294
    if-eqz v13, :cond_a

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_b
    move-object v7, v0

    .line 298
    :goto_a
    if-eqz v7, :cond_c

    .line 299
    .line 300
    invoke-virtual {v3, v4, v5, v9}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    goto :goto_c

    .line 305
    :cond_c
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;

    .line 306
    .line 307
    const/16 v1, 0xb

    .line 308
    .line 309
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;-><init>(I)V

    .line 310
    .line 311
    .line 312
    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 313
    .line 314
    .line 315
    move v0, v9

    .line 316
    :goto_b
    const/16 v1, 0x3e8

    .line 317
    .line 318
    if-ge v0, v1, :cond_e

    .line 319
    .line 320
    aget-object v1, v11, v9

    .line 321
    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v7, "("

    .line 331
    .line 332
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v13, ")"

    .line 339
    .line 340
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v10, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-gez v1, :cond_d

    .line 355
    .line 356
    aget-object v1, v11, v8

    .line 357
    .line 358
    aget-object v4, v11, v9

    .line 359
    .line 360
    new-instance v8, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v3, v0, v5, v9}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    goto :goto_c

    .line 389
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 390
    .line 391
    goto :goto_b

    .line 392
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 393
    .line 394
    .line 395
    move-result-wide v0

    .line 396
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    aget-object v1, v11, v9

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v3, v0, v5, v8}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    :goto_c
    if-nez v0, :cond_f

    .line 411
    .line 412
    invoke-virtual {v2, v6}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 413
    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_f
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    .line 417
    .line 418
    .line 419
    goto :goto_e

    .line 420
    :cond_10
    iget-object v1, v2, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 421
    .line 422
    iget-object v9, v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$2:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 423
    .line 424
    invoke-virtual {v1, v9}, Lus/shandian/giga/service/DownloadManager;->forgetMission(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    .line 425
    .line 426
    .line 427
    :cond_11
    iget-object v0, v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;->f$3:Landroid/net/Uri;

    .line 428
    .line 429
    if-nez v0, :cond_12

    .line 430
    .line 431
    invoke-virtual {v3, v4, v5, v8}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    goto :goto_d

    .line 436
    :cond_12
    :try_start_7
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 437
    .line 438
    iget-object v4, v2, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 439
    .line 440
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    iget-object v3, v3, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->tag:Ljava/lang/String;

    .line 445
    .line 446
    invoke-direct {v1, v4, v5, v0, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 447
    .line 448
    .line 449
    move-object v7, v1

    .line 450
    goto :goto_d

    .line 451
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    const-string v3, "Failed to take (or steal) the file in "

    .line 454
    .line 455
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    const-string v1, "DialogFragment"

    .line 470
    .line 471
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    :goto_d
    if-eqz v7, :cond_13

    .line 475
    .line 476
    invoke-virtual {v7}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->canWrite()Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-eqz v0, :cond_13

    .line 481
    .line 482
    invoke-virtual {v2, v7}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    .line 483
    .line 484
    .line 485
    goto :goto_e

    .line 486
    :cond_13
    invoke-virtual {v2, v6}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 487
    .line 488
    .line 489
    :goto_e
    return-void
.end method
