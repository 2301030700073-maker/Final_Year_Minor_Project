.class public final synthetic Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/wikipedia/edit/Edit$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x5

    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 18
    .line 19
    sget-object v1, Lorg/wikipedia/dataclient/page/PageSummary$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/page/PageSummary$$serializer;

    .line 20
    .line 21
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_0
    move v0, v2

    .line 26
    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    .line 27
    .line 28
    sget-object v6, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 29
    .line 30
    const-class v9, Lorg/wikipedia/feed/model/ForYouCard;

    .line 31
    .line 32
    invoke-virtual {v6, v9}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    const-class v10, Lorg/wikipedia/feed/model/BasedOnInterestCard;

    .line 37
    .line 38
    invoke-virtual {v6, v10}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    const-class v11, Lorg/wikipedia/feed/model/BecauseYouReadCard;

    .line 43
    .line 44
    invoke-virtual {v6, v11}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    const-class v12, Lorg/wikipedia/feed/model/ContinueReadingCard;

    .line 49
    .line 50
    invoke-virtual {v6, v12}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    const-class v13, Lorg/wikipedia/feed/model/DiscoverCard;

    .line 55
    .line 56
    invoke-virtual {v6, v13}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    const-class v14, Lorg/wikipedia/feed/model/PlacesOfInterestCard;

    .line 61
    .line 62
    invoke-virtual {v6, v14}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    const-class v15, Lorg/wikipedia/feed/model/RandomCard;

    .line 67
    .line 68
    invoke-virtual {v6, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 69
    .line 70
    .line 71
    move-result-object v15

    .line 72
    move/from16 p0, v0

    .line 73
    .line 74
    const-class v0, Lorg/wikipedia/feed/model/SeeAllRecommendationCard;

    .line 75
    .line 76
    invoke-virtual {v6, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v6, 0x7

    .line 81
    move/from16 v16, v5

    .line 82
    .line 83
    new-array v5, v6, [Lkotlin/reflect/KClass;

    .line 84
    .line 85
    aput-object v10, v5, v7

    .line 86
    .line 87
    aput-object v11, v5, v8

    .line 88
    .line 89
    aput-object v12, v5, v16

    .line 90
    .line 91
    aput-object v13, v5, v4

    .line 92
    .line 93
    aput-object v14, v5, v3

    .line 94
    .line 95
    aput-object v15, v5, p0

    .line 96
    .line 97
    aput-object v0, v5, v1

    .line 98
    .line 99
    new-array v6, v6, [Lkotlinx/serialization/KSerializer;

    .line 100
    .line 101
    sget-object v0, Lorg/wikipedia/feed/model/BasedOnInterestCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/BasedOnInterestCard$$serializer;

    .line 102
    .line 103
    aput-object v0, v6, v7

    .line 104
    .line 105
    sget-object v0, Lorg/wikipedia/feed/model/BecauseYouReadCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/BecauseYouReadCard$$serializer;

    .line 106
    .line 107
    aput-object v0, v6, v8

    .line 108
    .line 109
    sget-object v0, Lorg/wikipedia/feed/model/ContinueReadingCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/ContinueReadingCard$$serializer;

    .line 110
    .line 111
    aput-object v0, v6, v16

    .line 112
    .line 113
    sget-object v0, Lorg/wikipedia/feed/model/DiscoverCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/DiscoverCard$$serializer;

    .line 114
    .line 115
    aput-object v0, v6, v4

    .line 116
    .line 117
    sget-object v0, Lorg/wikipedia/feed/model/PlacesOfInterestCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/PlacesOfInterestCard$$serializer;

    .line 118
    .line 119
    aput-object v0, v6, v3

    .line 120
    .line 121
    sget-object v0, Lorg/wikipedia/feed/model/RandomCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/RandomCard$$serializer;

    .line 122
    .line 123
    aput-object v0, v6, p0

    .line 124
    .line 125
    sget-object v0, Lorg/wikipedia/feed/model/SeeAllRecommendationCard$$serializer;->INSTANCE:Lorg/wikipedia/feed/model/SeeAllRecommendationCard$$serializer;

    .line 126
    .line 127
    aput-object v0, v6, v1

    .line 128
    .line 129
    new-array v7, v7, [Ljava/lang/annotation/Annotation;

    .line 130
    .line 131
    const-string v3, "org.wikipedia.feed.model.ForYouCard"

    .line 132
    .line 133
    move-object v4, v9

    .line 134
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    .line 135
    .line 136
    .line 137
    return-object v2

    .line 138
    :pswitch_1
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 139
    .line 140
    sget-object v1, Lorg/wikipedia/gallery/ImageInfo$$serializer;->INSTANCE:Lorg/wikipedia/gallery/ImageInfo$$serializer;

    .line 141
    .line 142
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :pswitch_2
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 147
    .line 148
    sget-object v1, Lorg/wikipedia/feed/didyouknow/DidYouKnowItem$$serializer;->INSTANCE:Lorg/wikipedia/feed/didyouknow/DidYouKnowItem$$serializer;

    .line 149
    .line 150
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    :pswitch_3
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 155
    .line 156
    sget-object v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;->INSTANCE:Lorg/wikipedia/feed/onthisday/OnThisDay$Event$$serializer;

    .line 157
    .line 158
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 159
    .line 160
    .line 161
    return-object v0

    .line 162
    :pswitch_4
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 163
    .line 164
    sget-object v1, Lorg/wikipedia/feed/news/NewsItem$$serializer;->INSTANCE:Lorg/wikipedia/feed/news/NewsItem$$serializer;

    .line 165
    .line 166
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 167
    .line 168
    .line 169
    return-object v0

    .line 170
    :pswitch_5
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 171
    .line 172
    sget-object v1, Lorg/wikipedia/feed/model/ForYouCard;->Companion:Lorg/wikipedia/feed/model/ForYouCard$Companion;

    .line 173
    .line 174
    invoke-virtual {v1}, Lorg/wikipedia/feed/model/ForYouCard$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 179
    .line 180
    .line 181
    return-object v0

    .line 182
    :pswitch_6
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 183
    .line 184
    sget-object v1, Lorg/wikipedia/feed/model/ForYouCard;->Companion:Lorg/wikipedia/feed/model/ForYouCard$Companion;

    .line 185
    .line 186
    invoke-virtual {v1}, Lorg/wikipedia/feed/model/ForYouCard$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :pswitch_7
    invoke-static {}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->values()[Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    new-instance v1, Lkotlinx/serialization/internal/EnumSerializer;

    .line 202
    .line 203
    const-string v2, "org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency"

    .line 204
    .line 205
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    .line 206
    .line 207
    .line 208
    return-object v1

    .line 209
    :pswitch_8
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 210
    .line 211
    sget-object v1, Lorg/wikipedia/feed/model/ForYouCard;->Companion:Lorg/wikipedia/feed/model/ForYouCard$Companion;

    .line 212
    .line 213
    invoke-virtual {v1}, Lorg/wikipedia/feed/model/ForYouCard$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 218
    .line 219
    .line 220
    return-object v0

    .line 221
    :pswitch_9
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 222
    .line 223
    sget-object v1, Lorg/wikipedia/feed/model/ForYouCard;->Companion:Lorg/wikipedia/feed/model/ForYouCard$Companion;

    .line 224
    .line 225
    invoke-virtual {v1}, Lorg/wikipedia/feed/model/ForYouCard$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 230
    .line 231
    .line 232
    return-object v0

    .line 233
    :pswitch_a
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 234
    .line 235
    sget-object v1, Lorg/wikipedia/feed/model/ForYouCard;->Companion:Lorg/wikipedia/feed/model/ForYouCard$Companion;

    .line 236
    .line 237
    invoke-virtual {v1}, Lorg/wikipedia/feed/model/ForYouCard$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 242
    .line 243
    .line 244
    return-object v0

    .line 245
    :pswitch_b
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 246
    .line 247
    sget-object v1, Lorg/wikipedia/feed/model/ForYouCard;->Companion:Lorg/wikipedia/feed/model/ForYouCard$Companion;

    .line 248
    .line 249
    invoke-virtual {v1}, Lorg/wikipedia/feed/model/ForYouCard$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 254
    .line 255
    .line 256
    return-object v0

    .line 257
    :pswitch_c
    move/from16 p0, v2

    .line 258
    .line 259
    move/from16 v16, v5

    .line 260
    .line 261
    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    .line 262
    .line 263
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 264
    .line 265
    const-class v5, Lorg/wikipedia/feed/ForYouModule;

    .line 266
    .line 267
    invoke-virtual {v0, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    const-class v6, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest;

    .line 272
    .line 273
    invoke-virtual {v0, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    const-class v9, Lorg/wikipedia/feed/ForYouModule$BecauseYouRead;

    .line 278
    .line 279
    invoke-virtual {v0, v9}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    const-class v10, Lorg/wikipedia/feed/ForYouModule$ContinueReading;

    .line 284
    .line 285
    invoke-virtual {v0, v10}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    const-class v11, Lorg/wikipedia/feed/ForYouModule$Discover;

    .line 290
    .line 291
    invoke-virtual {v0, v11}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    const-class v12, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest;

    .line 296
    .line 297
    invoke-virtual {v0, v12}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    const-class v13, Lorg/wikipedia/feed/ForYouModule$Random;

    .line 302
    .line 303
    invoke-virtual {v0, v13}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    move v13, v4

    .line 308
    move-object v4, v5

    .line 309
    new-array v5, v1, [Lkotlin/reflect/KClass;

    .line 310
    .line 311
    aput-object v6, v5, v7

    .line 312
    .line 313
    aput-object v9, v5, v8

    .line 314
    .line 315
    aput-object v10, v5, v16

    .line 316
    .line 317
    aput-object v11, v5, v13

    .line 318
    .line 319
    aput-object v12, v5, v3

    .line 320
    .line 321
    aput-object v0, v5, p0

    .line 322
    .line 323
    new-array v6, v1, [Lkotlinx/serialization/KSerializer;

    .line 324
    .line 325
    sget-object v0, Lorg/wikipedia/feed/ForYouModule$BasedOnInterest$$serializer;->INSTANCE:Lorg/wikipedia/feed/ForYouModule$BasedOnInterest$$serializer;

    .line 326
    .line 327
    aput-object v0, v6, v7

    .line 328
    .line 329
    sget-object v0, Lorg/wikipedia/feed/ForYouModule$BecauseYouRead$$serializer;->INSTANCE:Lorg/wikipedia/feed/ForYouModule$BecauseYouRead$$serializer;

    .line 330
    .line 331
    aput-object v0, v6, v8

    .line 332
    .line 333
    sget-object v0, Lorg/wikipedia/feed/ForYouModule$ContinueReading$$serializer;->INSTANCE:Lorg/wikipedia/feed/ForYouModule$ContinueReading$$serializer;

    .line 334
    .line 335
    aput-object v0, v6, v16

    .line 336
    .line 337
    sget-object v0, Lorg/wikipedia/feed/ForYouModule$Discover$$serializer;->INSTANCE:Lorg/wikipedia/feed/ForYouModule$Discover$$serializer;

    .line 338
    .line 339
    aput-object v0, v6, v13

    .line 340
    .line 341
    sget-object v0, Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest$$serializer;->INSTANCE:Lorg/wikipedia/feed/ForYouModule$PlacesOfInterest$$serializer;

    .line 342
    .line 343
    aput-object v0, v6, v3

    .line 344
    .line 345
    sget-object v0, Lorg/wikipedia/feed/ForYouModule$Random$$serializer;->INSTANCE:Lorg/wikipedia/feed/ForYouModule$Random$$serializer;

    .line 346
    .line 347
    aput-object v0, v6, p0

    .line 348
    .line 349
    new-array v7, v7, [Ljava/lang/annotation/Annotation;

    .line 350
    .line 351
    const-string v3, "org.wikipedia.feed.ForYouModule"

    .line 352
    .line 353
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    .line 354
    .line 355
    .line 356
    return-object v2

    .line 357
    :pswitch_d
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 358
    .line 359
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 360
    .line 361
    new-instance v2, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 362
    .line 363
    sget-object v3, Lorg/wikipedia/feed/ForYouModule;->Companion:Lorg/wikipedia/feed/ForYouModule$Companion;

    .line 364
    .line 365
    invoke-virtual {v3}, Lorg/wikipedia/feed/ForYouModule$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-direct {v2, v3, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 370
    .line 371
    .line 372
    invoke-direct {v0, v1, v2, v8}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 373
    .line 374
    .line 375
    return-object v0

    .line 376
    :pswitch_e
    return-object v6

    .line 377
    :pswitch_f
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 378
    .line 379
    sget-object v1, Lorg/wikipedia/dataclient/wikidata/Search$SearchResult$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/wikidata/Search$SearchResult$$serializer;

    .line 380
    .line 381
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 382
    .line 383
    .line 384
    return-object v0

    .line 385
    :pswitch_10
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 386
    .line 387
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 388
    .line 389
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 390
    .line 391
    .line 392
    return-object v0

    .line 393
    :pswitch_11
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 394
    .line 395
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 396
    .line 397
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 398
    .line 399
    .line 400
    return-object v0

    .line 401
    :pswitch_12
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 402
    .line 403
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 404
    .line 405
    sget-object v2, Lorg/wikipedia/dataclient/wikidata/Entities$Entity$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/wikidata/Entities$Entity$$serializer;

    .line 406
    .line 407
    invoke-direct {v0, v1, v2, v8}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 408
    .line 409
    .line 410
    return-object v0

    .line 411
    :pswitch_13
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 412
    .line 413
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 414
    .line 415
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 416
    .line 417
    .line 418
    return-object v0

    .line 419
    :pswitch_14
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 420
    .line 421
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 422
    .line 423
    new-instance v2, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 424
    .line 425
    sget-object v3, Lorg/wikipedia/dataclient/wikidata/Claims$Claim$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/wikidata/Claims$Claim$$serializer;

    .line 426
    .line 427
    invoke-direct {v2, v3, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 428
    .line 429
    .line 430
    invoke-direct {v0, v1, v2, v8}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 431
    .line 432
    .line 433
    return-object v0

    .line 434
    :pswitch_15
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 435
    .line 436
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 437
    .line 438
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 439
    .line 440
    .line 441
    return-object v0

    .line 442
    :pswitch_16
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 443
    .line 444
    sget-object v1, Lorg/wikipedia/dataclient/watch/Watch$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/watch/Watch$$serializer;

    .line 445
    .line 446
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 447
    .line 448
    .line 449
    return-object v0

    .line 450
    :pswitch_17
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 451
    .line 452
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 453
    .line 454
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 455
    .line 456
    .line 457
    return-object v0

    .line 458
    :pswitch_18
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 459
    .line 460
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 461
    .line 462
    invoke-direct {v0, v1, v8}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 463
    .line 464
    .line 465
    return-object v0

    .line 466
    nop

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
