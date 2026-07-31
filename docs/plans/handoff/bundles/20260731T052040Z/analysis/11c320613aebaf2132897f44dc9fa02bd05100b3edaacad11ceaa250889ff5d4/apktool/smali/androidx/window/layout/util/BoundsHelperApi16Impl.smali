.class public final Landroidx/window/layout/util/BoundsHelperApi16Impl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/window/layout/util/BoundsHelper;
.implements Landroidx/window/layout/util/DensityCompatHelper;
.implements Landroidx/window/layout/util/WindowMetricsCompatHelper;


# static fields
.field public static final INSTANCE:Landroidx/window/layout/util/BoundsHelperApi16Impl;

.field public static final INSTANCE$1:Landroidx/window/layout/util/BoundsHelperApi16Impl;

.field public static final INSTANCE$2:Landroidx/window/layout/util/BoundsHelperApi16Impl;

.field public static final INSTANCE$3:Landroidx/window/layout/util/BoundsHelperApi16Impl;

.field public static final INSTANCE$4:Landroidx/window/layout/util/BoundsHelperApi16Impl;

.field public static final INSTANCE$5:Landroidx/window/layout/util/BoundsHelperApi16Impl;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/window/layout/util/BoundsHelperApi16Impl;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 8
    .line 9
    new-instance v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Landroidx/window/layout/util/BoundsHelperApi16Impl;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$1:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 16
    .line 17
    new-instance v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Landroidx/window/layout/util/BoundsHelperApi16Impl;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$2:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 24
    .line 25
    new-instance v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Landroidx/window/layout/util/BoundsHelperApi16Impl;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$3:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 32
    .line 33
    new-instance v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Landroidx/window/layout/util/BoundsHelperApi16Impl;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$4:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 40
    .line 41
    new-instance v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, Landroidx/window/layout/util/BoundsHelperApi16Impl;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$5:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 48
    .line 49
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 11

    .line 1
    iget p0, p0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "android"

    .line 4
    .line 5
    const-string v1, "dimen"

    .line 6
    .line 7
    const-string v2, "navigation_bar_height"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "BoundsHelper"

    .line 11
    .line 12
    const-string v5, "getBounds"

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    const-string/jumbo v7, "windowConfiguration"

    .line 16
    .line 17
    .line 18
    const-class v8, Landroid/content/res/Configuration;

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :try_start_0
    invoke-virtual {v8, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v5, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {v0, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast p0, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p0

    .line 70
    instance-of v0, p0, Ljava/lang/NoSuchFieldException;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    instance-of v0, p0, Ljava/lang/IllegalAccessException;

    .line 79
    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    throw p0

    .line 88
    :cond_1
    :goto_0
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    sget-object p0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$2:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroidx/window/layout/util/BoundsHelperApi16Impl;->currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :goto_1
    return-object v1

    .line 98
    :pswitch_0
    new-instance p0, Landroid/graphics/Rect;

    .line 99
    .line 100
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-static {p1}, Lus/shandian/giga/util/Utility;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_2

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v7, v5, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    check-cast v5, Landroid/graphics/Rect;

    .line 144
    .line 145
    invoke-virtual {p0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :catch_1
    move-exception v5

    .line 150
    goto :goto_2

    .line 151
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    const-string v7, "getAppBounds"

    .line 156
    .line 157
    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    check-cast v5, Landroid/graphics/Rect;

    .line 169
    .line 170
    invoke-virtual {p0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :goto_2
    instance-of v6, v5, Ljava/lang/NoSuchFieldException;

    .line 175
    .line 176
    if-nez v6, :cond_4

    .line 177
    .line 178
    instance-of v6, v5, Ljava/lang/NoSuchMethodException;

    .line 179
    .line 180
    if-nez v6, :cond_4

    .line 181
    .line 182
    instance-of v6, v5, Ljava/lang/IllegalAccessException;

    .line 183
    .line 184
    if-nez v6, :cond_4

    .line 185
    .line 186
    instance-of v6, v5, Ljava/lang/reflect/InvocationTargetException;

    .line 187
    .line 188
    if-eqz v6, :cond_3

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_3
    throw v5

    .line 192
    :cond_4
    :goto_3
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v4, p0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 204
    .line 205
    .line 206
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    new-instance v5, Landroid/graphics/Point;

    .line 215
    .line 216
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 220
    .line 221
    .line 222
    invoke-static {p1}, Lus/shandian/giga/util/Utility;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-nez v6, :cond_8

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v6, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-lez v0, :cond_5

    .line 237
    .line 238
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    goto :goto_5

    .line 243
    :cond_5
    move v0, v3

    .line 244
    :goto_5
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 245
    .line 246
    add-int/2addr v1, v0

    .line 247
    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 248
    .line 249
    if-ne v1, v2, :cond_6

    .line 250
    .line 251
    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_6
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 255
    .line 256
    add-int/2addr v1, v0

    .line 257
    iget v2, v5, Landroid/graphics/Point;->x:I

    .line 258
    .line 259
    if-ne v1, v2, :cond_7

    .line 260
    .line 261
    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_7
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 265
    .line 266
    if-ne v1, v0, :cond_8

    .line 267
    .line 268
    iput v3, p0, Landroid/graphics/Rect;->left:I

    .line 269
    .line 270
    :cond_8
    :goto_6
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 275
    .line 276
    if-lt v0, v1, :cond_9

    .line 277
    .line 278
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    iget v1, v5, Landroid/graphics/Point;->y:I

    .line 283
    .line 284
    if-ge v0, v1, :cond_d

    .line 285
    .line 286
    :cond_9
    invoke-static {p1}, Lus/shandian/giga/util/Utility;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-nez p1, :cond_d

    .line 291
    .line 292
    invoke-static {v4}, Lorg/acra/util/PackageManagerWrapperKt;->access$getCutoutForDisplay(Landroid/view/Display;)Landroid/view/DisplayCutout;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-eqz p1, :cond_d

    .line 297
    .line 298
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 299
    .line 300
    invoke-static {p1}, Lorg/acra/util/PackageManagerWrapperKt;->safeInsetLeft(Landroid/view/DisplayCutout;)I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-ne v0, v1, :cond_a

    .line 305
    .line 306
    iput v3, p0, Landroid/graphics/Rect;->left:I

    .line 307
    .line 308
    :cond_a
    iget v0, v5, Landroid/graphics/Point;->x:I

    .line 309
    .line 310
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 311
    .line 312
    sub-int/2addr v0, v1

    .line 313
    invoke-static {p1}, Lorg/acra/util/PackageManagerWrapperKt;->safeInsetRight(Landroid/view/DisplayCutout;)I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-ne v0, v1, :cond_b

    .line 318
    .line 319
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 320
    .line 321
    invoke-static {p1}, Lorg/acra/util/PackageManagerWrapperKt;->safeInsetRight(Landroid/view/DisplayCutout;)I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    add-int/2addr v1, v0

    .line 326
    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 327
    .line 328
    :cond_b
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 329
    .line 330
    invoke-static {p1}, Lorg/acra/util/PackageManagerWrapperKt;->safeInsetTop(Landroid/view/DisplayCutout;)I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-ne v0, v1, :cond_c

    .line 335
    .line 336
    iput v3, p0, Landroid/graphics/Rect;->top:I

    .line 337
    .line 338
    :cond_c
    iget v0, v5, Landroid/graphics/Point;->y:I

    .line 339
    .line 340
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 341
    .line 342
    sub-int/2addr v0, v1

    .line 343
    invoke-static {p1}, Lorg/acra/util/PackageManagerWrapperKt;->safeInsetBottom(Landroid/view/DisplayCutout;)I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-ne v0, v1, :cond_d

    .line 348
    .line 349
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 350
    .line 351
    invoke-static {p1}, Lorg/acra/util/PackageManagerWrapperKt;->safeInsetBottom(Landroid/view/DisplayCutout;)I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    add-int/2addr p1, v0

    .line 356
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 357
    .line 358
    :cond_d
    return-object p0

    .line 359
    :pswitch_1
    new-instance p0, Landroid/graphics/Rect;

    .line 360
    .line 361
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {v4, p0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 373
    .line 374
    .line 375
    invoke-static {p1}, Lus/shandian/giga/util/Utility;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-nez v5, :cond_10

    .line 380
    .line 381
    new-instance v5, Landroid/graphics/Point;

    .line 382
    .line 383
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-lez v0, :cond_e

    .line 398
    .line 399
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    :cond_e
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 404
    .line 405
    add-int/2addr p1, v3

    .line 406
    iget v0, v5, Landroid/graphics/Point;->y:I

    .line 407
    .line 408
    if-ne p1, v0, :cond_f

    .line 409
    .line 410
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 411
    .line 412
    goto :goto_7

    .line 413
    :cond_f
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 414
    .line 415
    add-int/2addr p1, v3

    .line 416
    iget v0, v5, Landroid/graphics/Point;->x:I

    .line 417
    .line 418
    if-ne p1, v0, :cond_10

    .line 419
    .line 420
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 421
    .line 422
    :cond_10
    :goto_7
    return-object p0

    .line 423
    :pswitch_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    new-instance p1, Landroid/graphics/Point;

    .line 435
    .line 436
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 440
    .line 441
    .line 442
    new-instance v0, Landroid/graphics/Rect;

    .line 443
    .line 444
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 445
    .line 446
    .line 447
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 448
    .line 449
    if-eqz v1, :cond_12

    .line 450
    .line 451
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 452
    .line 453
    if-nez p1, :cond_11

    .line 454
    .line 455
    goto :goto_8

    .line 456
    :cond_11
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 457
    .line 458
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 459
    .line 460
    goto :goto_9

    .line 461
    :cond_12
    :goto_8
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 462
    .line 463
    .line 464
    :goto_9
    return-object v0

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public currentWindowMetrics(Landroid/content/Context;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object p0, p1

    .line 8
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    instance-of v0, p0, Landroid/app/Activity;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    instance-of v0, p0, Landroid/inputmethodservice/InputMethodService;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v0, p0

    .line 23
    check-cast v0, Landroid/content/ContextWrapper;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move-object p0, p1

    .line 41
    :goto_1
    instance-of v0, p0, Landroid/app/Activity;

    .line 42
    .line 43
    if-eqz v0, :cond_8

    .line 44
    .line 45
    check-cast p0, Landroid/app/Activity;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroidx/window/layout/WindowMetrics;

    .line 54
    .line 55
    new-instance v0, Landroidx/window/core/Bounds;

    .line 56
    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const/16 v2, 0x1e

    .line 60
    .line 61
    if-lt v1, v2, :cond_4

    .line 62
    .line 63
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi30Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi30Impl;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/16 v2, 0x1d

    .line 67
    .line 68
    if-lt v1, v2, :cond_5

    .line 69
    .line 70
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$3:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    const/16 v2, 0x1c

    .line 74
    .line 75
    if-lt v1, v2, :cond_6

    .line 76
    .line 77
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$2:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_6
    const/16 v2, 0x18

    .line 81
    .line 82
    if-lt v1, v2, :cond_7

    .line 83
    .line 84
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$1:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_7
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 88
    .line 89
    :goto_2
    invoke-interface {v1, p0}, Landroidx/window/layout/util/BoundsHelper;->currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p0}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/Context;)F

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-direct {p1, v0, p0}, Landroidx/window/layout/WindowMetrics;-><init>(Landroidx/window/core/Bounds;F)V

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_8
    instance-of v0, p0, Landroid/inputmethodservice/InputMethodService;

    .line 105
    .line 106
    if-nez v0, :cond_a

    .line 107
    .line 108
    instance-of p0, p0, Landroid/app/Application;

    .line 109
    .line 110
    if-eqz p0, :cond_9

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_9
    const-string p0, "Must provide a UiContext or Application Context"

    .line 114
    .line 115
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x0

    .line 119
    return-object p0

    .line 120
    :cond_a
    :goto_3
    const-string/jumbo p0, "window"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    check-cast p0, Landroid/view/WindowManager;

    .line 131
    .line 132
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    new-instance v0, Landroid/graphics/Point;

    .line 140
    .line 141
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 145
    .line 146
    .line 147
    new-instance p0, Landroid/graphics/Rect;

    .line 148
    .line 149
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 150
    .line 151
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    .line 158
    .line 159
    invoke-interface {p2, p1}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/Context;)F

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-direct {v0, p0, p1}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;F)V

    .line 164
    .line 165
    .line 166
    return-object v0
.end method

.method public density(Landroid/content/Context;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    return p0
.end method
