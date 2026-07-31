.class public final synthetic Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    const/4 v5, 0x2

    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v7, 0x1

    .line 8
    const/4 v8, 0x0

    .line 9
    iget-object v9, v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/views/PageActionOverflowView;

    .line 17
    .line 18
    check-cast v9, Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/wikipedia/views/PageActionOverflowView;->dismissPopupWindowHost()V

    .line 21
    .line 22
    .line 23
    sget v0, Lorg/wikipedia/page/customize/CustomizeToolbarActivity;->$r8$clinit:I

    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    const-class v1, Lorg/wikipedia/page/customize/CustomizeToolbarActivity;

    .line 28
    .line 29
    invoke-direct {v0, v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    check-cast v0, Lorg/wikipedia/views/PageActionOverflowView;

    .line 37
    .line 38
    check-cast v9, Lorg/wikipedia/page/action/PageActionItem;

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/wikipedia/views/PageActionOverflowView;->dismissPopupWindowHost()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/wikipedia/views/PageActionOverflowView;->getCallback()Lorg/wikipedia/page/action/PageActionItem$Callback;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v9, v0}, Lorg/wikipedia/page/action/PageActionItem;->select(Lorg/wikipedia/page/action/PageActionItem$Callback;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    check-cast v0, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 52
    .line 53
    check-cast v9, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;

    .line 54
    .line 55
    new-instance v1, Lorg/wikipedia/views/TalkTopicsSortOverflowView;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const v10, 0x7f0c05f7

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v10, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    move-object v10, v8

    .line 75
    check-cast v10, Lorg/wikipedia/views/WikiCardView;

    .line 76
    .line 77
    const v10, 0x7f090609

    .line 78
    .line 79
    .line 80
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    check-cast v11, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v11, :cond_b

    .line 87
    .line 88
    const v10, 0x7f09060a

    .line 89
    .line 90
    .line 91
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    check-cast v11, Landroid/widget/LinearLayout;

    .line 96
    .line 97
    if-eqz v11, :cond_b

    .line 98
    .line 99
    const v10, 0x7f09060b

    .line 100
    .line 101
    .line 102
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    check-cast v12, Landroid/widget/ImageView;

    .line 107
    .line 108
    if-eqz v12, :cond_b

    .line 109
    .line 110
    const v10, 0x7f09060c

    .line 111
    .line 112
    .line 113
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    check-cast v13, Landroid/widget/ImageView;

    .line 118
    .line 119
    if-eqz v13, :cond_b

    .line 120
    .line 121
    const v10, 0x7f09060d

    .line 122
    .line 123
    .line 124
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    check-cast v14, Landroid/widget/TextView;

    .line 129
    .line 130
    if-eqz v14, :cond_b

    .line 131
    .line 132
    const v10, 0x7f09060e

    .line 133
    .line 134
    .line 135
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    check-cast v14, Landroid/widget/LinearLayout;

    .line 140
    .line 141
    if-eqz v14, :cond_b

    .line 142
    .line 143
    const v10, 0x7f09060f

    .line 144
    .line 145
    .line 146
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    check-cast v15, Landroid/widget/ImageView;

    .line 151
    .line 152
    if-eqz v15, :cond_b

    .line 153
    .line 154
    const v10, 0x7f090610

    .line 155
    .line 156
    .line 157
    invoke-static {v8, v10}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v16

    .line 161
    move-object/from16 v10, v16

    .line 162
    .line 163
    check-cast v10, Landroid/widget/ImageView;

    .line 164
    .line 165
    if-eqz v10, :cond_a

    .line 166
    .line 167
    const v2, 0x7f090611

    .line 168
    .line 169
    .line 170
    invoke-static {v8, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v17

    .line 174
    check-cast v17, Landroid/widget/TextView;

    .line 175
    .line 176
    if-eqz v17, :cond_9

    .line 177
    .line 178
    const v2, 0x7f090612

    .line 179
    .line 180
    .line 181
    invoke-static {v8, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v17

    .line 185
    move-object/from16 v2, v17

    .line 186
    .line 187
    check-cast v2, Landroid/widget/LinearLayout;

    .line 188
    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    const v4, 0x7f090613

    .line 192
    .line 193
    .line 194
    invoke-static {v8, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v18

    .line 198
    move-object/from16 v4, v18

    .line 199
    .line 200
    check-cast v4, Landroid/widget/ImageView;

    .line 201
    .line 202
    if-eqz v4, :cond_7

    .line 203
    .line 204
    const v3, 0x7f090614

    .line 205
    .line 206
    .line 207
    invoke-static {v8, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v19

    .line 211
    move-object/from16 v3, v19

    .line 212
    .line 213
    check-cast v3, Landroid/widget/ImageView;

    .line 214
    .line 215
    if-eqz v3, :cond_6

    .line 216
    .line 217
    new-instance v8, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;

    .line 218
    .line 219
    invoke-direct {v8, v1, v6}, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/TalkTopicsSortOverflowView;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    .line 224
    .line 225
    new-instance v8, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;

    .line 226
    .line 227
    invoke-direct {v8, v1, v7}, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/TalkTopicsSortOverflowView;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    new-instance v2, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;

    .line 234
    .line 235
    invoke-direct {v2, v1, v5}, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/TalkTopicsSortOverflowView;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    iget-object v2, v9, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder;->binding:Lretrofit2/Retrofit;

    .line 242
    .line 243
    iget-object v2, v2, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v2, Landroid/widget/ImageView;

    .line 246
    .line 247
    sget v8, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 248
    .line 249
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    iget v8, v8, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSortMode:I

    .line 254
    .line 255
    new-instance v9, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 256
    .line 257
    invoke-direct {v9, v0, v6}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/TalkTopicsActivity;I)V

    .line 258
    .line 259
    .line 260
    iput-object v9, v1, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->callback:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 261
    .line 262
    new-instance v0, Landroid/widget/PopupWindow;

    .line 263
    .line 264
    const/4 v9, -0x2

    .line 265
    invoke-direct {v0, v1, v9, v9, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 266
    .line 267
    .line 268
    iput-object v0, v1, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 269
    .line 270
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    .line 271
    .line 272
    invoke-direct {v9, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 279
    .line 280
    .line 281
    const v9, 0x800005

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2, v6, v6, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 285
    .line 286
    .line 287
    iput v8, v1, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->currentSortMode:I

    .line 288
    .line 289
    const/high16 v0, 0x42b40000    # 90.0f

    .line 290
    .line 291
    if-eqz v8, :cond_5

    .line 292
    .line 293
    const/high16 v1, 0x43870000    # 270.0f

    .line 294
    .line 295
    if-eq v8, v7, :cond_4

    .line 296
    .line 297
    if-eq v8, v5, :cond_3

    .line 298
    .line 299
    const/4 v2, 0x3

    .line 300
    if-eq v8, v2, :cond_2

    .line 301
    .line 302
    const/4 v2, 0x4

    .line 303
    if-eq v8, v2, :cond_1

    .line 304
    .line 305
    const/4 v0, 0x5

    .line 306
    if-eq v8, v0, :cond_0

    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_0
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v15, v1}, Landroid/view/View;->setRotation(F)V

    .line 316
    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_1
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v15, v0}, Landroid/view/View;->setRotation(F)V

    .line 326
    .line 327
    .line 328
    goto :goto_1

    .line 329
    :cond_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v1}, Landroid/view/View;->setRotation(F)V

    .line 336
    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4, v0}, Landroid/view/View;->setRotation(F)V

    .line 346
    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_4
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v12, v1}, Landroid/view/View;->setRotation(F)V

    .line 356
    .line 357
    .line 358
    goto :goto_1

    .line 359
    :cond_5
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v12, v0}, Landroid/view/View;->setRotation(F)V

    .line 366
    .line 367
    .line 368
    goto :goto_1

    .line 369
    :cond_6
    const v10, 0x7f090614

    .line 370
    .line 371
    .line 372
    goto :goto_0

    .line 373
    :cond_7
    const v10, 0x7f090613

    .line 374
    .line 375
    .line 376
    goto :goto_0

    .line 377
    :cond_8
    const v10, 0x7f090612

    .line 378
    .line 379
    .line 380
    goto :goto_0

    .line 381
    :cond_9
    move v10, v2

    .line 382
    goto :goto_0

    .line 383
    :cond_a
    const v10, 0x7f090610

    .line 384
    .line 385
    .line 386
    :cond_b
    :goto_0
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    const-string v1, "Missing required view with ID: "

    .line 395
    .line 396
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :goto_1
    return-void

    .line 404
    :pswitch_2
    check-cast v0, Landroid/content/Context;

    .line 405
    .line 406
    check-cast v9, Lorg/wikipedia/talk/TalkThreadItemView;

    .line 407
    .line 408
    sget v1, Lorg/wikipedia/talk/TalkThreadItemView;->$r8$clinit:I

    .line 409
    .line 410
    instance-of v1, v0, Landroid/app/Activity;

    .line 411
    .line 412
    if-eqz v1, :cond_c

    .line 413
    .line 414
    move-object v8, v0

    .line 415
    check-cast v8, Landroid/app/Activity;

    .line 416
    .line 417
    :cond_c
    if-eqz v8, :cond_d

    .line 418
    .line 419
    new-instance v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 420
    .line 421
    invoke-direct {v0, v8}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v8}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    const v2, 0x7f0e0026

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 432
    .line 433
    .line 434
    iget-object v1, v9, Lorg/wikipedia/talk/TalkThreadItemView;->overflowMenuListener:Lretrofit2/OkHttpCall$1;

    .line 435
    .line 436
    iput-object v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 437
    .line 438
    new-instance v1, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 439
    .line 440
    iget-object v2, v9, Lorg/wikipedia/talk/TalkThreadItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 441
    .line 442
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v2, Landroid/widget/ImageView;

    .line 445
    .line 446
    invoke-direct {v1, v8, v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v7}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 450
    .line 451
    .line 452
    const v9, 0x800005

    .line 453
    .line 454
    .line 455
    iput v9, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 456
    .line 457
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    .line 458
    .line 459
    .line 460
    :cond_d
    return-void

    .line 461
    :pswitch_3
    check-cast v0, Landroid/app/Activity;

    .line 462
    .line 463
    check-cast v9, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 464
    .line 465
    sget v1, Lorg/wikipedia/suggestededits/SuggestionsActivity;->$r8$clinit:I

    .line 466
    .line 467
    invoke-static {v0, v9}, Lokhttp3/Cookie$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)Landroid/content/Intent;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :pswitch_4
    check-cast v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 476
    .line 477
    check-cast v9, Lorg/wikipedia/settings/LauncherIcon;

    .line 478
    .line 479
    iget-object v0, v0, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 482
    .line 483
    if-eqz v0, :cond_e

    .line 484
    .line 485
    invoke-virtual {v0, v9}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    :cond_e
    return-void

    .line 489
    :pswitch_5
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;

    .line 490
    .line 491
    check-cast v9, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 492
    .line 493
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsFragment;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    iget-object v3, v9, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevItems:Ljava/util/List;

    .line 498
    .line 499
    iget-object v4, v9, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->prevSelectedItems:Ljava/util/Set;

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 508
    .line 509
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    instance-of v2, v1, Lorg/wikipedia/util/Resource$Success;

    .line 514
    .line 515
    if-eqz v2, :cond_f

    .line 516
    .line 517
    check-cast v1, Lorg/wikipedia/util/Resource$Success;

    .line 518
    .line 519
    goto :goto_2

    .line 520
    :cond_f
    move-object v1, v8

    .line 521
    :goto_2
    if-eqz v1, :cond_10

    .line 522
    .line 523
    new-instance v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 524
    .line 525
    iget-object v1, v1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 528
    .line 529
    iget-boolean v1, v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->fromSettings:Z

    .line 530
    .line 531
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 532
    .line 533
    const/4 v5, 0x0

    .line 534
    sget-object v7, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 535
    .line 536
    move-object/from16 v26, v2

    .line 537
    .line 538
    move v2, v1

    .line 539
    move-object/from16 v1, v26

    .line 540
    .line 541
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;-><init>(ZLjava/util/List;Ljava/util/Set;ZLjava/util/List;Ljava/util/Set;)V

    .line 542
    .line 543
    .line 544
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 545
    .line 546
    invoke-direct {v2, v1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v8, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    :cond_10
    return-void

    .line 553
    :pswitch_6
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 554
    .line 555
    check-cast v9, Landroid/content/Intent;

    .line 556
    .line 557
    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :pswitch_7
    move-object v1, v0

    .line 562
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 563
    .line 564
    move-object v4, v9

    .line 565
    check-cast v4, Lorg/wikipedia/readinglist/ReadingListMode;

    .line 566
    .line 567
    const/4 v12, 0x0

    .line 568
    const/16 v13, 0x1fc

    .line 569
    .line 570
    const-string v5, "menu_click"

    .line 571
    .line 572
    const-string v6, "rrl_discover"

    .line 573
    .line 574
    const/4 v7, 0x0

    .line 575
    const/4 v8, 0x0

    .line 576
    const/4 v9, 0x0

    .line 577
    const/4 v10, 0x0

    .line 578
    const/4 v11, 0x0

    .line 579
    invoke-static/range {v5 .. v13}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 580
    .line 581
    .line 582
    iget-object v3, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 583
    .line 584
    if-eqz v3, :cond_11

    .line 585
    .line 586
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 587
    .line 588
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 589
    .line 590
    move-object v5, v0

    .line 591
    check-cast v5, Landroid/widget/ImageView;

    .line 592
    .line 593
    const/4 v6, 0x7

    .line 594
    const/4 v2, 0x0

    .line 595
    invoke-virtual/range {v1 .. v6}, Lorg/wikipedia/readinglist/ReadingListItemView;->showOverflowMenu(ZLorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListMode;Landroid/view/View;I)V

    .line 596
    .line 597
    .line 598
    :cond_11
    return-void

    .line 599
    :pswitch_8
    check-cast v0, Ljava/lang/String;

    .line 600
    .line 601
    check-cast v9, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterItemViewHolder;

    .line 602
    .line 603
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 604
    .line 605
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    if-nez v1, :cond_12

    .line 614
    .line 615
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 616
    .line 617
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 618
    .line 619
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 620
    .line 621
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v6

    .line 625
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    const-string v8, "app_places_interaction"

    .line 630
    .line 631
    const-string v3, "filter_change_save"

    .line 632
    .line 633
    const-string v4, "filter_view"

    .line 634
    .line 635
    const-string v5, ""

    .line 636
    .line 637
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 641
    .line 642
    .line 643
    :cond_12
    const v1, 0x7f120641

    .line 644
    .line 645
    .line 646
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 647
    .line 648
    .line 649
    iget-object v0, v9, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterItemViewHolder;->callback:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 650
    .line 651
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 652
    .line 653
    .line 654
    return-void

    .line 655
    :pswitch_9
    check-cast v0, Lorg/wikipedia/places/PlacesFilterActivity;

    .line 656
    .line 657
    check-cast v9, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterFooterViewHolder;

    .line 658
    .line 659
    iget-object v0, v0, Lorg/wikipedia/places/PlacesFilterActivity;->addLanguageLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 660
    .line 661
    sget v1, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->$r8$clinit:I

    .line 662
    .line 663
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 664
    .line 665
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->PLACES:Lorg/wikipedia/Constants$InvokeSource;

    .line 673
    .line 674
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-virtual {v0, v1, v8}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 679
    .line 680
    .line 681
    return-void

    .line 682
    :pswitch_a
    check-cast v0, Lorg/wikipedia/page/tabs/TabActivity;

    .line 683
    .line 684
    check-cast v9, Ljava/util/ArrayList;

    .line 685
    .line 686
    iget-object v1, v0, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 687
    .line 688
    iget-object v2, v1, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 689
    .line 690
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 691
    .line 692
    .line 693
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 694
    .line 695
    .line 696
    iget-object v2, v0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 697
    .line 698
    const-string v3, "binding"

    .line 699
    .line 700
    if-eqz v2, :cond_15

    .line 701
    .line 702
    iget-object v2, v2, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast v2, Lorg/wikipedia/views/AutoFitRecyclerView;

    .line 705
    .line 706
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    if-eqz v2, :cond_13

    .line 711
    .line 712
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 715
    .line 716
    .line 717
    move-result v1

    .line 718
    invoke-virtual {v2, v6, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 719
    .line 720
    .line 721
    :cond_13
    iget-object v0, v0, Lorg/wikipedia/page/tabs/TabActivity;->binding:Lokio/internal/DefaultSocket;

    .line 722
    .line 723
    if-eqz v0, :cond_14

    .line 724
    .line 725
    iget-object v0, v0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 726
    .line 727
    check-cast v0, Lorg/wikipedia/views/TabCountsView;

    .line 728
    .line 729
    invoke-virtual {v0, v6}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 730
    .line 731
    .line 732
    return-void

    .line 733
    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    throw v8

    .line 737
    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    throw v8

    .line 741
    :pswitch_b
    check-cast v0, Lorg/wikipedia/page/campaign/CampaignDialogView;

    .line 742
    .line 743
    check-cast v9, Ljava/lang/String;

    .line 744
    .line 745
    iget-object v0, v0, Lorg/wikipedia/page/campaign/CampaignDialogView;->callback:Lorg/wikipedia/page/campaign/CampaignDialogView$Callback;

    .line 746
    .line 747
    if-eqz v0, :cond_19

    .line 748
    .line 749
    check-cast v0, Lorg/wikipedia/page/campaign/CampaignDialog;

    .line 750
    .line 751
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    .line 753
    .line 754
    const-string v1, "article_banner"

    .line 755
    .line 756
    iget-object v2, v0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignId:Ljava/lang/String;

    .line 757
    .line 758
    const-string v3, "donate_start_click"

    .line 759
    .line 760
    const/4 v4, 0x4

    .line 761
    invoke-static {v4, v3, v1, v8, v2}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 765
    .line 766
    const v1, 0x7f1205cc

    .line 767
    .line 768
    .line 769
    invoke-static {v1, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    if-nez v1, :cond_16

    .line 774
    .line 775
    const-string v1, ""

    .line 776
    .line 777
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    if-nez v2, :cond_17

    .line 782
    .line 783
    goto :goto_3

    .line 784
    :cond_17
    move-object v9, v1

    .line 785
    :goto_3
    iget-object v1, v0, Lorg/wikipedia/page/campaign/CampaignDialog;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 786
    .line 787
    instance-of v2, v1, Lorg/wikipedia/activity/BaseActivity;

    .line 788
    .line 789
    if-eqz v2, :cond_18

    .line 790
    .line 791
    check-cast v1, Lorg/wikipedia/activity/BaseActivity;

    .line 792
    .line 793
    iget-object v2, v0, Lorg/wikipedia/page/campaign/CampaignDialog;->campaignIdOriginal:Ljava/lang/String;

    .line 794
    .line 795
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    const/16 v3, 0xc

    .line 800
    .line 801
    invoke-static {v3, v2, v9}, Lokio/Path$Companion;->newInstance$default(ILjava/lang/String;Ljava/lang/String;)Lorg/wikipedia/donate/DonateDialog;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    invoke-static {v1, v2}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v0, v6}, Lorg/wikipedia/page/campaign/CampaignDialog;->dismissDialog(Z)V

    .line 809
    .line 810
    .line 811
    goto :goto_4

    .line 812
    :cond_18
    invoke-static {v1, v9}, Lokio/Okio__JvmOkioKt;->openInCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0, v7}, Lorg/wikipedia/page/campaign/CampaignDialog;->dismissDialog(Z)V

    .line 816
    .line 817
    .line 818
    :cond_19
    :goto_4
    return-void

    .line 819
    :pswitch_c
    check-cast v0, Lorg/wikipedia/page/PageActionTabLayout;

    .line 820
    .line 821
    check-cast v9, Lorg/wikipedia/page/action/PageActionItem;

    .line 822
    .line 823
    sget v1, Lorg/wikipedia/page/PageActionTabLayout;->$r8$clinit:I

    .line 824
    .line 825
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    .line 827
    .line 828
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    if-eqz v1, :cond_1a

    .line 833
    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    instance-of v1, v1, Lorg/wikipedia/views/ConfigurableTabLayout$DisabledTag;

    .line 839
    .line 840
    if-eqz v1, :cond_1a

    .line 841
    .line 842
    goto :goto_5

    .line 843
    :cond_1a
    invoke-virtual {v0}, Lorg/wikipedia/page/PageActionTabLayout;->getCallback()Lorg/wikipedia/page/action/PageActionItem$Callback;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    invoke-virtual {v9, v0}, Lorg/wikipedia/page/action/PageActionItem;->select(Lorg/wikipedia/page/action/PageActionItem$Callback;)V

    .line 848
    .line 849
    .line 850
    :goto_5
    return-void

    .line 851
    :pswitch_d
    check-cast v0, Lorg/wikipedia/history/HistoryFragment;

    .line 852
    .line 853
    check-cast v9, Ljava/util/List;

    .line 854
    .line 855
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    iget-object v2, v0, Lorg/wikipedia/history/HistoryViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 864
    .line 865
    new-instance v3, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 866
    .line 867
    const/16 v4, 0x10

    .line 868
    .line 869
    invoke-direct {v3, v9, v0, v8, v4}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 870
    .line 871
    .line 872
    invoke-static {v1, v2, v8, v3, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 873
    .line 874
    .line 875
    return-void

    .line 876
    :pswitch_e
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 877
    .line 878
    check-cast v9, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 879
    .line 880
    invoke-virtual {v9}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 885
    .line 886
    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    new-instance v10, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 891
    .line 892
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 893
    .line 894
    .line 895
    new-instance v14, Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 896
    .line 897
    invoke-direct {v14, v9, v0, v1, v7}, Lorg/wikipedia/page/shareafact/ShareHandler;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 898
    .line 899
    .line 900
    const/16 v15, 0x16

    .line 901
    .line 902
    const v12, 0x7f0e0014

    .line 903
    .line 904
    .line 905
    const/4 v13, 0x0

    .line 906
    move-object/from16 v11, p1

    .line 907
    .line 908
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 909
    .line 910
    .line 911
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 912
    .line 913
    const/16 v2, 0x18

    .line 914
    .line 915
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v10, v0}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 919
    .line 920
    .line 921
    return-void

    .line 922
    :pswitch_f
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 923
    .line 924
    check-cast v9, Lorg/wikipedia/games/GamesHubFragment;

    .line 925
    .line 926
    const v1, 0x7f1204fc

    .line 927
    .line 928
    .line 929
    invoke-virtual {v9, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 934
    .line 935
    .line 936
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 941
    .line 942
    .line 943
    invoke-static {v0, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 944
    .line 945
    .line 946
    return-void

    .line 947
    :pswitch_10
    check-cast v0, Lorg/wikipedia/feed/view/ListItemView;

    .line 948
    .line 949
    check-cast v9, Landroid/content/Context;

    .line 950
    .line 951
    iget-object v1, v0, Lorg/wikipedia/feed/view/ListItemView;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 952
    .line 953
    if-eqz v1, :cond_1b

    .line 954
    .line 955
    iget-object v2, v0, Lorg/wikipedia/feed/view/ListItemView;->title:Lorg/wikipedia/page/PageTitle;

    .line 956
    .line 957
    if-eqz v2, :cond_1b

    .line 958
    .line 959
    iget-object v3, v0, Lorg/wikipedia/feed/view/ListItemView;->callback:Lorg/wikipedia/feed/view/ListItemView$Callback;

    .line 960
    .line 961
    if-eqz v3, :cond_1b

    .line 962
    .line 963
    iget-object v0, v0, Lorg/wikipedia/feed/view/ListItemView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 964
    .line 965
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 968
    .line 969
    new-array v4, v7, [Landroid/view/View;

    .line 970
    .line 971
    aput-object v0, v4, v6

    .line 972
    .line 973
    invoke-static {v9, v4}, Lokhttp3/Cookie$Companion;->getSharedElements(Landroid/content/Context;[Landroid/view/View;)[Landroid/util/Pair;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    invoke-interface {v3, v2, v1, v0}, Lorg/wikipedia/feed/view/ListItemView$Callback;->onSelectPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;[Landroid/util/Pair;)V

    .line 978
    .line 979
    .line 980
    :cond_1b
    return-void

    .line 981
    :pswitch_11
    check-cast v0, Lorg/wikipedia/feed/HomeFragment;

    .line 982
    .line 983
    check-cast v9, Lorg/wikipedia/feed/model/ForYouCard;

    .line 984
    .line 985
    iget-object v1, v0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 986
    .line 987
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v20

    .line 995
    const/16 v24, 0x0

    .line 996
    .line 997
    const/16 v25, 0xf0

    .line 998
    .line 999
    const-string v19, "click"

    .line 1000
    .line 1001
    const-string v21, "feed_overflow"

    .line 1002
    .line 1003
    const-string/jumbo v22, "undo_card_hide"

    .line 1004
    .line 1005
    .line 1006
    const/16 v23, 0x0

    .line 1007
    .line 1008
    move-object/from16 v18, v1

    .line 1009
    .line 1010
    invoke-static/range {v18 .. v25}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$hideForYouCard$1;

    .line 1022
    .line 1023
    invoke-direct {v1, v9, v8, v7}, Lorg/wikipedia/feed/HomeViewModel$hideForYouCard$1;-><init>(Lorg/wikipedia/feed/model/ForYouCard;Lkotlin/coroutines/Continuation;I)V

    .line 1024
    .line 1025
    .line 1026
    const/4 v2, 0x3

    .line 1027
    invoke-static {v0, v8, v8, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1028
    .line 1029
    .line 1030
    return-void

    .line 1031
    :pswitch_12
    check-cast v0, Lorg/wikipedia/feed/HomeFragment;

    .line 1032
    .line 1033
    move-object/from16 v20, v9

    .line 1034
    .line 1035
    check-cast v20, Ljava/lang/String;

    .line 1036
    .line 1037
    iget-object v1, v0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1038
    .line 1039
    const/16 v24, 0x0

    .line 1040
    .line 1041
    const/16 v25, 0xf0

    .line 1042
    .line 1043
    const-string v19, "click"

    .line 1044
    .line 1045
    const-string v21, "feed_overflow"

    .line 1046
    .line 1047
    const-string/jumbo v22, "undo_module_hide"

    .line 1048
    .line 1049
    .line 1050
    const/16 v23, 0x0

    .line 1051
    .line 1052
    move-object/from16 v18, v1

    .line 1053
    .line 1054
    invoke-static/range {v18 .. v25}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1055
    .line 1056
    .line 1057
    move-object/from16 v9, v20

    .line 1058
    .line 1059
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 1068
    .line 1069
    invoke-direct {v1, v9, v7, v8}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 1070
    .line 1071
    .line 1072
    const/4 v2, 0x3

    .line 1073
    invoke-static {v0, v8, v8, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1074
    .line 1075
    .line 1076
    return-void

    .line 1077
    :pswitch_13
    check-cast v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 1078
    .line 1079
    check-cast v9, Lorg/wikipedia/page/PageTitle;

    .line 1080
    .line 1081
    invoke-virtual {v0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v2

    .line 1089
    new-instance v3, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 1090
    .line 1091
    invoke-direct {v3, v1}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;)V

    .line 1092
    .line 1093
    .line 1094
    new-instance v4, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 1095
    .line 1096
    const/16 v6, 0x9

    .line 1097
    .line 1098
    invoke-direct {v4, v9, v1, v8, v6}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v2, v3, v8, v4, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    iput-object v9, v0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->selectedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1109
    .line 1110
    return-void

    .line 1111
    :pswitch_14
    check-cast v0, Lorg/wikipedia/edit/templates/InsertTemplateFragment;

    .line 1112
    .line 1113
    check-cast v9, Lorg/wikipedia/page/PageTitle;

    .line 1114
    .line 1115
    iget-object v1, v0, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->activity:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 1116
    .line 1117
    if-eqz v1, :cond_1c

    .line 1118
    .line 1119
    const-string v2, "learn_click"

    .line 1120
    .line 1121
    invoke-static {v1, v2}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->sendPatrollerExperienceEvent$default(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Ljava/lang/String;)V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    invoke-virtual {v9}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v1

    .line 1132
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v1

    .line 1136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1137
    .line 1138
    .line 1139
    invoke-static {v0, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1140
    .line 1141
    .line 1142
    return-void

    .line 1143
    :cond_1c
    const-string v0, "activity"

    .line 1144
    .line 1145
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    throw v8

    .line 1149
    :pswitch_15
    check-cast v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 1150
    .line 1151
    check-cast v9, Ljava/lang/String;

    .line 1152
    .line 1153
    iget-object v1, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 1154
    .line 1155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1156
    .line 1157
    .line 1158
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 1159
    .line 1160
    check-cast v1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 1161
    .line 1162
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    .line 1164
    .line 1165
    iget-object v0, v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 1166
    .line 1167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1168
    .line 1169
    .line 1170
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 1171
    .line 1172
    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 1173
    .line 1174
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1175
    .line 1176
    .line 1177
    move-result v1

    .line 1178
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1179
    .line 1180
    .line 1181
    return-void

    .line 1182
    :pswitch_16
    check-cast v0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 1183
    .line 1184
    check-cast v9, Lorg/wikipedia/page/PageTitle;

    .line 1185
    .line 1186
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 1187
    .line 1188
    .line 1189
    move-result v1

    .line 1190
    if-eqz v1, :cond_1d

    .line 1191
    .line 1192
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 1193
    .line 1194
    new-instance v10, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 1195
    .line 1196
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1197
    .line 1198
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v14

    .line 1202
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1203
    .line 1204
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v15

    .line 1208
    const-string v16, "app_patroller_experience"

    .line 1209
    .line 1210
    const-string v11, "publish_message_view_click"

    .line 1211
    .line 1212
    const-string v12, "pt_warning_messages"

    .line 1213
    .line 1214
    const-string v13, ""

    .line 1215
    .line 1216
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-static {v10}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 1220
    .line 1221
    .line 1222
    sget v1, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 1223
    .line 1224
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->DIFF_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 1229
    .line 1230
    invoke-static {v1, v9, v2}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v1

    .line 1234
    invoke-virtual {v0, v1, v8}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1235
    .line 1236
    .line 1237
    :cond_1d
    return-void

    .line 1238
    :pswitch_17
    check-cast v0, Landroid/content/Context;

    .line 1239
    .line 1240
    check-cast v9, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 1241
    .line 1242
    sget v1, Lorg/wikipedia/descriptions/DescriptionEditView;->$r8$clinit:I

    .line 1243
    .line 1244
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1245
    .line 1246
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v1

    .line 1250
    iget-object v2, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 1251
    .line 1252
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 1253
    .line 1254
    if-eq v2, v3, :cond_1f

    .line 1255
    .line 1256
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 1257
    .line 1258
    if-ne v2, v3, :cond_1e

    .line 1259
    .line 1260
    goto :goto_6

    .line 1261
    :cond_1e
    const v2, 0x7f12010d

    .line 1262
    .line 1263
    .line 1264
    goto :goto_7

    .line 1265
    :cond_1f
    :goto_6
    iget-object v2, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1266
    .line 1267
    if-eqz v2, :cond_21

    .line 1268
    .line 1269
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1270
    .line 1271
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1272
    .line 1273
    const-string v3, "en"

    .line 1274
    .line 1275
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v2

    .line 1279
    if-eqz v2, :cond_20

    .line 1280
    .line 1281
    const v2, 0x7f12086b

    .line 1282
    .line 1283
    .line 1284
    goto :goto_7

    .line 1285
    :cond_20
    const v2, 0x7f120105

    .line 1286
    .line 1287
    .line 1288
    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v1

    .line 1292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    .line 1294
    .line 1295
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v1

    .line 1299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1300
    .line 1301
    .line 1302
    invoke-static {v0, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1303
    .line 1304
    .line 1305
    return-void

    .line 1306
    :cond_21
    const-string v0, "pageTitle"

    .line 1307
    .line 1308
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    throw v8

    .line 1312
    :pswitch_18
    check-cast v0, Lorg/wikipedia/commons/FilePageFragment;

    .line 1313
    .line 1314
    check-cast v9, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1315
    .line 1316
    sget v1, Lorg/wikipedia/commons/FilePageView;->$r8$clinit:I

    .line 1317
    .line 1318
    if-eqz v0, :cond_22

    .line 1319
    .line 1320
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1321
    .line 1322
    .line 1323
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment;->addImageTagsLauncher:Landroidx/fragment/app/Fragment$10;

    .line 1324
    .line 1325
    sget v2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->$r8$clinit:I

    .line 1326
    .line 1327
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0

    .line 1331
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FILE_PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 1332
    .line 1333
    invoke-static {v0, v9, v2}, Lorg/wikipedia/util/TabUtil;->newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    invoke-virtual {v1, v0, v8}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 1338
    .line 1339
    .line 1340
    :cond_22
    return-void

    .line 1341
    :pswitch_19
    check-cast v0, Lorg/wikipedia/commons/FilePageFragment;

    .line 1342
    .line 1343
    move-object v3, v9

    .line 1344
    check-cast v3, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 1345
    .line 1346
    sget v1, Lorg/wikipedia/commons/FilePageView;->$r8$clinit:I

    .line 1347
    .line 1348
    if-eqz v0, :cond_23

    .line 1349
    .line 1350
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v1

    .line 1357
    iget-object v1, v1, Lorg/wikipedia/commons/FilePageViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 1358
    .line 1359
    if-eqz v1, :cond_23

    .line 1360
    .line 1361
    iget-object v7, v0, Lorg/wikipedia/commons/FilePageFragment;->addImageCaptionLauncher:Landroidx/fragment/app/Fragment$10;

    .line 1362
    .line 1363
    sget v2, Lorg/wikipedia/descriptions/DescriptionEditActivity;->$r8$clinit:I

    .line 1364
    .line 1365
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    iget-object v2, v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1370
    .line 1371
    sget-object v5, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 1372
    .line 1373
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->FILE_PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 1374
    .line 1375
    const/4 v4, 0x0

    .line 1376
    move-object v1, v0

    .line 1377
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/util/UriUtil;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    invoke-virtual {v7, v0, v8}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 1382
    .line 1383
    .line 1384
    :cond_23
    return-void

    .line 1385
    :pswitch_1a
    check-cast v0, Lorg/wikipedia/commons/FilePageView;

    .line 1386
    .line 1387
    check-cast v9, Ljava/lang/String;

    .line 1388
    .line 1389
    sget v1, Lorg/wikipedia/commons/FilePageView;->$r8$clinit:I

    .line 1390
    .line 1391
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1396
    .line 1397
    .line 1398
    invoke-static {v9}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v1

    .line 1402
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v1

    .line 1406
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1407
    .line 1408
    .line 1409
    invoke-static {v0, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1410
    .line 1411
    .line 1412
    return-void

    .line 1413
    :pswitch_1b
    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    .line 1414
    .line 1415
    check-cast v9, Landroid/view/View$OnClickListener;

    .line 1416
    .line 1417
    move-object/from16 v11, p1

    .line 1418
    .line 1419
    invoke-interface {v9, v11}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {v0, v7}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 1423
    .line 1424
    .line 1425
    return-void

    .line 1426
    :pswitch_1c
    check-cast v0, Lorg/wikipedia/feed/HomeFragment;

    .line 1427
    .line 1428
    check-cast v9, Lorg/wikipedia/feed/model/Card;

    .line 1429
    .line 1430
    iget-object v1, v0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1431
    .line 1432
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v2

    .line 1436
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v20

    .line 1440
    const/16 v24, 0x0

    .line 1441
    .line 1442
    const/16 v25, 0xf0

    .line 1443
    .line 1444
    const-string v19, "click"

    .line 1445
    .line 1446
    const-string v21, "feed_overflow"

    .line 1447
    .line 1448
    const-string/jumbo v22, "undo_card_hide"

    .line 1449
    .line 1450
    .line 1451
    const/16 v23, 0x0

    .line 1452
    .line 1453
    move-object/from16 v18, v1

    .line 1454
    .line 1455
    invoke-static/range {v18 .. v25}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v0

    .line 1462
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v0

    .line 1466
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;

    .line 1467
    .line 1468
    invoke-direct {v1, v9, v8, v7}, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;-><init>(Lorg/wikipedia/feed/model/Card;Lkotlin/coroutines/Continuation;I)V

    .line 1469
    .line 1470
    .line 1471
    const/4 v2, 0x3

    .line 1472
    invoke-static {v0, v8, v8, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1473
    .line 1474
    .line 1475
    return-void

    .line 1476
    nop

    .line 1477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
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
