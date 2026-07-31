.class public final Landroidx/navigation/NavInflater;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final sTmpValue:Ljava/lang/ThreadLocal;


# instance fields
.field public final context:Landroid/content/Context;

.field public final navigatorProvider:Landroidx/navigation/NavigatorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/navigation/NavInflater;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 13
    .line 14
    return-void
.end method

.method public static inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;
    .locals 12

    .line 1
    new-instance v0, Landroidx/navigation/NavArgument$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iput-boolean v3, v0, Landroidx/navigation/NavArgument$Builder;->isNullable:Z

    .line 13
    .line 14
    sget-object v3, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/util/TypedValue;

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    new-instance v4, Landroid/util/TypedValue;

    .line 25
    .line 26
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v3, 0x2

    .line 33
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v7, "j$"

    .line 46
    .line 47
    const-string v8, "java"

    .line 48
    .line 49
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-nez v8, :cond_1

    .line 54
    .line 55
    :goto_0
    invoke-static {v3, p2}, Landroidx/sqlite/SQLite;->fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-static {v7, p2}, Landroidx/sqlite/SQLite;->fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 69
    .line 70
    .line 71
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v7

    .line 74
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    instance-of v8, v8, Ljava/lang/ClassNotFoundException;

    .line 79
    .line 80
    if-eqz v8, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    throw v7

    .line 84
    :cond_3
    move-object p2, v6

    .line 85
    :goto_1
    const/4 v7, 0x1

    .line 86
    invoke-virtual {p0, v7, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_12

    .line 91
    .line 92
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    .line 93
    .line 94
    const-string v8, "\' for "

    .line 95
    .line 96
    const-string/jumbo v9, "unsupported value \'"

    .line 97
    .line 98
    .line 99
    const/16 v10, 0x10

    .line 100
    .line 101
    sget-object v11, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/IntNavType;

    .line 102
    .line 103
    if-ne p2, v11, :cond_6

    .line 104
    .line 105
    if-eqz v6, :cond_4

    .line 106
    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    :goto_2
    move-object v6, p0

    .line 112
    goto/16 :goto_5

    .line 113
    .line 114
    :cond_4
    iget p0, v4, Landroid/util/TypedValue;->type:I

    .line 115
    .line 116
    if-ne p0, v10, :cond_5

    .line 117
    .line 118
    iget p0, v4, Landroid/util/TypedValue;->data:I

    .line 119
    .line 120
    if-nez p0, :cond_5

    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 128
    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p2, ". Must be a reference to a resource."

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :cond_6
    if-eqz v6, :cond_8

    .line 163
    .line 164
    if-nez p2, :cond_7

    .line 165
    .line 166
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    move-object p2, v11

    .line 171
    goto/16 :goto_5

    .line 172
    .line 173
    :cond_7
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 174
    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p2, ". You must use a \"reference\" type to reference other resources."

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    :cond_8
    sget-object v6, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/IntNavType;

    .line 209
    .line 210
    if-ne p2, v6, :cond_9

    .line 211
    .line 212
    invoke-virtual {p0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    goto/16 :goto_5

    .line 217
    .line 218
    :cond_9
    iget p0, v4, Landroid/util/TypedValue;->type:I

    .line 219
    .line 220
    sget-object v8, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/IntNavType;

    .line 221
    .line 222
    sget-object v9, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/IntNavType;

    .line 223
    .line 224
    sget-object v11, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/IntNavType;

    .line 225
    .line 226
    if-eq p0, v1, :cond_10

    .line 227
    .line 228
    const-string v1, "float"

    .line 229
    .line 230
    if-eq p0, v5, :cond_f

    .line 231
    .line 232
    const/4 v5, 0x5

    .line 233
    if-eq p0, v5, :cond_e

    .line 234
    .line 235
    const/16 p1, 0x12

    .line 236
    .line 237
    if-eq p0, p1, :cond_c

    .line 238
    .line 239
    if-lt p0, v10, :cond_b

    .line 240
    .line 241
    const/16 p1, 0x1f

    .line 242
    .line 243
    if-gt p0, p1, :cond_b

    .line 244
    .line 245
    if-ne p2, v11, :cond_a

    .line 246
    .line 247
    invoke-static {v4, p2, v11, v3, v1}, Landroidx/compose/ui/unit/IntRectKt;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    iget p0, v4, Landroid/util/TypedValue;->data:I

    .line 252
    .line 253
    int-to-float p0, p0

    .line 254
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    goto/16 :goto_5

    .line 259
    .line 260
    :cond_a
    const-string p0, "integer"

    .line 261
    .line 262
    invoke-static {v4, p2, v9, v3, p0}, Landroidx/compose/ui/unit/IntRectKt;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    iget p0, v4, Landroid/util/TypedValue;->data:I

    .line 267
    .line 268
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    goto/16 :goto_5

    .line 273
    .line 274
    :cond_b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 275
    .line 276
    iget p1, v4, Landroid/util/TypedValue;->type:I

    .line 277
    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string/jumbo v0, "unsupported argument type "

    .line 281
    .line 282
    .line 283
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw p0

    .line 297
    :cond_c
    const-string p0, "boolean"

    .line 298
    .line 299
    invoke-static {v4, p2, v8, v3, p0}, Landroidx/compose/ui/unit/IntRectKt;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    iget p0, v4, Landroid/util/TypedValue;->data:I

    .line 304
    .line 305
    if-eqz p0, :cond_d

    .line 306
    .line 307
    move v2, v7

    .line 308
    :cond_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    goto :goto_5

    .line 313
    :cond_e
    const-string p0, "dimension"

    .line 314
    .line 315
    invoke-static {v4, p2, v9, v3, p0}, Landroidx/compose/ui/unit/IntRectKt;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    invoke-virtual {v4, p0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 324
    .line 325
    .line 326
    move-result p0

    .line 327
    float-to-int p0, p0

    .line 328
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    goto :goto_5

    .line 333
    :cond_f
    invoke-static {v4, p2, v11, v3, v1}, Landroidx/compose/ui/unit/IntRectKt;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    .line 338
    .line 339
    .line 340
    move-result p0

    .line 341
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    goto :goto_5

    .line 346
    :cond_10
    iget-object p0, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 347
    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    if-nez p2, :cond_11

    .line 353
    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    :try_start_1
    invoke-virtual {v9, p0}, Landroidx/navigation/IntNavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    .line 359
    .line 360
    goto :goto_4

    .line 361
    :catch_1
    :try_start_2
    sget-object p1, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/IntNavType;

    .line 362
    .line 363
    invoke-virtual {p1, p0}, Landroidx/navigation/IntNavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 364
    .line 365
    .line 366
    move-object v6, p1

    .line 367
    goto :goto_3

    .line 368
    :catch_2
    :try_start_3
    invoke-virtual {v11, p0}, Landroidx/navigation/IntNavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 369
    .line 370
    .line 371
    move-object v6, v11

    .line 372
    goto :goto_3

    .line 373
    :catch_3
    :try_start_4
    invoke-virtual {v8, p0}, Landroidx/navigation/IntNavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 374
    .line 375
    .line 376
    move-object v6, v8

    .line 377
    :catch_4
    :goto_3
    move-object v9, v6

    .line 378
    :goto_4
    move-object p2, v9

    .line 379
    :cond_11
    invoke-virtual {p2, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    :cond_12
    :goto_5
    if-eqz v6, :cond_13

    .line 384
    .line 385
    iput-object v6, v0, Landroidx/navigation/NavArgument$Builder;->defaultValue:Ljava/lang/Object;

    .line 386
    .line 387
    iput-boolean v7, v0, Landroidx/navigation/NavArgument$Builder;->defaultValuePresent:Z

    .line 388
    .line 389
    :cond_13
    if-eqz p2, :cond_14

    .line 390
    .line 391
    iput-object p2, v0, Landroidx/navigation/NavArgument$Builder;->type:Landroidx/navigation/NavType;

    .line 392
    .line 393
    :cond_14
    invoke-virtual {v0}, Landroidx/navigation/NavArgument$Builder;->build()Landroidx/navigation/NavArgument;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    return-object p0
.end method


# virtual methods
.method public final inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v5, v0, Landroidx/navigation/NavInflater;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 17
    .line 18
    invoke-virtual {v5, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Landroidx/navigation/Navigator;->createDestination()Landroidx/navigation/NavDestination;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v5, v0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v4, v5, v2}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    .line 30
    .line 31
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x1

    .line 36
    add-int/2addr v6, v7

    .line 37
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eq v8, v7, :cond_1b

    .line 42
    .line 43
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    const/4 v10, 0x3

    .line 48
    if-ge v9, v6, :cond_0

    .line 49
    .line 50
    if-eq v8, v10, :cond_1b

    .line 51
    .line 52
    :cond_0
    const/4 v11, 0x2

    .line 53
    if-eq v8, v11, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-le v9, v6, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const-string v9, "argument"

    .line 64
    .line 65
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    const/4 v13, 0x0

    .line 70
    const-string v14, "Arguments must have a name"

    .line 71
    .line 72
    sget-object v15, Landroidx/navigation/common/R$styleable;->NavArgument:[I

    .line 73
    .line 74
    if-eqz v12, :cond_4

    .line 75
    .line 76
    invoke-virtual {v1, v2, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    if-eqz v9, :cond_3

    .line 88
    .line 89
    invoke-static {v8, v1, v3}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    iget-object v11, v4, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 94
    .line 95
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    iget-object v11, v11, Landroidx/navigation/internal/NavDestinationImpl;->arguments:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v11, Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 110
    .line 111
    invoke-direct {v0, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_4
    const-string v12, "deepLink"

    .line 116
    .line 117
    invoke-virtual {v12, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-eqz v12, :cond_e

    .line 122
    .line 123
    sget-object v8, Landroidx/navigation/common/R$styleable;->NavDeepLink:[I

    .line 124
    .line 125
    invoke-virtual {v1, v2, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-virtual {v8, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    if-eqz v9, :cond_5

    .line 145
    .line 146
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    if-nez v12, :cond_7

    .line 151
    .line 152
    :cond_5
    if-eqz v10, :cond_6

    .line 153
    .line 154
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-nez v12, :cond_7

    .line 159
    .line 160
    :cond_6
    if-eqz v11, :cond_d

    .line 161
    .line 162
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_d

    .line 167
    .line 168
    :cond_7
    const/4 v12, 0x0

    .line 169
    const-string v13, "${applicationId}"

    .line 170
    .line 171
    if-eqz v9, :cond_8

    .line 172
    .line 173
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {v9, v13, v14}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    goto :goto_1

    .line 185
    :cond_8
    move-object v9, v12

    .line 186
    :goto_1
    if-eqz v10, :cond_b

    .line 187
    .line 188
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    if-nez v14, :cond_9

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_9
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {v10, v13, v14}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    if-lez v14, :cond_a

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_a
    const-string v0, "The NavDeepLink cannot have an empty action."

    .line 214
    .line 215
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-object v12

    .line 219
    :cond_b
    :goto_2
    move-object v10, v12

    .line 220
    :goto_3
    if-eqz v11, :cond_c

    .line 221
    .line 222
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {v11, v13, v12}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    :cond_c
    new-instance v11, Landroidx/navigation/NavDeepLink;

    .line 234
    .line 235
    invoke-direct {v11, v9, v10, v12}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v11}, Landroidx/navigation/NavDestination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 247
    .line 248
    const-string v1, "Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType"

    .line 249
    .line 250
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_e
    const-string v12, "action"

    .line 255
    .line 256
    invoke-virtual {v12, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    if-eqz v12, :cond_19

    .line 261
    .line 262
    sget-object v8, Landroidx/navigation/common/R$styleable;->NavAction:[I

    .line 263
    .line 264
    invoke-virtual {v5, v2, v8, v13, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    invoke-virtual {v8, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    invoke-virtual {v8, v7, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    move/from16 v16, v7

    .line 277
    .line 278
    new-instance v7, Landroidx/navigation/NavAction;

    .line 279
    .line 280
    invoke-direct {v7, v10}, Landroidx/navigation/NavAction;-><init>(I)V

    .line 281
    .line 282
    .line 283
    const/4 v10, 0x4

    .line 284
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 285
    .line 286
    .line 287
    move-result v18

    .line 288
    const/16 v10, 0xa

    .line 289
    .line 290
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 291
    .line 292
    .line 293
    move-result v19

    .line 294
    const/4 v10, 0x7

    .line 295
    const/4 v11, -0x1

    .line 296
    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 297
    .line 298
    .line 299
    move-result v20

    .line 300
    const/16 v10, 0x8

    .line 301
    .line 302
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 303
    .line 304
    .line 305
    move-result v21

    .line 306
    const/16 v10, 0x9

    .line 307
    .line 308
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 309
    .line 310
    .line 311
    move-result v22

    .line 312
    const/4 v10, 0x2

    .line 313
    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 314
    .line 315
    .line 316
    move-result v23

    .line 317
    const/4 v10, 0x3

    .line 318
    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 319
    .line 320
    .line 321
    move-result v24

    .line 322
    const/4 v10, 0x5

    .line 323
    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 324
    .line 325
    .line 326
    move-result v25

    .line 327
    const/4 v10, 0x6

    .line 328
    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 329
    .line 330
    .line 331
    move-result v26

    .line 332
    new-instance v17, Landroidx/navigation/NavOptions;

    .line 333
    .line 334
    invoke-direct/range {v17 .. v26}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    .line 335
    .line 336
    .line 337
    move-object/from16 v10, v17

    .line 338
    .line 339
    iput-object v10, v7, Landroidx/navigation/NavAction;->navOptions:Landroidx/navigation/NavOptions;

    .line 340
    .line 341
    new-array v10, v13, [Lkotlin/Pair;

    .line 342
    .line 343
    invoke-static {v10, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    check-cast v10, [Lkotlin/Pair;

    .line 348
    .line 349
    invoke-static {v10}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 354
    .line 355
    .line 356
    move-result v11

    .line 357
    add-int/lit8 v11, v11, 0x1

    .line 358
    .line 359
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 360
    .line 361
    .line 362
    move-result v13

    .line 363
    move-object/from16 v18, v5

    .line 364
    .line 365
    move/from16 v5, v16

    .line 366
    .line 367
    if-eq v13, v5, :cond_15

    .line 368
    .line 369
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    move/from16 v19, v6

    .line 374
    .line 375
    if-ge v5, v11, :cond_f

    .line 376
    .line 377
    const/4 v6, 0x3

    .line 378
    if-eq v13, v6, :cond_16

    .line 379
    .line 380
    :cond_f
    const/4 v6, 0x2

    .line 381
    if-eq v13, v6, :cond_10

    .line 382
    .line 383
    :goto_5
    move-object/from16 v5, v18

    .line 384
    .line 385
    move/from16 v6, v19

    .line 386
    .line 387
    const/16 v16, 0x1

    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_10
    if-le v5, v11, :cond_11

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_11
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-eqz v5, :cond_13

    .line 402
    .line 403
    invoke-virtual {v1, v2, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    const/4 v13, 0x0

    .line 411
    invoke-virtual {v5, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    if-eqz v6, :cond_14

    .line 416
    .line 417
    invoke-static {v5, v1, v3}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    .line 418
    .line 419
    .line 420
    move-result-object v13

    .line 421
    iget-boolean v3, v13, Landroidx/navigation/NavArgument;->isDefaultValuePresent:Z

    .line 422
    .line 423
    if-eqz v3, :cond_12

    .line 424
    .line 425
    if-eqz v3, :cond_12

    .line 426
    .line 427
    iget-object v3, v13, Landroidx/navigation/NavArgument;->defaultValue:Ljava/lang/Object;

    .line 428
    .line 429
    if-eqz v3, :cond_12

    .line 430
    .line 431
    iget-object v13, v13, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    .line 432
    .line 433
    invoke-virtual {v13, v10, v6, v3}, Landroidx/navigation/NavType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :cond_12
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 437
    .line 438
    .line 439
    :cond_13
    move/from16 v3, p4

    .line 440
    .line 441
    goto :goto_5

    .line 442
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 443
    .line 444
    invoke-direct {v0, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    throw v0

    .line 448
    :cond_15
    move/from16 v19, v6

    .line 449
    .line 450
    :cond_16
    invoke-virtual {v10}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-nez v3, :cond_17

    .line 455
    .line 456
    iput-object v10, v7, Landroidx/navigation/NavAction;->defaultArguments:Landroid/os/Bundle;

    .line 457
    .line 458
    :cond_17
    invoke-virtual {v4, v12, v7}, Landroidx/navigation/NavDestination;->putAction(ILandroidx/navigation/NavAction;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 462
    .line 463
    .line 464
    :cond_18
    :goto_6
    move/from16 v3, p4

    .line 465
    .line 466
    move-object/from16 v5, v18

    .line 467
    .line 468
    move/from16 v6, v19

    .line 469
    .line 470
    const/4 v7, 0x1

    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :cond_19
    move-object/from16 v18, v5

    .line 474
    .line 475
    move/from16 v19, v6

    .line 476
    .line 477
    const-string v3, "include"

    .line 478
    .line 479
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    if-eqz v3, :cond_1a

    .line 484
    .line 485
    instance-of v3, v4, Landroidx/navigation/NavGraph;

    .line 486
    .line 487
    if-eqz v3, :cond_1a

    .line 488
    .line 489
    sget-object v3, Landroidx/navigation/R$styleable;->NavInclude:[I

    .line 490
    .line 491
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    const/4 v13, 0x0

    .line 499
    invoke-virtual {v3, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    move-object v6, v4

    .line 504
    check-cast v6, Landroidx/navigation/NavGraph;

    .line 505
    .line 506
    invoke-virtual {v0, v5}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    iget-object v6, v6, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 511
    .line 512
    invoke-virtual {v6, v5}, Lorg/apache/james/mime4j/stream/RawField;->addDestination$navigation_common_release(Landroidx/navigation/NavDestination;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 516
    .line 517
    .line 518
    goto :goto_6

    .line 519
    :cond_1a
    instance-of v3, v4, Landroidx/navigation/NavGraph;

    .line 520
    .line 521
    if-eqz v3, :cond_18

    .line 522
    .line 523
    move-object v3, v4

    .line 524
    check-cast v3, Landroidx/navigation/NavGraph;

    .line 525
    .line 526
    invoke-virtual/range {p0 .. p4}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    iget-object v3, v3, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 531
    .line 532
    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/stream/RawField;->addDestination$navigation_common_release(Landroidx/navigation/NavDestination;)V

    .line 533
    .line 534
    .line 535
    goto :goto_6

    .line 536
    :cond_1b
    return-object v4
.end method

.method public final inflate(I)Landroidx/navigation/NavGraph;
    .locals 6

    .line 537
    iget-object v0, p0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 538
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 540
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    :cond_1
    if-ne v3, v4, :cond_3

    .line 541
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 542
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    move-result-object p0

    .line 543
    instance-of v2, p0, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_2

    .line 544
    check-cast p0, Landroidx/navigation/NavGraph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 546
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root element <"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> did not inflate into a NavGraph"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 547
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 548
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception inflating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " line "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-direct {v2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0
.end method
