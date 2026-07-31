.class public final Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

.field public final sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/Attachment;I)V
    .locals 1

    .line 1
    iput p3, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p3, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p2, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 11
    .line 12
    sget-object p3, Lcom/fsck/k9/message/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 13
    .line 14
    if-ne p1, p3, :cond_0

    .line 15
    .line 16
    iput-object p2, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "Attachment provided to metadata loader must be in URI_ONLY state"

    .line 20
    .line 21
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p2, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 29
    .line 30
    sget-object p3, Lcom/fsck/k9/message/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 31
    .line 32
    if-ne p1, p3, :cond_1

    .line 33
    .line 34
    iput-object p2, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string p0, "Attachment provided to content loader must be in METADATA state"

    .line 38
    .line 39
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final loadInBackground()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/loader/content/AsyncTaskLoader;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string v0, "attachment"

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-static {v0, v4, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 26
    .line 27
    .line 28
    const-string v7, "Saving attachment to %s"

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    new-array v9, v5, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object v8, v9, v6

    .line 37
    .line 38
    invoke-static {v7, v9}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v7, v3, Lcom/fsck/k9/activity/misc/Attachment;->isInternalAttachment:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    iget-object v8, v3, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 44
    .line 45
    if-eqz v7, :cond_0

    .line 46
    .line 47
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto :goto_3

    .line 58
    :cond_0
    new-instance v7, Lcom/google/zxing/BinaryBitmap;

    .line 59
    .line 60
    invoke-direct {v7, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v8}, Lcom/google/zxing/BinaryBitmap;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_0
    if-nez v2, :cond_1

    .line 68
    .line 69
    const-string v0, "Error opening attachment for reading: %s"

    .line 70
    .line 71
    new-array v2, v5, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v8, v2, v6

    .line 74
    .line 75
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/fsck/k9/activity/misc/Attachment;->deriveWithLoadCancelled()Lcom/fsck/k9/activity/misc/Attachment;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, v1, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    .line 86
    .line 87
    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    :try_start_3
    invoke-static {v2, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    .line 92
    .line 93
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    .line 95
    .line 96
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    iget-object v0, v3, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 104
    .line 105
    sget-object v2, Lcom/fsck/k9/message/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 106
    .line 107
    if-ne v0, v2, :cond_2

    .line 108
    .line 109
    new-instance v7, Lcom/fsck/k9/activity/misc/Attachment;

    .line 110
    .line 111
    iget-object v8, v3, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 112
    .line 113
    sget-object v9, Lcom/fsck/k9/message/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 114
    .line 115
    iget v10, v3, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 116
    .line 117
    iget-object v11, v3, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 118
    .line 119
    iget-boolean v12, v3, Lcom/fsck/k9/activity/misc/Attachment;->allowMessageType:Z

    .line 120
    .line 121
    iget-object v13, v3, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v14, v3, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    .line 124
    .line 125
    iget-boolean v0, v3, Lcom/fsck/k9/activity/misc/Attachment;->isInternalAttachment:Z

    .line 126
    .line 127
    move/from16 v16, v0

    .line 128
    .line 129
    invoke-direct/range {v7 .. v16}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/message/Attachment$LoadingState;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    move-object v4, v7

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    const-string v0, "deriveWithLoadComplete can only be called on a METADATA attachment!"

    .line 135
    .line 136
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    iput-object v4, v1, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 140
    .line 141
    move-object v0, v4

    .line 142
    goto :goto_4

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    goto :goto_2

    .line 145
    :catchall_1
    move-exception v0

    .line 146
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 147
    .line 148
    .line 149
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 150
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 151
    .line 152
    .line 153
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 154
    :goto_3
    const-string v2, "Error saving attachment!"

    .line 155
    .line 156
    new-array v4, v6, [Ljava/lang/Object;

    .line 157
    .line 158
    invoke-static {v0, v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/fsck/k9/activity/misc/Attachment;->deriveWithLoadCancelled()Lcom/fsck/k9/activity/misc/Attachment;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput-object v0, v1, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 166
    .line 167
    :goto_4
    return-object v0

    .line 168
    :pswitch_0
    :try_start_8
    iget-object v8, v3, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 169
    .line 170
    iget-object v0, v3, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    const-string v2, "_display_name"

    .line 177
    .line 178
    const-string v9, "_size"

    .line 179
    .line 180
    filled-new-array {v2, v9}, [Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    const/4 v11, 0x0

    .line 185
    const/4 v12, 0x0

    .line 186
    const/4 v10, 0x0

    .line 187
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 188
    .line 189
    .line 190
    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 191
    const-wide/16 v9, -0x1

    .line 192
    .line 193
    if-eqz v2, :cond_4

    .line 194
    .line 195
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    if-eqz v11, :cond_3

    .line 200
    .line 201
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 206
    .line 207
    .line 208
    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 209
    int-to-long v10, v10

    .line 210
    goto :goto_5

    .line 211
    :catchall_2
    move-exception v0

    .line 212
    goto :goto_6

    .line 213
    :cond_3
    move-wide v10, v9

    .line 214
    move-object v9, v4

    .line 215
    :goto_5
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 216
    .line 217
    .line 218
    goto :goto_7

    .line 219
    :catch_1
    move-exception v0

    .line 220
    goto/16 :goto_b

    .line 221
    .line 222
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :cond_4
    move-wide v10, v9

    .line 227
    move-object v9, v4

    .line 228
    :goto_7
    if-nez v9, :cond_5

    .line 229
    .line 230
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    :cond_5
    move-object v13, v9

    .line 235
    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    if-nez v2, :cond_6

    .line 240
    .line 241
    if-eqz v0, :cond_6

    .line 242
    .line 243
    const/16 v7, 0x2a

    .line 244
    .line 245
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    const/4 v9, -0x1

    .line 250
    if-eq v7, v9, :cond_6

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_6
    move-object v0, v2

    .line 254
    :goto_8
    if-nez v0, :cond_7

    .line 255
    .line 256
    invoke-static {v13}, Lcom/fsck/k9/helper/FileHelper;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    :cond_7
    iget-boolean v2, v3, Lcom/fsck/k9/activity/misc/Attachment;->allowMessageType:Z

    .line 261
    .line 262
    if-nez v2, :cond_8

    .line 263
    .line 264
    if-eqz v0, :cond_8

    .line 265
    .line 266
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    const-string v7, "message/"

    .line 273
    .line 274
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_8

    .line 279
    .line 280
    const-string v0, "application/octet-stream"

    .line 281
    .line 282
    :cond_8
    const-wide/16 v14, 0x0

    .line 283
    .line 284
    cmp-long v2, v10, v14

    .line 285
    .line 286
    if-gtz v2, :cond_a

    .line 287
    .line 288
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    const-string v7, "file://"

    .line 293
    .line 294
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-eqz v7, :cond_9

    .line 299
    .line 300
    new-instance v7, Ljava/io/File;

    .line 301
    .line 302
    const/4 v8, 0x7

    .line 303
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 311
    .line 312
    .line 313
    move-result-wide v10

    .line 314
    goto :goto_9

    .line 315
    :cond_9
    const-string v7, "Not a file: %s"

    .line 316
    .line 317
    new-array v8, v5, [Ljava/lang/Object;

    .line 318
    .line 319
    aput-object v2, v8, v6

    .line 320
    .line 321
    invoke-static {v7, v8}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_a
    const-string v2, "old attachment.size: %d"

    .line 326
    .line 327
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    new-array v8, v5, [Ljava/lang/Object;

    .line 332
    .line 333
    aput-object v7, v8, v6

    .line 334
    .line 335
    invoke-static {v2, v8}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :goto_9
    const-string v2, "new attachment.size: %d"

    .line 339
    .line 340
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    new-array v5, v5, [Ljava/lang/Object;

    .line 345
    .line 346
    aput-object v7, v5, v6

    .line 347
    .line 348
    invoke-static {v2, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v3, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 352
    .line 353
    sget-object v5, Lcom/fsck/k9/message/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 354
    .line 355
    if-ne v2, v5, :cond_b

    .line 356
    .line 357
    new-instance v7, Lcom/fsck/k9/activity/misc/Attachment;

    .line 358
    .line 359
    iget-object v8, v3, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 360
    .line 361
    sget-object v9, Lcom/fsck/k9/message/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 362
    .line 363
    move-wide v4, v10

    .line 364
    iget v10, v3, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 365
    .line 366
    iget-boolean v12, v3, Lcom/fsck/k9/activity/misc/Attachment;->allowMessageType:Z

    .line 367
    .line 368
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 369
    .line 370
    .line 371
    move-result-object v14

    .line 372
    iget-boolean v2, v3, Lcom/fsck/k9/activity/misc/Attachment;->isInternalAttachment:Z

    .line 373
    .line 374
    const/4 v15, 0x0

    .line 375
    move-object v11, v0

    .line 376
    move/from16 v16, v2

    .line 377
    .line 378
    invoke-direct/range {v7 .. v16}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/message/Attachment$LoadingState;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 379
    .line 380
    .line 381
    move-object v4, v7

    .line 382
    goto :goto_a

    .line 383
    :cond_b
    const-string v0, "deriveWithMetadataLoaded can only be called on a URI_ONLY attachment!"

    .line 384
    .line 385
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :goto_a
    iput-object v4, v1, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 389
    .line 390
    goto :goto_c

    .line 391
    :goto_b
    const-string v2, "Error getting attachment meta data"

    .line 392
    .line 393
    new-array v4, v6, [Ljava/lang/Object;

    .line 394
    .line 395
    invoke-static {v0, v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Lcom/fsck/k9/activity/misc/Attachment;->deriveWithLoadCancelled()Lcom/fsck/k9/activity/misc/Attachment;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    iput-object v4, v1, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 403
    .line 404
    :goto_c
    return-object v4

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartLoading()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->sourceAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->takeContentChanged()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->forceLoad()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->takeContentChanged()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;->cachedResultAttachment:Lcom/fsck/k9/activity/misc/Attachment;

    .line 43
    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    :cond_4
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->forceLoad()V

    .line 47
    .line 48
    .line 49
    :cond_5
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
