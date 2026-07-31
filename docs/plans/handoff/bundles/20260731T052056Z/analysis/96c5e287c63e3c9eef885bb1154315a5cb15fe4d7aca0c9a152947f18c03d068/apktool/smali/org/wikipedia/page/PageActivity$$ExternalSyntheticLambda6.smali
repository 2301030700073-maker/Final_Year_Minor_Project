.class public final synthetic Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/PageActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/page/PageActivity;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    const-string v6, "pageFragment"

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda6;->f$0:Lorg/wikipedia/page/PageActivity;

    .line 13
    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 18
    .line 19
    if-eqz v2, :cond_1a

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v7, Lorg/wikipedia/views/PageActionOverflowView;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    const v10, 0x7f0c05e1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v9, v10, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    const v10, 0x7f090191

    .line 48
    .line 49
    .line 50
    invoke-static {v9, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    check-cast v11, Lcom/google/android/material/textview/MaterialTextView;

    .line 55
    .line 56
    if-eqz v11, :cond_19

    .line 57
    .line 58
    move-object v10, v9

    .line 59
    check-cast v10, Lorg/wikipedia/views/WikiCardView;

    .line 60
    .line 61
    const v10, 0x7f0904b3

    .line 62
    .line 63
    .line 64
    invoke-static {v9, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    check-cast v12, Lcom/google/android/material/textview/MaterialTextView;

    .line 69
    .line 70
    if-eqz v12, :cond_19

    .line 71
    .line 72
    const v10, 0x7f0904af

    .line 73
    .line 74
    .line 75
    invoke-static {v9, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    check-cast v13, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    if-eqz v13, :cond_19

    .line 82
    .line 83
    new-instance v9, Lokhttp3/MultipartBody$Builder;

    .line 84
    .line 85
    invoke-direct {v9, v11, v12, v13}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object v9, v7, Lorg/wikipedia/views/PageActionOverflowView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 89
    .line 90
    new-instance v9, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    const/4 v10, 0x3

    .line 93
    invoke-direct {v9, v10, v7}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    sget-object v9, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 100
    .line 101
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getCustomizeToolbarMenuOrder()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_1

    .line 114
    .line 115
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    check-cast v11, Ljava/lang/Number;

    .line 120
    .line 121
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    const v13, 0x7f0c02f8

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12, v13, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    if-eqz v12, :cond_0

    .line 137
    .line 138
    check-cast v12, Landroid/widget/TextView;

    .line 139
    .line 140
    sget-object v13, Lorg/wikipedia/page/action/PageActionItem;->Companion:Lorg/wikipedia/page/action/PageActionItem$Companion;

    .line 141
    .line 142
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {v11}, Lorg/wikipedia/page/action/PageActionItem$Companion;->find(I)Lorg/wikipedia/page/action/PageActionItem;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-virtual {v11}, Lorg/wikipedia/page/action/PageActionItem;->getViewId()I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    invoke-virtual {v12, v13}, Landroid/view/View;->setId(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11}, Lorg/wikipedia/page/action/PageActionItem;->getTitleResId()I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11}, Lorg/wikipedia/page/action/PageActionItem;->getIconResId()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    invoke-virtual {v12, v13, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 172
    .line 173
    .line 174
    new-instance v13, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 175
    .line 176
    const/16 v14, 0x1c

    .line 177
    .line 178
    invoke-direct {v13, v14, v7, v11}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v11, v7, Lorg/wikipedia/views/PageActionOverflowView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 185
    .line 186
    iget-object v11, v11, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v11, Landroid/widget/LinearLayout;

    .line 189
    .line 190
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_0
    const-string v0, "rootView"

    .line 195
    .line 196
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_11

    .line 200
    .line 201
    :cond_1
    iget-object v9, v7, Lorg/wikipedia/views/PageActionOverflowView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 202
    .line 203
    iget-object v9, v9, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v9, Lcom/google/android/material/textview/MaterialTextView;

    .line 206
    .line 207
    new-instance v11, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 208
    .line 209
    const/16 v12, 0x1d

    .line 210
    .line 211
    invoke-direct {v11, v12, v7, v8}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    iget-object v8, v2, Lorg/wikipedia/page/PageFragment;->pageActionItemCallback:Lorg/wikipedia/page/PageFragment$AvCallback;

    .line 218
    .line 219
    invoke-virtual {v2}, Lorg/wikipedia/page/PageFragment;->getCurrentTab()Lorg/wikipedia/page/tabs/Tab;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    iget-object v2, v2, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 224
    .line 225
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v8}, Lorg/wikipedia/views/PageActionOverflowView;->setCallback(Lorg/wikipedia/page/action/PageActionItem$Callback;)V

    .line 235
    .line 236
    .line 237
    new-instance v8, Landroid/widget/PopupWindow;

    .line 238
    .line 239
    const/4 v11, -0x2

    .line 240
    invoke-direct {v8, v7, v11, v11, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 241
    .line 242
    .line 243
    iput-object v8, v7, Lorg/wikipedia/views/PageActionOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 244
    .line 245
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    .line 246
    .line 247
    invoke-direct {v11, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8, v4}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 254
    .line 255
    .line 256
    const v11, 0x800005

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8, v1, v3, v3, v11}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 260
    .line 261
    .line 262
    iget-object v8, v7, Lorg/wikipedia/views/PageActionOverflowView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 263
    .line 264
    iget-object v11, v8, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v11, Lcom/google/android/material/textview/MaterialTextView;

    .line 267
    .line 268
    iget-object v8, v8, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v8, Landroid/widget/LinearLayout;

    .line 271
    .line 272
    invoke-virtual {v9}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPosition()I

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    iget-object v9, v9, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 277
    .line 278
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    sub-int/2addr v9, v4

    .line 283
    if-ge v12, v9, :cond_2

    .line 284
    .line 285
    move v9, v3

    .line 286
    goto :goto_1

    .line 287
    :cond_2
    const/16 v9, 0x8

    .line 288
    .line 289
    :goto_1
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    move v11, v4

    .line 297
    :goto_2
    if-ge v11, v9, :cond_15

    .line 298
    .line 299
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    check-cast v12, Lcom/google/android/material/textview/MaterialTextView;

    .line 307
    .line 308
    sget-object v14, Lorg/wikipedia/page/action/PageActionItem;->Companion:Lorg/wikipedia/page/action/PageActionItem$Companion;

    .line 309
    .line 310
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    .line 311
    .line 312
    .line 313
    move-result v15

    .line 314
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    invoke-static {v15}, Lorg/wikipedia/page/action/PageActionItem$Companion;->find(I)Lorg/wikipedia/page/action/PageActionItem;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    iget-object v15, v2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v15, Lorg/wikipedia/page/Page;

    .line 324
    .line 325
    if-eqz v15, :cond_4

    .line 326
    .line 327
    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getShouldLoadAsMobileWeb()Z

    .line 328
    .line 329
    .line 330
    move-result v15

    .line 331
    if-eqz v15, :cond_3

    .line 332
    .line 333
    invoke-virtual {v2}, Lorg/wikipedia/page/PageViewModel;->getShouldLoadAsMobileWeb()Z

    .line 334
    .line 335
    .line 336
    move-result v15

    .line 337
    if-eqz v15, :cond_4

    .line 338
    .line 339
    invoke-virtual {v14}, Lorg/wikipedia/page/action/PageActionItem;->isAvailableOnMobileWeb()Z

    .line 340
    .line 341
    .line 342
    move-result v15

    .line 343
    if-eqz v15, :cond_4

    .line 344
    .line 345
    :cond_3
    move v15, v4

    .line 346
    goto :goto_3

    .line 347
    :cond_4
    move v15, v3

    .line 348
    :goto_3
    sget-object v16, Lorg/wikipedia/views/PageActionOverflowView$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 349
    .line 350
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 351
    .line 352
    .line 353
    move-result v14

    .line 354
    aget v14, v16, v14

    .line 355
    .line 356
    if-eq v14, v4, :cond_10

    .line 357
    .line 358
    const/4 v13, 0x2

    .line 359
    if-eq v14, v13, :cond_d

    .line 360
    .line 361
    if-eq v14, v10, :cond_a

    .line 362
    .line 363
    const/4 v13, 0x4

    .line 364
    if-eq v14, v13, :cond_6

    .line 365
    .line 366
    if-eqz v15, :cond_5

    .line 367
    .line 368
    move v13, v3

    .line 369
    goto :goto_4

    .line 370
    :cond_5
    const/16 v13, 0x8

    .line 371
    .line 372
    :goto_4
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_f

    .line 376
    .line 377
    :cond_6
    iget-object v13, v2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v13, Lorg/wikipedia/page/Page;

    .line 380
    .line 381
    if-eqz v13, :cond_7

    .line 382
    .line 383
    iget-object v13, v13, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 384
    .line 385
    iget-object v13, v13, Lorg/wikipedia/page/PageProperties;->geo:Landroid/location/Location;

    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_7
    move-object v13, v5

    .line 389
    :goto_5
    if-eqz v13, :cond_8

    .line 390
    .line 391
    move v13, v4

    .line 392
    goto :goto_6

    .line 393
    :cond_8
    move v13, v3

    .line 394
    :goto_6
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 395
    .line 396
    .line 397
    move-result-object v14

    .line 398
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    if-eqz v13, :cond_9

    .line 402
    .line 403
    const v13, 0x7f04051a

    .line 404
    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_9
    const v13, 0x7f0402dd

    .line 408
    .line 409
    .line 410
    :goto_7
    invoke-static {v14, v13}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 415
    .line 416
    .line 417
    invoke-static {v12, v13}, Lkotlin/uuid/UuidKt;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_f

    .line 421
    .line 422
    :cond_a
    iget-object v13, v2, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v13, Lorg/wikipedia/page/Page;

    .line 425
    .line 426
    if-eqz v13, :cond_b

    .line 427
    .line 428
    iget-object v13, v13, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 429
    .line 430
    iget-boolean v13, v13, Lorg/wikipedia/page/PageProperties;->canEdit:Z

    .line 431
    .line 432
    if-ne v13, v4, :cond_b

    .line 433
    .line 434
    move v13, v4

    .line 435
    goto :goto_8

    .line 436
    :cond_b
    move v13, v3

    .line 437
    :goto_8
    if-nez v13, :cond_c

    .line 438
    .line 439
    const v13, 0x7f080157

    .line 440
    .line 441
    .line 442
    goto :goto_9

    .line 443
    :cond_c
    const v13, 0x7f0801a4

    .line 444
    .line 445
    .line 446
    :goto_9
    invoke-virtual {v12, v13, v3, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 447
    .line 448
    .line 449
    goto :goto_f

    .line 450
    :cond_d
    iget-object v13, v2, Lorg/wikipedia/page/PageViewModel;->readingListPage:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v13, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 453
    .line 454
    if-eqz v13, :cond_e

    .line 455
    .line 456
    const v13, 0x7f08012c

    .line 457
    .line 458
    .line 459
    goto :goto_a

    .line 460
    :cond_e
    const v13, 0x7f08012a

    .line 461
    .line 462
    .line 463
    :goto_a
    invoke-virtual {v12, v13, v3, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 464
    .line 465
    .line 466
    if-eqz v15, :cond_f

    .line 467
    .line 468
    move v13, v3

    .line 469
    goto :goto_b

    .line 470
    :cond_f
    const/16 v13, 0x8

    .line 471
    .line 472
    :goto_b
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    goto :goto_f

    .line 476
    :cond_10
    iget-boolean v13, v2, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 477
    .line 478
    if-eqz v13, :cond_11

    .line 479
    .line 480
    const v13, 0x7f120400

    .line 481
    .line 482
    .line 483
    goto :goto_c

    .line 484
    :cond_11
    const v13, 0x7f120403

    .line 485
    .line 486
    .line 487
    :goto_c
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 488
    .line 489
    .line 490
    iget-boolean v13, v2, Lorg/wikipedia/page/PageViewModel;->isWatched:Z

    .line 491
    .line 492
    iget-boolean v14, v2, Lorg/wikipedia/page/PageViewModel;->hasWatchlistExpiry:Z

    .line 493
    .line 494
    if-eqz v13, :cond_12

    .line 495
    .line 496
    if-nez v14, :cond_12

    .line 497
    .line 498
    const v13, 0x7f0801ea

    .line 499
    .line 500
    .line 501
    goto :goto_d

    .line 502
    :cond_12
    if-nez v13, :cond_13

    .line 503
    .line 504
    const v13, 0x7f080127

    .line 505
    .line 506
    .line 507
    goto :goto_d

    .line 508
    :cond_13
    const v13, 0x7f080126

    .line 509
    .line 510
    .line 511
    :goto_d
    invoke-virtual {v12, v13, v3, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 512
    .line 513
    .line 514
    if-eqz v15, :cond_14

    .line 515
    .line 516
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 517
    .line 518
    .line 519
    move-result v13

    .line 520
    if-eqz v13, :cond_14

    .line 521
    .line 522
    move v13, v3

    .line 523
    goto :goto_e

    .line 524
    :cond_14
    const/16 v13, 0x8

    .line 525
    .line 526
    :goto_e
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 527
    .line 528
    .line 529
    :goto_f
    add-int/lit8 v11, v11, 0x1

    .line 530
    .line 531
    goto/16 :goto_2

    .line 532
    .line 533
    :cond_15
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-nez v2, :cond_16

    .line 538
    .line 539
    invoke-virtual {v7}, Lorg/wikipedia/views/PageActionOverflowView;->dismissPopupWindowHost()V

    .line 540
    .line 541
    .line 542
    goto :goto_10

    .line 543
    :cond_16
    new-instance v2, Landroidx/core/view/insets/SystemBarStateMonitor$3;

    .line 544
    .line 545
    invoke-direct {v2, v10, v1, v7}, Landroidx/core/view/insets/SystemBarStateMonitor$3;-><init>(ILandroid/view/View;Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 549
    .line 550
    .line 551
    :goto_10
    iget-object v0, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 552
    .line 553
    if-eqz v0, :cond_18

    .line 554
    .line 555
    iget-object v0, v0, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 556
    .line 557
    if-eqz v0, :cond_17

    .line 558
    .line 559
    const-string v1, "more"

    .line 560
    .line 561
    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    :cond_17
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 565
    .line 566
    const v0, 0x7f1205dd

    .line 567
    .line 568
    .line 569
    invoke-static {v0, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 570
    .line 571
    .line 572
    goto :goto_11

    .line 573
    :cond_18
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    throw v5

    .line 577
    :cond_19
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    const-string v1, "Missing required view with ID: "

    .line 586
    .line 587
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :goto_11
    return-void

    .line 595
    :cond_1a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    throw v5

    .line 599
    :pswitch_0
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 600
    .line 601
    if-eqz v1, :cond_1c

    .line 602
    .line 603
    iget-object v1, v1, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 604
    .line 605
    if-eqz v1, :cond_1b

    .line 606
    .line 607
    const-string v2, "tabs"

    .line 608
    .line 609
    invoke-virtual {v1, v2}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    :cond_1b
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity;->requestBrowseTabLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 613
    .line 614
    new-instance v2, Landroid/content/Intent;

    .line 615
    .line 616
    const-class v3, Lorg/wikipedia/page/tabs/TabActivity;

    .line 617
    .line 618
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    .line 620
    .line 621
    const-string v0, "launchedFromPageActivity"

    .line 622
    .line 623
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v1, v0, v5}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 631
    .line 632
    .line 633
    return-void

    .line 634
    :cond_1c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    throw v5

    .line 638
    :pswitch_1
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 639
    .line 640
    if-eqz v1, :cond_23

    .line 641
    .line 642
    iget-object v1, v1, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 643
    .line 644
    if-eqz v1, :cond_1d

    .line 645
    .line 646
    const-string v2, "notification"

    .line 647
    .line 648
    invoke-virtual {v1, v2}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    :cond_1d
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    if-eqz v1, :cond_1e

    .line 656
    .line 657
    new-instance v1, Landroid/content/Intent;

    .line 658
    .line 659
    const-class v2, Lorg/wikipedia/notifications/NotificationActivity;

    .line 660
    .line 661
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 665
    .line 666
    .line 667
    goto/16 :goto_12

    .line 668
    .line 669
    :cond_1e
    new-instance v1, Ljava/util/Date;

    .line 670
    .line 671
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 675
    .line 676
    .line 677
    move-result-wide v1

    .line 678
    sget-object v6, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 679
    .line 680
    const v6, 0x7f12061f

    .line 681
    .line 682
    .line 683
    const-wide/16 v7, 0x0

    .line 684
    .line 685
    invoke-static {v7, v8, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 686
    .line 687
    .line 688
    move-result-wide v6

    .line 689
    sub-long/2addr v1, v6

    .line 690
    const-wide/32 v6, 0x240c8400

    .line 691
    .line 692
    .line 693
    cmp-long v1, v1, v6

    .line 694
    .line 695
    if-gez v1, :cond_22

    .line 696
    .line 697
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 698
    .line 699
    const v1, 0x7f12061e

    .line 700
    .line 701
    .line 702
    const-string v2, ""

    .line 703
    .line 704
    invoke-static {v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v6

    .line 708
    if-eqz v6, :cond_22

    .line 709
    .line 710
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 711
    .line 712
    .line 713
    move-result v6

    .line 714
    if-nez v6, :cond_1f

    .line 715
    .line 716
    goto :goto_12

    .line 717
    :cond_1f
    sget-object v6, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 718
    .line 719
    invoke-static {v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    .line 728
    .line 729
    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    new-instance v6, Lorg/wikipedia/page/PageTitle;

    .line 734
    .line 735
    iget-object v7, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 736
    .line 737
    invoke-static {v7}, Lorg/wikipedia/staticdata/UserTalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v7

    .line 741
    const v8, 0x7f120620

    .line 742
    .line 743
    .line 744
    invoke-static {v8, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    const-string v8, ":"

    .line 749
    .line 750
    invoke-static {v7, v8, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-direct {v6, v2, v1, v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 758
    .line 759
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    new-instance v2, Landroid/content/Intent;

    .line 763
    .line 764
    const-class v5, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 765
    .line 766
    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 767
    .line 768
    .line 769
    const-string v5, "title"

    .line 770
    .line 771
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    iget-object v5, v6, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 776
    .line 777
    if-eqz v5, :cond_20

    .line 778
    .line 779
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 780
    .line 781
    .line 782
    move-result v5

    .line 783
    if-nez v5, :cond_21

    .line 784
    .line 785
    :cond_20
    move v3, v4

    .line 786
    :cond_21
    xor-int/2addr v3, v4

    .line 787
    const-string v4, "goToTopic"

    .line 788
    .line 789
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    const-string v3, "invokeSource"

    .line 794
    .line 795
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 803
    .line 804
    .line 805
    :cond_22
    :goto_12
    return-void

    .line 806
    :cond_23
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    throw v5

    .line 810
    :pswitch_2
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 811
    .line 812
    if-eqz v1, :cond_29

    .line 813
    .line 814
    iget-object v1, v1, Lorg/wikipedia/page/PageFragment;->articleInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;

    .line 815
    .line 816
    if-eqz v1, :cond_24

    .line 817
    .line 818
    const-string v2, "search_wikipedia"

    .line 819
    .line 820
    invoke-virtual {v1, v2}, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent;->submitEvent(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    :cond_24
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 824
    .line 825
    if-eqz v1, :cond_28

    .line 826
    .line 827
    iget-object v1, v1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 828
    .line 829
    iget-object v1, v1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 830
    .line 831
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 832
    .line 833
    if-eqz v1, :cond_25

    .line 834
    .line 835
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    goto :goto_13

    .line 840
    :cond_25
    move-object v1, v5

    .line 841
    :goto_13
    sget-object v2, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 842
    .line 843
    if-ne v1, v2, :cond_26

    .line 844
    .line 845
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 846
    .line 847
    if-eqz v1, :cond_27

    .line 848
    .line 849
    iget-object v1, v1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 850
    .line 851
    iget-object v1, v1, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 852
    .line 853
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 854
    .line 855
    if-eqz v1, :cond_26

    .line 856
    .line 857
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    goto :goto_14

    .line 862
    :cond_26
    move-object v1, v5

    .line 863
    goto :goto_14

    .line 864
    :cond_27
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    throw v5

    .line 868
    :goto_14
    sget v2, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 869
    .line 870
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->TOOLBAR:Lorg/wikipedia/Constants$InvokeSource;

    .line 871
    .line 872
    const/16 v3, 0x28

    .line 873
    .line 874
    invoke-static {v0, v2, v5, v1, v3}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 879
    .line 880
    .line 881
    return-void

    .line 882
    :cond_28
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    throw v5

    .line 886
    :cond_29
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    throw v5

    .line 890
    nop

    .line 891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
