.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final configIds:Lkotlinx/atomicfu/AtomicInt;

.field public static final groupIds:Lkotlinx/atomicfu/AtomicInt;

.field public static final inputIds:Lkotlinx/atomicfu/AtomicInt;

.field public static final outputIds:Lkotlinx/atomicfu/AtomicInt;

.field public static final previewFormatComparator:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;

.field public static final previewFormats:Ljava/util/List;

.field public static final previewOutputTypes:Ljava/util/List;

.field public static final previewOutputTypesComparator:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;

.field public static final streamIds:Lkotlinx/atomicfu/AtomicInt;


# instance fields
.field public final _streamMap:Ljava/util/LinkedHashMap;

.field public final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field public final imageSourceMap:Lkotlin/collections/builders/MapBuilder;

.field public final inputs:Ljava/util/List;

.field public final outputConfigMap:Ljava/util/LinkedHashMap;

.field public final outputConfigs:Ljava/util/List;

.field public final outputs:Ljava/util/ArrayList;

.field public final streams:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streamIds:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputIds:Lkotlinx/atomicfu/AtomicInt;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->inputIds:Lkotlinx/atomicfu/AtomicInt;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->configIds:Lkotlinx/atomicfu/AtomicInt;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sput-object v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->groupIds:Lkotlinx/atomicfu/AtomicInt;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    new-array v2, v1, [Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 34
    .line 35
    sget-object v3, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_VIEW:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 36
    .line 37
    aput-object v3, v2, v0

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    sget-object v4, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_TEXTURE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 41
    .line 42
    aput-object v4, v2, v3

    .line 43
    .line 44
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sput-object v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewOutputTypes:Ljava/util/List;

    .line 49
    .line 50
    new-instance v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewOutputTypesComparator:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;

    .line 56
    .line 57
    new-instance v2, Landroidx/camera/camera2/pipe/StreamFormat;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Landroidx/camera/camera2/pipe/StreamFormat;-><init>(I)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Landroidx/camera/camera2/pipe/StreamFormat;

    .line 63
    .line 64
    const/16 v5, 0x22

    .line 65
    .line 66
    invoke-direct {v4, v5}, Landroidx/camera/camera2/pipe/StreamFormat;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-array v1, v1, [Landroidx/camera/camera2/pipe/StreamFormat;

    .line 70
    .line 71
    aput-object v2, v1, v0

    .line 72
    .line 73
    aput-object v4, v1, v3

    .line 74
    .line 75
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewFormats:Ljava/util/List;

    .line 80
    .line 81
    new-instance v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;

    .line 82
    .line 83
    invoke-direct {v0, v3}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;-><init>(I)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewFormatComparator:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;

    .line 87
    .line 88
    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Lcom/bumptech/glide/load/Option$1;Lokhttp3/ConnectionPool;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v4, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v7, 0x1a

    .line 42
    .line 43
    if-lt v6, v7, :cond_4

    .line 44
    .line 45
    iget v7, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 46
    .line 47
    if-nez v7, :cond_4

    .line 48
    .line 49
    sget-object v7, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 50
    .line 51
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_4

    .line 59
    .line 60
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-object/from16 v10, p1

    .line 66
    .line 67
    check-cast v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 68
    .line 69
    invoke-virtual {v10, v7}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    check-cast v11, Ljava/lang/Integer;

    .line 74
    .line 75
    if-nez v11, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-nez v11, :cond_1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    :goto_0
    const/16 v11, 0x1c

    .line 86
    .line 87
    if-lt v6, v11, :cond_3

    .line 88
    .line 89
    invoke-virtual {v10, v7}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Ljava/lang/Integer;

    .line 94
    .line 95
    if-nez v6, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    const/4 v7, 0x4

    .line 103
    if-ne v6, v7, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    :goto_2
    const/4 v6, 0x0

    .line 109
    :goto_3
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 125
    .line 126
    const/4 v12, 0x0

    .line 127
    if-eqz v10, :cond_d

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    check-cast v10, Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    const-string v14, "Check failed."

    .line 140
    .line 141
    if-nez v13, :cond_c

    .line 142
    .line 143
    iget-object v13, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 144
    .line 145
    iget-object v13, v13, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 146
    .line 147
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 148
    .line 149
    const/16 v9, 0x18

    .line 150
    .line 151
    if-lt v15, v9, :cond_9

    .line 152
    .line 153
    new-instance v9, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-eqz v13, :cond_6

    .line 167
    .line 168
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    check-cast v13, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 173
    .line 174
    iget-object v13, v13, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 175
    .line 176
    invoke-static {v13, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    if-eqz v13, :cond_7

    .line 194
    .line 195
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    if-nez v13, :cond_8

    .line 213
    .line 214
    move-object v11, v9

    .line 215
    goto :goto_6

    .line 216
    :cond_8
    invoke-static {v11}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    throw v0

    .line 221
    :cond_9
    :goto_6
    sget-object v9, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->groupIds:Lkotlinx/atomicfu/AtomicInt;

    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    sget-object v13, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 227
    .line 228
    invoke-virtual {v13, v9}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    :goto_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    invoke-interface {v11, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v15

    .line 240
    if-eqz v15, :cond_a

    .line 241
    .line 242
    sget-object v13, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 243
    .line 244
    invoke-virtual {v13, v9}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    goto :goto_7

    .line 249
    :cond_a
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    if-eqz v10, :cond_5

    .line 258
    .line 259
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    check-cast v10, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 264
    .line 265
    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    if-nez v11, :cond_b

    .line 270
    .line 271
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_b
    invoke-static {v14}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v12

    .line 283
    :cond_c
    invoke-static {v14}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v12

    .line 287
    :cond_d
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 288
    .line 289
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 290
    .line 291
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    if-eqz v9, :cond_13

    .line 300
    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    check-cast v9, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 306
    .line 307
    iget-object v10, v9, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 308
    .line 309
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v13

    .line 317
    if-eqz v13, :cond_e

    .line 318
    .line 319
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v13

    .line 323
    check-cast v13, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 324
    .line 325
    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    if-eqz v14, :cond_f

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_f
    sget-object v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->configIds:Lkotlinx/atomicfu/AtomicInt;

    .line 333
    .line 334
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    sget-object v15, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 338
    .line 339
    invoke-virtual {v15, v14}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 340
    .line 341
    .line 342
    move-result v17

    .line 343
    iget-object v14, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 344
    .line 345
    iget v15, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    .line 346
    .line 347
    iget-object v12, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->camera:Ljava/lang/String;

    .line 348
    .line 349
    if-nez v12, :cond_10

    .line 350
    .line 351
    iget-object v12, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 352
    .line 353
    iget-object v12, v12, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 354
    .line 355
    :cond_10
    move-object/from16 v20, v12

    .line 356
    .line 357
    invoke-virtual {v7, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v12

    .line 361
    move-object/from16 v21, v12

    .line 362
    .line 363
    check-cast v21, Ljava/lang/Integer;

    .line 364
    .line 365
    if-eqz v6, :cond_12

    .line 366
    .line 367
    instance-of v12, v13, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;

    .line 368
    .line 369
    if-eqz v12, :cond_11

    .line 370
    .line 371
    move-object v12, v13

    .line 372
    check-cast v12, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;

    .line 373
    .line 374
    goto :goto_a

    .line 375
    :cond_11
    const/4 v12, 0x0

    .line 376
    :goto_a
    if-eqz v12, :cond_12

    .line 377
    .line 378
    iget-object v12, v12, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;->outputType:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 379
    .line 380
    move-object/from16 v22, v12

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_12
    const/16 v22, 0x0

    .line 384
    .line 385
    :goto_b
    iget-object v12, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 386
    .line 387
    iget-object v8, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 388
    .line 389
    move-object/from16 p2, v1

    .line 390
    .line 391
    iget-object v1, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 392
    .line 393
    move-object/from16 v25, v1

    .line 394
    .line 395
    iget-object v1, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    .line 396
    .line 397
    move-object/from16 v26, v1

    .line 398
    .line 399
    iget-object v1, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->sensorPixelModes:Ljava/util/List;

    .line 400
    .line 401
    new-instance v16, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 402
    .line 403
    move-object/from16 v27, v1

    .line 404
    .line 405
    move-object/from16 v24, v8

    .line 406
    .line 407
    move-object/from16 v23, v12

    .line 408
    .line 409
    move-object/from16 v18, v14

    .line 410
    .line 411
    move/from16 v19, v15

    .line 412
    .line 413
    invoke-direct/range {v16 .. v27}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;-><init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V

    .line 414
    .line 415
    .line 416
    move-object/from16 v1, v16

    .line 417
    .line 418
    invoke-interface {v3, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-object/from16 v1, p2

    .line 425
    .line 426
    const/4 v12, 0x0

    .line 427
    goto :goto_9

    .line 428
    :cond_13
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 429
    .line 430
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 431
    .line 432
    .line 433
    iget-object v6, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 434
    .line 435
    iget-object v6, v6, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 436
    .line 437
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 438
    .line 439
    .line 440
    move-result v6

    .line 441
    const/4 v7, 0x0

    .line 442
    :goto_c
    iget-object v8, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 443
    .line 444
    const/16 v9, 0xa

    .line 445
    .line 446
    if-ge v7, v6, :cond_17

    .line 447
    .line 448
    iget-object v8, v8, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 449
    .line 450
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    check-cast v8, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 455
    .line 456
    iget-object v10, v8, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 457
    .line 458
    new-instance v12, Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-static {v10, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 461
    .line 462
    .line 463
    move-result v9

    .line 464
    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 465
    .line 466
    .line 467
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 468
    .line 469
    .line 470
    move-result-object v9

    .line 471
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 472
    .line 473
    .line 474
    move-result v10

    .line 475
    if-eqz v10, :cond_14

    .line 476
    .line 477
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v10

    .line 481
    check-cast v10, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 482
    .line 483
    invoke-virtual {v3, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v10

    .line 487
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    check-cast v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 491
    .line 492
    new-instance v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 493
    .line 494
    sget-object v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputIds:Lkotlinx/atomicfu/AtomicInt;

    .line 495
    .line 496
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    sget-object v15, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 500
    .line 501
    invoke-virtual {v15, v14}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 502
    .line 503
    .line 504
    move-result v14

    .line 505
    iget-object v15, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->size:Landroid/util/Size;

    .line 506
    .line 507
    move-object/from16 v16, v15

    .line 508
    .line 509
    iget v15, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->format:I

    .line 510
    .line 511
    move/from16 p1, v6

    .line 512
    .line 513
    iget-object v6, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->camera:Ljava/lang/String;

    .line 514
    .line 515
    move-object/from16 v22, v6

    .line 516
    .line 517
    iget-object v6, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 518
    .line 519
    move-object/from16 v19, v6

    .line 520
    .line 521
    iget-object v6, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 522
    .line 523
    move-object/from16 v18, v6

    .line 524
    .line 525
    iget-object v6, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 526
    .line 527
    move-object/from16 v20, v6

    .line 528
    .line 529
    iget-object v6, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->deferredOutputType:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 530
    .line 531
    move-object/from16 v17, v6

    .line 532
    .line 533
    iget-object v6, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    .line 534
    .line 535
    move-object/from16 v21, v6

    .line 536
    .line 537
    invoke-direct/range {v13 .. v22}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;-><init>(IILandroid/util/Size;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-interface {v1, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move/from16 v6, p1

    .line 547
    .line 548
    goto :goto_d

    .line 549
    :cond_14
    move/from16 p1, v6

    .line 550
    .line 551
    new-instance v6, Landroidx/camera/camera2/pipe/CameraStream;

    .line 552
    .line 553
    sget-object v9, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streamIds:Lkotlinx/atomicfu/AtomicInt;

    .line 554
    .line 555
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    sget-object v10, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 559
    .line 560
    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 561
    .line 562
    .line 563
    move-result v9

    .line 564
    invoke-direct {v6, v9, v12}, Landroidx/camera/camera2/pipe/CameraStream;-><init>(ILjava/util/ArrayList;)V

    .line 565
    .line 566
    .line 567
    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 574
    .line 575
    .line 576
    move-result-object v9

    .line 577
    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 578
    .line 579
    .line 580
    move-result v10

    .line 581
    if-eqz v10, :cond_15

    .line 582
    .line 583
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v10

    .line 587
    check-cast v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 588
    .line 589
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    iput-object v6, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->stream:Landroidx/camera/camera2/pipe/CameraStream;

    .line 593
    .line 594
    goto :goto_e

    .line 595
    :cond_15
    iget-object v8, v8, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 596
    .line 597
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 598
    .line 599
    .line 600
    move-result-object v8

    .line 601
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 602
    .line 603
    .line 604
    move-result v9

    .line 605
    if-eqz v9, :cond_16

    .line 606
    .line 607
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v9

    .line 611
    check-cast v9, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 612
    .line 613
    invoke-virtual {v3, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    check-cast v9, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 621
    .line 622
    iget-object v9, v9, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->streamBuilder:Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    goto :goto_f

    .line 628
    :cond_16
    add-int/lit8 v7, v7, 0x1

    .line 629
    .line 630
    move/from16 v6, p1

    .line 631
    .line 632
    goto/16 :goto_c

    .line 633
    .line 634
    :cond_17
    iget-object v3, v8, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 635
    .line 636
    if-eqz v3, :cond_18

    .line 637
    .line 638
    new-instance v11, Ljava/util/ArrayList;

    .line 639
    .line 640
    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 641
    .line 642
    .line 643
    move-result v6

    .line 644
    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 645
    .line 646
    .line 647
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    .line 653
    .line 654
    move-result v6

    .line 655
    if-eqz v6, :cond_18

    .line 656
    .line 657
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v6

    .line 661
    check-cast v6, Landroidx/camera/camera2/pipe/InputStream$Config;

    .line 662
    .line 663
    new-instance v7, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;

    .line 664
    .line 665
    sget-object v8, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->inputIds:Lkotlinx/atomicfu/AtomicInt;

    .line 666
    .line 667
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 668
    .line 669
    .line 670
    sget-object v10, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 671
    .line 672
    invoke-virtual {v10, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 673
    .line 674
    .line 675
    move-result v8

    .line 676
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    iget v6, v6, Landroidx/camera/camera2/pipe/InputStream$Config;->streamFormat:I

    .line 680
    .line 681
    invoke-direct {v7, v8, v6}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;-><init>(II)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    goto :goto_10

    .line 688
    :cond_18
    iput-object v11, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->inputs:Ljava/util/List;

    .line 689
    .line 690
    new-instance v3, Ljava/util/ArrayList;

    .line 691
    .line 692
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .line 694
    .line 695
    new-instance v6, Ljava/util/ArrayList;

    .line 696
    .line 697
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 701
    .line 702
    .line 703
    move-result-object v7

    .line 704
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 705
    .line 706
    .line 707
    move-result v8

    .line 708
    const-wide/16 v10, 0x1

    .line 709
    .line 710
    if-eqz v8, :cond_1d

    .line 711
    .line 712
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v8

    .line 716
    move-object v12, v8

    .line 717
    check-cast v12, Landroidx/camera/camera2/pipe/CameraStream;

    .line 718
    .line 719
    iget-object v12, v12, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 720
    .line 721
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 722
    .line 723
    .line 724
    move-result v13

    .line 725
    if-eqz v13, :cond_19

    .line 726
    .line 727
    goto :goto_13

    .line 728
    :cond_19
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 729
    .line 730
    .line 731
    move-result-object v12

    .line 732
    :cond_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 733
    .line 734
    .line 735
    move-result v13

    .line 736
    if-eqz v13, :cond_1c

    .line 737
    .line 738
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v13

    .line 742
    check-cast v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 743
    .line 744
    iget-object v13, v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 745
    .line 746
    if-nez v13, :cond_1b

    .line 747
    .line 748
    const/4 v13, 0x0

    .line 749
    goto :goto_12

    .line 750
    :cond_1b
    iget-wide v13, v13, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    .line 751
    .line 752
    invoke-static {v13, v14, v10, v11}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    .line 753
    .line 754
    .line 755
    move-result v13

    .line 756
    :goto_12
    if-eqz v13, :cond_1a

    .line 757
    .line 758
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    goto :goto_11

    .line 762
    :cond_1c
    :goto_13
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    goto :goto_11

    .line 766
    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 767
    .line 768
    .line 769
    move-result v7

    .line 770
    if-nez v7, :cond_1e

    .line 771
    .line 772
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    goto/16 :goto_18

    .line 777
    .line 778
    :cond_1e
    new-instance v3, Ljava/util/ArrayList;

    .line 779
    .line 780
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .line 782
    .line 783
    new-instance v6, Ljava/util/ArrayList;

    .line 784
    .line 785
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 789
    .line 790
    .line 791
    move-result-object v7

    .line 792
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 793
    .line 794
    .line 795
    move-result v8

    .line 796
    if-eqz v8, :cond_22

    .line 797
    .line 798
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v8

    .line 802
    move-object v12, v8

    .line 803
    check-cast v12, Landroidx/camera/camera2/pipe/CameraStream;

    .line 804
    .line 805
    iget-object v12, v12, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 806
    .line 807
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 808
    .line 809
    .line 810
    move-result v13

    .line 811
    if-eqz v13, :cond_1f

    .line 812
    .line 813
    goto :goto_15

    .line 814
    :cond_1f
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 815
    .line 816
    .line 817
    move-result-object v12

    .line 818
    :cond_20
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 819
    .line 820
    .line 821
    move-result v13

    .line 822
    if-eqz v13, :cond_21

    .line 823
    .line 824
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v13

    .line 828
    check-cast v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 829
    .line 830
    sget-object v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewOutputTypes:Ljava/util/List;

    .line 831
    .line 832
    iget-object v13, v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->outputType:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 833
    .line 834
    invoke-static {v14, v13}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    move-result v13

    .line 838
    if-eqz v13, :cond_20

    .line 839
    .line 840
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    goto :goto_14

    .line 844
    :cond_21
    :goto_15
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    goto :goto_14

    .line 848
    :cond_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 849
    .line 850
    .line 851
    move-result v7

    .line 852
    if-nez v7, :cond_23

    .line 853
    .line 854
    sget-object v4, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewOutputTypesComparator:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;

    .line 855
    .line 856
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 857
    .line 858
    .line 859
    move-result-object v3

    .line 860
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    goto :goto_18

    .line 865
    :cond_23
    new-instance v3, Ljava/util/ArrayList;

    .line 866
    .line 867
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .line 869
    .line 870
    new-instance v6, Ljava/util/ArrayList;

    .line 871
    .line 872
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 876
    .line 877
    .line 878
    move-result-object v7

    .line 879
    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 880
    .line 881
    .line 882
    move-result v8

    .line 883
    if-eqz v8, :cond_27

    .line 884
    .line 885
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v8

    .line 889
    move-object v12, v8

    .line 890
    check-cast v12, Landroidx/camera/camera2/pipe/CameraStream;

    .line 891
    .line 892
    iget-object v12, v12, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 893
    .line 894
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 895
    .line 896
    .line 897
    move-result v13

    .line 898
    if-eqz v13, :cond_24

    .line 899
    .line 900
    goto :goto_17

    .line 901
    :cond_24
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 902
    .line 903
    .line 904
    move-result-object v12

    .line 905
    :cond_25
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 906
    .line 907
    .line 908
    move-result v13

    .line 909
    if-eqz v13, :cond_26

    .line 910
    .line 911
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v13

    .line 915
    check-cast v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 916
    .line 917
    iget v13, v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->format:I

    .line 918
    .line 919
    new-instance v14, Landroidx/camera/camera2/pipe/StreamFormat;

    .line 920
    .line 921
    invoke-direct {v14, v13}, Landroidx/camera/camera2/pipe/StreamFormat;-><init>(I)V

    .line 922
    .line 923
    .line 924
    sget-object v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewFormats:Ljava/util/List;

    .line 925
    .line 926
    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    move-result v13

    .line 930
    if-eqz v13, :cond_25

    .line 931
    .line 932
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    goto :goto_16

    .line 936
    :cond_26
    :goto_17
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    goto :goto_16

    .line 940
    :cond_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 941
    .line 942
    .line 943
    move-result v7

    .line 944
    if-nez v7, :cond_28

    .line 945
    .line 946
    sget-object v4, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewFormatComparator:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;

    .line 947
    .line 948
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 949
    .line 950
    .line 951
    move-result-object v3

    .line 952
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 953
    .line 954
    .line 955
    move-result-object v4

    .line 956
    :cond_28
    :goto_18
    new-instance v3, Ljava/util/ArrayList;

    .line 957
    .line 958
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .line 960
    .line 961
    new-instance v6, Ljava/util/ArrayList;

    .line 962
    .line 963
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .line 965
    .line 966
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 967
    .line 968
    .line 969
    move-result-object v7

    .line 970
    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 971
    .line 972
    .line 973
    move-result v8

    .line 974
    if-eqz v8, :cond_2d

    .line 975
    .line 976
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v8

    .line 980
    move-object v12, v8

    .line 981
    check-cast v12, Landroidx/camera/camera2/pipe/CameraStream;

    .line 982
    .line 983
    iget-object v12, v12, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 984
    .line 985
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 986
    .line 987
    .line 988
    move-result v13

    .line 989
    if-eqz v13, :cond_29

    .line 990
    .line 991
    goto :goto_1c

    .line 992
    :cond_29
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 993
    .line 994
    .line 995
    move-result-object v12

    .line 996
    :goto_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 997
    .line 998
    .line 999
    move-result v13

    .line 1000
    if-eqz v13, :cond_2c

    .line 1001
    .line 1002
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v13

    .line 1006
    check-cast v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 1007
    .line 1008
    iget-object v13, v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 1009
    .line 1010
    if-nez v13, :cond_2a

    .line 1011
    .line 1012
    const/4 v9, 0x0

    .line 1013
    goto :goto_1b

    .line 1014
    :cond_2a
    iget-wide v13, v13, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    .line 1015
    .line 1016
    const-wide/16 v9, 0x3

    .line 1017
    .line 1018
    invoke-static {v13, v14, v9, v10}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v9

    .line 1022
    :goto_1b
    if-eqz v9, :cond_2b

    .line 1023
    .line 1024
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    .line 1026
    .line 1027
    goto :goto_1d

    .line 1028
    :cond_2b
    const/16 v9, 0xa

    .line 1029
    .line 1030
    const-wide/16 v10, 0x1

    .line 1031
    .line 1032
    goto :goto_1a

    .line 1033
    :cond_2c
    :goto_1c
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    :goto_1d
    const/16 v9, 0xa

    .line 1037
    .line 1038
    const-wide/16 v10, 0x1

    .line 1039
    .line 1040
    goto :goto_19

    .line 1041
    :cond_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1042
    .line 1043
    .line 1044
    move-result v7

    .line 1045
    if-nez v7, :cond_2e

    .line 1046
    .line 1047
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v4

    .line 1051
    goto :goto_21

    .line 1052
    :cond_2e
    new-instance v3, Ljava/util/ArrayList;

    .line 1053
    .line 1054
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .line 1056
    .line 1057
    new-instance v6, Ljava/util/ArrayList;

    .line 1058
    .line 1059
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .line 1061
    .line 1062
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v7

    .line 1066
    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v8

    .line 1070
    if-eqz v8, :cond_33

    .line 1071
    .line 1072
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v8

    .line 1076
    move-object v9, v8

    .line 1077
    check-cast v9, Landroidx/camera/camera2/pipe/CameraStream;

    .line 1078
    .line 1079
    iget-object v9, v9, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 1080
    .line 1081
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1082
    .line 1083
    .line 1084
    move-result v10

    .line 1085
    if-eqz v10, :cond_30

    .line 1086
    .line 1087
    :cond_2f
    const-wide/16 v12, 0x1

    .line 1088
    .line 1089
    goto :goto_20

    .line 1090
    :cond_30
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v9

    .line 1094
    :cond_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1095
    .line 1096
    .line 1097
    move-result v10

    .line 1098
    if-eqz v10, :cond_2f

    .line 1099
    .line 1100
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v10

    .line 1104
    check-cast v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 1105
    .line 1106
    iget-object v10, v10, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    .line 1107
    .line 1108
    if-nez v10, :cond_32

    .line 1109
    .line 1110
    const/4 v10, 0x0

    .line 1111
    const-wide/16 v12, 0x1

    .line 1112
    .line 1113
    goto :goto_1f

    .line 1114
    :cond_32
    iget-wide v10, v10, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->value:J

    .line 1115
    .line 1116
    const-wide/16 v12, 0x1

    .line 1117
    .line 1118
    invoke-static {v10, v11, v12, v13}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v10

    .line 1122
    :goto_1f
    if-eqz v10, :cond_31

    .line 1123
    .line 1124
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    .line 1126
    .line 1127
    goto :goto_1e

    .line 1128
    :goto_20
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    goto :goto_1e

    .line 1132
    :cond_33
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v7

    .line 1136
    if-nez v7, :cond_34

    .line 1137
    .line 1138
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v4

    .line 1142
    :cond_34
    :goto_21
    iput-object v4, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streams:Ljava/util/ArrayList;

    .line 1143
    .line 1144
    new-instance v3, Ljava/util/ArrayList;

    .line 1145
    .line 1146
    const/16 v6, 0xa

    .line 1147
    .line 1148
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1149
    .line 1150
    .line 1151
    move-result v6

    .line 1152
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1153
    .line 1154
    .line 1155
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v4

    .line 1159
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1160
    .line 1161
    .line 1162
    move-result v6

    .line 1163
    if-eqz v6, :cond_35

    .line 1164
    .line 1165
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v6

    .line 1169
    check-cast v6, Landroidx/camera/camera2/pipe/CameraStream;

    .line 1170
    .line 1171
    iget v6, v6, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 1172
    .line 1173
    new-instance v7, Landroidx/camera/camera2/pipe/StreamId;

    .line 1174
    .line 1175
    invoke-direct {v7, v6}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    .line 1180
    .line 1181
    goto :goto_22

    .line 1182
    :cond_35
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1183
    .line 1184
    .line 1185
    iput-object v5, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/LinkedHashMap;

    .line 1186
    .line 1187
    new-instance v3, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 1188
    .line 1189
    const/4 v4, 0x1

    .line 1190
    invoke-direct {v3, v4, v0}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;-><init>(ILjava/lang/Object;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v2

    .line 1197
    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputConfigs:Ljava/util/List;

    .line 1198
    .line 1199
    iput-object v1, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputConfigMap:Ljava/util/LinkedHashMap;

    .line 1200
    .line 1201
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streams:Ljava/util/ArrayList;

    .line 1202
    .line 1203
    new-instance v2, Ljava/util/ArrayList;

    .line 1204
    .line 1205
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    .line 1207
    .line 1208
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v1

    .line 1212
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1213
    .line 1214
    .line 1215
    move-result v3

    .line 1216
    if-eqz v3, :cond_36

    .line 1217
    .line 1218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3

    .line 1222
    check-cast v3, Landroidx/camera/camera2/pipe/CameraStream;

    .line 1223
    .line 1224
    iget-object v3, v3, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 1225
    .line 1226
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 1227
    .line 1228
    .line 1229
    goto :goto_23

    .line 1230
    :cond_36
    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    .line 1231
    .line 1232
    new-instance v1, Lkotlin/collections/builders/MapBuilder;

    .line 1233
    .line 1234
    invoke-direct {v1}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 1235
    .line 1236
    .line 1237
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1238
    .line 1239
    iget-object v2, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 1240
    .line 1241
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v2

    .line 1245
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1246
    .line 1247
    .line 1248
    move-result v3

    .line 1249
    if-eqz v3, :cond_37

    .line 1250
    .line 1251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v3

    .line 1255
    check-cast v3, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 1256
    .line 1257
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1258
    .line 1259
    .line 1260
    goto :goto_24

    .line 1261
    :cond_37
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v1

    .line 1265
    iput-object v1, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSourceMap:Lkotlin/collections/builders/MapBuilder;

    .line 1266
    .line 1267
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSourceMap:Lkotlin/collections/builders/MapBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/collections/builders/MapBuilderValues;

    .line 8
    .line 9
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilderValues;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;

    .line 24
    .line 25
    instance-of v1, v0, Ljava/lang/AutoCloseable;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->close()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streams:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Landroidx/camera/camera2/pipe/CameraStream;

    .line 19
    .line 20
    iget v1, v1, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 21
    .line 22
    if-ne v1, p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    check-cast v0, Landroidx/camera/camera2/pipe/CameraStream;

    .line 27
    .line 28
    return-object v0
.end method

.method public final getCameraStreamConfig-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream$Config;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v2, v0

    .line 25
    check-cast v2, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/camera/camera2/pipe/CameraStream;

    .line 32
    .line 33
    iget v2, v2, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 34
    .line 35
    if-ne v2, p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v1

    .line 39
    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StreamGraph("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
