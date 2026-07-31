.class public final Lorg/wikipedia/onboarding/OnboardingPageView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/wikipedia/onboarding/OnboardingPageView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "text",
        "",
        "setSecondaryText",
        "(Ljava/lang/CharSequence;)V",
        "",
        "isVisible",
        "setTertiaryTextViewVisible",
        "(Z)V",
        "Lorg/wikipedia/onboarding/OnboardingPageView$Callback;",
        "callback",
        "Lorg/wikipedia/onboarding/OnboardingPageView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/onboarding/OnboardingPageView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/onboarding/OnboardingPageView$Callback;)V",
        "Callback",
        "DefaultCallback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final binding:Lretrofit2/Retrofit;

.field public callback:Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

.field public viewHeightDetected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v2, 0x7f0c05df

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0900a6

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v12, 0x0

    .line 31
    const-string v3, "Missing required view with ID: "

    .line 32
    .line 33
    if-eqz v2, :cond_10

    .line 34
    .line 35
    const v0, 0x7f0902df

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/widget/ImageView;

    .line 43
    .line 44
    if-eqz v4, :cond_10

    .line 45
    .line 46
    const v0, 0x7f0904fb

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const v5, 0x7f09066d

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    const v5, 0x7f090672

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Landroid/widget/ImageView;

    .line 74
    .line 75
    if-eqz v6, :cond_0

    .line 76
    .line 77
    const v5, 0x7f090682

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v6, :cond_0

    .line 87
    .line 88
    const v5, 0x7f0906af

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Landroid/widget/TextView;

    .line 96
    .line 97
    if-eqz v6, :cond_0

    .line 98
    .line 99
    const v5, 0x7f0906b1

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Landroid/widget/ImageView;

    .line 107
    .line 108
    if-eqz v6, :cond_0

    .line 109
    .line 110
    const v5, 0x7f0906b2

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Landroid/widget/TextView;

    .line 118
    .line 119
    if-eqz v6, :cond_0

    .line 120
    .line 121
    const v5, 0x7f0906f2

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Landroid/widget/TextView;

    .line 129
    .line 130
    if-eqz v6, :cond_0

    .line 131
    .line 132
    const v5, 0x7f0906f4

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    check-cast v6, Landroid/widget/ImageView;

    .line 140
    .line 141
    if-eqz v6, :cond_0

    .line 142
    .line 143
    const v5, 0x7f0906f7

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Landroid/widget/TextView;

    .line 151
    .line 152
    if-eqz v6, :cond_0

    .line 153
    .line 154
    const v5, 0x7f090754

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Landroid/widget/TextView;

    .line 162
    .line 163
    if-eqz v6, :cond_0

    .line 164
    .line 165
    const v5, 0x7f090756

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    check-cast v6, Landroid/widget/ImageView;

    .line 173
    .line 174
    if-eqz v6, :cond_0

    .line 175
    .line 176
    const v5, 0x7f09075a

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Landroid/widget/TextView;

    .line 184
    .line 185
    if-eqz v6, :cond_0

    .line 186
    .line 187
    new-instance v5, Lokhttp3/ConnectionPool;

    .line 188
    .line 189
    check-cast v0, Landroid/widget/LinearLayout;

    .line 190
    .line 191
    const/16 v6, 0x1d

    .line 192
    .line 193
    invoke-direct {v5, v6, v0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v12

    .line 213
    :cond_1
    move-object v5, v12

    .line 214
    :goto_0
    const v0, 0x7f090510

    .line 215
    .line 216
    .line 217
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Lorg/wikipedia/views/AppTextView;

    .line 222
    .line 223
    if-eqz v6, :cond_10

    .line 224
    .line 225
    const v0, 0x7f0905ae

    .line 226
    .line 227
    .line 228
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 233
    .line 234
    const v7, 0x7f0905af

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v7}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    check-cast v7, Landroid/widget/LinearLayout;

    .line 242
    .line 243
    const v8, 0x7f0905da

    .line 244
    .line 245
    .line 246
    invoke-static {v1, v8}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    check-cast v9, Lorg/wikipedia/views/AppTextView;

    .line 251
    .line 252
    if-eqz v9, :cond_f

    .line 253
    .line 254
    const v8, 0x7f090696

    .line 255
    .line 256
    .line 257
    invoke-static {v1, v8}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    check-cast v13, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 262
    .line 263
    if-eqz v13, :cond_f

    .line 264
    .line 265
    move-object v3, v4

    .line 266
    move-object v4, v5

    .line 267
    move-object v5, v6

    .line 268
    move-object v6, v0

    .line 269
    new-instance v0, Lretrofit2/Retrofit;

    .line 270
    .line 271
    move-object v8, v9

    .line 272
    move-object v9, v13

    .line 273
    invoke-direct/range {v0 .. v9}, Lretrofit2/Retrofit;-><init>(Lorg/wikipedia/onboarding/OnboardingPageView;Landroid/view/View;Landroid/widget/ImageView;Lokhttp3/ConnectionPool;Lorg/wikipedia/views/AppTextView;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Lorg/wikipedia/views/AppTextView;Lorg/wikipedia/views/GoneIfEmptyTextView;)V

    .line 274
    .line 275
    .line 276
    iput-object v0, v1, Lorg/wikipedia/onboarding/OnboardingPageView;->binding:Lretrofit2/Retrofit;

    .line 277
    .line 278
    if-eqz v11, :cond_e

    .line 279
    .line 280
    sget-object v0, Lorg/wikipedia/R$styleable;->OnboardingPageView:[I

    .line 281
    .line 282
    const/4 v2, 0x0

    .line 283
    invoke-virtual {v10, v11, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const/4 v6, 0x1

    .line 288
    const/4 v7, -0x1

    .line 289
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    const/4 v11, 0x5

    .line 294
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    const/4 v13, 0x6

    .line 299
    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    const/4 v14, 0x7

    .line 304
    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v14

    .line 308
    const/4 v15, 0x2

    .line 309
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 313
    .line 314
    .line 315
    move-result-object v15

    .line 316
    move-object/from16 v16, v12

    .line 317
    .line 318
    const/4 v12, 0x3

    .line 319
    const/4 v7, 0x0

    .line 320
    invoke-virtual {v0, v12, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    move/from16 v17, v7

    .line 325
    .line 326
    const/4 v7, 0x4

    .line 327
    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v15, :cond_2

    .line 332
    .line 333
    invoke-virtual {v1, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 334
    .line 335
    .line 336
    :cond_2
    const/4 v2, -0x1

    .line 337
    if-eq v6, v2, :cond_3

    .line 338
    .line 339
    const/4 v15, 0x0

    .line 340
    goto :goto_1

    .line 341
    :cond_3
    const/16 v15, 0x8

    .line 342
    .line 343
    :goto_1
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    cmpl-float v15, v12, v17

    .line 347
    .line 348
    if-lez v15, :cond_5

    .line 349
    .line 350
    if-eq v6, v2, :cond_5

    .line 351
    .line 352
    invoke-static {v10, v6}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    if-eqz v2, :cond_5

    .line 357
    .line 358
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-lez v6, :cond_5

    .line 363
    .line 364
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    int-to-float v6, v6

    .line 372
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    int-to-float v2, v2

    .line 377
    div-float/2addr v6, v2

    .line 378
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    if-eqz v2, :cond_4

    .line 383
    .line 384
    float-to-int v10, v12

    .line 385
    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 386
    .line 387
    div-float/2addr v12, v6

    .line 388
    float-to-int v6, v12

    .line 389
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 390
    .line 391
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_4
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    .line 396
    .line 397
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v16

    .line 401
    :cond_5
    :goto_2
    if-eqz v11, :cond_7

    .line 402
    .line 403
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-nez v2, :cond_6

    .line 408
    .line 409
    goto :goto_3

    .line 410
    :cond_6
    const/4 v2, 0x0

    .line 411
    goto :goto_4

    .line 412
    :cond_7
    :goto_3
    const/16 v2, 0x8

    .line 413
    .line 414
    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    .line 419
    .line 420
    if-eqz v13, :cond_9

    .line 421
    .line 422
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    if-nez v2, :cond_8

    .line 427
    .line 428
    goto :goto_5

    .line 429
    :cond_8
    const/4 v2, 0x0

    .line 430
    goto :goto_6

    .line 431
    :cond_9
    :goto_5
    const/16 v2, 0x8

    .line 432
    .line 433
    :goto_6
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 437
    .line 438
    invoke-static {v13}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    if-eqz v14, :cond_b

    .line 446
    .line 447
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-nez v2, :cond_a

    .line 452
    .line 453
    goto :goto_7

    .line 454
    :cond_a
    const/4 v2, 0x0

    .line 455
    goto :goto_8

    .line 456
    :cond_b
    :goto_7
    const/16 v2, 0x8

    .line 457
    .line 458
    :goto_8
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    .line 463
    .line 464
    new-instance v2, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 465
    .line 466
    new-instance v3, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 467
    .line 468
    const/16 v5, 0x19

    .line 469
    .line 470
    invoke-direct {v3, v5, v1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    invoke-direct {v2, v3}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 477
    .line 478
    .line 479
    if-eqz v4, :cond_d

    .line 480
    .line 481
    iget-object v1, v4, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v1, Landroid/widget/LinearLayout;

    .line 484
    .line 485
    if-eqz v7, :cond_c

    .line 486
    .line 487
    const/4 v2, 0x0

    .line 488
    goto :goto_9

    .line 489
    :cond_c
    const/16 v2, 0x8

    .line 490
    .line 491
    :goto_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    :cond_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 495
    .line 496
    .line 497
    :cond_e
    return-void

    .line 498
    :cond_f
    move-object v14, v3

    .line 499
    move-object/from16 v16, v12

    .line 500
    .line 501
    move v0, v8

    .line 502
    goto :goto_a

    .line 503
    :cond_10
    move-object v14, v3

    .line 504
    move-object/from16 v16, v12

    .line 505
    .line 506
    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw v16
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/onboarding/OnboardingPageView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingPageView;->callback:Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView;->viewHeightDetected:Z

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView;->binding:Lretrofit2/Retrofit;

    .line 9
    .line 10
    iget-object p2, p1, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p2, Landroidx/core/widget/NestedScrollView;

    .line 13
    .line 14
    iget-object p1, p1, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-gt p2, p3, :cond_0

    .line 31
    .line 32
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    .line 34
    const/4 p3, -0x1

    .line 35
    const/4 p4, -0x2

    .line 36
    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    const/4 p3, 0x0

    .line 40
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView;->viewHeightDetected:Z

    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final setCallback(Lorg/wikipedia/onboarding/OnboardingPageView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView;->callback:Lorg/wikipedia/onboarding/OnboardingPageView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingPageView;->binding:Lretrofit2/Retrofit;

    .line 2
    .line 3
    iget-object p0, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/AppTextView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setTertiaryTextViewVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingPageView;->binding:Lretrofit2/Retrofit;

    .line 2
    .line 3
    iget-object p0, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
