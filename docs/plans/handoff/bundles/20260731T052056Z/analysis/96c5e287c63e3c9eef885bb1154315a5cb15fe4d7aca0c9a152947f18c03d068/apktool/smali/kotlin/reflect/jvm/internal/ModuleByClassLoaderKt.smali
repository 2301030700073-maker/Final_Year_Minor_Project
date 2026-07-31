.class public abstract Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final moduleByClassLoader:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->moduleByClassLoader:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static final getOrCreateModule(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;
    .locals 26

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getSafeClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;-><init>(Ljava/lang/ClassLoader;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->moduleByClassLoader:Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    return-object v4

    .line 32
    :cond_0
    invoke-virtual {v2, v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 36
    .line 37
    invoke-direct {v8, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;-><init>(Ljava/lang/ClassLoader;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 41
    .line 42
    const-class v4, Lkotlin/Unit;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;-><init>(Ljava/lang/ClassLoader;)V

    .line 52
    .line 53
    .line 54
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 55
    .line 56
    invoke-direct {v7, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;-><init>(Ljava/lang/ClassLoader;)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v5, "runtime module for "

    .line 62
    .line 63
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;

    .line 74
    .line 75
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 76
    .line 77
    const-string v5, "DeserializationComponentsForJava.ModuleData"

    .line 78
    .line 79
    invoke-direct {v10, v5}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    .line 83
    .line 84
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;->FROM_DEPENDENCIES:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;

    .line 85
    .line 86
    invoke-direct {v5, v10, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Kind;)V

    .line 87
    .line 88
    .line 89
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 90
    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v9, "<"

    .line 94
    .line 95
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const/16 v0, 0x3e

    .line 102
    .line 103
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/16 v6, 0x38

    .line 115
    .line 116
    invoke-direct {v11, v0, v10, v5, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;I)V

    .line 117
    .line 118
    .line 119
    iget-object v6, v10, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    .line 120
    .line 121
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->lock()V

    .line 122
    .line 123
    .line 124
    :try_start_0
    iget-object v0, v5, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->builtInsModule:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 125
    .line 126
    if-nez v0, :cond_7

    .line 127
    .line 128
    iput-object v11, v5, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->builtInsModule:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$initialize$1;

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-direct {v0, v11, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$initialize$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;I)V

    .line 137
    .line 138
    .line 139
    iput-object v0, v5, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->settingsComputation:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$initialize$1;

    .line 140
    .line 141
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 142
    .line 143
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 147
    .line 148
    const/4 v12, 0x4

    .line 149
    invoke-direct {v0, v12}, Lokhttp3/ConnectionPool;-><init>(I)V

    .line 150
    .line 151
    .line 152
    new-instance v12, Lcoil3/ImageLoader$Builder;

    .line 153
    .line 154
    invoke-direct {v12, v10, v11}, Lcoil3/ImageLoader$Builder;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V

    .line 155
    .line 156
    .line 157
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    .line 158
    .line 159
    move-object v14, v5

    .line 160
    new-instance v5, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 161
    .line 162
    new-instance v15, Lokio/ByteString$Companion;

    .line 163
    .line 164
    invoke-direct {v15, v10}, Lokio/ByteString$Companion;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    .line 165
    .line 166
    .line 167
    move-object/from16 v16, v14

    .line 168
    .line 169
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    .line 170
    .line 171
    invoke-direct {v14, v11, v12}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lcoil3/ImageLoader$Builder;)V

    .line 172
    .line 173
    .line 174
    move/from16 v17, v6

    .line 175
    .line 176
    move-object v6, v10

    .line 177
    move-object v10, v15

    .line 178
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 179
    .line 180
    move-object/from16 p0, v0

    .line 181
    .line 182
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    .line 183
    .line 184
    invoke-direct {v15, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v18, v16

    .line 188
    .line 189
    new-instance v16, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;

    .line 190
    .line 191
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 192
    .line 193
    .line 194
    sget-object v19, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    .line 195
    .line 196
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object v22, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->Default:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 200
    .line 201
    new-instance v19, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    .line 202
    .line 203
    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    .line 204
    .line 205
    .line 206
    move-object/from16 v20, v11

    .line 207
    .line 208
    move-object/from16 v11, p0

    .line 209
    .line 210
    move-object/from16 p0, v3

    .line 211
    .line 212
    move-object v3, v12

    .line 213
    move-object v12, v13

    .line 214
    move-object/from16 v13, v20

    .line 215
    .line 216
    move-object/from16 v20, v18

    .line 217
    .line 218
    move-object/from16 v18, v0

    .line 219
    .line 220
    move-object/from16 v0, v20

    .line 221
    .line 222
    move-object/from16 v20, v4

    .line 223
    .line 224
    move/from16 v4, v17

    .line 225
    .line 226
    move-object/from16 v17, v22

    .line 227
    .line 228
    invoke-direct/range {v5 .. v19}, Lorg/wikipedia/databinding/ActivityPageBinding;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lokio/ByteString$Companion;Lokhttp3/ConnectionPool;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;)V

    .line 229
    .line 230
    .line 231
    move-object v7, v9

    .line 232
    move-object v9, v5

    .line 233
    move-object v5, v7

    .line 234
    move-object v7, v11

    .line 235
    move-object v11, v13

    .line 236
    move-object/from16 v16, v17

    .line 237
    .line 238
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    .line 239
    .line 240
    invoke-direct {v14, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;-><init>(Lorg/wikipedia/databinding/ActivityPageBinding;)V

    .line 241
    .line 242
    .line 243
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 244
    .line 245
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    new-instance v12, Lokhttp3/FormBody$Builder;

    .line 249
    .line 250
    const/16 v10, 0x9

    .line 251
    .line 252
    invoke-direct {v12, v10, v8, v5, v4}, Lokhttp3/FormBody$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 253
    .line 254
    .line 255
    new-instance v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 256
    .line 257
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 258
    .line 259
    .line 260
    iput-object v8, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 261
    .line 262
    new-instance v15, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

    .line 263
    .line 264
    const/16 v10, 0x10

    .line 265
    .line 266
    invoke-direct {v15, v10, v13}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;-><init>(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v15}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunction(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    iput-object v10, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v11, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v3, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 278
    .line 279
    new-instance v10, Lokhttp3/FormBody$Builder;

    .line 280
    .line 281
    invoke-direct {v10, v11, v3}, Lokhttp3/FormBody$Builder;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lcoil3/ImageLoader$Builder;)V

    .line 282
    .line 283
    .line 284
    iput-object v10, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 285
    .line 286
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 287
    .line 288
    iput-object v10, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v9, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 291
    .line 292
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;

    .line 293
    .line 294
    invoke-static {v9}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v24

    .line 298
    iget-object v9, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 299
    .line 300
    instance-of v10, v9, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    .line 301
    .line 302
    if-eqz v10, :cond_2

    .line 303
    .line 304
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_2
    const/4 v9, 0x0

    .line 308
    :goto_0
    new-instance v10, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 309
    .line 310
    move-object/from16 v22, v16

    .line 311
    .line 312
    sget-object v16, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    .line 313
    .line 314
    if-eqz v9, :cond_3

    .line 315
    .line 316
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    .line 317
    .line 318
    .line 319
    move-result-object v15

    .line 320
    if-eqz v15, :cond_3

    .line 321
    .line 322
    :goto_1
    move-object/from16 v19, v15

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_3
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;

    .line 326
    .line 327
    goto :goto_1

    .line 328
    :goto_2
    if-eqz v9, :cond_4

    .line 329
    .line 330
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    if-eqz v9, :cond_4

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_4
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;->INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;

    .line 338
    .line 339
    :goto_3
    sget-object v21, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    .line 340
    .line 341
    new-instance v15, Lokio/ByteString$Companion;

    .line 342
    .line 343
    invoke-direct {v15, v6}, Lokio/ByteString$Companion;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    .line 344
    .line 345
    .line 346
    const/high16 v25, 0x40000

    .line 347
    .line 348
    const/16 v18, 0x9

    .line 349
    .line 350
    sget-object v17, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 351
    .line 352
    move/from16 v23, v18

    .line 353
    .line 354
    move-object/from16 v18, v3

    .line 355
    .line 356
    move/from16 v3, v23

    .line 357
    .line 358
    move-object/from16 v23, v15

    .line 359
    .line 360
    move-object/from16 v15, v20

    .line 361
    .line 362
    move-object/from16 v20, v9

    .line 363
    .line 364
    move-object v9, v10

    .line 365
    move-object v10, v6

    .line 366
    invoke-direct/range {v9 .. v25}, Lorg/wikipedia/databinding/ActivityGalleryBinding;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;Ljava/lang/Iterable;Lcoil3/ImageLoader$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lokio/ByteString$Companion;Ljava/util/List;I)V

    .line 367
    .line 368
    .line 369
    move-object/from16 v16, v22

    .line 370
    .line 371
    move-object v10, v9

    .line 372
    move-object v9, v14

    .line 373
    iput-object v10, v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->components:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 374
    .line 375
    new-instance v12, Lokhttp3/ConnectionPool;

    .line 376
    .line 377
    invoke-direct {v12, v3, v9}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    iput-object v12, v7, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 381
    .line 382
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;

    .line 383
    .line 384
    move-object v3, v14

    .line 385
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    .line 386
    .line 387
    .line 388
    move-result-object v14

    .line 389
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    .line 390
    .line 391
    .line 392
    move-result-object v15

    .line 393
    new-instance v0, Lokio/ByteString$Companion;

    .line 394
    .line 395
    invoke-direct {v0, v6}, Lokio/ByteString$Companion;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    .line 396
    .line 397
    .line 398
    move-object/from16 v17, v0

    .line 399
    .line 400
    move-object v0, v10

    .line 401
    move-object v12, v11

    .line 402
    move-object/from16 v13, v18

    .line 403
    .line 404
    move-object/from16 v11, p0

    .line 405
    .line 406
    move-object v10, v6

    .line 407
    invoke-direct/range {v9 .. v17}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lcoil3/ImageLoader$Builder;Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lokio/ByteString$Companion;)V

    .line 408
    .line 409
    .line 410
    move-object v11, v12

    .line 411
    const/4 v6, 0x1

    .line 412
    new-array v7, v6, [Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 413
    .line 414
    aput-object v11, v7, v4

    .line 415
    .line 416
    invoke-static {v7}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    new-instance v10, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 421
    .line 422
    invoke-direct {v10, v7, v4}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Ljava/util/List;Z)V

    .line 423
    .line 424
    .line 425
    iput-object v10, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->dependencies:Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 426
    .line 427
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;

    .line 428
    .line 429
    const/4 v10, 0x2

    .line 430
    new-array v10, v10, [Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    .line 431
    .line 432
    aput-object v3, v10, v4

    .line 433
    .line 434
    aput-object v9, v10, v6

    .line 435
    .line 436
    invoke-static {v10}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v6, "CompositeProvider@RuntimeModuleData for "

    .line 443
    .line 444
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    invoke-direct {v7, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iput-object v7, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->packageFragmentProviderForModuleContent:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    .line 458
    .line 459
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    .line 460
    .line 461
    new-instance v4, Lokhttp3/MultipartBody$Builder;

    .line 462
    .line 463
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 464
    .line 465
    .line 466
    iput-object v5, v4, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 467
    .line 468
    iput-object v8, v4, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 469
    .line 470
    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap;

    .line 471
    .line 472
    invoke-direct {v5}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 473
    .line 474
    .line 475
    iput-object v5, v4, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 476
    .line 477
    invoke-direct {v3, v0, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;-><init>(Lorg/wikipedia/databinding/ActivityGalleryBinding;Lokhttp3/MultipartBody$Builder;)V

    .line 478
    .line 479
    .line 480
    :goto_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 481
    .line 482
    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 490
    .line 491
    if-nez v0, :cond_5

    .line 492
    .line 493
    return-object v3

    .line 494
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    .line 499
    .line 500
    if-eqz v4, :cond_6

    .line 501
    .line 502
    return-object v4

    .line 503
    :cond_6
    invoke-virtual {v2, v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    goto :goto_4

    .line 507
    :cond_7
    move-object v0, v5

    .line 508
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    .line 509
    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    const-string v3, "Built-ins module is already set: "

    .line 513
    .line 514
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->builtInsModule:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 518
    .line 519
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    const-string v0, " (attempting to reset to "

    .line 523
    .line 524
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v0, ")"

    .line 531
    .line 532
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :catchall_0
    move-exception v0

    .line 544
    :try_start_2
    iget-object v1, v10, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->exceptionHandlingStrategy:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    .line 545
    .line 546
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 550
    :catchall_1
    move-exception v0

    .line 551
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    .line 552
    .line 553
    .line 554
    throw v0
.end method
