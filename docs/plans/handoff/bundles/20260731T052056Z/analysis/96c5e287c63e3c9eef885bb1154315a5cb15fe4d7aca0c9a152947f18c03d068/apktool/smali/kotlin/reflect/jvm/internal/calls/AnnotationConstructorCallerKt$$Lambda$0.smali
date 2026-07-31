.class public final Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final arg$0:Ljava/lang/Class;

.field public final arg$1:Ljava/util/Map;

.field public final arg$2:Lkotlin/SynchronizedLazyImpl;

.field public final arg$3:Lkotlin/SynchronizedLazyImpl;

.field public final arg$4:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;Lkotlin/SynchronizedLazyImpl;Lkotlin/SynchronizedLazyImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$0:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$1:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$2:Lkotlin/SynchronizedLazyImpl;

    .line 9
    .line 10
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$3:Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$4:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$0:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$4:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_6

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const v3, -0x69e9ad94

    .line 22
    .line 23
    .line 24
    if-eq v2, v3, :cond_4

    .line 25
    .line 26
    const v3, 0x8cdac1b

    .line 27
    .line 28
    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    .line 31
    const v3, 0x5620bf09

    .line 32
    .line 33
    .line 34
    if-eq v2, v3, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v2, "annotationType"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object p1

    .line 47
    :cond_2
    const-string v2, "hashCode"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$3:Lkotlin/SynchronizedLazyImpl;

    .line 57
    .line 58
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_4
    const-string v2, "toString"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_5

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$2:Lkotlin/SynchronizedLazyImpl;

    .line 83
    .line 84
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Ljava/lang/String;

    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_6
    :goto_0
    const-string v2, "equals"

    .line 92
    .line 93
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;->arg$1:Ljava/util/Map;

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    if-eqz v2, :cond_16

    .line 101
    .line 102
    if-eqz p3, :cond_16

    .line 103
    .line 104
    array-length v2, p3

    .line 105
    const/4 v4, 0x1

    .line 106
    if-ne v2, v4, :cond_16

    .line 107
    .line 108
    invoke-static {p3}, Lkotlin/collections/ArraysKt___ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    instance-of p3, p2, Ljava/lang/annotation/Annotation;

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    if-eqz p3, :cond_7

    .line 116
    .line 117
    move-object p3, p2

    .line 118
    check-cast p3, Ljava/lang/annotation/Annotation;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    move-object p3, v1

    .line 122
    :goto_1
    if-eqz p3, :cond_8

    .line 123
    .line 124
    invoke-static {p3}, Lkotlin/UnsignedKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-static {p3}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    goto :goto_2

    .line 133
    :cond_8
    move-object p3, v1

    .line 134
    :goto_2
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_15

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_9

    .line 145
    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :cond_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    if-eqz p3, :cond_14

    .line 157
    .line 158
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    check-cast p3, Ljava/lang/reflect/Method;

    .line 163
    .line 164
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    instance-of v2, v0, [Z

    .line 177
    .line 178
    if-eqz v2, :cond_b

    .line 179
    .line 180
    check-cast v0, [Z

    .line 181
    .line 182
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    check-cast p3, [Z

    .line 186
    .line 187
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    goto/16 :goto_3

    .line 192
    .line 193
    :cond_b
    instance-of v2, v0, [C

    .line 194
    .line 195
    if-eqz v2, :cond_c

    .line 196
    .line 197
    check-cast v0, [C

    .line 198
    .line 199
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    check-cast p3, [C

    .line 203
    .line 204
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([C[C)Z

    .line 205
    .line 206
    .line 207
    move-result p3

    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_c
    instance-of v2, v0, [B

    .line 211
    .line 212
    if-eqz v2, :cond_d

    .line 213
    .line 214
    check-cast v0, [B

    .line 215
    .line 216
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    check-cast p3, [B

    .line 220
    .line 221
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 222
    .line 223
    .line 224
    move-result p3

    .line 225
    goto :goto_3

    .line 226
    :cond_d
    instance-of v2, v0, [S

    .line 227
    .line 228
    if-eqz v2, :cond_e

    .line 229
    .line 230
    check-cast v0, [S

    .line 231
    .line 232
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    check-cast p3, [S

    .line 236
    .line 237
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([S[S)Z

    .line 238
    .line 239
    .line 240
    move-result p3

    .line 241
    goto :goto_3

    .line 242
    :cond_e
    instance-of v2, v0, [I

    .line 243
    .line 244
    if-eqz v2, :cond_f

    .line 245
    .line 246
    check-cast v0, [I

    .line 247
    .line 248
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    check-cast p3, [I

    .line 252
    .line 253
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 254
    .line 255
    .line 256
    move-result p3

    .line 257
    goto :goto_3

    .line 258
    :cond_f
    instance-of v2, v0, [F

    .line 259
    .line 260
    if-eqz v2, :cond_10

    .line 261
    .line 262
    check-cast v0, [F

    .line 263
    .line 264
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    check-cast p3, [F

    .line 268
    .line 269
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 270
    .line 271
    .line 272
    move-result p3

    .line 273
    goto :goto_3

    .line 274
    :cond_10
    instance-of v2, v0, [J

    .line 275
    .line 276
    if-eqz v2, :cond_11

    .line 277
    .line 278
    check-cast v0, [J

    .line 279
    .line 280
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    check-cast p3, [J

    .line 284
    .line 285
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 286
    .line 287
    .line 288
    move-result p3

    .line 289
    goto :goto_3

    .line 290
    :cond_11
    instance-of v2, v0, [D

    .line 291
    .line 292
    if-eqz v2, :cond_12

    .line 293
    .line 294
    check-cast v0, [D

    .line 295
    .line 296
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    check-cast p3, [D

    .line 300
    .line 301
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([D[D)Z

    .line 302
    .line 303
    .line 304
    move-result p3

    .line 305
    goto :goto_3

    .line 306
    :cond_12
    instance-of v2, v0, [Ljava/lang/Object;

    .line 307
    .line 308
    if-eqz v2, :cond_13

    .line 309
    .line 310
    check-cast v0, [Ljava/lang/Object;

    .line 311
    .line 312
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    check-cast p3, [Ljava/lang/Object;

    .line 316
    .line 317
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result p3

    .line 321
    goto :goto_3

    .line 322
    :cond_13
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p3

    .line 326
    :goto_3
    if-nez p3, :cond_a

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_14
    :goto_4
    move v3, v4

    .line 330
    :cond_15
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    return-object p0

    .line 335
    :cond_16
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    if-eqz p1, :cond_17

    .line 340
    .line 341
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    return-object p0

    .line 346
    :cond_17
    new-instance p0, Lkotlinx/coroutines/CoroutinesInternalError;

    .line 347
    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v0, "Method is not supported: "

    .line 351
    .line 352
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string p2, " (args: "

    .line 359
    .line 360
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    if-nez p3, :cond_18

    .line 364
    .line 365
    new-array p3, v3, [Ljava/lang/Object;

    .line 366
    .line 367
    :cond_18
    invoke-static {p3}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const/16 p2, 0x29

    .line 375
    .line 376
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw p0
.end method
