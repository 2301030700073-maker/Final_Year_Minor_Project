.class public final synthetic Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x2

    .line 8
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/places/PlacesFragment;

    .line 14
    .line 15
    sget-object v0, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->controlsContainer:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 58
    .line 59
    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    .line 60
    .line 61
    iget v3, p1, Landroidx/core/graphics/Insets;->top:I

    .line 62
    .line 63
    add-int/2addr v2, v3

    .line 64
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 65
    .line 66
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    .line 67
    .line 68
    iget v3, p1, Landroidx/core/graphics/Insets;->left:I

    .line 69
    .line 70
    add-int/2addr v2, v3

    .line 71
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 72
    .line 73
    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    .line 74
    .line 75
    iget v5, p1, Landroidx/core/graphics/Insets;->right:I

    .line 76
    .line 77
    add-int/2addr v3, v5

    .line 78
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 79
    .line 80
    iget v5, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 81
    .line 82
    iget v6, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 83
    .line 84
    add-int/2addr v5, v6

    .line 85
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 86
    .line 87
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->myLocationButton:Landroid/view/View;

    .line 93
    .line 94
    check-cast v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 104
    .line 105
    const/high16 v5, 0x41800000    # 16.0f

    .line 106
    .line 107
    invoke-static {v5}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    add-int/2addr v7, v6

    .line 112
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 113
    .line 114
    invoke-static {v5}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    add-int/2addr v6, v2

    .line 119
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 120
    .line 121
    invoke-static {v5}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    add-int/2addr v2, v3

    .line 126
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 127
    .line 128
    iget-object v2, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentPlacesBinding;->myLocationButton:Landroid/view/View;

    .line 134
    .line 135
    check-cast v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->statusBarInsets:Landroidx/core/graphics/Insets;

    .line 141
    .line 142
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->navBarInsets:Landroidx/core/graphics/Insets;

    .line 143
    .line 144
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 145
    .line 146
    const/16 v0, 0x24

    .line 147
    .line 148
    if-lt p1, v0, :cond_0

    .line 149
    .line 150
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl36;

    .line 151
    .line 152
    invoke-direct {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl36;-><init>()V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_0
    const/16 v0, 0x23

    .line 157
    .line 158
    if-lt p1, v0, :cond_1

    .line 159
    .line 160
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl35;

    .line 161
    .line 162
    invoke-direct {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl35;-><init>()V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_1
    const/16 v0, 0x22

    .line 167
    .line 168
    if-lt p1, v0, :cond_2

    .line 169
    .line 170
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;

    .line 171
    .line 172
    invoke-direct {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;-><init>()V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_2
    const/16 v0, 0x1f

    .line 177
    .line 178
    if-lt p1, v0, :cond_3

    .line 179
    .line 180
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;

    .line 181
    .line 182
    invoke-direct {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl31;-><init>()V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_3
    const/16 v0, 0x1e

    .line 187
    .line 188
    if-lt p1, v0, :cond_4

    .line 189
    .line 190
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    .line 191
    .line 192
    invoke-direct {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>()V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_4
    const/16 v0, 0x1d

    .line 197
    .line 198
    if-lt p1, v0, :cond_5

    .line 199
    .line 200
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;

    .line 201
    .line 202
    invoke-direct {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>()V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_5
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;

    .line 207
    .line 208
    invoke-direct {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>()V

    .line 209
    .line 210
    .line 211
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment;->navBarInsets:Landroidx/core/graphics/Insets;

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v4, p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setInsets(ILandroidx/core/graphics/Insets;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->build()Landroidx/core/view/WindowInsetsCompat;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    if-nez p0, :cond_6

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_6
    move-object p2, p0

    .line 231
    :goto_1
    return-object p2

    .line 232
    :pswitch_0
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 245
    .line 246
    invoke-virtual {p1, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 254
    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 261
    .line 262
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 263
    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 277
    .line 278
    .line 279
    return-object p2

    .line 280
    :pswitch_1
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 293
    .line 294
    invoke-virtual {p1, v3}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    iget-object v3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 309
    .line 310
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->currentQuestionContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 314
    .line 315
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    if-eqz v4, :cond_7

    .line 320
    .line 321
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 322
    .line 323
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    .line 324
    .line 325
    iget v2, p1, Landroidx/core/graphics/Insets;->left:I

    .line 326
    .line 327
    add-int/2addr v1, v2

    .line 328
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 329
    .line 330
    iget v1, v0, Landroidx/core/graphics/Insets;->right:I

    .line 331
    .line 332
    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    .line 333
    .line 334
    add-int/2addr v1, v2

    .line 335
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 336
    .line 337
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    .line 339
    .line 340
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 341
    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->bottomContent:Landroid/widget/FrameLayout;

    .line 346
    .line 347
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 348
    .line 349
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 350
    .line 351
    add-int/2addr v0, p1

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 365
    .line 366
    .line 367
    goto :goto_2

    .line 368
    :cond_7
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    move-object p2, v2

    .line 372
    :goto_2
    return-object p2

    .line 373
    :pswitch_2
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 374
    .line 375
    sget v0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->$r8$clinit:I

    .line 376
    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 388
    .line 389
    invoke-virtual {p1, v3}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    .line 397
    .line 398
    invoke-virtual {p1, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    const v4, 0x7f040006

    .line 406
    .line 407
    .line 408
    filled-new-array {v4}, [I

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    const/4 v5, 0x0

    .line 424
    invoke-virtual {v4, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 429
    .line 430
    .line 431
    iget-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 432
    .line 433
    const-string v6, "binding"

    .line 434
    .line 435
    if-eqz v4, :cond_a

    .line 436
    .line 437
    iget-object v4, v4, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    .line 440
    .line 441
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 442
    .line 443
    .line 444
    move-result v7

    .line 445
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    invoke-virtual {v4, v7, v3, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 454
    .line 455
    .line 456
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 457
    .line 458
    if-eqz p0, :cond_9

    .line 459
    .line 460
    iget-object p0, p0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    .line 463
    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    if-eqz v4, :cond_8

    .line 469
    .line 470
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 471
    .line 472
    add-int/2addr v5, v3

    .line 473
    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 474
    .line 475
    add-int/2addr v5, v1

    .line 476
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 477
    .line 478
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    .line 479
    .line 480
    iget v2, p1, Landroidx/core/graphics/Insets;->left:I

    .line 481
    .line 482
    add-int/2addr v1, v2

    .line 483
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 484
    .line 485
    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    .line 486
    .line 487
    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    .line 488
    .line 489
    add-int/2addr v0, p1

    .line 490
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 491
    .line 492
    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .line 494
    .line 495
    goto :goto_3

    .line 496
    :cond_8
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    move-object p2, v2

    .line 500
    :goto_3
    return-object p2

    .line 501
    :cond_9
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v2

    .line 505
    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw v2

    .line 509
    :pswitch_3
    check-cast p0, Lorg/wikipedia/main/MainActivity;

    .line 510
    .line 511
    sget v0, Lorg/wikipedia/main/MainActivity;->$r8$clinit:I

    .line 512
    .line 513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    invoke-static {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 524
    .line 525
    invoke-virtual {p1, v3}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 526
    .line 527
    .line 528
    move-result-object p2

    .line 529
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    iput-object p2, p0, Lorg/wikipedia/main/MainActivity;->statusBarInsets:Landroidx/core/graphics/Insets;

    .line 533
    .line 534
    invoke-virtual {p1, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    iput-object p1, p0, Lorg/wikipedia/main/MainActivity;->navBarInsets:Landroidx/core/graphics/Insets;

    .line 542
    .line 543
    invoke-virtual {p0}, Lorg/wikipedia/main/MainActivity;->applyInsets()V

    .line 544
    .line 545
    .line 546
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 547
    .line 548
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    .line 549
    .line 550
    .line 551
    move-result-object p0

    .line 552
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    return-object p0

    .line 556
    nop

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
