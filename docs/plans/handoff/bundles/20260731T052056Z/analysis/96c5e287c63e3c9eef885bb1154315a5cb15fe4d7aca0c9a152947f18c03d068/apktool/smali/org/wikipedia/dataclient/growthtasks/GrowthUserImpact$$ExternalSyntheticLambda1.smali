.class public final synthetic Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->groupEditsByMonth$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/Map;

    .line 20
    .line 21
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/Integer;

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->editCountByDay$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 54
    .line 55
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/Iterable;

    .line 66
    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move-object v4, v3

    .line 87
    check-cast v4, Ljava/util/Map$Entry;

    .line 88
    .line 89
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-nez v5, :cond_1

    .line 104
    .line 105
    new-instance v5, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/Iterable;

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Ljava/lang/Iterable;

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    move v4, v2

    .line 169
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_3

    .line 174
    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Ljava/util/Map$Entry;

    .line 180
    .line 181
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Ljava/lang/Number;

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    add-int/2addr v4, v5

    .line 192
    goto :goto_2

    .line 193
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_4
    return-object p0

    .line 202
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mLongestEditingStreak:Lkotlinx/serialization/json/JsonElement;

    .line 203
    .line 204
    instance-of v0, p0, Lkotlinx/serialization/json/JsonObject;

    .line 205
    .line 206
    if-eqz v0, :cond_5

    .line 207
    .line 208
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    sget-object v1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak$Companion;

    .line 214
    .line 215
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 224
    .line 225
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    check-cast p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$EditStreak;

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_5
    const/4 p0, 0x0

    .line 233
    :goto_3
    return-object p0

    .line 234
    :pswitch_2
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mTopViewedArticles:Lkotlinx/serialization/json/JsonElement;

    .line 235
    .line 236
    instance-of v0, p0, Lkotlinx/serialization/json/JsonObject;

    .line 237
    .line 238
    if-eqz v0, :cond_6

    .line 239
    .line 240
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    new-instance v1, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 246
    .line 247
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 248
    .line 249
    sget-object v3, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews$Companion;

    .line 250
    .line 251
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$ArticleViews$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-direct {v1, v2, v3, v4}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    move-object v3, p0

    .line 263
    check-cast v3, Ljava/util/Map;

    .line 264
    .line 265
    :cond_6
    return-object v3

    .line 266
    :pswitch_3
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mDailyTotalViews:Lkotlinx/serialization/json/JsonElement;

    .line 267
    .line 268
    instance-of v0, p0, Lkotlinx/serialization/json/JsonObject;

    .line 269
    .line 270
    if-eqz v0, :cond_7

    .line 271
    .line 272
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    new-instance v1, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 278
    .line 279
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 280
    .line 281
    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 282
    .line 283
    invoke-direct {v1, v2, v3, v4}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    move-object v3, p0

    .line 291
    check-cast v3, Ljava/util/Map;

    .line 292
    .line 293
    :cond_7
    return-object v3

    .line 294
    :pswitch_4
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByTaskType:Lkotlinx/serialization/json/JsonElement;

    .line 295
    .line 296
    instance-of v0, p0, Lkotlinx/serialization/json/JsonObject;

    .line 297
    .line 298
    if-eqz v0, :cond_8

    .line 299
    .line 300
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    new-instance v1, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 306
    .line 307
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 308
    .line 309
    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 310
    .line 311
    invoke-direct {v1, v2, v3, v4}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    move-object v3, p0

    .line 319
    check-cast v3, Ljava/util/Map;

    .line 320
    .line 321
    :cond_8
    return-object v3

    .line 322
    :pswitch_5
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByDay:Lkotlinx/serialization/json/JsonElement;

    .line 323
    .line 324
    instance-of v0, p0, Lkotlinx/serialization/json/JsonObject;

    .line 325
    .line 326
    if-eqz v0, :cond_9

    .line 327
    .line 328
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    new-instance v1, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 334
    .line 335
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 336
    .line 337
    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 338
    .line 339
    invoke-direct {v1, v2, v3, v4}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    move-object v3, p0

    .line 347
    check-cast v3, Ljava/util/Map;

    .line 348
    .line 349
    :cond_9
    return-object v3

    .line 350
    :pswitch_6
    iget-wide v0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->lastEditTimestamp:J

    .line 351
    .line 352
    const-wide/16 v2, 0x3e8

    .line 353
    .line 354
    mul-long v4, v0, v2

    .line 355
    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 357
    .line 358
    .line 359
    move-result-wide v6

    .line 360
    const-wide/16 v8, 0x0

    .line 361
    .line 362
    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    return-object p0

    .line 371
    :pswitch_7
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    const-wide/16 v5, 0x1e

    .line 376
    .line 377
    invoke-virtual {v0, v5, v6}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 382
    .line 383
    const/16 v3, 0x1e

    .line 384
    .line 385
    invoke-direct {v1, v2, v3, v4}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 386
    .line 387
    .line 388
    const/16 v3, 0xa

    .line 389
    .line 390
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    const/16 v4, 0x10

    .line 399
    .line 400
    if-ge v3, v4, :cond_a

    .line 401
    .line 402
    move v3, v4

    .line 403
    :cond_a
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 404
    .line 405
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    :goto_4
    move-object v3, v1

    .line 413
    check-cast v3, Lkotlin/ranges/IntProgressionIterator;

    .line 414
    .line 415
    iget-boolean v3, v3, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 416
    .line 417
    if-eqz v3, :cond_c

    .line 418
    .line 419
    move-object v3, v1

    .line 420
    check-cast v3, Lkotlin/collections/IntIterator;

    .line 421
    .line 422
    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    int-to-long v5, v3

    .line 427
    invoke-virtual {v0, v5, v6}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v3}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    iget-object v5, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->editCountByDay$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 439
    .line 440
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    check-cast v5, Ljava/util/Map;

    .line 445
    .line 446
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    check-cast v5, Ljava/lang/Integer;

    .line 451
    .line 452
    if-eqz v5, :cond_b

    .line 453
    .line 454
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    goto :goto_5

    .line 459
    :cond_b
    move v5, v2

    .line 460
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_c
    return-object v4

    .line 469
    :pswitch_8
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->groupEditsByMonth$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 470
    .line 471
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object p0

    .line 475
    check-cast p0, Ljava/util/Map;

    .line 476
    .line 477
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const-wide/16 v3, 0x1

    .line 482
    .line 483
    invoke-virtual {v0, v3, v4}, Lj$/time/LocalDate;->minusMonths(J)Lj$/time/LocalDate;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lj$/time/LocalDate;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object p0

    .line 502
    check-cast p0, Ljava/lang/Integer;

    .line 503
    .line 504
    if-eqz p0, :cond_d

    .line 505
    .line 506
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 511
    .line 512
    .line 513
    move-result-object p0

    .line 514
    return-object p0

    .line 515
    :pswitch_9
    iget-object p0, p0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->mEditCountByNamespace:Lkotlinx/serialization/json/JsonElement;

    .line 516
    .line 517
    instance-of v0, p0, Lkotlinx/serialization/json/JsonObject;

    .line 518
    .line 519
    if-eqz v0, :cond_e

    .line 520
    .line 521
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    new-instance v1, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 527
    .line 528
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 529
    .line 530
    invoke-direct {v1, v2, v2, v4}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object p0

    .line 537
    move-object v3, p0

    .line 538
    check-cast v3, Ljava/util/Map;

    .line 539
    .line 540
    :cond_e
    return-object v3

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
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
