.class public final synthetic Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3;->f$0:Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    .line 1
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    .line 2
    .line 3
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem$$ExternalSyntheticLambda3;->f$0:Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 4
    .line 5
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 6
    .line 7
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 19
    .line 20
    iget-object v2, v2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lus/shandian/giga/get/Mission;

    .line 23
    .line 24
    instance-of v4, v2, Lus/shandian/giga/get/DownloadMission;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    move-object v4, v2

    .line 30
    check-cast v4, Lus/shandian/giga/get/DownloadMission;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v4, v5

    .line 34
    :goto_0
    const/4 v6, 0x0

    .line 35
    if-eqz v4, :cond_15

    .line 36
    .line 37
    const v7, 0x7f0a0393

    .line 38
    .line 39
    .line 40
    if-ne p1, v7, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    .line 43
    .line 44
    const-string p1, "--.-%"

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-boolean p0, v4, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 55
    .line 56
    if-nez p0, :cond_d

    .line 57
    .line 58
    invoke-virtual {v4}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 59
    .line 60
    .line 61
    return v3

    .line 62
    :cond_2
    const v7, 0x7f0a02d5

    .line 63
    .line 64
    .line 65
    if-ne p1, v7, :cond_3

    .line 66
    .line 67
    iget-object p0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-boolean p0, v4, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 73
    .line 74
    if-eqz p0, :cond_d

    .line 75
    .line 76
    iput-boolean v6, v4, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    .line 77
    .line 78
    new-instance p0, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-direct {p0, v4, v3}, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/get/DownloadMission;I)V

    .line 81
    .line 82
    .line 83
    new-instance p1, Ljava/lang/Thread;

    .line 84
    .line 85
    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Lus/shandian/giga/get/DownloadMission;->pause()V

    .line 92
    .line 93
    .line 94
    return v3

    .line 95
    :cond_3
    const v7, 0x7f0a0159

    .line 96
    .line 97
    .line 98
    const/4 v8, -0x1

    .line 99
    if-ne p1, v7, :cond_e

    .line 100
    .line 101
    iget p0, v4, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 102
    .line 103
    if-eq p0, v8, :cond_d

    .line 104
    .line 105
    const/16 p1, 0xcc

    .line 106
    .line 107
    const/16 v2, 0x258

    .line 108
    .line 109
    const/16 v6, 0x64

    .line 110
    .line 111
    if-eq p0, p1, :cond_9

    .line 112
    .line 113
    const/16 p1, 0x194

    .line 114
    .line 115
    if-eq p0, p1, :cond_8

    .line 116
    .line 117
    const/16 p1, 0x1a0

    .line 118
    .line 119
    if-eq p0, p1, :cond_7

    .line 120
    .line 121
    const p1, 0x7f1301f3

    .line 122
    .line 123
    .line 124
    packed-switch p0, :pswitch_data_0

    .line 125
    .line 126
    .line 127
    if-lt p0, v6, :cond_4

    .line 128
    .line 129
    if-ge p0, v2, :cond_4

    .line 130
    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v0, "HTTP "

    .line 134
    .line 135
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget v0, v4, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    iget-object p0, v4, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 149
    .line 150
    if-nez p0, :cond_5

    .line 151
    .line 152
    const-string v5, "(not_decelerated_error_code)"

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_5
    invoke-virtual {v1, v4, v0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V

    .line 156
    .line 157
    .line 158
    return v3

    .line 159
    :pswitch_0
    const p1, 0x7f130155

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :pswitch_1
    const p1, 0x7f13016e

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :pswitch_2
    const p1, 0x7f130161

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :pswitch_3
    const p1, 0x7f13015c

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :pswitch_4
    const p1, 0x7f130160

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :pswitch_5
    sget-object p0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_POSTPROCESSING:Lorg/schabi/newpipe/error/UserAction;

    .line 180
    .line 181
    const p1, 0x7f13015f

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v4, p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V

    .line 185
    .line 186
    .line 187
    return v3

    .line 188
    :pswitch_6
    const p1, 0x7f130153

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :pswitch_7
    const p1, 0x7f130170

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :pswitch_8
    const p1, 0x7f13016d

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :pswitch_9
    const p1, 0x7f1303bd

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :pswitch_a
    iget-object p0, v4, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 205
    .line 206
    if-eqz p0, :cond_6

    .line 207
    .line 208
    invoke-virtual {v1, v4, v0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V

    .line 209
    .line 210
    .line 211
    return v3

    .line 212
    :cond_6
    const p1, 0x7f130300

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :pswitch_b
    const p1, 0x7f130156

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :pswitch_c
    const p1, 0x7f13015e

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_7
    const p1, 0x7f130159

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_8
    const p1, 0x7f130158

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_9
    const p1, 0x7f130157

    .line 233
    .line 234
    .line 235
    :goto_1
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 236
    .line 237
    iget-object v0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 238
    .line 239
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .line 241
    .line 242
    if-eqz v5, :cond_a

    .line 243
    .line 244
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 245
    .line 246
    iput-object v5, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 250
    .line 251
    .line 252
    :goto_2
    iget-object v0, v4, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 253
    .line 254
    if-eqz v0, :cond_c

    .line 255
    .line 256
    iget v0, v4, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 257
    .line 258
    if-lt v0, v6, :cond_b

    .line 259
    .line 260
    if-lt v0, v2, :cond_c

    .line 261
    .line 262
    :cond_b
    new-instance v0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;

    .line 263
    .line 264
    invoke-direct {v0, v1, v4, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda5;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/get/DownloadMission;I)V

    .line 265
    .line 266
    .line 267
    const p1, 0x7f13016a

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 271
    .line 272
    .line 273
    :cond_c
    new-instance p1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;

    .line 274
    .line 275
    const/4 v0, 0x7

    .line 276
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;-><init>(I)V

    .line 277
    .line 278
    .line 279
    const v0, 0x7f130397

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    iget-object p1, v4, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 287
    .line 288
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 297
    .line 298
    .line 299
    :cond_d
    :goto_3
    return v3

    .line 300
    :cond_e
    const v0, 0x7f0a0324

    .line 301
    .line 302
    .line 303
    if-ne p1, v0, :cond_f

    .line 304
    .line 305
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    .line 306
    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    xor-int/2addr p1, v3

    .line 312
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    .line 313
    .line 314
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 315
    .line 316
    .line 317
    iput-boolean p1, v4, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    .line 318
    .line 319
    new-instance p1, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;

    .line 320
    .line 321
    invoke-direct {p1, v4, v3}, Lus/shandian/giga/get/DownloadMission$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/get/DownloadMission;I)V

    .line 322
    .line 323
    .line 324
    new-instance v0, Ljava/lang/Thread;

    .line 325
    .line 326
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    .line 333
    .line 334
    .line 335
    return v3

    .line 336
    :cond_f
    const v0, 0x7f0a0335

    .line 337
    .line 338
    .line 339
    if-ne p1, v0, :cond_14

    .line 340
    .line 341
    invoke-virtual {v4}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    .line 342
    .line 343
    .line 344
    move-result p0

    .line 345
    if-eqz p0, :cond_10

    .line 346
    .line 347
    iput v3, v4, Lus/shandian/giga/get/DownloadMission;->psState:I

    .line 348
    .line 349
    iput v8, v4, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 350
    .line 351
    iget-object p0, v4, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 352
    .line 353
    aget-object p0, p0, v6

    .line 354
    .line 355
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 356
    .line 357
    .line 358
    return v3

    .line 359
    :cond_10
    iget-object p0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 360
    .line 361
    invoke-virtual {p0, v4}, Lus/shandian/giga/service/DownloadManager;->tryRecover(Lus/shandian/giga/get/DownloadMission;)V

    .line 362
    .line 363
    .line 364
    iget-object p0, v4, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 365
    .line 366
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    if-eqz p0, :cond_13

    .line 371
    .line 372
    iget-object p0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mRecover:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 373
    .line 374
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast p0, Lus/shandian/giga/ui/fragment/MissionsFragment;

    .line 377
    .line 378
    iput-object v4, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    .line 379
    .line 380
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 381
    .line 382
    invoke-static {p1}, Lokio/Options$Companion;->useStorageAccessFramework(Landroid/content/Context;)Z

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-eqz p1, :cond_11

    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_11
    iget-object p1, v4, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 390
    .line 391
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    const-string v0, "audio"

    .line 396
    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_12

    .line 402
    .line 403
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 404
    .line 405
    new-instance v0, Ljava/io/File;

    .line 406
    .line 407
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    goto :goto_4

    .line 415
    :cond_12
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 416
    .line 417
    new-instance v0, Ljava/io/File;

    .line 418
    .line 419
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    :goto_5
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 435
    .line 436
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 437
    .line 438
    iget-object v1, v4, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 439
    .line 440
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    iget-object v2, v4, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 445
    .line 446
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-static {v0, v1, v2, v5}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    const-string v1, "MissionsFragment"

    .line 455
    .line 456
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 457
    .line 458
    invoke-static {p1, v0, v1, p0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 459
    .line 460
    .line 461
    return v3

    .line 462
    :cond_13
    invoke-virtual {v1, v4}, Lus/shandian/giga/ui/adapter/MissionAdapter;->recoverMission(Lus/shandian/giga/get/DownloadMission;)V

    .line 463
    .line 464
    .line 465
    return v3

    .line 466
    :cond_14
    const v0, 0x7f0a009a

    .line 467
    .line 468
    .line 469
    if-ne p1, v0, :cond_15

    .line 470
    .line 471
    iput v3, v4, Lus/shandian/giga/get/DownloadMission;->psState:I

    .line 472
    .line 473
    const/16 p0, 0x3ef

    .line 474
    .line 475
    iput p0, v4, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 476
    .line 477
    iget-object p0, v4, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 478
    .line 479
    aget-object p0, p0, v6

    .line 480
    .line 481
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 482
    .line 483
    .line 484
    return v6

    .line 485
    :cond_15
    const v0, 0x7f0a024d

    .line 486
    .line 487
    .line 488
    const v4, 0x7f1302f7

    .line 489
    .line 490
    .line 491
    if-ne p1, v0, :cond_18

    .line 492
    .line 493
    iget-object p0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 494
    .line 495
    iget-object p1, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 496
    .line 497
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    .line 498
    .line 499
    .line 500
    move-result p1

    .line 501
    if-eqz p1, :cond_17

    .line 502
    .line 503
    new-instance p1, Landroid/content/Intent;

    .line 504
    .line 505
    const-string v0, "android.intent.action.SEND"

    .line 506
    .line 507
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-static {v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveMimeType(Lus/shandian/giga/get/Mission;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    .line 516
    .line 517
    const-string v0, "android.intent.extra.STREAM"

    .line 518
    .line 519
    invoke-virtual {v1, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->resolveShareableUri(Lus/shandian/giga/get/Mission;)Landroid/net/Uri;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 527
    .line 528
    .line 529
    invoke-static {p1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 534
    .line 535
    const/16 v1, 0x1b

    .line 536
    .line 537
    if-gt v0, v1, :cond_16

    .line 538
    .line 539
    const v0, 0x7f130470

    .line 540
    .line 541
    .line 542
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    const-string v1, "android.intent.extra.TITLE"

    .line 547
    .line 548
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    .line 550
    .line 551
    :cond_16
    const/high16 v0, 0x10000000

    .line 552
    .line 553
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 560
    .line 561
    .line 562
    return v3

    .line 563
    :cond_17
    iget-object p0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 564
    .line 565
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 566
    .line 567
    .line 568
    move-result-object p0

    .line 569
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 570
    .line 571
    .line 572
    return v3

    .line 573
    :cond_18
    const v0, 0x7f0a00e8

    .line 574
    .line 575
    .line 576
    if-ne p1, v0, :cond_19

    .line 577
    .line 578
    iget-object p0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    .line 579
    .line 580
    invoke-virtual {p0, v2, v3}, Lus/shandian/giga/ui/common/Deleter;->append(Lus/shandian/giga/get/Mission;Z)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    .line 587
    .line 588
    .line 589
    return v3

    .line 590
    :cond_19
    const v0, 0x7f0a00ea

    .line 591
    .line 592
    .line 593
    if-ne p1, v0, :cond_1a

    .line 594
    .line 595
    iget-object p0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    .line 596
    .line 597
    invoke-virtual {p0, v2, v6}, Lus/shandian/giga/ui/common/Deleter;->append(Lus/shandian/giga/get/Mission;Z)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    .line 604
    .line 605
    .line 606
    return v3

    .line 607
    :cond_1a
    const v0, 0x7f0a023a

    .line 608
    .line 609
    .line 610
    if-eq p1, v0, :cond_1d

    .line 611
    .line 612
    const v0, 0x7f0a036d

    .line 613
    .line 614
    .line 615
    if-ne p1, v0, :cond_1b

    .line 616
    .line 617
    goto :goto_6

    .line 618
    :cond_1b
    const p0, 0x7f0a0383

    .line 619
    .line 620
    .line 621
    if-ne p1, p0, :cond_1c

    .line 622
    .line 623
    :try_start_0
    iget-object p0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 624
    .line 625
    iget-object p1, v2, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 626
    .line 627
    invoke-static {p1}, Lus/shandian/giga/util/Utility;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-static {p0, v0, p1}, Landroidx/sqlite/SQLite;->getIntentByLink(Landroid/content/Context;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    .line 633
    .line 634
    move-result-object p0

    .line 635
    const/high16 p1, 0x1000000

    .line 636
    .line 637
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 638
    .line 639
    .line 640
    iget-object p1, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 641
    .line 642
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .line 644
    .line 645
    return v3

    .line 646
    :catch_0
    move-exception p0

    .line 647
    const-string p1, "MissionAdapter"

    .line 648
    .line 649
    const-string v0, "Selected item has a invalid source"

    .line 650
    .line 651
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    .line 653
    .line 654
    return v3

    .line 655
    :cond_1c
    return v6

    .line 656
    :cond_1d
    :goto_6
    iget-object v0, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 657
    .line 658
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    iget-object v5, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 663
    .line 664
    if-nez v2, :cond_1e

    .line 665
    .line 666
    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 667
    .line 668
    .line 669
    move-result-object p1

    .line 670
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 671
    .line 672
    .line 673
    iget-object p1, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    .line 674
    .line 675
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 676
    .line 677
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast p0, Lus/shandian/giga/get/Mission;

    .line 680
    .line 681
    invoke-virtual {p1, p0, v3}, Lus/shandian/giga/ui/common/Deleter;->append(Lus/shandian/giga/get/Mission;Z)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 685
    .line 686
    .line 687
    return v3

    .line 688
    :cond_1e
    const-class p0, Landroid/app/NotificationManager;

    .line 689
    .line 690
    invoke-virtual {v5, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object p0

    .line 694
    check-cast p0, Landroid/app/NotificationManager;

    .line 695
    .line 696
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    .line 697
    .line 698
    iget-object v4, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 699
    .line 700
    const v5, 0x7f1301fc

    .line 701
    .line 702
    .line 703
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v5

    .line 707
    invoke-direct {v2, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 711
    .line 712
    const v4, 0x7f08012d

    .line 713
    .line 714
    .line 715
    iget-object v5, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 716
    .line 717
    iput v4, v5, Landroid/app/Notification;->icon:I

    .line 718
    .line 719
    iget-object v4, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 720
    .line 721
    const v5, 0x7f1302fe

    .line 722
    .line 723
    .line 724
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    iput-object v4, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 733
    .line 734
    iget-object v4, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 735
    .line 736
    const v5, 0x7f130307

    .line 737
    .line 738
    .line 739
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v4

    .line 743
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    iput-object v4, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 748
    .line 749
    invoke-virtual {v2, v6, v6, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)V

    .line 750
    .line 751
    .line 752
    const/4 v4, 0x2

    .line 753
    invoke-virtual {v2, v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 754
    .line 755
    .line 756
    const v5, 0x1e38e

    .line 757
    .line 758
    .line 759
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    invoke-virtual {p0, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 764
    .line 765
    .line 766
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 767
    .line 768
    new-instance v5, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;

    .line 769
    .line 770
    invoke-direct {v5, v0, p1, v4}, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    .line 771
    .line 772
    .line 773
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromCallable;

    .line 774
    .line 775
    invoke-direct {p1, v5}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 776
    .line 777
    .line 778
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;

    .line 779
    .line 780
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 781
    .line 782
    .line 783
    move-result-object p1

    .line 784
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    new-instance v0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;

    .line 793
    .line 794
    invoke-direct {v0, v1, p0, v3}, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 795
    .line 796
    .line 797
    sget-object p0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 798
    .line 799
    new-instance v1, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 800
    .line 801
    invoke-direct {v1, v0, p0}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 808
    .line 809
    .line 810
    return v3

    .line 811
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
