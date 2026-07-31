.class public final Lcom/skydoves/balloon/Balloon;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final autoDismissRunnable$delegate:Lkotlin/Lazy;

.field public final binding:Lcom/google/gson/GsonBuilder;

.field public final bodyWindow:Landroid/widget/PopupWindow;

.field public final builder:Lcom/skydoves/balloon/Balloon$Builder;

.field public final context:Landroid/content/Context;

.field public destroyed:Z

.field public final handler$delegate:Lkotlin/Lazy;

.field public isShowing:Z

.field public onBalloonInitializedListener:Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;

.field public final overlayWindow:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/16 v1, 0x9

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/skydoves/balloon/Balloon$Builder;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    .line 11
    .line 12
    iput-object v2, v0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const v4, 0x7f0c003c

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    move-object v8, v3

    .line 28
    check-cast v8, Landroid/widget/FrameLayout;

    .line 29
    .line 30
    const v4, 0x7f090094

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    move-object v10, v7

    .line 38
    check-cast v10, Landroid/widget/ImageView;

    .line 39
    .line 40
    if-eqz v10, :cond_b

    .line 41
    .line 42
    const v4, 0x7f090095

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    move-object v11, v7

    .line 50
    check-cast v11, Lcom/skydoves/balloon/radius/RadiusLayout;

    .line 51
    .line 52
    if-eqz v11, :cond_b

    .line 53
    .line 54
    const v4, 0x7f090096

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    move-object v12, v7

    .line 62
    check-cast v12, Landroid/widget/FrameLayout;

    .line 63
    .line 64
    if-eqz v12, :cond_b

    .line 65
    .line 66
    const v4, 0x7f090097

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    move-object v13, v7

    .line 74
    check-cast v13, Lcom/skydoves/balloon/vectortext/VectorTextView;

    .line 75
    .line 76
    if-eqz v13, :cond_b

    .line 77
    .line 78
    const v4, 0x7f090098

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v4}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    move-object v14, v7

    .line 86
    check-cast v14, Landroid/widget/FrameLayout;

    .line 87
    .line 88
    if-eqz v14, :cond_b

    .line 89
    .line 90
    new-instance v7, Lcom/google/gson/GsonBuilder;

    .line 91
    .line 92
    const/4 v15, 0x3

    .line 93
    move-object v9, v8

    .line 94
    invoke-direct/range {v7 .. v15}, Lcom/google/gson/GsonBuilder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 95
    .line 96
    .line 97
    iput-object v7, v0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 98
    .line 99
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const v4, 0x7f0c003d

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-eqz v3, :cond_a

    .line 111
    .line 112
    check-cast v3, Lcom/skydoves/balloon/overlay/BalloonAnchorOverlayView;

    .line 113
    .line 114
    new-instance v4, Landroid/widget/PopupWindow;

    .line 115
    .line 116
    const/4 v7, -0x2

    .line 117
    invoke-direct {v4, v8, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 118
    .line 119
    .line 120
    iput-object v4, v0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 121
    .line 122
    new-instance v7, Landroid/widget/PopupWindow;

    .line 123
    .line 124
    const/4 v9, -0x1

    .line 125
    invoke-direct {v7, v3, v9, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 126
    .line 127
    .line 128
    iput-object v7, v0, Lcom/skydoves/balloon/Balloon;->overlayWindow:Landroid/widget/PopupWindow;

    .line 129
    .line 130
    iput-object v5, v0, Lcom/skydoves/balloon/Balloon;->onBalloonInitializedListener:Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;

    .line 131
    .line 132
    sget-object v7, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 133
    .line 134
    new-instance v10, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    const/16 v12, 0xa

    .line 137
    .line 138
    invoke-direct {v10, v12}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-static {v7, v10}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    iput-object v10, v0, Lcom/skydoves/balloon/Balloon;->handler$delegate:Lkotlin/Lazy;

    .line 146
    .line 147
    new-instance v10, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;

    .line 148
    .line 149
    invoke-direct {v10, v0, v6}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;-><init>(Lcom/skydoves/balloon/Balloon;I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v7, v10}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    iput-object v10, v0, Lcom/skydoves/balloon/Balloon;->autoDismissRunnable$delegate:Lkotlin/Lazy;

    .line 157
    .line 158
    new-instance v10, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;

    .line 159
    .line 160
    const/4 v12, 0x1

    .line 161
    invoke-direct {v10, v0, v12}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;-><init>(Lcom/skydoves/balloon/Balloon;I)V

    .line 162
    .line 163
    .line 164
    invoke-static {v7, v10}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 165
    .line 166
    .line 167
    iget v7, v2, Lcom/skydoves/balloon/Balloon$Builder;->elevation:F

    .line 168
    .line 169
    const/high16 v10, 0x3f800000    # 1.0f

    .line 170
    .line 171
    invoke-virtual {v11, v10}, Landroid/view/View;->setAlpha(F)V

    .line 172
    .line 173
    .line 174
    iget v10, v2, Lcom/skydoves/balloon/Balloon$Builder;->cornerRadius:F

    .line 175
    .line 176
    invoke-virtual {v11, v10}, Lcom/skydoves/balloon/radius/RadiusLayout;->setRadius(F)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11, v10}, Lcom/skydoves/balloon/radius/RadiusLayout;->setRadius(F)V

    .line 180
    .line 181
    .line 182
    sget-object v15, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 183
    .line 184
    invoke-virtual {v11, v7}, Landroid/view/View;->setElevation(F)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v11, v6}, Lcom/skydoves/balloon/radius/RadiusLayout;->setDrawCustomShape(Z)V

    .line 188
    .line 189
    .line 190
    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    .line 191
    .line 192
    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 193
    .line 194
    .line 195
    iget v9, v2, Lcom/skydoves/balloon/Balloon$Builder;->backgroundColor:I

    .line 196
    .line 197
    invoke-virtual {v15, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v15, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v11, v6, v6, v6, v6}, Lcom/skydoves/balloon/radius/RadiusLayout;->setPadding(IIII)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 220
    .line 221
    iget v10, v2, Lcom/skydoves/balloon/Balloon$Builder;->marginLeft:I

    .line 222
    .line 223
    iget v15, v2, Lcom/skydoves/balloon/Balloon$Builder;->marginTop:I

    .line 224
    .line 225
    move-object/from16 v16, v5

    .line 226
    .line 227
    iget v5, v2, Lcom/skydoves/balloon/Balloon$Builder;->marginRight:I

    .line 228
    .line 229
    iget v12, v2, Lcom/skydoves/balloon/Balloon$Builder;->marginBottom:I

    .line 230
    .line 231
    invoke-virtual {v9, v10, v15, v5, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v14, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v14, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 238
    .line 239
    .line 240
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 241
    .line 242
    const/16 v9, 0x1a

    .line 243
    .line 244
    if-lt v5, v9, :cond_0

    .line 245
    .line 246
    invoke-virtual {v14, v6}, Landroid/widget/FrameLayout;->setDefaultFocusHighlightEnabled(Z)V

    .line 247
    .line 248
    .line 249
    :cond_0
    invoke-virtual {v8, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 253
    .line 254
    .line 255
    if-lt v5, v9, :cond_1

    .line 256
    .line 257
    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->setDefaultFocusHighlightEnabled(Z)V

    .line 258
    .line 259
    .line 260
    :cond_1
    invoke-virtual {v11, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v11, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 264
    .line 265
    .line 266
    if-lt v5, v9, :cond_2

    .line 267
    .line 268
    invoke-virtual {v11, v6}, Landroid/widget/FrameLayout;->setDefaultFocusHighlightEnabled(Z)V

    .line 269
    .line 270
    .line 271
    :cond_2
    const/4 v5, 0x1

    .line 272
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 273
    .line 274
    .line 275
    iget-boolean v9, v2, Lcom/skydoves/balloon/Balloon$Builder;->isFocusable:Z

    .line 276
    .line 277
    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 281
    .line 282
    .line 283
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    .line 284
    .line 285
    invoke-direct {v9, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 295
    .line 296
    .line 297
    iget-object v5, v2, Lcom/skydoves/balloon/Balloon$Builder;->layout:Landroid/widget/LinearLayout;

    .line 298
    .line 299
    if-eqz v5, :cond_6

    .line 300
    .line 301
    if-eqz v5, :cond_5

    .line 302
    .line 303
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    instance-of v9, v7, Landroid/view/ViewGroup;

    .line 308
    .line 309
    if-eqz v9, :cond_3

    .line 310
    .line 311
    check-cast v7, Landroid/view/ViewGroup;

    .line 312
    .line 313
    goto :goto_0

    .line 314
    :cond_3
    move-object/from16 v7, v16

    .line 315
    .line 316
    :goto_0
    if-eqz v7, :cond_4

    .line 317
    .line 318
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 319
    .line 320
    .line 321
    :cond_4
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v11}, Lcom/skydoves/balloon/Balloon;->traverseAndMeasureTextWidth(Landroid/view/ViewGroup;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :cond_5
    const-string v0, "The custom layout is null."

    .line 333
    .line 334
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v16

    .line 338
    :cond_6
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    const/high16 v7, 0x41e00000    # 28.0f

    .line 354
    .line 355
    const/4 v9, 0x1

    .line 356
    invoke-static {v9, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    invoke-static {v5}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 361
    .line 362
    .line 363
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-static {v9, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    invoke-static {v5}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 376
    .line 377
    .line 378
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    const/high16 v7, 0x41000000    # 8.0f

    .line 387
    .line 388
    invoke-static {v9, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    invoke-static {v5}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 393
    .line 394
    .line 395
    iget-object v5, v2, Lcom/skydoves/balloon/Balloon$Builder;->iconGravity:Lcom/skydoves/balloon/IconGravity;

    .line 396
    .line 397
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    iget-boolean v5, v2, Lcom/skydoves/balloon/Balloon$Builder;->isRtlLayout:Z

    .line 401
    .line 402
    iget-object v7, v13, Lcom/skydoves/balloon/vectortext/VectorTextView;->drawableTextViewParams:Lcom/skydoves/balloon/vectortext/VectorTextViewParams;

    .line 403
    .line 404
    if-eqz v7, :cond_7

    .line 405
    .line 406
    iput-boolean v5, v7, Lcom/skydoves/balloon/vectortext/VectorTextViewParams;->isRtlLayout:Z

    .line 407
    .line 408
    invoke-static {v13, v7}, Lkotlin/text/UStringsKt;->applyDrawable(Landroid/widget/TextView;Lcom/skydoves/balloon/vectortext/VectorTextViewParams;)V

    .line 409
    .line 410
    .line 411
    :cond_7
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    move-object/from16 v5, v16

    .line 419
    .line 420
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 421
    .line 422
    .line 423
    const-string v5, ""

    .line 424
    .line 425
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    .line 427
    .line 428
    const/high16 v5, 0x41400000    # 12.0f

    .line 429
    .line 430
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 431
    .line 432
    .line 433
    const/16 v5, 0x11

    .line 434
    .line 435
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 436
    .line 437
    .line 438
    const/4 v5, -0x1

    .line 439
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    .line 441
    .line 442
    const/4 v5, 0x1

    .line 443
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v13}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    invoke-virtual {v13, v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v13, v11}, Lcom/skydoves/balloon/Balloon;->measureTextWidth(Landroid/widget/TextView;Landroid/view/View;)V

    .line 454
    .line 455
    .line 456
    :goto_1
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon;->initializeBalloonContent()V

    .line 457
    .line 458
    .line 459
    new-instance v5, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;

    .line 460
    .line 461
    const/4 v7, 0x0

    .line 462
    invoke-direct {v5, v6, v0, v7}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 466
    .line 467
    .line 468
    new-instance v5, Lcom/google/android/material/timepicker/TimePickerView$3;

    .line 469
    .line 470
    const/4 v7, 0x2

    .line 471
    invoke-direct {v5, v7, v0}, Lcom/google/android/material/timepicker/TimePickerView$3;-><init>(ILjava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 475
    .line 476
    .line 477
    new-instance v4, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda8;

    .line 478
    .line 479
    invoke-direct {v4, v0, v6}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda8;-><init>(Lcom/skydoves/balloon/Balloon;I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    .line 484
    .line 485
    invoke-static {v8}, Lcom/skydoves/balloon/Balloon;->adjustFitsSystemWindows(Landroid/view/ViewGroup;)V

    .line 486
    .line 487
    .line 488
    iget-object v3, v2, Lcom/skydoves/balloon/Balloon$Builder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 489
    .line 490
    if-nez v3, :cond_8

    .line 491
    .line 492
    instance-of v4, v1, Landroidx/lifecycle/LifecycleOwner;

    .line 493
    .line 494
    if-eqz v4, :cond_8

    .line 495
    .line 496
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 497
    .line 498
    iput-object v1, v2, Lcom/skydoves/balloon/Balloon$Builder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 499
    .line 500
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :cond_8
    if-eqz v3, :cond_9

    .line 509
    .line 510
    invoke-interface {v3}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    if-eqz v1, :cond_9

    .line 515
    .line 516
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 517
    .line 518
    .line 519
    :cond_9
    return-void

    .line 520
    :cond_a
    const-string v0, "rootView"

    .line 521
    .line 522
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    const/16 v16, 0x0

    .line 526
    .line 527
    throw v16

    .line 528
    :cond_b
    move-object/from16 v16, v5

    .line 529
    .line 530
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    const-string v1, "Missing required view with ID: "

    .line 539
    .line 540
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    throw v16
.end method

.method public static adjustFitsSystemWindows(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    move-object v3, v1

    .line 29
    check-cast v3, Lkotlin/ranges/IntProgressionIterator;

    .line 30
    .line 31
    iget-boolean v3, v3, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    move-object v3, v1

    .line 36
    check-cast v3, Lkotlin/collections/IntIterator;

    .line 37
    .line 38
    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 67
    .line 68
    .line 69
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    check-cast v1, Landroid/view/ViewGroup;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/skydoves/balloon/Balloon;->adjustFitsSystemWindows(Landroid/view/ViewGroup;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    return-void
.end method


# virtual methods
.method public final canShowBalloonWindow(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/balloon/Balloon;->isShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/skydoves/balloon/Balloon;->destroyed:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/text/RegexKt;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_4

    .line 45
    .line 46
    :goto_0
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/skydoves/balloon/Balloon;->isShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;-><init>(Lcom/skydoves/balloon/Balloon;I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->balloonAnimation:Lcom/skydoves/balloon/BalloonAnimation;

    .line 14
    .line 15
    sget-object v2, Lcom/skydoves/balloon/BalloonAnimation;->CIRCULAR:Lcom/skydoves/balloon/BalloonAnimation;

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroidx/core/app/ActivityRecreator$1;

    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    invoke-direct {v1, v2, p0, v0}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;->invoke()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final getArrowConstraintPositionX(Landroid/view/View;)F
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-static {v1}, Lkotlin/uuid/UuidKt;->getViewPointOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->getViewPointOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowWidth()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-float v4, v4

    .line 26
    const/high16 v5, 0x40200000    # 2.5f

    .line 27
    .line 28
    mul-float/2addr v4, v5

    .line 29
    iget v5, v3, Lcom/skydoves/balloon/Balloon$Builder;->arrowAlignAnchorPadding:I

    .line 30
    .line 31
    int-to-float v5, v5

    .line 32
    add-float/2addr v4, v5

    .line 33
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasuredWidth()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    int-to-float v5, v5

    .line 38
    sub-float/2addr v5, v4

    .line 39
    iget v6, v3, Lcom/skydoves/balloon/Balloon$Builder;->marginRight:I

    .line 40
    .line 41
    int-to-float v6, v6

    .line 42
    sub-float/2addr v5, v6

    .line 43
    iget v6, v3, Lcom/skydoves/balloon/Balloon$Builder;->marginLeft:I

    .line 44
    .line 45
    int-to-float v6, v6

    .line 46
    sub-float/2addr v5, v6

    .line 47
    invoke-virtual {v3}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowWidth()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    int-to-float v6, v6

    .line 52
    const/high16 v7, 0x3f000000    # 0.5f

    .line 53
    .line 54
    mul-float/2addr v6, v7

    .line 55
    iget-object v8, v3, Lcom/skydoves/balloon/Balloon$Builder;->arrowPositionRules:Lcom/skydoves/balloon/ArrowPositionRules;

    .line 56
    .line 57
    sget-object v9, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    aget v8, v9, v8

    .line 64
    .line 65
    const/4 v9, 0x1

    .line 66
    const/4 v10, 0x0

    .line 67
    const/4 v11, 0x2

    .line 68
    if-eq v8, v9, :cond_1

    .line 69
    .line 70
    if-ne v8, v11, :cond_0

    .line 71
    .line 72
    iget-object p0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Landroid/widget/FrameLayout;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    int-to-float p0, p0

    .line 81
    mul-float/2addr p0, v7

    .line 82
    sub-float/2addr p0, v6

    .line 83
    return p0

    .line 84
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 85
    .line 86
    .line 87
    return v10

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/2addr v0, v2

    .line 93
    if-ge v0, v1, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasuredWidth()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v0, v1

    .line 101
    if-ge v0, v2, :cond_3

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    int-to-float v0, v0

    .line 109
    mul-float/2addr v0, v7

    .line 110
    int-to-float v2, v2

    .line 111
    add-float/2addr v0, v2

    .line 112
    int-to-float v1, v1

    .line 113
    sub-float/2addr v0, v1

    .line 114
    sub-float/2addr v0, v6

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    int-to-float v8, v8

    .line 120
    mul-float/2addr v8, v7

    .line 121
    add-float/2addr v8, v2

    .line 122
    sub-float/2addr v8, v6

    .line 123
    cmpg-float v2, v8, v1

    .line 124
    .line 125
    if-gtz v2, :cond_4

    .line 126
    .line 127
    return v10

    .line 128
    :cond_4
    cmpl-float v2, v8, v1

    .line 129
    .line 130
    if-lez v2, :cond_5

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasuredWidth()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iget v6, v3, Lcom/skydoves/balloon/Balloon$Builder;->marginRight:I

    .line 141
    .line 142
    sub-int/2addr v2, v6

    .line 143
    iget v6, v3, Lcom/skydoves/balloon/Balloon$Builder;->marginLeft:I

    .line 144
    .line 145
    sub-int/2addr v2, v6

    .line 146
    if-gt p1, v2, :cond_5

    .line 147
    .line 148
    sub-float/2addr v8, v1

    .line 149
    return v8

    .line 150
    :cond_5
    invoke-virtual {v3}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowWidth()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    mul-int/2addr p1, v11

    .line 155
    int-to-float p1, p1

    .line 156
    cmpg-float p1, v0, p1

    .line 157
    .line 158
    if-gtz p1, :cond_6

    .line 159
    .line 160
    :goto_0
    return v4

    .line 161
    :cond_6
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasuredWidth()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    invoke-virtual {v3}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowWidth()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    mul-int/2addr p1, v11

    .line 170
    sub-int/2addr p0, p1

    .line 171
    int-to-float p0, p0

    .line 172
    cmpl-float p0, v0, p0

    .line 173
    .line 174
    if-lez p0, :cond_7

    .line 175
    .line 176
    :goto_1
    return v5

    .line 177
    :cond_7
    return v0
.end method

.method public final getArrowConstraintPositionY(Landroid/view/View;)F
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/text/RegexKt;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-static {v2}, Lkotlin/uuid/UuidKt;->getViewPointOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 48
    .line 49
    sub-int/2addr v2, v0

    .line 50
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->getViewPointOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 55
    .line 56
    sub-int/2addr v3, v0

    .line 57
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowHeight()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    int-to-float v4, v4

    .line 64
    const/high16 v5, 0x40200000    # 2.5f

    .line 65
    .line 66
    mul-float/2addr v4, v5

    .line 67
    iget v5, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowAlignAnchorPadding:I

    .line 68
    .line 69
    int-to-float v5, v5

    .line 70
    add-float/2addr v4, v5

    .line 71
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasuredHeight()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    int-to-float v5, v5

    .line 76
    sub-float/2addr v5, v4

    .line 77
    iget v6, v0, Lcom/skydoves/balloon/Balloon$Builder;->marginTop:I

    .line 78
    .line 79
    int-to-float v6, v6

    .line 80
    sub-float/2addr v5, v6

    .line 81
    iget v6, v0, Lcom/skydoves/balloon/Balloon$Builder;->marginBottom:I

    .line 82
    .line 83
    int-to-float v6, v6

    .line 84
    sub-float/2addr v5, v6

    .line 85
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowHeight()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    int-to-float v6, v6

    .line 90
    const/high16 v7, 0x3f000000    # 0.5f

    .line 91
    .line 92
    mul-float/2addr v6, v7

    .line 93
    iget-object v8, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowPositionRules:Lcom/skydoves/balloon/ArrowPositionRules;

    .line 94
    .line 95
    sget-object v9, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    aget v8, v9, v8

    .line 102
    .line 103
    const/4 v9, 0x1

    .line 104
    const/4 v10, 0x2

    .line 105
    if-eq v8, v9, :cond_2

    .line 106
    .line 107
    if-ne v8, v10, :cond_1

    .line 108
    .line 109
    iget-object p0, v1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Landroid/widget/FrameLayout;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    int-to-float p0, p0

    .line 118
    mul-float/2addr p0, v7

    .line 119
    sub-float/2addr p0, v6

    .line 120
    return p0

    .line 121
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 122
    .line 123
    .line 124
    const/4 p0, 0x0

    .line 125
    return p0

    .line 126
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    add-int/2addr v1, v3

    .line 131
    if-ge v1, v2, :cond_3

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasuredHeight()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    add-int/2addr v1, v2

    .line 139
    if-ge v1, v3, :cond_4

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    int-to-float p1, p1

    .line 147
    mul-float/2addr p1, v7

    .line 148
    int-to-float v1, v3

    .line 149
    add-float/2addr p1, v1

    .line 150
    int-to-float v1, v2

    .line 151
    sub-float/2addr p1, v1

    .line 152
    sub-float/2addr p1, v6

    .line 153
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowHeight()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    mul-int/2addr v1, v10

    .line 158
    int-to-float v1, v1

    .line 159
    cmpg-float v1, p1, v1

    .line 160
    .line 161
    if-gtz v1, :cond_5

    .line 162
    .line 163
    :goto_1
    return v4

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon;->getMeasuredHeight()I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowHeight()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    mul-int/2addr v0, v10

    .line 173
    sub-int/2addr p0, v0

    .line 174
    int-to-float p0, p0

    .line 175
    cmpl-float p0, p1, p0

    .line 176
    .line 177
    if-lez p0, :cond_6

    .line 178
    .line 179
    :goto_2
    return v5

    .line 180
    :cond_6
    return p1
.end method

.method public final getMeasuredHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 2
    .line 3
    iget v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->height:I

    .line 4
    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final getMeasuredWidth()I
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    .line 13
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 24
    .line 25
    .line 26
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 29
    .line 30
    iget v2, v1, Lcom/skydoves/balloon/Balloon$Builder;->width:I

    .line 31
    .line 32
    const/high16 v3, -0x80000000

    .line 33
    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    if-le v2, v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return v2

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/4 v2, 0x0

    .line 51
    iget v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->maxWidth:I

    .line 52
    .line 53
    invoke-static {p0, v2, v1}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-le p0, v0, :cond_2

    .line 58
    .line 59
    :goto_0
    return v0

    .line 60
    :cond_2
    return p0
.end method

.method public final initializeBalloonContent()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 2
    .line 3
    iget v1, v0, Lcom/skydoves/balloon/Balloon$Builder;->elevation:F

    .line 4
    .line 5
    float-to-int v1, v1

    .line 6
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->binding:Lcom/google/gson/GsonBuilder;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 13
    .line 14
    sget-object v3, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    aget v2, v3, v2

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, v3, :cond_2

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq v2, v4, :cond_2

    .line 27
    .line 28
    const/4 v4, 0x3

    .line 29
    if-eq v2, v4, :cond_1

    .line 30
    .line 31
    const/4 v4, 0x4

    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sub-int/2addr v0, v3

    .line 44
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowHeight()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    sub-int/2addr v0, v3

    .line 53
    if-ge v0, v1, :cond_3

    .line 54
    .line 55
    move v2, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move v2, v0

    .line 58
    :goto_1
    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final measureTextWidth(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    float-to-int v0, v0

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aget-object v3, v1, v2

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    if-nez v3, :cond_7

    .line 30
    .line 31
    aget-object v1, v1, v4

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    aget-object v3, v1, v2

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    aget-object v1, v1, v4

    .line 48
    .line 49
    if-eqz v1, :cond_c

    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    aget-object v3, v1, v2

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v3, v2

    .line 68
    :goto_0
    aget-object v1, v1, v4

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v1, v2

    .line 78
    :goto_1
    if-ge v3, v1, :cond_4

    .line 79
    .line 80
    move v3, v1

    .line 81
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    aget-object v3, v1, v2

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    goto :goto_2

    .line 100
    :cond_5
    move v3, v2

    .line 101
    :goto_2
    aget-object v1, v1, v4

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    :cond_6
    :goto_3
    add-int/2addr v2, v3

    .line 110
    add-int/2addr v0, v2

    .line 111
    goto :goto_8

    .line 112
    :cond_7
    :goto_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    aget-object v3, v1, v2

    .line 120
    .line 121
    if-eqz v3, :cond_8

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    goto :goto_5

    .line 128
    :cond_8
    move v3, v2

    .line 129
    :goto_5
    aget-object v1, v1, v4

    .line 130
    .line 131
    if-eqz v1, :cond_9

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    goto :goto_6

    .line 138
    :cond_9
    move v1, v2

    .line 139
    :goto_6
    if-ge v3, v1, :cond_a

    .line 140
    .line 141
    move v3, v1

    .line 142
    :cond_a
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    aget-object v3, v1, v2

    .line 153
    .line 154
    if-eqz v3, :cond_b

    .line 155
    .line 156
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    goto :goto_7

    .line 161
    :cond_b
    move v3, v2

    .line 162
    :goto_7
    aget-object v1, v1, v4

    .line 163
    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    goto :goto_3

    .line 171
    :cond_c
    :goto_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    add-int/2addr v2, v1

    .line 180
    add-int/2addr v2, v0

    .line 181
    new-instance v0, Landroid/graphics/Point;

    .line 182
    .line 183
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 192
    .line 193
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 202
    .line 203
    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 204
    .line 205
    .line 206
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 207
    .line 208
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    add-int/2addr p2, v1

    .line 217
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 218
    .line 219
    iget v1, p0, Lcom/skydoves/balloon/Balloon$Builder;->marginRight:I

    .line 220
    .line 221
    iget v3, p0, Lcom/skydoves/balloon/Balloon$Builder;->marginLeft:I

    .line 222
    .line 223
    add-int/2addr v1, v3

    .line 224
    invoke-virtual {p0}, Lcom/skydoves/balloon/Balloon$Builder;->getEffectiveArrowWidth()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    mul-int/2addr v3, v4

    .line 229
    add-int/2addr v3, v1

    .line 230
    add-int/2addr v3, p2

    .line 231
    iget p2, p0, Lcom/skydoves/balloon/Balloon$Builder;->maxWidth:I

    .line 232
    .line 233
    sub-int/2addr p2, v3

    .line 234
    if-le p2, v0, :cond_d

    .line 235
    .line 236
    move p2, v0

    .line 237
    :cond_d
    iget p0, p0, Lcom/skydoves/balloon/Balloon$Builder;->width:I

    .line 238
    .line 239
    const/high16 v1, -0x80000000

    .line 240
    .line 241
    if-eq p0, v1, :cond_e

    .line 242
    .line 243
    if-gt p0, v0, :cond_e

    .line 244
    .line 245
    sub-int v2, p0, v3

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_e
    if-le v2, p2, :cond_f

    .line 249
    .line 250
    move v2, p2

    .line 251
    :cond_f
    :goto_9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/skydoves/balloon/Balloon;->destroyed:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/skydoves/balloon/Balloon;->overlayWindow:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/skydoves/balloon/Balloon;->builder:Lcom/skydoves/balloon/Balloon$Builder;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/skydoves/balloon/Balloon$Builder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setOnBalloonDismissListener(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/skydoves/balloon/BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p1, v1, p0, v0}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/skydoves/balloon/Balloon;->bodyWindow:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final showAlignBottom(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/skydoves/balloon/BalloonPlacement;

    .line 5
    .line 6
    sget-object v1, Lcom/skydoves/balloon/BalloonAlign;->BOTTOM:Lcom/skydoves/balloon/BalloonAlign;

    .line 7
    .line 8
    invoke-direct {v0, p1, v1, p2}, Lcom/skydoves/balloon/BalloonPlacement;-><init>(Landroid/view/View;Lcom/skydoves/balloon/BalloonAlign;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lcom/skydoves/balloon/BalloonPlacement;->anchor:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/skydoves/balloon/Balloon;->canShowBalloonWindow(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    new-instance p2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    invoke-direct {p2, p0, p1, v0, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final traverseAndMeasureTextWidth(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    instance-of v3, v2, Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    check-cast v2, Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p0, v2, p1}, Lcom/skydoves/balloon/Balloon;->measureTextWidth(Landroid/widget/TextView;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    check-cast v2, Landroid/view/ViewGroup;

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/skydoves/balloon/Balloon;->traverseAndMeasureTextWidth(Landroid/view/ViewGroup;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method
