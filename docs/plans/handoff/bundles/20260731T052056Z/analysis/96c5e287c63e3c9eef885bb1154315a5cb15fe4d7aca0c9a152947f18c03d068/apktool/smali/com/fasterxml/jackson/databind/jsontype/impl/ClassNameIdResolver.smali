.class public Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final _idFrom(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Ljava/lang/String;
    .locals 11

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    const-class v0, Ljava/lang/Enum;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "java.util."

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_12

    .line 32
    .line 33
    instance-of p0, p1, Ljava/util/EnumSet;

    .line 34
    .line 35
    const/4 p2, 0x3

    .line 36
    const/4 v1, 0x2

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz p0, :cond_8

    .line 41
    .line 42
    check-cast p1, Ljava/util/EnumSet;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/Enum;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->instance:Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumSetTypeField:Ljava/lang/reflect/Field;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    check-cast p0, Ljava/lang/Class;

    .line 76
    .line 77
    :goto_0
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 78
    .line 79
    invoke-virtual {p3, v4, p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    .line 84
    .line 85
    const-class p1, Ljava/util/EnumSet;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    move v5, v3

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    array-length v5, v0

    .line 96
    :goto_1
    if-nez v5, :cond_3

    .line 97
    .line 98
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    if-ne v5, v2, :cond_6

    .line 102
    .line 103
    new-instance v5, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 104
    .line 105
    aget-object v0, v0, v3

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    filled-new-array {v0}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-array v6, v2, [Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 116
    .line 117
    aput-object p0, v6, v3

    .line 118
    .line 119
    invoke-direct {v5, v0, v6, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/type/TypeBase;[Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move-object v0, v5

    .line 123
    :goto_2
    invoke-virtual {p3, v4, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    check-cast p3, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    const-class v0, Ljava/util/Collection;

    .line 136
    .line 137
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getContentType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_4

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_4
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-array p2, p2, [Ljava/lang/Object;

    .line 157
    .line 158
    aput-object p1, p2, v3

    .line 159
    .line 160
    aput-object p0, p2, v2

    .line 161
    .line 162
    aput-object v0, p2, v1

    .line 163
    .line 164
    const-string p0, "Non-generic Collection class %s did not resolve to something with element type %s but %s "

    .line 165
    .line 166
    invoke-static {p0, p2}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    return-object v4

    .line 170
    :cond_5
    :goto_3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/type/CollectionType;->buildCanonicalName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0

    .line 175
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    const-string p1, " with 1 type parameter: class expects "

    .line 180
    .line 181
    invoke-static {v5, p0, p1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    return-object v4

    .line 185
    :catch_0
    move-exception p0

    .line 186
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_7
    const-string p1, "Cannot figure out type parameter for `EnumSet` (odd JDK platform?), problem: "

    .line 193
    .line 194
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->failForEnumSet:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    return-object v4

    .line 200
    :cond_8
    instance-of p0, p1, Ljava/util/EnumMap;

    .line 201
    .line 202
    if-eqz p0, :cond_13

    .line 203
    .line 204
    check-cast p1, Ljava/util/EnumMap;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-nez p0, :cond_9

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, Ljava/lang/Enum;

    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    goto :goto_4

    .line 231
    :cond_9
    sget-object p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->instance:Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;

    .line 232
    .line 233
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumMapTypeField:Ljava/lang/reflect/Field;

    .line 234
    .line 235
    if-eqz v0, :cond_11

    .line 236
    .line 237
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    check-cast p0, Ljava/lang/Class;

    .line 242
    .line 243
    :goto_4
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->EMPTY_BINDINGS:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 244
    .line 245
    invoke-virtual {p3, v4, p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    const-class v0, Ljava/lang/Object;

    .line 250
    .line 251
    invoke-virtual {p3, v4, v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    new-array v0, v1, [Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 256
    .line 257
    aput-object p0, v0, v3

    .line 258
    .line 259
    aput-object p1, v0, v2

    .line 260
    .line 261
    sget-object v5, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    .line 262
    .line 263
    const-class v5, Ljava/util/EnumMap;

    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    if-eqz v6, :cond_d

    .line 270
    .line 271
    array-length v7, v6

    .line 272
    if-nez v7, :cond_a

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_a
    array-length v7, v6

    .line 276
    new-array v8, v7, [Ljava/lang/String;

    .line 277
    .line 278
    move v9, v3

    .line 279
    :goto_5
    if-ge v9, v7, :cond_b

    .line 280
    .line 281
    aget-object v10, v6, v9

    .line 282
    .line 283
    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    aput-object v10, v8, v9

    .line 288
    .line 289
    add-int/lit8 v9, v9, 0x1

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_b
    if-ne v7, v1, :cond_c

    .line 293
    .line 294
    new-instance v6, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 295
    .line 296
    invoke-direct {v6, v8, v0, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/type/TypeBase;[Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    const-string p1, " with 2 type parameters: class expects "

    .line 305
    .line 306
    invoke-static {v7, p0, p1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    return-object v4

    .line 310
    :cond_d
    :goto_6
    sget-object v6, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 311
    .line 312
    :goto_7
    invoke-virtual {p3, v4, v5, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Lcom/caverock/androidsvg/SVG;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 313
    .line 314
    .line 315
    move-result-object p3

    .line 316
    check-cast p3, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 317
    .line 318
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_10

    .line 323
    .line 324
    const-class v0, Ljava/util/Map;

    .line 325
    .line 326
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getKeyType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-virtual {v6, p0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    if-eqz v7, :cond_f

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getContentType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_e

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_e
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p3

    .line 355
    new-array p2, p2, [Ljava/lang/Object;

    .line 356
    .line 357
    aput-object p3, p2, v3

    .line 358
    .line 359
    aput-object p1, p2, v2

    .line 360
    .line 361
    aput-object p0, p2, v1

    .line 362
    .line 363
    const-string p0, "Non-generic Map class %s did not resolve to something with value type %s but %s "

    .line 364
    .line 365
    invoke-static {p0, p2}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    return-object v4

    .line 369
    :cond_f
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    new-array p2, p2, [Ljava/lang/Object;

    .line 374
    .line 375
    aput-object p1, p2, v3

    .line 376
    .line 377
    aput-object p0, p2, v2

    .line 378
    .line 379
    aput-object v6, p2, v1

    .line 380
    .line 381
    const-string p0, "Non-generic Map class %s did not resolve to something with key type %s but %s "

    .line 382
    .line 383
    invoke-static {p0, p2}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    return-object v4

    .line 387
    :cond_10
    :goto_8
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/type/MapType;->buildCanonicalName()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    return-object p0

    .line 392
    :catch_1
    move-exception p0

    .line 393
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 394
    .line 395
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 396
    .line 397
    .line 398
    throw p1

    .line 399
    :cond_11
    const-string p1, "Cannot figure out type parameter for `EnumMap` (odd JDK platform?), problem: "

    .line 400
    .line 401
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->failForEnumMap:Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    return-object v4

    .line 407
    :cond_12
    const/16 p1, 0x24

    .line 408
    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    if-ltz p1, :cond_13

    .line 414
    .line 415
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    if-eqz p1, :cond_13

    .line 420
    .line 421
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 422
    .line 423
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 424
    .line 425
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    if-nez p1, :cond_13

    .line 430
    .line 431
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 432
    .line 433
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    return-object p0

    .line 438
    :cond_13
    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
