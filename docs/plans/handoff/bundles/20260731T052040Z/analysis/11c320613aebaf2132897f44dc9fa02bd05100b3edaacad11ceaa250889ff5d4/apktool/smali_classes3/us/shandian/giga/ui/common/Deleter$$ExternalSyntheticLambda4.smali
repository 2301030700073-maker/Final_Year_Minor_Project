.class public final synthetic Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget p1, p0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object p0, p0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 15
    .line 16
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lus/shandian/giga/get/Mission;

    .line 35
    .line 36
    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    .line 49
    .line 50
    const-string p1, "deleteFinishedDownloads"

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->tabList:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->values()[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    array-length v5, v2

    .line 74
    move v6, v3

    .line 75
    :goto_1
    if-ge v6, v5, :cond_4

    .line 76
    .line 77
    aget-object v7, v2, v6

    .line 78
    .line 79
    invoke-virtual {v7}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_2

    .line 88
    .line 89
    const v9, 0x7f080167

    .line 90
    .line 91
    .line 92
    if-eq v7, v4, :cond_1

    .line 93
    .line 94
    packed-switch v7, :pswitch_data_1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-nez v7, :cond_3

    .line 102
    .line 103
    new-instance v7, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 104
    .line 105
    invoke-virtual {v8}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    invoke-virtual {v8, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v8, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    invoke-direct {v7, v9, v8, v10}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(IILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :pswitch_1
    new-instance v7, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 126
    .line 127
    invoke-virtual {v8}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    const v10, 0x7f1301ca

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-virtual {v8, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    invoke-direct {v7, v9, v8, v10}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(IILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :pswitch_2
    new-instance v7, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 151
    .line 152
    invoke-virtual {v8}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    const v10, 0x7f1303dd

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-virtual {v8, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    invoke-direct {v7, v9, v8, v10}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(IILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :pswitch_3
    new-instance v7, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 175
    .line 176
    invoke-virtual {v8}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    const v10, 0x7f130080

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-virtual {v8, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    invoke-direct {v7, v9, v8, v10}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(IILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :pswitch_4
    new-instance v7, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 199
    .line 200
    invoke-virtual {v8}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    const v10, 0x7f130234

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-direct {v7, v8, v9, v10}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(IILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-nez v7, :cond_3

    .line 223
    .line 224
    new-instance v7, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 225
    .line 226
    invoke-virtual {v8}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    const v10, 0x7f1300da

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    invoke-direct {v7, v8, v9, v10}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(IILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-nez v7, :cond_3

    .line 249
    .line 250
    new-instance v7, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 251
    .line 252
    invoke-virtual {v8}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    const v10, 0x7f130065

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    invoke-virtual {v8, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    invoke-direct {v7, v9, v8, v10}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(IILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 274
    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :cond_4
    new-array p1, v3, [Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 278
    .line 279
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, [Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;

    .line 284
    .line 285
    array-length v0, p1

    .line 286
    if-nez v0, :cond_5

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_5
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 290
    .line 291
    const/16 v1, 0xb

    .line 292
    .line 293
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 294
    .line 295
    .line 296
    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 297
    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-direct {v1, p0, p1, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Landroid/content/Context;[Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;)V

    .line 303
    .line 304
    .line 305
    iget-object p0, v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    .line 308
    .line 309
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 310
    .line 311
    .line 312
    :goto_3
    return-void

    .line 313
    :pswitch_5
    check-cast p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;

    .line 314
    .line 315
    iget-object p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    .line 316
    .line 317
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v0}, Lorg/jsoup/parser/TokenData;->inflate$1(Landroid/view/LayoutInflater;)Lorg/jsoup/parser/TokenData;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 326
    .line 327
    invoke-direct {v6, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .line 329
    .line 330
    sget-object v7, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_TITLES:[I

    .line 331
    .line 332
    iget v8, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->i:I

    .line 333
    .line 334
    aget v7, v7, v8

    .line 335
    .line 336
    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 337
    .line 338
    .line 339
    iget-object v7, v5, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v7, Landroid/widget/ScrollView;

    .line 342
    .line 343
    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    iget-object v7, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 348
    .line 349
    iput-boolean v4, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 350
    .line 351
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    new-instance v7, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 356
    .line 357
    invoke-direct {v7, p0, v6, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 358
    .line 359
    .line 360
    move v1, v3

    .line 361
    :goto_4
    sget-object v8, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ALL_ACTIONS:[I

    .line 362
    .line 363
    const/16 v9, 0xc

    .line 364
    .line 365
    if-ge v1, v9, :cond_a

    .line 366
    .line 367
    aget v8, v8, v1

    .line 368
    .line 369
    const v9, 0x7f0d0080

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v9, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    if-eqz v9, :cond_9

    .line 377
    .line 378
    check-cast v9, Landroid/widget/RadioButton;

    .line 379
    .line 380
    sget-object v10, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ACTION_ICONS:[I

    .line 381
    .line 382
    aget v10, v10, v8

    .line 383
    .line 384
    if-eqz v10, :cond_7

    .line 385
    .line 386
    invoke-virtual {v9, v3, v3, v10, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 387
    .line 388
    .line 389
    const v10, 0x1010036

    .line 390
    .line 391
    .line 392
    invoke-static {p1, v10}, Lokio/Options$Companion;->resolveColorFromAttr(Landroid/content/Context;I)I

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 401
    .line 402
    const/16 v12, 0x18

    .line 403
    .line 404
    if-lt v11, v12, :cond_6

    .line 405
    .line 406
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 407
    .line 408
    .line 409
    goto :goto_5

    .line 410
    :cond_6
    instance-of v11, v9, Landroidx/core/widget/TintableCompoundDrawablesView;

    .line 411
    .line 412
    if-eqz v11, :cond_7

    .line 413
    .line 414
    move-object v11, v9

    .line 415
    check-cast v11, Landroidx/core/widget/TintableCompoundDrawablesView;

    .line 416
    .line 417
    invoke-interface {v11, v10}, Landroidx/core/widget/TintableCompoundDrawablesView;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    .line 418
    .line 419
    .line 420
    :cond_7
    :goto_5
    invoke-static {p1, v8}, Lorg/schabi/newpipe/player/notification/NotificationConstants;->getActionName(Landroid/content/Context;I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v10

    .line 424
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    iget v10, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    .line 428
    .line 429
    if-ne v8, v10, :cond_8

    .line 430
    .line 431
    move v8, v4

    .line 432
    goto :goto_6

    .line 433
    :cond_8
    move v8, v3

    .line 434
    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v9, v1}, Landroid/view/View;->setId(I)V

    .line 438
    .line 439
    .line 440
    new-instance v8, Landroid/widget/RadioGroup$LayoutParams;

    .line 441
    .line 442
    const/4 v10, -0x1

    .line 443
    const/4 v11, -0x2

    .line 444
    invoke-direct {v8, v10, v11}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    .line 452
    .line 453
    iget-object v8, v5, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v8, Landroid/widget/RadioGroup;

    .line 456
    .line 457
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 458
    .line 459
    .line 460
    add-int/lit8 v1, v1, 0x1

    .line 461
    .line 462
    goto :goto_4

    .line 463
    :cond_9
    const-string p0, "rootView"

    .line 464
    .line 465
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    goto :goto_7

    .line 469
    :cond_a
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 470
    .line 471
    .line 472
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    if-eqz p0, :cond_b

    .line 477
    .line 478
    invoke-static {v6}, Lorg/schabi/newpipe/views/FocusOverlayView;->setupFocusObserver(Landroid/app/Dialog;)V

    .line 479
    .line 480
    .line 481
    :cond_b
    :goto_7
    return-void

    .line 482
    :pswitch_6
    check-cast p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    .line 483
    .line 484
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    .line 485
    .line 486
    if-eqz p1, :cond_f

    .line 487
    .line 488
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    iget-object v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 494
    .line 495
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    const/16 v3, 0xa

    .line 499
    .line 500
    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-ge v3, v1, :cond_c

    .line 509
    .line 510
    goto :goto_8

    .line 511
    :cond_c
    move v1, v3

    .line 512
    :goto_8
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 513
    .line 514
    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 515
    .line 516
    .line 517
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    const-wide/16 v5, 0x0

    .line 522
    .line 523
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-eqz v1, :cond_d

    .line 528
    .line 529
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    check-cast v1, Ljava/lang/Number;

    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 536
    .line 537
    .line 538
    move-result-wide v7

    .line 539
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 544
    .line 545
    .line 546
    const-wide/16 v8, 0x1

    .line 547
    .line 548
    add-long/2addr v8, v5

    .line 549
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-wide v5, v8

    .line 557
    goto :goto_9

    .line 558
    :cond_d
    new-instance p0, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;

    .line 559
    .line 560
    invoke-direct {p0, v2, v3, v0}, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 561
    .line 562
    .line 563
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 564
    .line 565
    invoke-direct {v0, p0, v4}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 566
    .line 567
    .line 568
    sget-object p0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 569
    .line 570
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    iget-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 583
    .line 584
    if-nez v1, :cond_e

    .line 585
    .line 586
    iget-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 587
    .line 588
    sget-object v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;->INSTANCE$1:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;

    .line 589
    .line 590
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 594
    .line 595
    .line 596
    move-result-object p0

    .line 597
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 598
    .line 599
    const/16 v1, 0x14

    .line 600
    .line 601
    invoke-direct {v0, p1, v1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 602
    .line 603
    .line 604
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 605
    .line 606
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 607
    .line 608
    invoke-direct {v2, v1, v0}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 612
    .line 613
    .line 614
    iput-object v2, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 615
    .line 616
    :cond_e
    return-void

    .line 617
    :cond_f
    const-string p0, "viewModel"

    .line 618
    .line 619
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v2

    .line 623
    :pswitch_7
    check-cast p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 624
    .line 625
    iget p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:I

    .line 626
    .line 627
    const v1, 0x7f1304fb

    .line 628
    .line 629
    .line 630
    const v2, 0x7f1304fd

    .line 631
    .line 632
    .line 633
    if-ne p1, v4, :cond_10

    .line 634
    .line 635
    iput v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:I

    .line 636
    .line 637
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lokhttp3/Dispatcher;

    .line 645
    .line 646
    iget-object p1, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast p1, Landroid/widget/ImageView;

    .line 649
    .line 650
    const v0, 0x7f080116

    .line 651
    .line 652
    .line 653
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    .line 655
    .line 656
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lokhttp3/Dispatcher;

    .line 657
    .line 658
    iget-object p1, p1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 659
    .line 660
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 661
    .line 662
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 663
    .line 664
    .line 665
    goto :goto_a

    .line 666
    :cond_10
    iput v4, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->sortMode:I

    .line 667
    .line 668
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object p1

    .line 672
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lokhttp3/Dispatcher;

    .line 676
    .line 677
    iget-object p1, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast p1, Landroid/widget/ImageView;

    .line 680
    .line 681
    const v0, 0x7f08010e

    .line 682
    .line 683
    .line 684
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    .line 686
    .line 687
    iget-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->headerBinding:Lokhttp3/Dispatcher;

    .line 688
    .line 689
    iget-object p1, p1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 692
    .line 693
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 694
    .line 695
    .line 696
    :goto_a
    invoke-virtual {p0, v4}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->startLoading(Z)V

    .line 697
    .line 698
    .line 699
    return-void

    .line 700
    :pswitch_8
    check-cast p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    .line 701
    .line 702
    iget-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    .line 703
    .line 704
    if-eqz p1, :cond_13

    .line 705
    .line 706
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    if-nez p1, :cond_11

    .line 711
    .line 712
    goto :goto_b

    .line 713
    :cond_11
    iget-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    .line 714
    .line 715
    new-instance v0, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;

    .line 716
    .line 717
    invoke-direct {v0}, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;-><init>()V

    .line 718
    .line 719
    .line 720
    iput-object p1, v0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    .line 721
    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    const-string v1, "org.schabi.newpipe.local.dialog.PlaylistAppendDialog"

    .line 727
    .line 728
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 732
    .line 733
    if-eqz p1, :cond_12

    .line 734
    .line 735
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 736
    .line 737
    .line 738
    goto :goto_b

    .line 739
    :cond_12
    const-string p1, "DialogFragment "

    .line 740
    .line 741
    const-string v0, " does not have a Dialog."

    .line 742
    .line 743
    invoke-static {p0, v0, p1}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    :cond_13
    :goto_b
    return-void

    .line 747
    :pswitch_9
    check-cast p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;

    .line 748
    .line 749
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->onClick:Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;

    .line 750
    .line 751
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/StreamSegmentItem;->item:Lorg/schabi/newpipe/extractor/stream/StreamSegment;

    .line 752
    .line 753
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamSegment;->getStartTimeSeconds()I

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    iget-object p1, p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$3;->this$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 758
    .line 759
    iget-object v1, p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->segmentAdapter:Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 760
    .line 761
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->selectSegment(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)V

    .line 762
    .line 763
    .line 764
    iget-object p0, p1, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 765
    .line 766
    int-to-long v0, v0

    .line 767
    const-wide/16 v2, 0x3e8

    .line 768
    .line 769
    mul-long/2addr v0, v2

    .line 770
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 774
    .line 775
    .line 776
    return-void

    .line 777
    :pswitch_a
    check-cast p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 778
    .line 779
    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 780
    .line 781
    if-nez p1, :cond_14

    .line 782
    .line 783
    goto :goto_d

    .line 784
    :cond_14
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 785
    .line 786
    .line 787
    move-result p1

    .line 788
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 789
    .line 790
    if-eqz v0, :cond_15

    .line 791
    .line 792
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 797
    .line 798
    if-eqz v0, :cond_15

    .line 799
    .line 800
    move v3, v4

    .line 801
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 802
    .line 803
    if-eqz v3, :cond_16

    .line 804
    .line 805
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 806
    .line 807
    .line 808
    goto :goto_c

    .line 809
    :cond_16
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 814
    .line 815
    .line 816
    :goto_c
    if-ltz p1, :cond_17

    .line 817
    .line 818
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 819
    .line 820
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 821
    .line 822
    .line 823
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 824
    .line 825
    .line 826
    :goto_d
    return-void

    .line 827
    :pswitch_b
    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 828
    .line 829
    invoke-virtual {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    .line 830
    .line 831
    .line 832
    return-void

    .line 833
    :pswitch_c
    check-cast p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 834
    .line 835
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 836
    .line 837
    if-nez p1, :cond_18

    .line 838
    .line 839
    goto :goto_e

    .line 840
    :cond_18
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    if-eqz p1, :cond_19

    .line 845
    .line 846
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 847
    .line 848
    .line 849
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 850
    .line 851
    .line 852
    :goto_e
    return-void

    .line 853
    :pswitch_d
    check-cast p0, Lus/shandian/giga/ui/common/Deleter;

    .line 854
    .line 855
    iget-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 856
    .line 857
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 858
    .line 859
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    check-cast v0, Lkotlin/Pair;

    .line 864
    .line 865
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    check-cast v0, Lus/shandian/giga/get/Mission;

    .line 870
    .line 871
    iget-object p1, p1, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    .line 872
    .line 873
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    iget-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 877
    .line 878
    invoke-virtual {p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 879
    .line 880
    .line 881
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    .line 882
    .line 883
    .line 884
    return-void

    .line 885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
