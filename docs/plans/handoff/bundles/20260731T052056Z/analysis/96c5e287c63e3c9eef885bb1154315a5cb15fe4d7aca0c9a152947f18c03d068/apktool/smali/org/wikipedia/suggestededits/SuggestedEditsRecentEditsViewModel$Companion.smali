.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static filterOresScores(Ljava/util/List;Z)Ljava/util/List;
    .locals 8

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getDAMAGING_GROUP$cp()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 38
    .line 39
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getGOODFAITH_GROUP$cp()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 80
    .line 81
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 90
    .line 91
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/Iterable;

    .line 96
    .line 97
    instance-of v3, v1, Ljava/util/Collection;

    .line 98
    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    move-object v3, v1

    .line 102
    check-cast v3, Ljava/util/Collection;

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_e

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Ljava/lang/String;

    .line 127
    .line 128
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 135
    .line 136
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Ljava/lang/Iterable;

    .line 141
    .line 142
    new-instance v3, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_5

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    move-object v5, v4

    .line 162
    check-cast v5, Ljava/lang/String;

    .line 163
    .line 164
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_4

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_6

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Ljava/lang/String;

    .line 198
    .line 199
    sget-object v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;->find(Ljava/lang/String;)Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    :cond_7
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_8

    .line 226
    .line 227
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    move-object v4, v3

    .line 232
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 233
    .line 234
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->getOres()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    if-eqz v4, :cond_7

    .line 239
    .line 240
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_e

    .line 258
    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    move-object v4, v3

    .line 264
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 265
    .line 266
    new-instance v5, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-eqz v7, :cond_a

    .line 284
    .line 285
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    check-cast v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 290
    .line 291
    invoke-virtual {v7}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getValue()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_a
    const/4 v6, 0x0

    .line 300
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->getOres()Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    if-eqz p1, :cond_b

    .line 305
    .line 306
    if-eqz v4, :cond_c

    .line 307
    .line 308
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;->damaging:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;

    .line 309
    .line 310
    if-eqz v4, :cond_c

    .line 311
    .line 312
    iget v6, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;->trueProb:F

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_b
    if-eqz v4, :cond_c

    .line 316
    .line 317
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresResult;->goodfaith:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;

    .line 318
    .line 319
    if-eqz v4, :cond_c

    .line 320
    .line 321
    iget v6, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$OresItem;->trueProb:F

    .line 322
    .line 323
    :cond_c
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    if-eqz v5, :cond_9

    .line 332
    .line 333
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    check-cast v5, Ljava/lang/String;

    .line 338
    .line 339
    const-string/jumbo v7, "|"

    .line 340
    .line 341
    .line 342
    filled-new-array {v7}, [Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-static {v5, v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    check-cast v7, Ljava/lang/String;

    .line 355
    .line 356
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    cmpl-float v7, v6, v7

    .line 361
    .line 362
    if-ltz v7, :cond_d

    .line 363
    .line 364
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    check-cast v5, Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    cmpg-float v5, v6, v5

    .line 375
    .line 376
    if-gtz v5, :cond_d

    .line 377
    .line 378
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_5

    .line 382
    :cond_e
    :goto_8
    return-object p0
.end method

.method public static filtersCount()I
    .locals 9

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0xa

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    move-object v4, v2

    .line 31
    check-cast v4, Ljava/lang/String;

    .line 32
    .line 33
    sget-object v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getUSER_REGISTRATION_GROUP$cp()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    new-instance v6, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 66
    .line 67
    invoke-virtual {v7}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_3

    .line 80
    .line 81
    sget-object v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getUSER_EXPERIENCE_GROUP$cp()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    new-instance v6, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_2

    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 114
    .line 115
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_0

    .line 128
    .line 129
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getDEFAULT_FILTER_USER_STATUS$cp()Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Ljava/lang/Iterable;

    .line 143
    .line 144
    new-instance v2, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_5

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 168
    .line 169
    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_5
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Ljava/lang/Iterable;

    .line 182
    .line 183
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Ljava/lang/Iterable;

    .line 192
    .line 193
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 202
    .line 203
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Ljava/lang/Iterable;

    .line 208
    .line 209
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Ljava/lang/Iterable;

    .line 214
    .line 215
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-eqz v4, :cond_a

    .line 233
    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    move-object v5, v4

    .line 239
    check-cast v5, Ljava/lang/String;

    .line 240
    .line 241
    sget-object v6, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getGOODFAITH_GROUP$cp()Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    new-instance v7, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-eqz v8, :cond_7

    .line 268
    .line 269
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    check-cast v8, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 274
    .line 275
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_7
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-nez v6, :cond_9

    .line 288
    .line 289
    sget-object v6, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 290
    .line 291
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getDAMAGING_GROUP$cp()Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    new-instance v7, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .line 306
    .line 307
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    if-eqz v8, :cond_8

    .line 316
    .line 317
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    check-cast v8, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 322
    .line 323
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_8
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    if-eqz v5, :cond_6

    .line 336
    .line 337
    :cond_9
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_a
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 342
    .line 343
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Ljava/lang/Iterable;

    .line 348
    .line 349
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    check-cast v4, Ljava/lang/Iterable;

    .line 354
    .line 355
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    sget-object v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getDEFAULT_FILTER_OTHERS$cp()Ljava/util/Set;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    check-cast v4, Ljava/lang/Iterable;

    .line 369
    .line 370
    new-instance v5, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    if-eqz v4, :cond_b

    .line 388
    .line 389
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    check-cast v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 394
    .line 395
    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_b
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    check-cast v3, Ljava/lang/Iterable;

    .line 408
    .line 409
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    add-int/2addr v1, v0

    .line 422
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    add-int/2addr v0, v1

    .line 427
    return v0
.end method

.method public static synthetic getRecentEditsCall$default(Lorg/wikipedia/dataclient/WikiSite;ILj$/time/Instant;Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/io/Serializable;
    .locals 8

    .line 1
    and-int/lit8 v0, p6, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 p1, 0xa

    .line 6
    .line 7
    :cond_0
    move v2, p1

    .line 8
    and-int/lit8 p1, p6, 0x4

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    and-int/lit8 p1, p6, 0x8

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const-string p1, "older"

    .line 25
    .line 26
    :goto_0
    move-object v4, p1

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const-string p1, "newer"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    and-int/lit8 p1, p6, 0x10

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    :cond_3
    move-object v5, p3

    .line 37
    and-int/lit8 p1, p6, 0x20

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    new-instance p4, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_4
    move-object v6, p4

    .line 47
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;

    .line 48
    .line 49
    move-object v1, p0

    .line 50
    move-object v7, p5

    .line 51
    invoke-virtual/range {v0 .. v7}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->getRecentEditsCall(Lorg/wikipedia/dataclient/WikiSite;ILj$/time/Instant;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method


# virtual methods
.method public final getRecentEditsCall(Lorg/wikipedia/dataclient/WikiSite;ILj$/time/Instant;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 27

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->label:I

    .line 20
    .line 21
    :goto_0
    move-object v9, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;

    .line 24
    .line 25
    move-object/from16 v2, p0

    .line 26
    .line 27
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v2, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->label:I

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 39
    .line 40
    const/4 v12, 0x2

    .line 41
    const/4 v13, 0x1

    .line 42
    const/16 v14, 0xa

    .line 43
    .line 44
    const/4 v15, 0x0

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    if-eq v2, v13, :cond_2

    .line 48
    .line 49
    if-ne v2, v12, :cond_1

    .line 50
    .line 51
    iget-object v1, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$8:Ljava/util/List;

    .line 52
    .line 53
    iget-object v2, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$7:Ljava/util/List;

    .line 54
    .line 55
    iget-object v3, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 56
    .line 57
    iget-object v4, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$4:Ljava/util/List;

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object v8, v15

    .line 63
    goto/16 :goto_12

    .line 64
    .line 65
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v15

    .line 71
    :cond_2
    iget v2, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->I$0:I

    .line 72
    .line 73
    iget-object v3, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$5:Lorg/wikipedia/dataclient/Service;

    .line 74
    .line 75
    iget-object v4, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$4:Ljava/util/List;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move-object/from16 v26, v4

    .line 81
    .line 82
    move-object v4, v0

    .line 83
    move-object/from16 v0, v26

    .line 84
    .line 85
    goto/16 :goto_b

    .line 86
    .line 87
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 91
    .line 92
    invoke-static/range {p1 .. p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual/range {p3 .. p3}, Lj$/time/Instant;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 104
    .line 105
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget-object v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getLATEST_REVISIONS_GROUP$cp()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-static {v3, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_4

    .line 136
    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 142
    .line 143
    invoke-virtual {v6}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-nez v3, :cond_5

    .line 156
    .line 157
    sget-object v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->LATEST_REVISION:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 158
    .line 159
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_5

    .line 168
    .line 169
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->NOT_LATEST_REVISION:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 170
    .line 171
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getValue()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object v6, v0

    .line 176
    goto :goto_3

    .line 177
    :cond_5
    move-object v6, v15

    .line 178
    :goto_3
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 179
    .line 180
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    sget-object v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getBOT_EDITS_GROUP$cp()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    new-instance v7, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-static {v5, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-eqz v8, :cond_6

    .line 216
    .line 217
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    check-cast v8, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 222
    .line 223
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_6
    invoke-interface {v0, v7}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-nez v5, :cond_8

    .line 236
    .line 237
    sget-object v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->BOT:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 238
    .line 239
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-eqz v7, :cond_7

    .line 248
    .line 249
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getValue()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    :cond_7
    sget-object v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->HUMAN:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 257
    .line 258
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    if-eqz v7, :cond_8

    .line 267
    .line 268
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getValue()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    :cond_8
    sget-object v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getMINOR_EDITS_GROUP$cp()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    new-instance v7, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-static {v5, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    if-eqz v8, :cond_9

    .line 302
    .line 303
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    check-cast v8, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 308
    .line 309
    invoke-virtual {v8}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_9
    invoke-interface {v0, v7}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-nez v5, :cond_b

    .line 322
    .line 323
    sget-object v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->MINOR_EDITS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 324
    .line 325
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    if-eqz v7, :cond_a

    .line 334
    .line 335
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getValue()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    :cond_a
    sget-object v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->NON_MINOR_EDITS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 343
    .line 344
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v7

    .line 352
    if-eqz v7, :cond_b

    .line 353
    .line 354
    invoke-virtual {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getValue()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    :cond_b
    check-cast v0, Ljava/lang/Iterable;

    .line 362
    .line 363
    instance-of v5, v0, Ljava/util/Collection;

    .line 364
    .line 365
    if-eqz v5, :cond_c

    .line 366
    .line 367
    move-object v5, v0

    .line 368
    check-cast v5, Ljava/util/Collection;

    .line 369
    .line 370
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-eqz v5, :cond_c

    .line 375
    .line 376
    goto/16 :goto_a

    .line 377
    .line 378
    :cond_c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-eqz v5, :cond_11

    .line 387
    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    check-cast v5, Ljava/lang/String;

    .line 393
    .line 394
    sget-object v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 395
    .line 396
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getGOODFAITH_GROUP$cp()Ljava/util/List;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    new-instance v8, Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 406
    .line 407
    .line 408
    move-result v12

    .line 409
    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    if-eqz v12, :cond_d

    .line 421
    .line 422
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v12

    .line 426
    check-cast v12, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 427
    .line 428
    invoke-virtual {v12}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v12

    .line 432
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto :goto_7

    .line 436
    :cond_d
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-nez v7, :cond_10

    .line 441
    .line 442
    sget-object v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 443
    .line 444
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getDAMAGING_GROUP$cp()Ljava/util/List;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    new-instance v8, Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 454
    .line 455
    .line 456
    move-result v12

    .line 457
    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 458
    .line 459
    .line 460
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v12

    .line 468
    if-eqz v12, :cond_e

    .line 469
    .line 470
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v12

    .line 474
    check-cast v12, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 475
    .line 476
    invoke-virtual {v12}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_e
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    if-eqz v5, :cond_f

    .line 489
    .line 490
    goto :goto_9

    .line 491
    :cond_f
    const/4 v12, 0x2

    .line 492
    goto :goto_6

    .line 493
    :cond_10
    :goto_9
    const-string v0, "oresreview"

    .line 494
    .line 495
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    :cond_11
    :goto_a
    const/16 v20, 0x0

    .line 499
    .line 500
    const/16 v21, 0x3e

    .line 501
    .line 502
    const-string/jumbo v17, "|"

    .line 503
    .line 504
    .line 505
    const/16 v18, 0x0

    .line 506
    .line 507
    const/16 v19, 0x0

    .line 508
    .line 509
    move-object/from16 v16, v3

    .line 510
    .line 511
    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v7

    .line 515
    move-object/from16 v0, p6

    .line 516
    .line 517
    iput-object v0, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$4:Ljava/util/List;

    .line 518
    .line 519
    iput-object v2, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$5:Lorg/wikipedia/dataclient/Service;

    .line 520
    .line 521
    move/from16 v3, p2

    .line 522
    .line 523
    iput v3, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->I$0:I

    .line 524
    .line 525
    iput v13, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->label:I

    .line 526
    .line 527
    move-object/from16 v5, p4

    .line 528
    .line 529
    move-object/from16 v8, p5

    .line 530
    .line 531
    invoke-interface/range {v2 .. v9}, Lorg/wikipedia/dataclient/Service;->getRecentEdits(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    if-ne v4, v1, :cond_12

    .line 536
    .line 537
    goto/16 :goto_11

    .line 538
    .line 539
    :cond_12
    move-object v3, v2

    .line 540
    move/from16 v2, p2

    .line 541
    .line 542
    :goto_b
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 543
    .line 544
    iget-object v5, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 545
    .line 546
    if-eqz v5, :cond_13

    .line 547
    .line 548
    iget-object v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->recentChanges:Ljava/util/List;

    .line 549
    .line 550
    goto :goto_c

    .line 551
    :cond_13
    move-object v5, v15

    .line 552
    :goto_c
    if-nez v5, :cond_14

    .line 553
    .line 554
    move-object v5, v11

    .line 555
    :cond_14
    invoke-static {v5, v13}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->filterOresScores(Ljava/util/List;Z)Ljava/util/List;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    invoke-static {v6, v10}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->filterOresScores(Ljava/util/List;Z)Ljava/util/List;

    .line 560
    .line 561
    .line 562
    move-result-object v6

    .line 563
    new-instance v7, Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .line 567
    .line 568
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 569
    .line 570
    .line 571
    move-result-object v8

    .line 572
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 573
    .line 574
    .line 575
    move-result v12

    .line 576
    if-eqz v12, :cond_16

    .line 577
    .line 578
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v12

    .line 582
    move-object v10, v12

    .line 583
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 584
    .line 585
    iget-boolean v10, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    .line 586
    .line 587
    if-nez v10, :cond_15

    .line 588
    .line 589
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    :cond_15
    const/4 v10, 0x0

    .line 593
    goto :goto_d

    .line 594
    :cond_16
    new-instance v8, Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 597
    .line 598
    .line 599
    move-result v10

    .line 600
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 608
    .line 609
    .line 610
    move-result v10

    .line 611
    if-eqz v10, :cond_17

    .line 612
    .line 613
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v10

    .line 617
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 618
    .line 619
    iget-object v10, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->user:Ljava/lang/String;

    .line 620
    .line 621
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    goto :goto_e

    .line 625
    :cond_17
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 630
    .line 631
    .line 632
    move-result-object v7

    .line 633
    new-instance v8, Ljava/util/ArrayList;

    .line 634
    .line 635
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .line 637
    .line 638
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 639
    .line 640
    .line 641
    move-result-object v7

    .line 642
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 643
    .line 644
    .line 645
    move-result v10

    .line 646
    if-eqz v10, :cond_1a

    .line 647
    .line 648
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v10

    .line 652
    move-object v12, v10

    .line 653
    check-cast v12, Ljava/lang/String;

    .line 654
    .line 655
    new-instance v13, Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 658
    .line 659
    .line 660
    move-result v15

    .line 661
    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 662
    .line 663
    .line 664
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 665
    .line 666
    .line 667
    move-result-object v15

    .line 668
    :goto_10
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 669
    .line 670
    .line 671
    move-result v18

    .line 672
    if-eqz v18, :cond_18

    .line 673
    .line 674
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v18

    .line 678
    move-object/from16 v14, v18

    .line 679
    .line 680
    check-cast v14, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 681
    .line 682
    iget-object v14, v14, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    .line 683
    .line 684
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    const/16 v14, 0xa

    .line 688
    .line 689
    goto :goto_10

    .line 690
    :cond_18
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v12

    .line 694
    if-nez v12, :cond_19

    .line 695
    .line 696
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    :cond_19
    const/4 v13, 0x1

    .line 700
    const/16 v14, 0xa

    .line 701
    .line 702
    const/4 v15, 0x0

    .line 703
    goto :goto_f

    .line 704
    :cond_1a
    const/4 v7, 0x0

    .line 705
    const/16 v10, 0x3e

    .line 706
    .line 707
    const-string/jumbo v12, "|"

    .line 708
    .line 709
    .line 710
    const/4 v13, 0x0

    .line 711
    const/4 v14, 0x0

    .line 712
    move-object/from16 p5, v7

    .line 713
    .line 714
    move-object/from16 p1, v8

    .line 715
    .line 716
    move/from16 p6, v10

    .line 717
    .line 718
    move-object/from16 p2, v12

    .line 719
    .line 720
    move-object/from16 p3, v13

    .line 721
    .line 722
    move-object/from16 p4, v14

    .line 723
    .line 724
    invoke-static/range {p1 .. p6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v7

    .line 728
    iput-object v0, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$4:Ljava/util/List;

    .line 729
    .line 730
    const/4 v8, 0x0

    .line 731
    iput-object v8, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$5:Lorg/wikipedia/dataclient/Service;

    .line 732
    .line 733
    iput-object v4, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 734
    .line 735
    iput-object v5, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$7:Ljava/util/List;

    .line 736
    .line 737
    iput-object v6, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->L$8:Ljava/util/List;

    .line 738
    .line 739
    iput v2, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->I$0:I

    .line 740
    .line 741
    const/4 v2, 0x2

    .line 742
    iput v2, v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1;->label:I

    .line 743
    .line 744
    invoke-interface {v3, v7, v9}, Lorg/wikipedia/dataclient/Service;->userInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    if-ne v2, v1, :cond_1b

    .line 749
    .line 750
    :goto_11
    return-object v1

    .line 751
    :cond_1b
    move-object v3, v4

    .line 752
    move-object v1, v6

    .line 753
    move-object v4, v0

    .line 754
    move-object v0, v2

    .line 755
    move-object v2, v5

    .line 756
    :goto_12
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 757
    .line 758
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 759
    .line 760
    if-eqz v0, :cond_1d

    .line 761
    .line 762
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->users:Ljava/util/List;

    .line 763
    .line 764
    if-nez v0, :cond_1c

    .line 765
    .line 766
    goto :goto_13

    .line 767
    :cond_1c
    move-object v11, v0

    .line 768
    :cond_1d
    :goto_13
    invoke-interface {v4, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 769
    .line 770
    .line 771
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 772
    .line 773
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    .line 775
    .line 776
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getUSER_EXPERIENCE_GROUP$cp()Ljava/util/List;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    new-instance v5, Ljava/util/ArrayList;

    .line 781
    .line 782
    const/16 v6, 0xa

    .line 783
    .line 784
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 785
    .line 786
    .line 787
    move-result v7

    .line 788
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 789
    .line 790
    .line 791
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 796
    .line 797
    .line 798
    move-result v6

    .line 799
    if-eqz v6, :cond_1e

    .line 800
    .line 801
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v6

    .line 805
    check-cast v6, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 806
    .line 807
    invoke-virtual {v6}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v6

    .line 811
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    goto :goto_14

    .line 815
    :cond_1e
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 816
    .line 817
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    check-cast v0, Ljava/lang/Iterable;

    .line 822
    .line 823
    instance-of v6, v0, Ljava/util/Collection;

    .line 824
    .line 825
    if-eqz v6, :cond_1f

    .line 826
    .line 827
    move-object v6, v0

    .line 828
    check-cast v6, Ljava/util/Collection;

    .line 829
    .line 830
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 831
    .line 832
    .line 833
    move-result v6

    .line 834
    if-eqz v6, :cond_1f

    .line 835
    .line 836
    goto/16 :goto_1f

    .line 837
    .line 838
    :cond_1f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 843
    .line 844
    .line 845
    move-result v6

    .line 846
    if-eqz v6, :cond_32

    .line 847
    .line 848
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v6

    .line 852
    check-cast v6, Ljava/lang/String;

    .line 853
    .line 854
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    move-result v6

    .line 858
    if-eqz v6, :cond_20

    .line 859
    .line 860
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 861
    .line 862
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    check-cast v0, Ljava/lang/Iterable;

    .line 867
    .line 868
    new-instance v6, Ljava/util/ArrayList;

    .line 869
    .line 870
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .line 872
    .line 873
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    :cond_21
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 878
    .line 879
    .line 880
    move-result v7

    .line 881
    if-eqz v7, :cond_22

    .line 882
    .line 883
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v7

    .line 887
    move-object v9, v7

    .line 888
    check-cast v9, Ljava/lang/String;

    .line 889
    .line 890
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    move-result v9

    .line 894
    if-eqz v9, :cond_21

    .line 895
    .line 896
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    goto :goto_15

    .line 900
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    .line 901
    .line 902
    const/16 v5, 0xa

    .line 903
    .line 904
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 905
    .line 906
    .line 907
    move-result v7

    .line 908
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 912
    .line 913
    .line 914
    move-result-object v5

    .line 915
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 916
    .line 917
    .line 918
    move-result v6

    .line 919
    if-eqz v6, :cond_23

    .line 920
    .line 921
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v6

    .line 925
    check-cast v6, Ljava/lang/String;

    .line 926
    .line 927
    sget-object v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 928
    .line 929
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 930
    .line 931
    .line 932
    invoke-static {v6}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;->find(Ljava/lang/String;)Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 933
    .line 934
    .line 935
    move-result-object v6

    .line 936
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    goto :goto_16

    .line 940
    :cond_23
    new-instance v5, Ljava/util/ArrayList;

    .line 941
    .line 942
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .line 944
    .line 945
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 946
    .line 947
    .line 948
    move-result-object v6

    .line 949
    :cond_24
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 950
    .line 951
    .line 952
    move-result v7

    .line 953
    if-eqz v7, :cond_25

    .line 954
    .line 955
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v7

    .line 959
    move-object v9, v7

    .line 960
    check-cast v9, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 961
    .line 962
    iget-boolean v9, v9, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    .line 963
    .line 964
    if-nez v9, :cond_24

    .line 965
    .line 966
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    goto :goto_17

    .line 970
    :cond_25
    new-instance v6, Ljava/util/ArrayList;

    .line 971
    .line 972
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 976
    .line 977
    .line 978
    move-result-object v5

    .line 979
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 980
    .line 981
    .line 982
    move-result v7

    .line 983
    if-eqz v7, :cond_2f

    .line 984
    .line 985
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v7

    .line 989
    move-object v9, v7

    .line 990
    check-cast v9, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 991
    .line 992
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 993
    .line 994
    .line 995
    move-result-object v10

    .line 996
    :cond_26
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 997
    .line 998
    .line 999
    move-result v11

    .line 1000
    if-eqz v11, :cond_27

    .line 1001
    .line 1002
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v11

    .line 1006
    move-object v12, v11

    .line 1007
    check-cast v12, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 1008
    .line 1009
    iget-object v12, v12, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    .line 1010
    .line 1011
    iget-object v13, v9, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->user:Ljava/lang/String;

    .line 1012
    .line 1013
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v12

    .line 1017
    if-eqz v12, :cond_26

    .line 1018
    .line 1019
    goto :goto_19

    .line 1020
    :cond_27
    move-object v11, v8

    .line 1021
    :goto_19
    check-cast v11, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 1022
    .line 1023
    if-eqz v11, :cond_2c

    .line 1024
    .line 1025
    iget v9, v11, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    .line 1026
    .line 1027
    invoke-virtual {v11}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getRegistrationDate()Ljava/util/Date;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v10

    .line 1031
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v11

    .line 1035
    invoke-static {v11}, Lj$/util/DesugarCalendar;->toInstant(Ljava/util/Calendar;)Lj$/time/Instant;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v11

    .line 1039
    invoke-static {v10}, Lj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v10

    .line 1043
    invoke-static {v10, v11}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v10

    .line 1047
    invoke-virtual {v10}, Lj$/time/Duration;->toDays()J

    .line 1048
    .line 1049
    .line 1050
    move-result-wide v10

    .line 1051
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v12

    .line 1055
    const/4 v13, 0x0

    .line 1056
    :goto_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1057
    .line 1058
    .line 1059
    move-result v14

    .line 1060
    if-eqz v14, :cond_2d

    .line 1061
    .line 1062
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v13

    .line 1066
    check-cast v13, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 1067
    .line 1068
    invoke-virtual {v13}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getValue()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v13

    .line 1072
    const-string/jumbo v14, "|"

    .line 1073
    .line 1074
    .line 1075
    filled-new-array {v14}, [Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v14

    .line 1079
    invoke-static {v13, v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v13

    .line 1083
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v14

    .line 1087
    check-cast v14, Ljava/lang/CharSequence;

    .line 1088
    .line 1089
    const-string v15, ","

    .line 1090
    .line 1091
    filled-new-array {v15}, [Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v8

    .line 1095
    invoke-static {v14, v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v8

    .line 1099
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v14

    .line 1103
    check-cast v14, Ljava/lang/String;

    .line 1104
    .line 1105
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1106
    .line 1107
    .line 1108
    move-result v14

    .line 1109
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v8

    .line 1113
    check-cast v8, Ljava/lang/String;

    .line 1114
    .line 1115
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1116
    .line 1117
    .line 1118
    move-result v8

    .line 1119
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v13

    .line 1123
    check-cast v13, Ljava/lang/CharSequence;

    .line 1124
    .line 1125
    filled-new-array {v15}, [Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v15

    .line 1129
    invoke-static {v13, v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v13

    .line 1133
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v15

    .line 1137
    check-cast v15, Ljava/lang/String;

    .line 1138
    .line 1139
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1140
    .line 1141
    .line 1142
    move-result-wide v20

    .line 1143
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v13

    .line 1147
    check-cast v13, Ljava/lang/String;

    .line 1148
    .line 1149
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1150
    .line 1151
    .line 1152
    move-result-wide v22

    .line 1153
    const/4 v13, -0x1

    .line 1154
    if-ne v8, v13, :cond_2a

    .line 1155
    .line 1156
    const-wide/16 v24, -0x1

    .line 1157
    .line 1158
    cmp-long v13, v22, v24

    .line 1159
    .line 1160
    if-nez v13, :cond_2a

    .line 1161
    .line 1162
    if-lt v9, v14, :cond_29

    .line 1163
    .line 1164
    cmp-long v8, v10, v20

    .line 1165
    .line 1166
    if-ltz v8, :cond_29

    .line 1167
    .line 1168
    :cond_28
    :goto_1b
    const/4 v13, 0x1

    .line 1169
    goto :goto_1c

    .line 1170
    :cond_29
    const/4 v13, 0x0

    .line 1171
    goto :goto_1c

    .line 1172
    :cond_2a
    if-nez v14, :cond_28

    .line 1173
    .line 1174
    const-wide/16 v24, 0x0

    .line 1175
    .line 1176
    cmp-long v13, v20, v24

    .line 1177
    .line 1178
    if-nez v13, :cond_28

    .line 1179
    .line 1180
    if-gt v14, v9, :cond_29

    .line 1181
    .line 1182
    if-gt v9, v8, :cond_29

    .line 1183
    .line 1184
    cmp-long v8, v20, v10

    .line 1185
    .line 1186
    if-gtz v8, :cond_29

    .line 1187
    .line 1188
    cmp-long v8, v10, v22

    .line 1189
    .line 1190
    if-gtz v8, :cond_29

    .line 1191
    .line 1192
    goto :goto_1b

    .line 1193
    :goto_1c
    if-eqz v13, :cond_2b

    .line 1194
    .line 1195
    goto :goto_1d

    .line 1196
    :cond_2b
    const/4 v8, 0x0

    .line 1197
    goto/16 :goto_1a

    .line 1198
    .line 1199
    :cond_2c
    const/4 v13, 0x0

    .line 1200
    :cond_2d
    :goto_1d
    if-eqz v13, :cond_2e

    .line 1201
    .line 1202
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    .line 1204
    .line 1205
    :cond_2e
    const/4 v8, 0x0

    .line 1206
    goto/16 :goto_18

    .line 1207
    .line 1208
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    .line 1209
    .line 1210
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    .line 1212
    .line 1213
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v1

    .line 1217
    :cond_30
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1218
    .line 1219
    .line 1220
    move-result v4

    .line 1221
    if-eqz v4, :cond_31

    .line 1222
    .line 1223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v4

    .line 1227
    move-object v5, v4

    .line 1228
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 1229
    .line 1230
    iget-boolean v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    .line 1231
    .line 1232
    if-eqz v5, :cond_30

    .line 1233
    .line 1234
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    goto :goto_1e

    .line 1238
    :cond_31
    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v1

    .line 1242
    :cond_32
    :goto_1f
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1243
    .line 1244
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    sget-object v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 1249
    .line 1250
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1251
    .line 1252
    .line 1253
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getUSER_REGISTRATION_GROUP$cp()Ljava/util/List;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v4

    .line 1257
    new-instance v5, Ljava/util/ArrayList;

    .line 1258
    .line 1259
    const/16 v6, 0xa

    .line 1260
    .line 1261
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1262
    .line 1263
    .line 1264
    move-result v7

    .line 1265
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1266
    .line 1267
    .line 1268
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v4

    .line 1272
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v6

    .line 1276
    if-eqz v6, :cond_33

    .line 1277
    .line 1278
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v6

    .line 1282
    check-cast v6, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 1283
    .line 1284
    invoke-virtual {v6}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v6

    .line 1288
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    .line 1290
    .line 1291
    goto :goto_20

    .line 1292
    :cond_33
    sget-object v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 1293
    .line 1294
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1295
    .line 1296
    .line 1297
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getUSER_EXPERIENCE_GROUP$cp()Ljava/util/List;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v4

    .line 1301
    new-instance v6, Ljava/util/ArrayList;

    .line 1302
    .line 1303
    const/16 v7, 0xa

    .line 1304
    .line 1305
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1306
    .line 1307
    .line 1308
    move-result v7

    .line 1309
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1310
    .line 1311
    .line 1312
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v4

    .line 1316
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1317
    .line 1318
    .line 1319
    move-result v7

    .line 1320
    if-eqz v7, :cond_34

    .line 1321
    .line 1322
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v7

    .line 1326
    check-cast v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 1327
    .line 1328
    invoke-virtual {v7}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v7

    .line 1332
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    .line 1334
    .line 1335
    goto :goto_21

    .line 1336
    :cond_34
    invoke-interface {v0, v5}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v4

    .line 1340
    if-nez v4, :cond_3c

    .line 1341
    .line 1342
    sget-object v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->UNREGISTERED:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 1343
    .line 1344
    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v4

    .line 1348
    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v4

    .line 1352
    if-eqz v4, :cond_37

    .line 1353
    .line 1354
    move-object v4, v0

    .line 1355
    check-cast v4, Ljava/lang/Iterable;

    .line 1356
    .line 1357
    instance-of v5, v4, Ljava/util/Collection;

    .line 1358
    .line 1359
    if-eqz v5, :cond_35

    .line 1360
    .line 1361
    move-object v5, v4

    .line 1362
    check-cast v5, Ljava/util/Collection;

    .line 1363
    .line 1364
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 1365
    .line 1366
    .line 1367
    move-result v5

    .line 1368
    if-eqz v5, :cond_35

    .line 1369
    .line 1370
    goto :goto_22

    .line 1371
    :cond_35
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v4

    .line 1375
    :cond_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1376
    .line 1377
    .line 1378
    move-result v5

    .line 1379
    if-eqz v5, :cond_37

    .line 1380
    .line 1381
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v5

    .line 1385
    check-cast v5, Ljava/lang/String;

    .line 1386
    .line 1387
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1388
    .line 1389
    .line 1390
    move-result v5

    .line 1391
    if-eqz v5, :cond_36

    .line 1392
    .line 1393
    goto :goto_25

    .line 1394
    :cond_37
    :goto_22
    sget-object v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->UNREGISTERED:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 1395
    .line 1396
    invoke-virtual {v4}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v4

    .line 1400
    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 1401
    .line 1402
    .line 1403
    move-result v0

    .line 1404
    if-eqz v0, :cond_3a

    .line 1405
    .line 1406
    new-instance v0, Ljava/util/ArrayList;

    .line 1407
    .line 1408
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .line 1410
    .line 1411
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v1

    .line 1415
    :cond_38
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1416
    .line 1417
    .line 1418
    move-result v4

    .line 1419
    if-eqz v4, :cond_39

    .line 1420
    .line 1421
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v4

    .line 1425
    move-object v5, v4

    .line 1426
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 1427
    .line 1428
    iget-boolean v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    .line 1429
    .line 1430
    if-eqz v5, :cond_38

    .line 1431
    .line 1432
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    .line 1434
    .line 1435
    goto :goto_23

    .line 1436
    :cond_39
    move-object v1, v0

    .line 1437
    goto :goto_25

    .line 1438
    :cond_3a
    new-instance v0, Ljava/util/ArrayList;

    .line 1439
    .line 1440
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1441
    .line 1442
    .line 1443
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v1

    .line 1447
    :cond_3b
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1448
    .line 1449
    .line 1450
    move-result v4

    .line 1451
    if-eqz v4, :cond_39

    .line 1452
    .line 1453
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v4

    .line 1457
    move-object v5, v4

    .line 1458
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 1459
    .line 1460
    iget-boolean v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->anon:Z

    .line 1461
    .line 1462
    if-nez v5, :cond_3b

    .line 1463
    .line 1464
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    .line 1466
    .line 1467
    goto :goto_24

    .line 1468
    :cond_3c
    :goto_25
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$$inlined$sortedByDescending$1;

    .line 1469
    .line 1470
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1471
    .line 1472
    .line 1473
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v0

    .line 1477
    new-instance v1, Lkotlin/Triple;

    .line 1478
    .line 1479
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->continuation:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;

    .line 1480
    .line 1481
    if-eqz v3, :cond_3d

    .line 1482
    .line 1483
    iget-object v15, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse$Continuation;->rcContinuation:Ljava/lang/String;

    .line 1484
    .line 1485
    goto :goto_26

    .line 1486
    :cond_3d
    const/4 v15, 0x0

    .line 1487
    :goto_26
    invoke-direct {v1, v0, v2, v15}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1488
    .line 1489
    .line 1490
    return-object v1
.end method
