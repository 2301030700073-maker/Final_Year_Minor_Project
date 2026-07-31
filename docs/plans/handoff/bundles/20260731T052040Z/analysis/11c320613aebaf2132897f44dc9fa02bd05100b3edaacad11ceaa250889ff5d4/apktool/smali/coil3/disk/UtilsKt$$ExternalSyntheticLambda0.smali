.class public final synthetic Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 7
    iput p2, p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    .line 12
    .line 13
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    .line 20
    .line 21
    sget-object v0, Lnet/newpipe/app/model/Developer$$serializer;->INSTANCE:Lnet/newpipe/app/model/Developer$$serializer;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_1
    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    .line 28
    .line 29
    sget-object v0, Lnet/newpipe/app/model/Library$$serializer;->INSTANCE:Lnet/newpipe/app/model/Library$$serializer;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_2
    sget-object p0, Lkotlinx/serialization/json/JsonArraySerializer;->descriptor:Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_3
    sget-object p0, Lkotlinx/serialization/json/JsonObjectSerializer;->descriptor:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_4
    sget-object p0, Lkotlinx/serialization/json/JsonLiteralSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_5
    sget-object p0, Lkotlinx/serialization/json/JsonNullSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_6
    sget-object p0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_7
    :try_start_0
    new-array p0, v1, [Lcoil3/util/DecoderServiceLoaderTarget;

    .line 51
    .line 52
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    move-object p0, v0

    .line 75
    new-instance v0, Ljava/util/ServiceConfigurationError;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v0, v1, p0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :pswitch_8
    :try_start_1
    new-instance p0, Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;

    .line 86
    .line 87
    invoke-direct {p0}, Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;-><init>()V

    .line 88
    .line 89
    .line 90
    new-array v0, v3, [Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;

    .line 91
    .line 92
    aput-object p0, v0, v1

    .line 93
    .line 94
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0}, Lcoil3/util/UtilsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    new-instance v0, Ljava/util/ServiceConfigurationError;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-direct {v0, v1, p0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :pswitch_9
    new-instance p0, Lokhttp3/OkHttpClient;

    .line 128
    .line 129
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 130
    .line 131
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 138
    .line 139
    invoke-direct {v0, p0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;-><init>(Lokhttp3/OkHttpClient;)V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :pswitch_a
    sget-object p0, Lcoil3/network/UncoordinatedConcurrentRequestStrategy;->UNCOORDINATED:Lcoil3/network/UncoordinatedConcurrentRequestStrategy;

    .line 144
    .line 145
    return-object p0

    .line 146
    :pswitch_b
    sget-object p0, Lcoil3/network/CacheStrategy;->DEFAULT:Lcoil3/network/internal/DefaultCacheStrategy;

    .line 147
    .line 148
    return-object p0

    .line 149
    :pswitch_c
    new-instance p0, Landroidx/transition/Transition$1;

    .line 150
    .line 151
    invoke-direct {p0, v3}, Landroidx/transition/Transition$1;-><init>(I)V

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :pswitch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string v0, "Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`"

    .line 158
    .line 159
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :pswitch_e
    :try_start_2
    sget-object p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 164
    .line 165
    sget-object p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->getThreadSessionMethod$delegate:Lkotlin/Lazy;

    .line 166
    .line 167
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Ljava/lang/reflect/Method;

    .line 172
    .line 173
    if-eqz p0, :cond_0

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    if-eqz p0, :cond_0

    .line 180
    .line 181
    const-string v0, "beginTransaction"

    .line 182
    .line 183
    const/4 v4, 0x4

    .line 184
    new-array v4, v4, [Ljava/lang/Class;

    .line 185
    .line 186
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 187
    .line 188
    aput-object v5, v4, v1

    .line 189
    .line 190
    const-class v1, Landroid/database/sqlite/SQLiteTransactionListener;

    .line 191
    .line 192
    aput-object v1, v4, v3

    .line 193
    .line 194
    const/4 v1, 0x2

    .line 195
    aput-object v5, v4, v1

    .line 196
    .line 197
    const-class v1, Landroid/os/CancellationSignal;

    .line 198
    .line 199
    const/4 v3, 0x3

    .line 200
    aput-object v1, v4, v3

    .line 201
    .line 202
    invoke-virtual {p0, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 203
    .line 204
    .line 205
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    :catchall_2
    :cond_0
    return-object v2

    .line 207
    :pswitch_f
    :try_start_3
    const-class p0, Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    .line 209
    const-string v0, "getThreadSession"

    .line 210
    .line 211
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 216
    .line 217
    .line 218
    move-object v2, p0

    .line 219
    :catchall_3
    return-object v2

    .line 220
    :pswitch_10
    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    .line 221
    .line 222
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 223
    .line 224
    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 225
    .line 226
    .line 227
    return-object p0

    .line 228
    :pswitch_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 229
    .line 230
    const-string v0, "CompositionLocal LocalSavedStateRegistryOwner not present"

    .line 231
    .line 232
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :pswitch_12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 237
    .line 238
    return-object p0

    .line 239
    :pswitch_13
    return-object v0

    .line 240
    :pswitch_14
    sget-object p0, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->LocalNavigationEventDispatcherOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 241
    .line 242
    return-object v2

    .line 243
    :pswitch_15
    return-object v0

    .line 244
    :pswitch_16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 245
    .line 246
    const-string v0, "Unexpected access to LocalNavAnimatedContentScope. You should only access LocalNavAnimatedContentScope inside a NavEntry passed to NavDisplay. AnimatedContentScope in OverlayScenes are no-op."

    .line 247
    .line 248
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p0

    .line 252
    :pswitch_17
    sget-object p0, Landroidx/navigation3/scene/SharedEntryInSceneNavEntryDecoratorKt;->LocalCurrentScene:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 253
    .line 254
    return-object v2

    .line 255
    :pswitch_18
    new-instance p0, Ljava/util/HashSet;

    .line 256
    .line 257
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 258
    .line 259
    .line 260
    return-object p0

    .line 261
    :pswitch_19
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 262
    .line 263
    const-string v0, "CompositionLocal LocalLifecycleOwner not present"

    .line 264
    .line 265
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p0

    .line 269
    :pswitch_1a
    sget-object p0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 270
    .line 271
    return-object p0

    .line 272
    :pswitch_1b
    sget-object p0, Lokio/FileSystem;->SYSTEM:Lokio/JvmSystemFileSystem;

    .line 273
    .line 274
    sget-object v0, Lokio/FileSystem;->SYSTEM_TEMPORARY_DIRECTORY:Lokio/Path;

    .line 275
    .line 276
    const-string v1, "coil3_disk_cache"

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    const-wide/32 v3, 0xa00000

    .line 283
    .line 284
    .line 285
    :try_start_4
    invoke-virtual {v0}, Lokio/Path;->toFile()Ljava/io/File;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    new-instance v2, Landroid/os/StatFs;

    .line 297
    .line 298
    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 302
    .line 303
    .line 304
    move-result-wide v5

    .line 305
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 306
    .line 307
    .line 308
    move-result-wide v1

    .line 309
    mul-long/2addr v1, v5

    .line 310
    long-to-double v1, v1

    .line 311
    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    mul-double/2addr v5, v1

    .line 317
    double-to-long v1, v5

    .line 318
    const-wide/32 v5, 0xfa00000

    .line 319
    .line 320
    .line 321
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    .line 322
    .line 323
    .line 324
    move-result-wide v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 325
    :catch_0
    new-instance v1, Lcoil3/disk/RealDiskCache;

    .line 326
    .line 327
    invoke-direct {v1, v3, v4, p0, v0}, Lcoil3/disk/RealDiskCache;-><init>(JLokio/FileSystem;Lokio/Path;)V

    .line 328
    .line 329
    .line 330
    return-object v1

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
