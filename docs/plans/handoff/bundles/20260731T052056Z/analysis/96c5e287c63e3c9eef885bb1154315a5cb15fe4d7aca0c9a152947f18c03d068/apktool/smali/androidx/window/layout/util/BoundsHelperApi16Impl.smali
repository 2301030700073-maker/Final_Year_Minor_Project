.class public final Landroidx/window/layout/util/BoundsHelperApi16Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

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
    packed-switch p0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :try_start_0
    invoke-virtual {v8, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v5, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {v0, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    check-cast p0, Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    instance-of v0, p0, Ljava/lang/NoSuchFieldException;

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    instance-of v0, p0, Ljava/lang/IllegalAccessException;

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    .line 80
    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    throw p0

    .line 85
    :cond_1
    :goto_0
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    sget-object p0, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$2:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroidx/window/layout/util/BoundsHelperApi16Impl;->currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_1
    return-object v1

    .line 95
    :pswitch_0
    new-instance p0, Landroid/graphics/Rect;

    .line 96
    .line 97
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v7, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {p1}, Lorg/wikipedia/language/LanguageUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_2

    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7, v5, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    check-cast v5, Landroid/graphics/Rect;

    .line 141
    .line 142
    invoke-virtual {p0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catch_1
    move-exception v5

    .line 147
    goto :goto_2

    .line 148
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    const-string v7, "getAppBounds"

    .line 153
    .line 154
    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    check-cast v5, Landroid/graphics/Rect;

    .line 166
    .line 167
    invoke-virtual {p0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :goto_2
    instance-of v6, v5, Ljava/lang/NoSuchFieldException;

    .line 172
    .line 173
    if-nez v6, :cond_4

    .line 174
    .line 175
    instance-of v6, v5, Ljava/lang/NoSuchMethodException;

    .line 176
    .line 177
    if-nez v6, :cond_4

    .line 178
    .line 179
    instance-of v6, v5, Ljava/lang/IllegalAccessException;

    .line 180
    .line 181
    if-nez v6, :cond_4

    .line 182
    .line 183
    instance-of v6, v5, Ljava/lang/reflect/InvocationTargetException;

    .line 184
    .line 185
    if-eqz v6, :cond_3

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_3
    throw v5

    .line 189
    :cond_4
    :goto_3
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v4, p0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 201
    .line 202
    .line 203
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    new-instance v5, Landroid/graphics/Point;

    .line 212
    .line 213
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 217
    .line 218
    .line 219
    invoke-static {p1}, Lorg/wikipedia/language/LanguageUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-nez v6, :cond_8

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v6, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-lez v0, :cond_5

    .line 234
    .line 235
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    goto :goto_5

    .line 240
    :cond_5
    move v0, v3

    .line 241
    :goto_5
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 242
    .line 243
    add-int/2addr v1, v0

    .line 244
    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 245
    .line 246
    if-ne v1, v2, :cond_6

    .line 247
    .line 248
    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_6
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 252
    .line 253
    add-int/2addr v1, v0

    .line 254
    iget v2, v5, Landroid/graphics/Point;->x:I

    .line 255
    .line 256
    if-ne v1, v2, :cond_7

    .line 257
    .line 258
    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_7
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 262
    .line 263
    if-ne v1, v0, :cond_8

    .line 264
    .line 265
    iput v3, p0, Landroid/graphics/Rect;->left:I

    .line 266
    .line 267
    :cond_8
    :goto_6
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 272
    .line 273
    if-lt v0, v1, :cond_9

    .line 274
    .line 275
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    iget v1, v5, Landroid/graphics/Point;->y:I

    .line 280
    .line 281
    if-ge v0, v1, :cond_d

    .line 282
    .line 283
    :cond_9
    invoke-static {p1}, Lorg/wikipedia/language/LanguageUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-nez p1, :cond_d

    .line 288
    .line 289
    invoke-static {v4}, Landroidx/core/os/HandlerCompat$Api28Impl;->getCutoutForDisplay(Landroid/view/Display;)Landroid/view/DisplayCutout;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    if-eqz p1, :cond_d

    .line 294
    .line 295
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 296
    .line 297
    invoke-static {p1}, Landroidx/core/os/HandlerCompat$Api28Impl;->safeInsetLeft(Landroid/view/DisplayCutout;)I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-ne v0, v1, :cond_a

    .line 302
    .line 303
    iput v3, p0, Landroid/graphics/Rect;->left:I

    .line 304
    .line 305
    :cond_a
    iget v0, v5, Landroid/graphics/Point;->x:I

    .line 306
    .line 307
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 308
    .line 309
    sub-int/2addr v0, v1

    .line 310
    invoke-static {p1}, Landroidx/core/os/HandlerCompat$Api28Impl;->safeInsetRight(Landroid/view/DisplayCutout;)I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-ne v0, v1, :cond_b

    .line 315
    .line 316
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 317
    .line 318
    invoke-static {p1}, Landroidx/core/os/HandlerCompat$Api28Impl;->safeInsetRight(Landroid/view/DisplayCutout;)I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    add-int/2addr v1, v0

    .line 323
    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 324
    .line 325
    :cond_b
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 326
    .line 327
    invoke-static {p1}, Landroidx/core/os/HandlerCompat$Api28Impl;->safeInsetTop(Landroid/view/DisplayCutout;)I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-ne v0, v1, :cond_c

    .line 332
    .line 333
    iput v3, p0, Landroid/graphics/Rect;->top:I

    .line 334
    .line 335
    :cond_c
    iget v0, v5, Landroid/graphics/Point;->y:I

    .line 336
    .line 337
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 338
    .line 339
    sub-int/2addr v0, v1

    .line 340
    invoke-static {p1}, Landroidx/core/os/HandlerCompat$Api28Impl;->safeInsetBottom(Landroid/view/DisplayCutout;)I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-ne v0, v1, :cond_d

    .line 345
    .line 346
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 347
    .line 348
    invoke-static {p1}, Landroidx/core/os/HandlerCompat$Api28Impl;->safeInsetBottom(Landroid/view/DisplayCutout;)I

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    add-int/2addr p1, v0

    .line 353
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 354
    .line 355
    :cond_d
    return-object p0

    .line 356
    :pswitch_1
    new-instance p0, Landroid/graphics/Rect;

    .line 357
    .line 358
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v4, p0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 370
    .line 371
    .line 372
    invoke-static {p1}, Lorg/wikipedia/language/LanguageUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-nez v5, :cond_10

    .line 377
    .line 378
    new-instance v5, Landroid/graphics/Point;

    .line 379
    .line 380
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-lez v0, :cond_e

    .line 395
    .line 396
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    :cond_e
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 401
    .line 402
    add-int/2addr p1, v3

    .line 403
    iget v0, v5, Landroid/graphics/Point;->y:I

    .line 404
    .line 405
    if-ne p1, v0, :cond_f

    .line 406
    .line 407
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_f
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 411
    .line 412
    add-int/2addr p1, v3

    .line 413
    iget v0, v5, Landroid/graphics/Point;->x:I

    .line 414
    .line 415
    if-ne p1, v0, :cond_10

    .line 416
    .line 417
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 418
    .line 419
    :cond_10
    :goto_7
    return-object p0

    .line 420
    :pswitch_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    new-instance p1, Landroid/graphics/Point;

    .line 432
    .line 433
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 437
    .line 438
    .line 439
    new-instance v0, Landroid/graphics/Rect;

    .line 440
    .line 441
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 442
    .line 443
    .line 444
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 445
    .line 446
    if-eqz v1, :cond_12

    .line 447
    .line 448
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 449
    .line 450
    if-nez p1, :cond_11

    .line 451
    .line 452
    goto :goto_8

    .line 453
    :cond_11
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 454
    .line 455
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 456
    .line 457
    goto :goto_9

    .line 458
    :cond_12
    :goto_8
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 459
    .line 460
    .line 461
    :goto_9
    return-object v0

    .line 462
    nop

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public currentWindowMetrics(Landroid/content/ContextWrapper;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;
    .locals 3

    .line 1
    move-object p0, p1

    .line 2
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    instance-of v0, p0, Landroid/app/Activity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    instance-of v0, p0, Landroid/inputmethodservice/InputMethodService;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v0, p0

    .line 17
    check-cast v0, Landroid/content/ContextWrapper;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    move-object p0, p1

    .line 35
    :goto_1
    instance-of v0, p0, Landroid/app/Activity;

    .line 36
    .line 37
    if-eqz v0, :cond_8

    .line 38
    .line 39
    check-cast p0, Landroid/app/Activity;

    .line 40
    .line 41
    new-instance p1, Landroidx/window/layout/WindowMetrics;

    .line 42
    .line 43
    new-instance v0, Landroidx/window/core/Bounds;

    .line 44
    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v2, 0x1e

    .line 48
    .line 49
    if-lt v1, v2, :cond_4

    .line 50
    .line 51
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi30Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi30Impl;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    const/16 v2, 0x1d

    .line 55
    .line 56
    if-lt v1, v2, :cond_5

    .line 57
    .line 58
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$3:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    const/16 v2, 0x1c

    .line 62
    .line 63
    if-lt v1, v2, :cond_6

    .line 64
    .line 65
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$2:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_6
    const/16 v2, 0x18

    .line 69
    .line 70
    if-lt v1, v2, :cond_7

    .line 71
    .line 72
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$1:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_7
    sget-object v1, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 76
    .line 77
    :goto_2
    invoke-interface {v1, p0}, Landroidx/window/layout/util/BoundsHelper;->currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v0, v1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p0}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/Context;)F

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-direct {p1, v0, p0}, Landroidx/window/layout/WindowMetrics;-><init>(Landroidx/window/core/Bounds;F)V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_8
    instance-of v0, p0, Landroid/inputmethodservice/InputMethodService;

    .line 93
    .line 94
    if-nez v0, :cond_a

    .line 95
    .line 96
    instance-of p0, p0, Landroid/app/Application;

    .line 97
    .line 98
    if-eqz p0, :cond_9

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_9
    const-string p0, "Must provide a UiContext or Application Context"

    .line 102
    .line 103
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x0

    .line 107
    return-object p0

    .line 108
    :cond_a
    :goto_3
    const-string/jumbo p0, "window"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    check-cast p0, Landroid/view/WindowManager;

    .line 119
    .line 120
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v0, Landroid/graphics/Point;

    .line 128
    .line 129
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 133
    .line 134
    .line 135
    new-instance p0, Landroid/graphics/Rect;

    .line 136
    .line 137
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 138
    .line 139
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    .line 146
    .line 147
    invoke-interface {p2, p1}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/Context;)F

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-direct {v0, p0, p1}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;F)V

    .line 152
    .line 153
    .line 154
    return-object v0
.end method

.method public density(Landroid/content/Context;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    return p0
.end method
