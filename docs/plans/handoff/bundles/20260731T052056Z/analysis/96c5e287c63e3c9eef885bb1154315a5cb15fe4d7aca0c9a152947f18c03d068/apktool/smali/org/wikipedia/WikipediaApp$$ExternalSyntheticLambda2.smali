.class public final synthetic Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/search/HybridSearchAbCTest;)V
    .locals 0

    .line 1
    const/16 p1, 0x1c

    .line 2
    .line 3
    iput p1, p0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;->$r8$classId:I

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
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl;

    .line 6
    .line 7
    const-class v2, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl;

    .line 8
    .line 9
    const/16 v3, 0xd

    .line 10
    .line 11
    const-class v4, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent;

    .line 12
    .line 13
    const-class v5, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;

    .line 14
    .line 15
    const-class v6, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent;

    .line 16
    .line 17
    const-class v7, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 18
    .line 19
    const-class v8, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl;

    .line 20
    .line 21
    const-class v9, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 22
    .line 23
    const/16 v15, 0xc

    .line 24
    .line 25
    const/16 v16, 0x5

    .line 26
    .line 27
    const/16 v17, 0x4

    .line 28
    .line 29
    const/16 v18, 0x3

    .line 30
    .line 31
    const/16 v19, 0x2

    .line 32
    .line 33
    const/16 p0, 0xb

    .line 34
    .line 35
    const/4 v10, 0x6

    .line 36
    const/16 v20, 0xa

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/16 v21, 0x9

    .line 40
    .line 41
    const/4 v12, 0x1

    .line 42
    packed-switch v0, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 46
    .line 47
    sget-object v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;->INSTANCE:Lorg/wikipedia/dataclient/mwapi/MwServiceError$$serializer;

    .line 48
    .line 49
    invoke-direct {v0, v1, v12}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    return-object v0

    .line 56
    :pswitch_1
    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    .line 57
    .line 58
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 59
    .line 60
    const-class v2, Lorg/wikipedia/analytics/eventplatform/MobileAppsEventWithTemp;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v9}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v8}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v0, v7}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v0, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v0, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-array v4, v10, [Lkotlin/reflect/KClass;

    .line 91
    .line 92
    aput-object v2, v4, v11

    .line 93
    .line 94
    aput-object v8, v4, v12

    .line 95
    .line 96
    aput-object v7, v4, v19

    .line 97
    .line 98
    aput-object v6, v4, v18

    .line 99
    .line 100
    aput-object v5, v4, v17

    .line 101
    .line 102
    aput-object v0, v4, v16

    .line 103
    .line 104
    new-array v5, v10, [Lkotlinx/serialization/KSerializer;

    .line 105
    .line 106
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;

    .line 107
    .line 108
    aput-object v0, v5, v11

    .line 109
    .line 110
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl$$serializer;

    .line 111
    .line 112
    aput-object v0, v5, v12

    .line 113
    .line 114
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;

    .line 115
    .line 116
    aput-object v0, v5, v19

    .line 117
    .line 118
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;

    .line 119
    .line 120
    aput-object v0, v5, v18

    .line 121
    .line 122
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;

    .line 123
    .line 124
    aput-object v0, v5, v17

    .line 125
    .line 126
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;

    .line 127
    .line 128
    aput-object v0, v5, v16

    .line 129
    .line 130
    new-array v6, v11, [Ljava/lang/annotation/Annotation;

    .line 131
    .line 132
    const-string v2, "org.wikipedia.analytics.eventplatform.MobileAppsEventWithTemp"

    .line 133
    .line 134
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :pswitch_2
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    .line 139
    .line 140
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 141
    .line 142
    move/from16 v22, v10

    .line 143
    .line 144
    const-class v10, Lorg/wikipedia/analytics/eventplatform/MobileAppsEvent;

    .line 145
    .line 146
    invoke-virtual {v3, v10}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v3, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const/16 v23, 0x8

    .line 159
    .line 160
    const-class v13, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl;

    .line 161
    .line 162
    invoke-virtual {v3, v13}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    const/16 v24, 0x7

    .line 167
    .line 168
    const-class v14, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;

    .line 169
    .line 170
    invoke-virtual {v3, v14}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    move/from16 v25, v12

    .line 175
    .line 176
    const-class v12, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;

    .line 177
    .line 178
    invoke-virtual {v3, v12}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v3, v9}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v3, v8}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v3, v7}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-virtual {v3, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    move/from16 v26, v11

    .line 207
    .line 208
    const-class v11, Lorg/wikipedia/analytics/eventplatform/TestAppsEvent;

    .line 209
    .line 210
    invoke-virtual {v3, v11}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    move-object v11, v5

    .line 215
    new-array v5, v15, [Lkotlin/reflect/KClass;

    .line 216
    .line 217
    aput-object v2, v5, v26

    .line 218
    .line 219
    aput-object v1, v5, v25

    .line 220
    .line 221
    aput-object v13, v5, v19

    .line 222
    .line 223
    aput-object v14, v5, v18

    .line 224
    .line 225
    aput-object v12, v5, v17

    .line 226
    .line 227
    aput-object v9, v5, v16

    .line 228
    .line 229
    aput-object v8, v5, v22

    .line 230
    .line 231
    aput-object v7, v5, v24

    .line 232
    .line 233
    aput-object v6, v5, v23

    .line 234
    .line 235
    aput-object v11, v5, v21

    .line 236
    .line 237
    aput-object v4, v5, v20

    .line 238
    .line 239
    aput-object v3, v5, p0

    .line 240
    .line 241
    new-array v6, v15, [Lkotlinx/serialization/KSerializer;

    .line 242
    .line 243
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;

    .line 244
    .line 245
    aput-object v1, v6, v26

    .line 246
    .line 247
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer;

    .line 248
    .line 249
    aput-object v1, v6, v25

    .line 250
    .line 251
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer;

    .line 252
    .line 253
    aput-object v1, v6, v19

    .line 254
    .line 255
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;

    .line 256
    .line 257
    aput-object v1, v6, v18

    .line 258
    .line 259
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;

    .line 260
    .line 261
    aput-object v1, v6, v17

    .line 262
    .line 263
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;

    .line 264
    .line 265
    aput-object v1, v6, v16

    .line 266
    .line 267
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl$$serializer;

    .line 268
    .line 269
    aput-object v1, v6, v22

    .line 270
    .line 271
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;

    .line 272
    .line 273
    aput-object v1, v6, v24

    .line 274
    .line 275
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;

    .line 276
    .line 277
    aput-object v1, v6, v23

    .line 278
    .line 279
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;

    .line 280
    .line 281
    aput-object v1, v6, v21

    .line 282
    .line 283
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;

    .line 284
    .line 285
    aput-object v1, v6, v20

    .line 286
    .line 287
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/TestAppsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/TestAppsEvent$$serializer;

    .line 288
    .line 289
    aput-object v1, v6, p0

    .line 290
    .line 291
    move/from16 v1, v26

    .line 292
    .line 293
    new-array v7, v1, [Ljava/lang/annotation/Annotation;

    .line 294
    .line 295
    const-string v3, "org.wikipedia.analytics.eventplatform.MobileAppsEvent"

    .line 296
    .line 297
    move-object v2, v0

    .line 298
    move-object v4, v10

    .line 299
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    .line 300
    .line 301
    .line 302
    return-object v2

    .line 303
    :pswitch_3
    move/from16 v22, v10

    .line 304
    .line 305
    move/from16 v25, v12

    .line 306
    .line 307
    const/16 v23, 0x8

    .line 308
    .line 309
    const/16 v24, 0x7

    .line 310
    .line 311
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    .line 312
    .line 313
    sget-object v10, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 314
    .line 315
    const-class v11, Lorg/wikipedia/analytics/eventplatform/EventWithDt;

    .line 316
    .line 317
    invoke-virtual {v10, v11}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    const-class v12, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;

    .line 322
    .line 323
    invoke-virtual {v10, v12}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    invoke-virtual {v10, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v10, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    const-class v13, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl;

    .line 336
    .line 337
    invoke-virtual {v10, v13}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    const-class v14, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;

    .line 342
    .line 343
    invoke-virtual {v10, v14}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 344
    .line 345
    .line 346
    move-result-object v14

    .line 347
    move/from16 v27, v15

    .line 348
    .line 349
    const-class v15, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;

    .line 350
    .line 351
    invoke-virtual {v10, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 352
    .line 353
    .line 354
    move-result-object v15

    .line 355
    invoke-virtual {v10, v9}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    invoke-virtual {v10, v8}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    invoke-virtual {v10, v7}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-virtual {v10, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-virtual {v10, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v10, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    move-object/from16 v28, v0

    .line 380
    .line 381
    const-class v0, Lorg/wikipedia/analytics/eventplatform/TestAppsEvent;

    .line 382
    .line 383
    invoke-virtual {v10, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    move-object v10, v6

    .line 388
    new-array v6, v3, [Lkotlin/reflect/KClass;

    .line 389
    .line 390
    const/16 v26, 0x0

    .line 391
    .line 392
    aput-object v12, v6, v26

    .line 393
    .line 394
    aput-object v2, v6, v25

    .line 395
    .line 396
    aput-object v1, v6, v19

    .line 397
    .line 398
    aput-object v13, v6, v18

    .line 399
    .line 400
    aput-object v14, v6, v17

    .line 401
    .line 402
    aput-object v15, v6, v16

    .line 403
    .line 404
    aput-object v9, v6, v22

    .line 405
    .line 406
    aput-object v8, v6, v24

    .line 407
    .line 408
    aput-object v7, v6, v23

    .line 409
    .line 410
    aput-object v10, v6, v21

    .line 411
    .line 412
    aput-object v5, v6, v20

    .line 413
    .line 414
    aput-object v4, v6, p0

    .line 415
    .line 416
    aput-object v0, v6, v27

    .line 417
    .line 418
    new-array v7, v3, [Lkotlinx/serialization/KSerializer;

    .line 419
    .line 420
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$$serializer;

    .line 421
    .line 422
    const/16 v26, 0x0

    .line 423
    .line 424
    aput-object v0, v7, v26

    .line 425
    .line 426
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;

    .line 427
    .line 428
    aput-object v0, v7, v25

    .line 429
    .line 430
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer;

    .line 431
    .line 432
    aput-object v0, v7, v19

    .line 433
    .line 434
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer;

    .line 435
    .line 436
    aput-object v0, v7, v18

    .line 437
    .line 438
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;

    .line 439
    .line 440
    aput-object v0, v7, v17

    .line 441
    .line 442
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;

    .line 443
    .line 444
    aput-object v0, v7, v16

    .line 445
    .line 446
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;

    .line 447
    .line 448
    aput-object v0, v7, v22

    .line 449
    .line 450
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl$$serializer;

    .line 451
    .line 452
    aput-object v0, v7, v24

    .line 453
    .line 454
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;

    .line 455
    .line 456
    aput-object v0, v7, v23

    .line 457
    .line 458
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;

    .line 459
    .line 460
    aput-object v0, v7, v21

    .line 461
    .line 462
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;

    .line 463
    .line 464
    aput-object v0, v7, v20

    .line 465
    .line 466
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;

    .line 467
    .line 468
    aput-object v0, v7, p0

    .line 469
    .line 470
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/TestAppsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/TestAppsEvent$$serializer;

    .line 471
    .line 472
    aput-object v0, v7, v27

    .line 473
    .line 474
    const/4 v1, 0x0

    .line 475
    new-array v8, v1, [Ljava/lang/annotation/Annotation;

    .line 476
    .line 477
    const-string v4, "org.wikipedia.analytics.eventplatform.EventWithDt"

    .line 478
    .line 479
    move-object v5, v11

    .line 480
    move-object/from16 v3, v28

    .line 481
    .line 482
    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    .line 483
    .line 484
    .line 485
    return-object v3

    .line 486
    :pswitch_4
    move/from16 v22, v10

    .line 487
    .line 488
    move/from16 v25, v12

    .line 489
    .line 490
    move/from16 v27, v15

    .line 491
    .line 492
    const/16 v23, 0x8

    .line 493
    .line 494
    const/16 v24, 0x7

    .line 495
    .line 496
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    .line 497
    .line 498
    sget-object v10, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 499
    .line 500
    const-class v11, Lorg/wikipedia/analytics/eventplatform/Event;

    .line 501
    .line 502
    invoke-virtual {v10, v11}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    const-class v12, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl;

    .line 507
    .line 508
    invoke-virtual {v10, v12}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 509
    .line 510
    .line 511
    move-result-object v12

    .line 512
    const-class v13, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;

    .line 513
    .line 514
    invoke-virtual {v10, v13}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 515
    .line 516
    .line 517
    move-result-object v13

    .line 518
    invoke-virtual {v10, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v10, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    const-class v14, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl;

    .line 527
    .line 528
    invoke-virtual {v10, v14}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 529
    .line 530
    .line 531
    move-result-object v14

    .line 532
    const-class v15, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;

    .line 533
    .line 534
    invoke-virtual {v10, v15}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 535
    .line 536
    .line 537
    move-result-object v15

    .line 538
    move/from16 v28, v3

    .line 539
    .line 540
    const-class v3, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl;

    .line 541
    .line 542
    invoke-virtual {v10, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    invoke-virtual {v10, v9}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 547
    .line 548
    .line 549
    move-result-object v9

    .line 550
    invoke-virtual {v10, v8}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 551
    .line 552
    .line 553
    move-result-object v8

    .line 554
    invoke-virtual {v10, v7}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 555
    .line 556
    .line 557
    move-result-object v7

    .line 558
    invoke-virtual {v10, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    invoke-virtual {v10, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    invoke-virtual {v10, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    move-object/from16 v29, v0

    .line 571
    .line 572
    const-class v0, Lorg/wikipedia/analytics/eventplatform/TestAppsEvent;

    .line 573
    .line 574
    invoke-virtual {v10, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    move-object/from16 v30, v0

    .line 579
    .line 580
    const-class v0, Lorg/wikipedia/analytics/eventplatform/TestEvent;

    .line 581
    .line 582
    invoke-virtual {v10, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    const/16 v10, 0xf

    .line 587
    .line 588
    new-array v10, v10, [Lkotlin/reflect/KClass;

    .line 589
    .line 590
    const/16 v26, 0x0

    .line 591
    .line 592
    aput-object v12, v10, v26

    .line 593
    .line 594
    aput-object v13, v10, v25

    .line 595
    .line 596
    aput-object v2, v10, v19

    .line 597
    .line 598
    aput-object v1, v10, v18

    .line 599
    .line 600
    aput-object v14, v10, v17

    .line 601
    .line 602
    aput-object v15, v10, v16

    .line 603
    .line 604
    aput-object v3, v10, v22

    .line 605
    .line 606
    aput-object v9, v10, v24

    .line 607
    .line 608
    aput-object v8, v10, v23

    .line 609
    .line 610
    aput-object v7, v10, v21

    .line 611
    .line 612
    aput-object v6, v10, v20

    .line 613
    .line 614
    aput-object v5, v10, p0

    .line 615
    .line 616
    aput-object v4, v10, v27

    .line 617
    .line 618
    aput-object v30, v10, v28

    .line 619
    .line 620
    const/16 v1, 0xe

    .line 621
    .line 622
    aput-object v0, v10, v1

    .line 623
    .line 624
    const/16 v0, 0xf

    .line 625
    .line 626
    new-array v8, v0, [Lkotlinx/serialization/KSerializer;

    .line 627
    .line 628
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ClientErrorEvent$ClientErrorEventImpl$$serializer;

    .line 629
    .line 630
    const/16 v26, 0x0

    .line 631
    .line 632
    aput-object v0, v8, v26

    .line 633
    .line 634
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$$serializer;

    .line 635
    .line 636
    aput-object v0, v8, v25

    .line 637
    .line 638
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppearanceSettingInteractionEvent$AppearanceSettingInteractionEventImpl$$serializer;

    .line 639
    .line 640
    aput-object v0, v8, v19

    .line 641
    .line 642
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent$ArticleFindInPageInteractionEventImpl$$serializer;

    .line 643
    .line 644
    aput-object v0, v8, v18

    .line 645
    .line 646
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleInteractionEvent$ArticleInteractionEventImpl$$serializer;

    .line 647
    .line 648
    aput-object v0, v8, v17

    .line 649
    .line 650
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl$$serializer;

    .line 651
    .line 652
    aput-object v0, v8, v16

    .line 653
    .line 654
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ArticleTocInteractionEvent$ArticleTocInteractionEventImpl$$serializer;

    .line 655
    .line 656
    aput-object v0, v8, v22

    .line 657
    .line 658
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent$$serializer;

    .line 659
    .line 660
    aput-object v0, v8, v24

    .line 661
    .line 662
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl$$serializer;

    .line 663
    .line 664
    aput-object v0, v8, v23

    .line 665
    .line 666
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$$serializer;

    .line 667
    .line 668
    aput-object v0, v8, v21

    .line 669
    .line 670
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/DailyStatsEvent$$serializer;

    .line 671
    .line 672
    aput-object v0, v8, v20

    .line 673
    .line 674
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$$serializer;

    .line 675
    .line 676
    aput-object v0, v8, p0

    .line 677
    .line 678
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/InstallReferrerEvent$$serializer;

    .line 679
    .line 680
    aput-object v0, v8, v27

    .line 681
    .line 682
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/TestAppsEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/TestAppsEvent$$serializer;

    .line 683
    .line 684
    aput-object v0, v8, v28

    .line 685
    .line 686
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/TestEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/TestEvent$$serializer;

    .line 687
    .line 688
    aput-object v0, v8, v1

    .line 689
    .line 690
    const/4 v1, 0x0

    .line 691
    new-array v9, v1, [Ljava/lang/annotation/Annotation;

    .line 692
    .line 693
    const-string v5, "org.wikipedia.analytics.eventplatform.Event"

    .line 694
    .line 695
    move-object v7, v10

    .line 696
    move-object v6, v11

    .line 697
    move-object/from16 v4, v29

    .line 698
    .line 699
    invoke-direct/range {v4 .. v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    .line 700
    .line 701
    .line 702
    return-object v4

    .line 703
    :pswitch_5
    move/from16 v25, v12

    .line 704
    .line 705
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 706
    .line 707
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 708
    .line 709
    move/from16 v2, v25

    .line 710
    .line 711
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 712
    .line 713
    .line 714
    return-object v0

    .line 715
    :pswitch_6
    move v2, v12

    .line 716
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 717
    .line 718
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 719
    .line 720
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 721
    .line 722
    .line 723
    return-object v0

    .line 724
    :pswitch_7
    move v2, v12

    .line 725
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 726
    .line 727
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 728
    .line 729
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 730
    .line 731
    .line 732
    return-object v0

    .line 733
    :pswitch_8
    move v2, v12

    .line 734
    new-instance v0, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 735
    .line 736
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 737
    .line 738
    sget-object v3, Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;->INSTANCE:Lorg/wikimedia/testkitchen/config/StreamConfig$$serializer;

    .line 739
    .line 740
    invoke-direct {v0, v1, v3, v2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 741
    .line 742
    .line 743
    return-object v0

    .line 744
    :pswitch_9
    move v2, v12

    .line 745
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 746
    .line 747
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 748
    .line 749
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 750
    .line 751
    .line 752
    return-object v0

    .line 753
    :pswitch_a
    move v2, v12

    .line 754
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 755
    .line 756
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 757
    .line 758
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 759
    .line 760
    .line 761
    return-object v0

    .line 762
    :pswitch_b
    move v2, v12

    .line 763
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 764
    .line 765
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 766
    .line 767
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 768
    .line 769
    .line 770
    return-object v0

    .line 771
    :pswitch_c
    move v2, v12

    .line 772
    new-instance v0, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 773
    .line 774
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 775
    .line 776
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 777
    .line 778
    .line 779
    return-object v0

    .line 780
    :pswitch_d
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;

    .line 781
    .line 782
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 783
    .line 784
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    return-object v0

    .line 789
    :pswitch_e
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 790
    .line 791
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 792
    .line 793
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    return-object v0

    .line 798
    :pswitch_f
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 799
    .line 800
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 801
    .line 802
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    return-object v0

    .line 807
    :pswitch_10
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;

    .line 808
    .line 809
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 810
    .line 811
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    return-object v0

    .line 816
    :pswitch_11
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 817
    .line 818
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 819
    .line 820
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    return-object v0

    .line 825
    :pswitch_12
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 826
    .line 827
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 828
    .line 829
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    return-object v0

    .line 834
    :pswitch_13
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;

    .line 835
    .line 836
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 837
    .line 838
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    return-object v0

    .line 843
    :pswitch_14
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;

    .line 844
    .line 845
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 846
    .line 847
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/ComparableCurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    return-object v0

    .line 852
    :pswitch_15
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 853
    .line 854
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 855
    .line 856
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    return-object v0

    .line 861
    :pswitch_16
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 862
    .line 863
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 864
    .line 865
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    return-object v0

    .line 870
    :pswitch_17
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 871
    .line 872
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 873
    .line 874
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    return-object v0

    .line 879
    :pswitch_18
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 880
    .line 881
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 882
    .line 883
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    return-object v0

    .line 888
    :pswitch_19
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 889
    .line 890
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 891
    .line 892
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    return-object v0

    .line 897
    :pswitch_1a
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 898
    .line 899
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 900
    .line 901
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    return-object v0

    .line 906
    :pswitch_1b
    sget-object v0, Lorg/wikimedia/testkitchen/config/curation/CurationRules;->Companion:Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;

    .line 907
    .line 908
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 909
    .line 910
    invoke-virtual {v0, v1}, Lorg/wikimedia/testkitchen/config/curation/CurationRules$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    return-object v0

    .line 915
    :pswitch_1c
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 916
    .line 917
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;

    .line 918
    .line 919
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 920
    .line 921
    .line 922
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 923
    .line 924
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 925
    .line 926
    const v0, 0x7f12067d

    .line 927
    .line 928
    .line 929
    const/4 v2, 0x0

    .line 930
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    if-eqz v0, :cond_1

    .line 935
    .line 936
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 937
    .line 938
    .line 939
    move-result v3

    .line 940
    if-nez v3, :cond_0

    .line 941
    .line 942
    goto :goto_0

    .line 943
    :cond_0
    :try_start_0
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 944
    .line 945
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 946
    .line 947
    .line 948
    sget-object v4, Lorg/wikipedia/analytics/SessionData;->Companion:Lorg/wikipedia/analytics/SessionData$Companion;

    .line 949
    .line 950
    invoke-virtual {v4}, Lorg/wikipedia/analytics/SessionData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 951
    .line 952
    .line 953
    move-result-object v4

    .line 954
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 955
    .line 956
    .line 957
    move-result-object v4

    .line 958
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 959
    .line 960
    invoke-virtual {v3, v0, v4}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    goto :goto_0

    .line 965
    :catch_0
    move-exception v0

    .line 966
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 967
    .line 968
    .line 969
    :cond_1
    :goto_0
    check-cast v2, Lorg/wikipedia/analytics/SessionData;

    .line 970
    .line 971
    if-nez v2, :cond_2

    .line 972
    .line 973
    new-instance v2, Lorg/wikipedia/analytics/SessionData;

    .line 974
    .line 975
    invoke-direct {v2}, Lorg/wikipedia/analytics/SessionData;-><init>()V

    .line 976
    .line 977
    .line 978
    :cond_2
    iput-object v2, v1, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 979
    .line 980
    iget-wide v3, v2, Lorg/wikipedia/analytics/SessionData;->startTime:J

    .line 981
    .line 982
    const-wide/16 v5, 0x0

    .line 983
    .line 984
    cmp-long v0, v3, v5

    .line 985
    .line 986
    if-eqz v0, :cond_3

    .line 987
    .line 988
    iget-wide v2, v2, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    .line 989
    .line 990
    cmp-long v0, v2, v5

    .line 991
    .line 992
    if-nez v0, :cond_4

    .line 993
    .line 994
    :cond_3
    new-instance v0, Lorg/wikipedia/analytics/SessionData;

    .line 995
    .line 996
    invoke-direct {v0}, Lorg/wikipedia/analytics/SessionData;-><init>()V

    .line 997
    .line 998
    .line 999
    iput-object v0, v1, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 1000
    .line 1001
    invoke-virtual {v1}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->persistSession()V

    .line 1002
    .line 1003
    .line 1004
    :cond_4
    invoke-virtual {v1}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->touchSession()V

    .line 1005
    .line 1006
    .line 1007
    return-object v1

    .line 1008
    nop

    .line 1009
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
