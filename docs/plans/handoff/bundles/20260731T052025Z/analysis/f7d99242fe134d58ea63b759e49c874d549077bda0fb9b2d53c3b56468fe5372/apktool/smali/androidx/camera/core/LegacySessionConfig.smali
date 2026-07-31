.class public final Landroidx/camera/core/LegacySessionConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final effects:Ljava/lang/Object;

.field public featureSelectionListener:Ljava/lang/Object;

.field public featureSelectionListenerExecutor:Ljava/lang/Object;

.field public final frameRateRange:Ljava/lang/Object;

.field public isLegacy:Z

.field public final preferredFeatureGroup:Ljava/lang/Object;

.field public final requiredFeatureGroup:Ljava/lang/Object;

.field public final useCases:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Landroidx/camera/core/LegacySessionConfig;->$r8$classId:I

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 636
    iput-boolean p1, p0, Landroidx/camera/core/LegacySessionConfig;->isLegacy:Z

    .line 637
    iput-object p2, p0, Landroidx/camera/core/LegacySessionConfig;->effects:Ljava/lang/Object;

    .line 638
    iput-object p3, p0, Landroidx/camera/core/LegacySessionConfig;->preferredFeatureGroup:Ljava/lang/Object;

    .line 639
    iput-object p4, p0, Landroidx/camera/core/LegacySessionConfig;->requiredFeatureGroup:Ljava/lang/Object;

    .line 640
    iput-object p5, p0, Landroidx/camera/core/LegacySessionConfig;->frameRateRange:Ljava/lang/Object;

    .line 641
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    const/4 p3, 0x0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x1f

    if-lt p1, p2, :cond_1

    .line 642
    sget-object p3, Landroidx/profileinstaller/Encoding;->V015_S:[B

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 643
    :pswitch_0
    sget-object p3, Landroidx/profileinstaller/Encoding;->V010_P:[B

    goto :goto_0

    .line 644
    :pswitch_1
    sget-object p3, Landroidx/profileinstaller/Encoding;->V009_O_MR1:[B

    goto :goto_0

    .line 645
    :pswitch_2
    sget-object p3, Landroidx/profileinstaller/Encoding;->V005_O:[B

    goto :goto_0

    .line 646
    :pswitch_3
    sget-object p3, Landroidx/profileinstaller/Encoding;->V001_N:[B

    .line 647
    :goto_0
    iput-object p3, p0, Landroidx/camera/core/LegacySessionConfig;->useCases:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/camera/core/LegacySessionConfig;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v1, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroidx/camera/core/LegacySessionConfig;->effects:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v1, p0, Landroidx/camera/core/LegacySessionConfig;->frameRateRange:Ljava/lang/Object;

    .line 18
    .line 19
    sget-object p2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/camera/core/LegacySessionConfig;->requiredFeatureGroup:Ljava/lang/Object;

    .line 22
    .line 23
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 24
    .line 25
    iput-object p2, p0, Landroidx/camera/core/LegacySessionConfig;->preferredFeatureGroup:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroidx/camera/core/LegacySessionConfig;->useCases:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance p2, Landroidx/camera/core/SessionConfig$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-direct {p2, v0}, Landroidx/camera/core/SessionConfig$$ExternalSyntheticLambda0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Landroidx/camera/core/LegacySessionConfig;->featureSelectionListener:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {}, Lorg/slf4j/helpers/Util;->mainThreadExecutor()Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Landroidx/camera/core/LegacySessionConfig;->featureSelectionListenerExecutor:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    const/4 v1, 0x0

    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroidx/camera/core/UseCase;

    .line 76
    .line 77
    iget-object p2, p2, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 78
    .line 79
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig;->hasTargetFrameRate()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-nez p2, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-string p0, "Can\'t set target frame rate on a UseCase (by Preview.Builder.setTargetFrameRate() or VideoCapture.Builder.setTargetFrameRate()) if the frame rate range has already been set in the SessionConfig."

    .line 87
    .line 88
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_2
    :goto_1
    iget-object p1, p0, Landroidx/camera/core/LegacySessionConfig;->preferredFeatureGroup:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Ljava/util/List;

    .line 95
    .line 96
    iget-object p2, p0, Landroidx/camera/core/LegacySessionConfig;->requiredFeatureGroup:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p2, Ljava/util/Set;

    .line 99
    .line 100
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v3, 0x1

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    goto/16 :goto_d

    .line 114
    .line 115
    :cond_3
    check-cast p2, Ljava/lang/Iterable;

    .line 116
    .line 117
    new-instance v2, Ljava/util/ArrayList;

    .line 118
    .line 119
    const/16 v4, 0xa

    .line 120
    .line 121
    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Landroidx/camera/core/featuregroup/GroupableFeature;

    .line 143
    .line 144
    invoke-virtual {v5}, Landroidx/camera/core/featuregroup/GroupableFeature;->getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_8

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 175
    .line 176
    new-instance v5, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-eqz v7, :cond_6

    .line 190
    .line 191
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    move-object v8, v7

    .line 196
    check-cast v8, Landroidx/camera/core/featuregroup/GroupableFeature;

    .line 197
    .line 198
    invoke-virtual {v8}, Landroidx/camera/core/featuregroup/GroupableFeature;->getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    if-ne v8, v4, :cond_5

    .line 203
    .line 204
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-gt v4, v3, :cond_7

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_7
    const-string p0, "requiredFeatures has conflicting feature values: "

    .line 216
    .line 217
    invoke-static {v5, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-ne v2, v4, :cond_2a

    .line 241
    .line 242
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_29

    .line 251
    .line 252
    iget-object p1, p0, Landroidx/camera/core/LegacySessionConfig;->useCases:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p1, Ljava/util/List;

    .line 255
    .line 256
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    if-eqz p2, :cond_28

    .line 265
    .line 266
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    check-cast p2, Landroidx/camera/core/UseCase;

    .line 271
    .line 272
    sget-object v2, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Lcom/jcraft/jzlib/Adler32;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-static {p2}, Lcom/jcraft/jzlib/Adler32;->getFeatureGroupUseCaseType(Landroidx/camera/core/UseCase;)Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    sget-object v5, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 282
    .line 283
    if-eq v4, v5, :cond_27

    .line 284
    .line 285
    instance-of v4, p2, Landroidx/camera/core/Preview;

    .line 286
    .line 287
    if-eqz v4, :cond_9

    .line 288
    .line 289
    const-string v4, "Preview"

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_9
    instance-of v4, p2, Landroidx/camera/core/ImageCapture;

    .line 293
    .line 294
    if-eqz v4, :cond_a

    .line 295
    .line 296
    const-string v4, "ImageCapture"

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_a
    instance-of v4, p2, Landroidx/camera/core/ImageAnalysis;

    .line 300
    .line 301
    if-eqz v4, :cond_b

    .line 302
    .line 303
    const-string v4, "ImageAnalysis"

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_b
    invoke-static {p2}, Landroidx/sqlite/SQLite;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_c

    .line 311
    .line 312
    const-string v4, "VideoCapture"

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_c
    const-string v4, "UseCase"

    .line 316
    .line 317
    :goto_6
    sget-object v5, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 318
    .line 319
    invoke-virtual {v5}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    const/4 v7, 0x4

    .line 328
    const/4 v8, 0x2

    .line 329
    const/4 v9, 0x3

    .line 330
    if-eqz v6, :cond_15

    .line 331
    .line 332
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    move-object v10, v6

    .line 337
    check-cast v10, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    if-eqz v10, :cond_14

    .line 347
    .line 348
    if-eq v10, v3, :cond_13

    .line 349
    .line 350
    if-eq v10, v8, :cond_10

    .line 351
    .line 352
    if-eq v10, v9, :cond_f

    .line 353
    .line 354
    if-ne v10, v7, :cond_e

    .line 355
    .line 356
    iget-object v10, p2, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 357
    .line 358
    sget-object v11, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 359
    .line 360
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 361
    .line 362
    invoke-interface {v10, v11, v12}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 367
    .line 368
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    goto :goto_8

    .line 373
    :cond_e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 374
    .line 375
    .line 376
    throw v1

    .line 377
    :cond_f
    iget-object v10, p2, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 378
    .line 379
    sget-object v11, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_OUTPUT_FORMAT:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 380
    .line 381
    invoke-interface {v10, v11}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    goto :goto_8

    .line 386
    :cond_10
    iget-object v10, p2, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 387
    .line 388
    sget-object v11, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 389
    .line 390
    invoke-interface {v10, v11}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 391
    .line 392
    .line 393
    move-result v10

    .line 394
    if-nez v10, :cond_12

    .line 395
    .line 396
    iget-object v10, p2, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 397
    .line 398
    sget-object v11, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 399
    .line 400
    invoke-interface {v10, v11}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 401
    .line 402
    .line 403
    move-result v10

    .line 404
    if-eqz v10, :cond_11

    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_11
    move v10, v0

    .line 408
    goto :goto_8

    .line 409
    :cond_12
    :goto_7
    move v10, v3

    .line 410
    goto :goto_8

    .line 411
    :cond_13
    iget-object v10, p2, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 412
    .line 413
    invoke-interface {v10}, Landroidx/camera/core/impl/UseCaseConfig;->hasTargetFrameRate()Z

    .line 414
    .line 415
    .line 416
    move-result v10

    .line 417
    goto :goto_8

    .line 418
    :cond_14
    iget-object v10, p2, Landroidx/camera/core/UseCase;->mUseCaseConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 419
    .line 420
    invoke-interface {v10}, Landroidx/camera/core/impl/ImageInputConfig;->hasDynamicRange()Z

    .line 421
    .line 422
    .line 423
    move-result v10

    .line 424
    :goto_8
    if-eqz v10, :cond_d

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :cond_15
    move-object v6, v1

    .line 428
    :goto_9
    check-cast v6, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    .line 429
    .line 430
    if-nez v6, :cond_16

    .line 431
    .line 432
    goto/16 :goto_5

    .line 433
    .line 434
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    const-string p1, "A "

    .line 437
    .line 438
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string p1, " value is set to "

    .line 449
    .line 450
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string p1, " despite using feature groups. Do not use APIs like "

    .line 457
    .line 458
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    if-eqz p1, :cond_1c

    .line 466
    .line 467
    if-eq p1, v3, :cond_1b

    .line 468
    .line 469
    if-eq p1, v8, :cond_19

    .line 470
    .line 471
    if-eq p1, v9, :cond_18

    .line 472
    .line 473
    if-ne p1, v7, :cond_17

    .line 474
    .line 475
    const-string p1, "Recorder.Builder.setQualitySelector"

    .line 476
    .line 477
    goto :goto_a

    .line 478
    :cond_17
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 479
    .line 480
    .line 481
    throw v1

    .line 482
    :cond_18
    const-string p1, ".Builder.setOutputFormat"

    .line 483
    .line 484
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    goto :goto_a

    .line 489
    :cond_19
    invoke-static {p2}, Landroidx/sqlite/SQLite;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    if-eqz p1, :cond_1a

    .line 494
    .line 495
    const-string p1, ".Builder.setVideoStabilizationEnabled"

    .line 496
    .line 497
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    goto :goto_a

    .line 502
    :cond_1a
    const-string p1, ".Builder.setPreviewStabilizationEnabled"

    .line 503
    .line 504
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    goto :goto_a

    .line 509
    :cond_1b
    const-string p1, ".Builder.setTargetFrameRateRange"

    .line 510
    .line 511
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    goto :goto_a

    .line 516
    :cond_1c
    const-string p1, ".Builder.setDynamicRange"

    .line 517
    .line 518
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    :goto_a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string p1, " while using feature groups. If, for example, "

    .line 526
    .line 527
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-eqz p1, :cond_21

    .line 535
    .line 536
    if-eq p1, v3, :cond_20

    .line 537
    .line 538
    if-eq p1, v8, :cond_1f

    .line 539
    .line 540
    if-eq p1, v9, :cond_1e

    .line 541
    .line 542
    if-ne p1, v7, :cond_1d

    .line 543
    .line 544
    const-string p1, "UHD recording quality"

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_1d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 548
    .line 549
    .line 550
    throw v1

    .line 551
    :cond_1e
    const-string p1, "JPEG_R output format"

    .line 552
    .line 553
    goto :goto_b

    .line 554
    :cond_1f
    const-string p1, "stabilization"

    .line 555
    .line 556
    goto :goto_b

    .line 557
    :cond_20
    const-string p1, "60 FPS"

    .line 558
    .line 559
    goto :goto_b

    .line 560
    :cond_21
    const-string p1, "HDR"

    .line 561
    .line 562
    :goto_b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string p1, " is required, instead set "

    .line 566
    .line 567
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    if-eqz p1, :cond_26

    .line 575
    .line 576
    if-eq p1, v3, :cond_25

    .line 577
    .line 578
    if-eq p1, v8, :cond_24

    .line 579
    .line 580
    if-eq p1, v9, :cond_23

    .line 581
    .line 582
    if-eq p1, v7, :cond_22

    .line 583
    .line 584
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 585
    .line 586
    .line 587
    throw v1

    .line 588
    :cond_22
    const-string p1, "GroupableFeatures.UHD_RECORDING"

    .line 589
    .line 590
    goto :goto_c

    .line 591
    :cond_23
    const-string p1, "GroupableFeature.IMAGE_ULTRA_HDR"

    .line 592
    .line 593
    goto :goto_c

    .line 594
    :cond_24
    const-string p1, "GroupableFeature.PREVIEW_STABILIZATION"

    .line 595
    .line 596
    goto :goto_c

    .line 597
    :cond_25
    const-string p1, "GroupableFeature.FPS_60"

    .line 598
    .line 599
    goto :goto_c

    .line 600
    :cond_26
    const-string p1, "GroupableFeature.HDR_HLG10"

    .line 601
    .line 602
    :goto_c
    const-string p2, " as either a required or preferred feature."

    .line 603
    .line 604
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object p0

    .line 608
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    throw v1

    .line 612
    :cond_27
    const-string p0, " is not supported with feature group"

    .line 613
    .line 614
    invoke-static {p2, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    throw v1

    .line 618
    :cond_28
    :goto_d
    iput-boolean v3, p0, Landroidx/camera/core/LegacySessionConfig;->isLegacy:Z

    .line 619
    .line 620
    return-void

    .line 621
    :cond_29
    const-string p0, "requiredFeatures and preferredFeatures have duplicate values: "

    .line 622
    .line 623
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    throw v1

    .line 627
    :cond_2a
    const-string p0, "Duplicate values in preferredFeatures("

    .line 628
    .line 629
    const/16 p2, 0x29

    .line 630
    .line 631
    invoke-static {p2, p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(ILjava/lang/Object;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    throw v1
.end method


# virtual methods
.method public openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p2, "compressed"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/camera/core/LegacySessionConfig;->preferredFeatureGroup:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 28
    .line 29
    invoke-interface {p0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onDiagnosticReceived()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public result(ILjava/io/Serializable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/LegacySessionConfig;->effects:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Landroidx/profileinstaller/DeviceProfileWriter$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2, p0, p2}, Landroidx/profileinstaller/DeviceProfileWriter$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/LegacySessionConfig;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "SessionConfig@"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " {useCases="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroidx/camera/core/LegacySessionConfig;->useCases:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", frameRateRange="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Landroidx/camera/core/LegacySessionConfig;->frameRateRange:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Landroid/util/Range;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", requiredFeatureGroup="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/camera/core/LegacySessionConfig;->requiredFeatureGroup:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Ljava/util/Set;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", preferredFeatureGroup="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Landroidx/camera/core/LegacySessionConfig;->preferredFeatureGroup:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Ljava/util/List;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", effects="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Landroidx/camera/core/LegacySessionConfig;->effects:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Ljava/util/List;

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p0, ", viewPort=null}"

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
