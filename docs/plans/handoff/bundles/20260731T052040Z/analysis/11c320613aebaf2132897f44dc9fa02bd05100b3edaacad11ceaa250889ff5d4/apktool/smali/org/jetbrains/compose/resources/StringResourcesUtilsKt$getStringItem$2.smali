.class public final Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $resourceItem:Lorg/jetbrains/compose/resources/ResourceItem;

.field final synthetic $resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

.field label:I


# direct methods
.method public constructor <init>(Lorg/jetbrains/compose/resources/ResourceReader;Lorg/jetbrains/compose/resources/ResourceItem;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;->$resourceItem:Lorg/jetbrains/compose/resources/ResourceItem;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;->$resourceItem:Lorg/jetbrains/compose/resources/ResourceItem;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0, p1}, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;-><init>(Lorg/jetbrains/compose/resources/ResourceReader;Lorg/jetbrains/compose/resources/ResourceItem;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;->label:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-ne v0, v3, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 24
    .line 25
    iget-object v0, p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;->$resourceItem:Lorg/jetbrains/compose/resources/ResourceItem;

    .line 26
    .line 27
    iget-object v4, v0, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 28
    .line 29
    iget-wide v5, v0, Lorg/jetbrains/compose/resources/ResourceItem;->offset:J

    .line 30
    .line 31
    iget-wide v7, v0, Lorg/jetbrains/compose/resources/ResourceItem;->size:J

    .line 32
    .line 33
    iput v3, p0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt$getStringItem$2;->label:I

    .line 34
    .line 35
    check-cast p1, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    long-to-int p1, v7

    .line 45
    new-array v0, p1, [B

    .line 46
    .line 47
    const-wide/16 v7, 0x0

    .line 48
    .line 49
    move-wide v9, v7

    .line 50
    :goto_0
    cmp-long v4, v9, v5

    .line 51
    .line 52
    if-gez v4, :cond_2

    .line 53
    .line 54
    sub-long v11, v5, v9

    .line 55
    .line 56
    :try_start_0
    invoke-virtual {p0, v11, v12}, Ljava/io/InputStream;->skip(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v11

    .line 60
    cmp-long v4, v11, v7

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    add-long/2addr v9, v11

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move v4, v2

    .line 69
    :goto_1
    if-ge v4, p1, :cond_3

    .line 70
    .line 71
    sub-int v5, p1, v4

    .line 72
    .line 73
    invoke-virtual {p0, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 74
    .line 75
    .line 76
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-lez v5, :cond_3

    .line 78
    .line 79
    add-int/2addr v4, v5

    .line 80
    goto :goto_1

    .line 81
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 88
    .line 89
    .line 90
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 91
    .line 92
    if-ne v0, p0, :cond_4

    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_4
    move-object p1, v0

    .line 96
    :goto_3
    check-cast p1, [B

    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-array p1, v3, [C

    .line 103
    .line 104
    const/16 v0, 0x7c

    .line 105
    .line 106
    aput-char v0, p1, v2

    .line 107
    .line 108
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Ljava/lang/String;

    .line 123
    .line 124
    const-string v0, "plurals"

    .line 125
    .line 126
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    const/4 v3, 0x6

    .line 131
    const/16 v4, 0xa

    .line 132
    .line 133
    const-string v5, ","

    .line 134
    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    sget-object p1, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->SimpleStringFormatRegex:Lkotlin/text/Regex;

    .line 138
    .line 139
    filled-new-array {v5}, [Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p0, p1, v3}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    const/16 v0, 0x10

    .line 156
    .line 157
    if-ge p1, v0, :cond_5

    .line 158
    .line 159
    move p1, v0

    .line 160
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 161
    .line 162
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Ljava/lang/String;

    .line 180
    .line 181
    const/16 v4, 0x3a

    .line 182
    .line 183
    invoke-static {p1, v4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-static {v4, v2, v3, p1}, Lkotlin/text/StringsKt;->indexOf$default(CIILjava/lang/CharSequence;)I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    const/4 v6, -0x1

    .line 192
    if-ne v4, v6, :cond_6

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    :goto_5
    sget-object v4, Lorg/jetbrains/compose/resources/plural/PluralCategory;->Companion:Lokio/Path$Companion;

    .line 206
    .line 207
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    sget-object v4, Lorg/jetbrains/compose/resources/plural/PluralCategory;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 211
    .line 212
    invoke-virtual {v4}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_8

    .line 221
    .line 222
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    move-object v7, v6

    .line 227
    check-cast v7, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 228
    .line 229
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-static {v7, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_7

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_8
    move-object v6, v1

    .line 241
    :goto_6
    check-cast v6, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    sget-object v4, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 247
    .line 248
    invoke-static {v4, p1, v2, v3}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;II)[B

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    new-instance v4, Lkotlin/Pair;

    .line 257
    .line 258
    invoke-direct {v4, v6, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_9
    new-instance p0, Lorg/jetbrains/compose/resources/StringItem$Plurals;

    .line 274
    .line 275
    invoke-direct {p0, v0}, Lorg/jetbrains/compose/resources/StringItem$Plurals;-><init>(Ljava/util/LinkedHashMap;)V

    .line 276
    .line 277
    .line 278
    return-object p0

    .line 279
    :cond_a
    const-string/jumbo v0, "string-array"

    .line 280
    .line 281
    .line 282
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_c

    .line 287
    .line 288
    sget-object p1, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->SimpleStringFormatRegex:Lkotlin/text/Regex;

    .line 289
    .line 290
    filled-new-array {v5}, [Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-static {p0, p1, v3}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    new-instance p1, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .line 306
    .line 307
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_b

    .line 316
    .line 317
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Ljava/lang/String;

    .line 322
    .line 323
    sget-object v1, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 324
    .line 325
    invoke-static {v1, v0, v2, v3}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;II)[B

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_b
    new-instance p0, Lorg/jetbrains/compose/resources/StringItem$Array;

    .line 338
    .line 339
    invoke-direct {p0, p1}, Lorg/jetbrains/compose/resources/StringItem$Array;-><init>(Ljava/util/ArrayList;)V

    .line 340
    .line 341
    .line 342
    return-object p0

    .line 343
    :cond_c
    sget-object p1, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->SimpleStringFormatRegex:Lkotlin/text/Regex;

    .line 344
    .line 345
    new-instance p1, Lorg/jetbrains/compose/resources/StringItem$Value;

    .line 346
    .line 347
    sget-object v0, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 348
    .line 349
    invoke-static {v0, p0, v2, v3}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;II)[B

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-direct {p1, p0}, Lorg/jetbrains/compose/resources/StringItem$Value;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    return-object p1
.end method
