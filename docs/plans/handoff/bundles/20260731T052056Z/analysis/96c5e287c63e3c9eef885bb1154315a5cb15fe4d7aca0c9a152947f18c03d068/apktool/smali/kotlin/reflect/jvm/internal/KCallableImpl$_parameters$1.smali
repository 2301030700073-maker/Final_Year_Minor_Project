.class public final Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getTypeParameters()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/16 v2, 0xa

    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 48
    .line 49
    new-instance v3, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, p0, v2}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-object v1

    .line 62
    :pswitch_0
    new-instance v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    .line 63
    .line 64
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v2, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;

    .line 76
    .line 77
    const/4 v3, 0x3

    .line 78
    invoke-direct {v2, p0, v3}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;I)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :pswitch_1
    invoke-interface {p0}, Lkotlin/reflect/KCallable;->isSuspend()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    .line 104
    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    move-object v0, v1

    .line 111
    :goto_1
    if-eqz v0, :cond_2

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move-object v2, v1

    .line 119
    :goto_2
    const-class v3, Lkotlin/coroutines/Continuation;

    .line 120
    .line 121
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    .line 139
    .line 140
    if-eqz v2, :cond_3

    .line 141
    .line 142
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_3
    move-object v0, v1

    .line 146
    :goto_3
    if-eqz v0, :cond_4

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    move-object v1, v0

    .line 159
    check-cast v1, Ljava/lang/reflect/Type;

    .line 160
    .line 161
    :cond_4
    if-nez v1, :cond_5

    .line 162
    .line 163
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getReturnType()Ljava/lang/reflect/Type;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :cond_5
    return-object v1

    .line 172
    :pswitch_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->computeAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;)Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0

    .line 181
    :pswitch_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-interface {p0}, Lkotlin/reflect/KCallable;->isSuspend()Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    add-int/2addr v4, v0

    .line 194
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    add-int/lit8 v0, v0, 0x1f

    .line 203
    .line 204
    div-int/lit8 v0, v0, 0x20

    .line 205
    .line 206
    add-int v5, v4, v0

    .line 207
    .line 208
    add-int/2addr v5, v2

    .line 209
    new-array v5, v5, [Ljava/lang/Object;

    .line 210
    .line 211
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getParameters()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    :cond_6
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_10

    .line 224
    .line 225
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    check-cast v6, Lkotlin/reflect/jvm/internal/KParameterImpl;

    .line 230
    .line 231
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    iget v8, v6, Lkotlin/reflect/jvm/internal/KParameterImpl;->index:I

    .line 236
    .line 237
    instance-of v9, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 238
    .line 239
    if-eqz v9, :cond_7

    .line 240
    .line 241
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_7
    move-object v7, v1

    .line 245
    :goto_5
    if-eqz v7, :cond_8

    .line 246
    .line 247
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->declaresOrInheritsDefaultValue(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    goto :goto_6

    .line 252
    :cond_8
    move v7, v3

    .line 253
    :goto_6
    if-eqz v7, :cond_e

    .line 254
    .line 255
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    sget-object v9, Lkotlin/reflect/jvm/internal/UtilKt;->JVM_STATIC:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 260
    .line 261
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 262
    .line 263
    if-eqz v7, :cond_9

    .line 264
    .line 265
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isInlineClassType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-ne v7, v2, :cond_9

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_9
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    iget-object v7, v6, Lkotlin/reflect/jvm/internal/KTypeImpl;->computeJavaType:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 277
    .line 278
    if-eqz v7, :cond_a

    .line 279
    .line 280
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    check-cast v9, Ljava/lang/reflect/Type;

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_a
    move-object v9, v1

    .line 288
    :goto_7
    if-nez v9, :cond_d

    .line 289
    .line 290
    if-eqz v7, :cond_b

    .line 291
    .line 292
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    check-cast v7, Ljava/lang/reflect/Type;

    .line 297
    .line 298
    move-object v9, v7

    .line 299
    goto :goto_8

    .line 300
    :cond_b
    move-object v9, v1

    .line 301
    :goto_8
    if-eqz v9, :cond_c

    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_c
    invoke-static {v6, v3}, Lcoil3/util/UtilsKt;->computeJavaType(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    :cond_d
    :goto_9
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/UtilKt;->defaultPrimitiveValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    aput-object v6, v5, v8

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_e
    :goto_a
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    instance-of v9, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 320
    .line 321
    if-eqz v9, :cond_6

    .line 322
    .line 323
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 324
    .line 325
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->varargElementType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 326
    .line 327
    if-eqz v7, :cond_6

    .line 328
    .line 329
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getType()Lkotlin/reflect/jvm/internal/KTypeImpl;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-static {v6}, Lkotlin/text/UStringsKt;->getJvmErasure(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-static {v6}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    if-eqz v7, :cond_f

    .line 346
    .line 347
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    aput-object v6, v5, v8

    .line 359
    .line 360
    goto/16 :goto_4

    .line 361
    .line 362
    :cond_f
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    .line 363
    .line 364
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string v2, "Cannot instantiate the default empty array of type "

    .line 371
    .line 372
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v0, ", because it is not an array type"

    .line 379
    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw p0

    .line 391
    :cond_10
    move p0, v3

    .line 392
    :goto_b
    if-ge p0, v0, :cond_11

    .line 393
    .line 394
    add-int v1, v4, p0

    .line 395
    .line 396
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    aput-object v2, v5, v1

    .line 401
    .line 402
    add-int/lit8 p0, p0, 0x1

    .line 403
    .line 404
    goto :goto_b

    .line 405
    :cond_11
    return-object v5

    .line 406
    :pswitch_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isBound()Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-nez v4, :cond_13

    .line 420
    .line 421
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->getInstanceReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    if-eqz v4, :cond_12

    .line 426
    .line 427
    new-instance v5, Lkotlin/reflect/jvm/internal/KParameterImpl;

    .line 428
    .line 429
    sget-object v6, Lkotlin/reflect/KParameter$Kind;->INSTANCE:Lkotlin/reflect/KParameter$Kind;

    .line 430
    .line 431
    new-instance v7, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;

    .line 432
    .line 433
    invoke-direct {v7, v4, v3}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;I)V

    .line 434
    .line 435
    .line 436
    invoke-direct {v5, p0, v3, v6, v7}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move v4, v2

    .line 443
    goto :goto_c

    .line 444
    :cond_12
    move v4, v3

    .line 445
    :goto_c
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    if-eqz v5, :cond_14

    .line 450
    .line 451
    new-instance v6, Lkotlin/reflect/jvm/internal/KParameterImpl;

    .line 452
    .line 453
    add-int/lit8 v7, v4, 0x1

    .line 454
    .line 455
    sget-object v8, Lkotlin/reflect/KParameter$Kind;->EXTENSION_RECEIVER:Lkotlin/reflect/KParameter$Kind;

    .line 456
    .line 457
    new-instance v9, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;

    .line 458
    .line 459
    invoke-direct {v9, v5, v2}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;I)V

    .line 460
    .line 461
    .line 462
    invoke-direct {v6, p0, v4, v8, v9}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move v4, v7

    .line 469
    goto :goto_d

    .line 470
    :cond_13
    move v4, v3

    .line 471
    :cond_14
    :goto_d
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    :goto_e
    if-ge v3, v5, :cond_15

    .line 480
    .line 481
    new-instance v6, Lkotlin/reflect/jvm/internal/KParameterImpl;

    .line 482
    .line 483
    add-int/lit8 v7, v4, 0x1

    .line 484
    .line 485
    sget-object v8, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    .line 486
    .line 487
    new-instance v9, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;

    .line 488
    .line 489
    invoke-direct {v9, v0, v3}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;I)V

    .line 490
    .line 491
    .line 492
    invoke-direct {v6, p0, v4, v8, v9}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    add-int/lit8 v3, v3, 0x1

    .line 499
    .line 500
    move v4, v7

    .line 501
    goto :goto_e

    .line 502
    :cond_15
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isAnnotationConstructor()Z

    .line 503
    .line 504
    .line 505
    move-result p0

    .line 506
    if-eqz p0, :cond_16

    .line 507
    .line 508
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    .line 509
    .line 510
    if-eqz p0, :cond_16

    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 513
    .line 514
    .line 515
    move-result p0

    .line 516
    if-le p0, v2, :cond_16

    .line 517
    .line 518
    new-instance p0, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 519
    .line 520
    const/16 v0, 0xf

    .line 521
    .line 522
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 523
    .line 524
    .line 525
    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 526
    .line 527
    .line 528
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 529
    .line 530
    .line 531
    return-object v1

    .line 532
    nop

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
