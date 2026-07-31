.class public final Landroidx/datastore/core/SimpleActor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $onComplete:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/datastore/core/SimpleActor$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final invoke$androidx$compose$ui$platform$AndroidUiFrameClock$withFrameNanos$2$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p1, p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/datastore/core/SimpleActor$1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x24

    .line 4
    .line 5
    const/16 v2, 0x2e

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v8, p1

    .line 14
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 15
    .line 16
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lokio/internal/DefaultSocket;

    .line 22
    .line 23
    iget-object v0, p1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v7, p0

    .line 38
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 39
    .line 40
    iget-object p0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 45
    .line 46
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v6, v1

    .line 49
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 50
    .line 51
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v9, p1

    .line 54
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 55
    .line 56
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 61
    .line 62
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 65
    .line 66
    new-instance p1, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 67
    .line 68
    const/16 v1, 0x18

    .line 69
    .line 70
    invoke-direct {p1, v1, v7, v0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v10, p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 74
    .line 75
    .line 76
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    .line 77
    .line 78
    invoke-static/range {v6 .. v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;->create(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    :cond_0
    return-object v5

    .line 83
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/google/android/material/internal/CheckableGroup;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Lokhttp3/Request$Builder;

    .line 93
    .line 94
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 97
    .line 98
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 99
    .line 100
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 101
    .line 102
    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    .line 103
    .line 104
    if-eqz v2, :cond_1

    .line 105
    .line 106
    iget-object v2, v1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 107
    .line 108
    move-object v2, p1

    .line 109
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    .line 110
    .line 111
    iget-boolean v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;->isFreshlySupportedTypeUseAnnotation:Z

    .line 112
    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    iget-object v0, v0, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChangeListener:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 118
    .line 119
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 120
    .line 121
    if-eq v0, v2, :cond_6

    .line 122
    .line 123
    :cond_1
    if-eqz p0, :cond_5

    .line 124
    .line 125
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 126
    .line 127
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->BUILTINS_MODULE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 128
    .line 129
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-eqz p0, :cond_5

    .line 138
    .line 139
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveArrayType(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    if-eqz p0, :cond_5

    .line 144
    .line 145
    iget-object p0, v1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 146
    .line 147
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->JAVA_APPLICABILITY_TYPES:Ljava/util/LinkedHashMap;

    .line 148
    .line 149
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->target:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 150
    .line 151
    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->findAnnotation(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-nez p0, :cond_2

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_2
    invoke-static {p0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->enumArguments(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_3

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Ljava/lang/String;

    .line 184
    .line 185
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->TYPE:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_4

    .line 196
    .line 197
    iget-object p0, v1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_5
    :goto_0
    move v3, v4

    .line 201
    :cond_6
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    return-object p0

    .line 206
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    .line 215
    .line 216
    if-eqz v0, :cond_7

    .line 217
    .line 218
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;->map:Ljava/util/LinkedHashMap;

    .line 219
    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 229
    .line 230
    if-nez v0, :cond_9

    .line 231
    .line 232
    :cond_7
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p0, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 235
    .line 236
    if-ltz p1, :cond_8

    .line 237
    .line 238
    array-length v0, p0

    .line 239
    sub-int/2addr v0, v3

    .line 240
    if-gt p1, v0, :cond_8

    .line 241
    .line 242
    aget-object v0, p0, p1

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_8
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->NONE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 246
    .line 247
    :cond_9
    :goto_2
    return-object v0

    .line 248
    :pswitch_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$FindClassRequest;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 254
    .line 255
    iget-object v3, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;

    .line 258
    .line 259
    iget-object v6, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    .line 260
    .line 261
    iget-object v7, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 262
    .line 263
    iget-object v8, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$FindClassRequest;->name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 264
    .line 265
    invoke-direct {v0, v7, v8}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$FindClassRequest;->javaClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 269
    .line 270
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast p0, Lokhttp3/Request$Builder;

    .line 273
    .line 274
    iget-object v7, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v7, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 277
    .line 278
    const/4 v8, 0x5

    .line 279
    if-eqz p1, :cond_b

    .line 280
    .line 281
    iget-object v9, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 284
    .line 285
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->getJvmMetadataVersion()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;->classLoader:Ljava/lang/ClassLoader;

    .line 301
    .line 302
    :try_start_0
    invoke-static {v10, v4, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_3

    .line 307
    :catch_0
    move-object v9, v5

    .line 308
    :goto_3
    if-eqz v9, :cond_a

    .line 309
    .line 310
    invoke-static {v9}, Lkotlin/text/RegexKt;->create(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    if-eqz v9, :cond_a

    .line 315
    .line 316
    new-instance v10, Lokhttp3/ConnectionPool;

    .line 317
    .line 318
    invoke-direct {v10, v8, v9}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_a
    move-object v10, v5

    .line 323
    goto :goto_4

    .line 324
    :cond_b
    iget-object v9, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 327
    .line 328
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->getJvmMetadataVersion()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    invoke-virtual {v9, v0, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;->findKotlinClassOrContent(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lokhttp3/ConnectionPool;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    :goto_4
    if-eqz v10, :cond_c

    .line 337
    .line 338
    iget-object v9, v10, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_c
    move-object v9, v5

    .line 344
    :goto_5
    if-eqz v9, :cond_d

    .line 345
    .line 346
    iget-object v10, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    .line 347
    .line 348
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    goto :goto_6

    .line 353
    :cond_d
    move-object v10, v5

    .line 354
    :goto_6
    if-eqz v10, :cond_e

    .line 355
    .line 356
    iget-object v11, v10, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->relativeClassName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 357
    .line 358
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->isRoot()Z

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    if-eqz v11, :cond_1e

    .line 367
    .line 368
    iget-boolean v10, v10, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->local:Z

    .line 369
    .line 370
    if-eqz v10, :cond_e

    .line 371
    .line 372
    goto/16 :goto_f

    .line 373
    .line 374
    :cond_e
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$NotFound;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$NotFound;

    .line 375
    .line 376
    if-nez v9, :cond_f

    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_f
    iget-object v11, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->classHeader:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    .line 380
    .line 381
    iget-object v11, v11, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;->kind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    .line 382
    .line 383
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    .line 384
    .line 385
    if-ne v11, v12, :cond_11

    .line 386
    .line 387
    iget-object v11, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c:Lokhttp3/Request$Builder;

    .line 388
    .line 389
    iget-object v11, v11, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v11, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 392
    .line 393
    iget-object v11, v11, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 396
    .line 397
    invoke-virtual {v11, v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->readClassData$descriptors_jvm(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    .line 398
    .line 399
    .line 400
    move-result-object v12

    .line 401
    if-nez v12, :cond_10

    .line 402
    .line 403
    move-object v9, v5

    .line 404
    goto :goto_7

    .line 405
    :cond_10
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->getComponents()Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 406
    .line 407
    .line 408
    move-result-object v11

    .line 409
    iget-object v11, v11, Lorg/wikipedia/databinding/ActivityGalleryBinding;->toolbar:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    .line 412
    .line 413
    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    .line 414
    .line 415
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-virtual {v11, v9, v12}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    :goto_7
    if-eqz v9, :cond_12

    .line 424
    .line 425
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;

    .line 426
    .line 427
    invoke-direct {v10, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)V

    .line 428
    .line 429
    .line 430
    goto :goto_8

    .line 431
    :cond_11
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$SyntheticClass;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$SyntheticClass;

    .line 432
    .line 433
    :cond_12
    :goto_8
    instance-of v9, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;

    .line 434
    .line 435
    if-eqz v9, :cond_13

    .line 436
    .line 437
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;

    .line 438
    .line 439
    iget-object v5, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 440
    .line 441
    goto/16 :goto_f

    .line 442
    .line 443
    :cond_13
    instance-of v9, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$SyntheticClass;

    .line 444
    .line 445
    if-eqz v9, :cond_14

    .line 446
    .line 447
    goto/16 :goto_f

    .line 448
    .line 449
    :cond_14
    instance-of v9, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$NotFound;

    .line 450
    .line 451
    if-eqz v9, :cond_1d

    .line 452
    .line 453
    if-nez p1, :cond_17

    .line 454
    .line 455
    iget-object p1, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 458
    .line 459
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->isRoot()Z

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    if-eqz v10, :cond_15

    .line 486
    .line 487
    goto :goto_9

    .line 488
    :cond_15
    new-instance v10, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v9

    .line 494
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    :goto_9
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;->classLoader:Ljava/lang/ClassLoader;

    .line 508
    .line 509
    :try_start_1
    invoke-static {v1, v4, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    goto :goto_a

    .line 514
    :catch_1
    move-object p1, v5

    .line 515
    :goto_a
    if-eqz p1, :cond_16

    .line 516
    .line 517
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 518
    .line 519
    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;-><init>(Ljava/lang/Class;)V

    .line 520
    .line 521
    .line 522
    move-object p1, v1

    .line 523
    goto :goto_b

    .line 524
    :cond_16
    move-object p1, v5

    .line 525
    :cond_17
    :goto_b
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;->BINARY:Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;

    .line 526
    .line 527
    if-nez v1, :cond_1a

    .line 528
    .line 529
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 530
    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    const-string v2, "Couldn\'t find kotlin binary class for light class created by kotlin binary file\nJavaClass: "

    .line 534
    .line 535
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const-string v2, "\nClassId: "

    .line 542
    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const-string v2, "\nfindKotlinClass(JavaClass) = "

    .line 550
    .line 551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    iget-object v2, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 557
    .line 558
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->getJvmMetadataVersion()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;->classLoader:Ljava/lang/ClassLoader;

    .line 577
    .line 578
    :try_start_2
    invoke-static {p1, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 582
    goto :goto_c

    .line 583
    :catch_2
    move-object p1, v5

    .line 584
    :goto_c
    if-eqz p1, :cond_18

    .line 585
    .line 586
    invoke-static {p1}, Lkotlin/text/RegexKt;->create(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    if-eqz p1, :cond_18

    .line 591
    .line 592
    new-instance v2, Lokhttp3/ConnectionPool;

    .line 593
    .line 594
    invoke-direct {v2, v8, p1}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    goto :goto_d

    .line 598
    :cond_18
    move-object v2, v5

    .line 599
    :goto_d
    if-eqz v2, :cond_19

    .line 600
    .line 601
    iget-object p1, v2, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 602
    .line 603
    move-object v5, p1

    .line 604
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 605
    .line 606
    :cond_19
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    const-string p1, "\nfindKotlinClass(ClassId) = "

    .line 610
    .line 611
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    iget-object p1, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 617
    .line 618
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->getJvmMetadataVersion()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-static {p1, v0, v2}, Lkotlin/TuplesKt;->findKotlinClass(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const/16 p1, 0xa

    .line 630
    .line 631
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    throw p0

    .line 642
    :cond_1a
    if-eqz p1, :cond_1b

    .line 643
    .line 644
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    goto :goto_e

    .line 649
    :cond_1b
    move-object v0, v5

    .line 650
    :goto_e
    if-eqz v0, :cond_1e

    .line 651
    .line 652
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->isRoot()Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-nez v1, :cond_1e

    .line 657
    .line 658
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    iget-object v1, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 663
    .line 664
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    if-nez v0, :cond_1c

    .line 669
    .line 670
    goto :goto_f

    .line 671
    :cond_1c
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 672
    .line 673
    invoke-direct {v0, p0, v6, p1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)V

    .line 674
    .line 675
    .line 676
    move-object v5, v0

    .line 677
    goto :goto_f

    .line 678
    :cond_1d
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 679
    .line 680
    .line 681
    :cond_1e
    :goto_f
    return-object v5

    .line 682
    :pswitch_3
    move-object v8, p1

    .line 683
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 684
    .line 685
    iget-object p1, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 686
    .line 687
    check-cast p1, Lokhttp3/Request$Builder;

    .line 688
    .line 689
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    .line 691
    .line 692
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    .line 695
    .line 696
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->nestedClassIndex:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 697
    .line 698
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 699
    .line 700
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    check-cast v0, Ljava/util/Set;

    .line 705
    .line 706
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-eqz v0, :cond_21

    .line 711
    .line 712
    iget-object p0, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast p0, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 715
    .line 716
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 719
    .line 720
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0, v8}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->isRoot()Z

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    if-eqz v1, :cond_1f

    .line 758
    .line 759
    goto :goto_10

    .line 760
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 761
    .line 762
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    :goto_10
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;->classLoader:Ljava/lang/ClassLoader;

    .line 780
    .line 781
    :try_start_3
    invoke-static {v0, v4, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 785
    goto :goto_11

    .line 786
    :catch_3
    move-object p0, v5

    .line 787
    :goto_11
    if-eqz p0, :cond_20

    .line 788
    .line 789
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 790
    .line 791
    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;-><init>(Ljava/lang/Class;)V

    .line 792
    .line 793
    .line 794
    goto :goto_12

    .line 795
    :cond_20
    move-object v0, v5

    .line 796
    :goto_12
    if-eqz v0, :cond_24

    .line 797
    .line 798
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 799
    .line 800
    invoke-direct {p0, p1, v6, v0, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)V

    .line 801
    .line 802
    .line 803
    move-object v5, p0

    .line 804
    goto :goto_13

    .line 805
    :cond_21
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->generatedNestedClassNames:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 806
    .line 807
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    check-cast v0, Ljava/util/Set;

    .line 812
    .line 813
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v0

    .line 817
    if-eqz v0, :cond_23

    .line 818
    .line 819
    invoke-static {}, Landroidx/room/Room;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 820
    .line 821
    .line 822
    move-result-object p0

    .line 823
    iget-object p1, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 824
    .line 825
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    .line 827
    .line 828
    invoke-static {p0}, Landroidx/room/Room;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    .line 829
    .line 830
    .line 831
    move-result-object p0

    .line 832
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->getSize()I

    .line 833
    .line 834
    .line 835
    move-result p1

    .line 836
    if-eqz p1, :cond_24

    .line 837
    .line 838
    if-ne p1, v3, :cond_22

    .line 839
    .line 840
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object p0

    .line 844
    move-object v5, p0

    .line 845
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 846
    .line 847
    goto :goto_13

    .line 848
    :cond_22
    const-string p1, "Multiple classes with same name are generated: "

    .line 849
    .line 850
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$8(Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    goto :goto_13

    .line 854
    :cond_23
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->enumEntryIndex:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 855
    .line 856
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    check-cast v0, Ljava/util/Map;

    .line 861
    .line 862
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;

    .line 867
    .line 868
    if-eqz v0, :cond_24

    .line 869
    .line 870
    iget-object v1, p1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 871
    .line 872
    check-cast v1, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 873
    .line 874
    iget-object v2, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 875
    .line 876
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 877
    .line 878
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$enumEntryIndex$1;

    .line 879
    .line 880
    const/4 v4, 0x2

    .line 881
    invoke-direct {v3, p0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$enumEntryIndex$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;I)V

    .line 882
    .line 883
    .line 884
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 885
    .line 886
    invoke-direct {v9, v2, v3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 887
    .line 888
    .line 889
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 890
    .line 891
    move-object v6, v1

    .line 892
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 893
    .line 894
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 895
    .line 896
    invoke-static {p1, v0}, Lkotlin/uuid/UuidKt;->resolveAnnotations(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    .line 897
    .line 898
    .line 899
    move-result-object v10

    .line 900
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    .line 901
    .line 902
    .line 903
    move-result-object v11

    .line 904
    invoke-static/range {v6 .. v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;->create(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    :cond_24
    :goto_13
    return-object v5

    .line 909
    :pswitch_4
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 910
    .line 911
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    .line 914
    .line 915
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    .line 917
    .line 918
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 919
    .line 920
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    .line 921
    .line 922
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    if-eqz v1, :cond_25

    .line 931
    .line 932
    invoke-static {p0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 933
    .line 934
    .line 935
    move-result-object p0

    .line 936
    goto :goto_14

    .line 937
    :cond_25
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->searchMethodsByNameWithoutBuiltinMagic(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/ArrayList;

    .line 938
    .line 939
    .line 940
    move-result-object p0

    .line 941
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->searchMethodsInSupertypesWithoutBuiltinMagic(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/ArrayList;

    .line 942
    .line 943
    .line 944
    move-result-object p1

    .line 945
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 946
    .line 947
    .line 948
    move-result-object p0

    .line 949
    :goto_14
    return-object p0

    .line 950
    :pswitch_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 951
    .line 952
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 953
    .line 954
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 955
    .line 956
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    if-eqz v0, :cond_26

    .line 961
    .line 962
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 963
    .line 964
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 965
    .line 966
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    :cond_26
    return-object p1

    .line 970
    :pswitch_6
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 971
    .line 972
    iget-object p1, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 973
    .line 974
    check-cast p1, Landroidx/compose/ui/window/PopupLayout;

    .line 975
    .line 976
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 977
    .line 978
    check-cast p0, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 979
    .line 980
    invoke-virtual {p1, p0}, Landroidx/compose/ui/window/PopupLayout;->setPositionProvider(Landroidx/compose/ui/window/PopupPositionProvider;)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {p1}, Landroidx/compose/ui/window/PopupLayout;->updatePosition()V

    .line 984
    .line 985
    .line 986
    new-instance p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$4$1$invoke$$inlined$onDispose$1;

    .line 987
    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    .line 990
    .line 991
    return-object p0

    .line 992
    :pswitch_7
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 993
    .line 994
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 995
    .line 996
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 997
    .line 998
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 999
    .line 1000
    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 1001
    .line 1002
    invoke-interface {p1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1003
    .line 1004
    .line 1005
    move-result-object p0

    .line 1006
    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    .line 1007
    .line 1008
    .line 1009
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1010
    .line 1011
    return-object p0

    .line 1012
    :pswitch_8
    check-cast p1, Landroidx/compose/ui/platform/ComposeViewContext;

    .line 1013
    .line 1014
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 1015
    .line 1016
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1017
    .line 1018
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 1019
    .line 1020
    check-cast p0, Landroidx/compose/ui/platform/WrappedComposition;

    .line 1021
    .line 1022
    iget-boolean v1, p0, Landroidx/compose/ui/platform/WrappedComposition;->disposed:Z

    .line 1023
    .line 1024
    if-nez v1, :cond_29

    .line 1025
    .line 1026
    iget-object v1, p1, Landroidx/compose/ui/platform/ComposeViewContext;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 1027
    .line 1028
    iget-object v2, p1, Landroidx/compose/ui/platform/ComposeViewContext;->view:Landroid/view/View;

    .line 1029
    .line 1030
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    iput-object v0, p0, Landroidx/compose/ui/platform/WrappedComposition;->lastContent:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1035
    .line 1036
    iget-object v4, p0, Landroidx/compose/ui/platform/WrappedComposition;->addedToLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 1037
    .line 1038
    if-nez v4, :cond_28

    .line 1039
    .line 1040
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 1041
    .line 1042
    .line 1043
    move-result-object p1

    .line 1044
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1053
    .line 1054
    .line 1055
    move-result p1

    .line 1056
    if-nez p1, :cond_27

    .line 1057
    .line 1058
    new-instance p1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 1059
    .line 1060
    const/4 v0, 0x4

    .line 1061
    invoke-direct {p1, v0, p0, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1065
    .line 1066
    .line 1067
    goto :goto_15

    .line 1068
    :cond_27
    iput-object v1, p0, Landroidx/compose/ui/platform/WrappedComposition;->addedToLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 1069
    .line 1070
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1071
    .line 1072
    .line 1073
    goto :goto_15

    .line 1074
    :cond_28
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 1075
    .line 1076
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 1077
    .line 1078
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v1

    .line 1082
    if-eqz v1, :cond_29

    .line 1083
    .line 1084
    iget-object v1, p0, Landroidx/compose/ui/platform/WrappedComposition;->original:Landroidx/compose/runtime/CompositionImpl;

    .line 1085
    .line 1086
    new-instance v2, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;

    .line 1087
    .line 1088
    invoke-direct {v2, p0, p1, v0}, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Landroidx/compose/ui/platform/ComposeViewContext;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 1089
    .line 1090
    .line 1091
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1092
    .line 1093
    const p1, -0x66c1ecc8

    .line 1094
    .line 1095
    .line 1096
    invoke-direct {p0, v2, v3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/CompositionImpl;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 1100
    .line 1101
    .line 1102
    :cond_29
    :goto_15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1103
    .line 1104
    return-object p0

    .line 1105
    :pswitch_9
    check-cast p1, Ljava/lang/Throwable;

    .line 1106
    .line 1107
    iget-object p1, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 1108
    .line 1109
    check-cast p1, Landroidx/compose/runtime/BroadcastFrameClock;

    .line 1110
    .line 1111
    iget-object p1, p1, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Ljava/lang/Object;

    .line 1112
    .line 1113
    check-cast p1, Landroid/view/Choreographer;

    .line 1114
    .line 1115
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 1116
    .line 1117
    check-cast p0, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;

    .line 1118
    .line 1119
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1120
    .line 1121
    .line 1122
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1123
    .line 1124
    return-object p0

    .line 1125
    :pswitch_a
    invoke-direct {p0, p1}, Landroidx/datastore/core/SimpleActor$1;->invoke$androidx$compose$ui$platform$AndroidUiFrameClock$withFrameNanos$2$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object p0

    .line 1129
    return-object p0

    .line 1130
    :pswitch_b
    check-cast p1, Ljava/lang/Throwable;

    .line 1131
    .line 1132
    iget-object p1, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast p1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 1135
    .line 1136
    iget-object v1, p1, Landroidx/compose/ui/platform/InputMethodSession;->lock:Ljava/lang/Object;

    .line 1137
    .line 1138
    monitor-enter v1

    .line 1139
    :try_start_4
    iput-boolean v3, p1, Landroidx/compose/ui/platform/InputMethodSession;->disposed:Z

    .line 1140
    .line 1141
    iget-object v0, p1, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    .line 1142
    .line 1143
    iget-object v2, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1144
    .line 1145
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 1146
    .line 1147
    :goto_16
    if-ge v4, v0, :cond_2b

    .line 1148
    .line 1149
    aget-object v3, v2, v4

    .line 1150
    .line 1151
    check-cast v3, Landroidx/compose/ui/node/WeakReference;

    .line 1152
    .line 1153
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v3

    .line 1157
    check-cast v3, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;

    .line 1158
    .line 1159
    if-eqz v3, :cond_2a

    .line 1160
    .line 1161
    iget-object v6, v3, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 1162
    .line 1163
    if-eqz v6, :cond_2a

    .line 1164
    .line 1165
    invoke-virtual {v3, v6}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->closeDelegate(Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;)V

    .line 1166
    .line 1167
    .line 1168
    iput-object v5, v3, Landroidx/compose/ui/text/input/NullableInputConnectionWrapperApi21;->delegate:Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 1169
    .line 1170
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    .line 1171
    .line 1172
    goto :goto_16

    .line 1173
    :catchall_0
    move-exception v0

    .line 1174
    move-object p0, v0

    .line 1175
    goto :goto_17

    .line 1176
    :cond_2b
    iget-object p1, p1, Landroidx/compose/ui/platform/InputMethodSession;->connections:Landroidx/compose/runtime/collection/MutableVector;

    .line 1177
    .line 1178
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1179
    .line 1180
    .line 1181
    monitor-exit v1

    .line 1182
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 1183
    .line 1184
    check-cast p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 1185
    .line 1186
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 1187
    .line 1188
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1189
    .line 1190
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1191
    .line 1192
    .line 1193
    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputService;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 1194
    .line 1195
    invoke-interface {p0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->stopInput()V

    .line 1196
    .line 1197
    .line 1198
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1199
    .line 1200
    return-object p0

    .line 1201
    :goto_17
    monitor-exit v1

    .line 1202
    throw p0

    .line 1203
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 1204
    .line 1205
    new-instance p1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 1206
    .line 1207
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 1208
    .line 1209
    check-cast v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 1210
    .line 1211
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 1212
    .line 1213
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 1214
    .line 1215
    check-cast p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 1216
    .line 1217
    const/16 v2, 0x8

    .line 1218
    .line 1219
    invoke-direct {v1, v2, p0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/platform/InputMethodSession;-><init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;)V

    .line 1223
    .line 1224
    .line 1225
    return-object p1

    .line 1226
    :pswitch_d
    const-string v0, "onTouchEvent"

    .line 1227
    .line 1228
    check-cast p1, Landroid/view/MotionEvent;

    .line 1229
    .line 1230
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 1231
    .line 1232
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 1233
    .line 1234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1235
    .line 1236
    .line 1237
    move-result v2

    .line 1238
    if-nez v2, :cond_2e

    .line 1239
    .line 1240
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 1241
    .line 1242
    check-cast p0, Lcoil3/ImageLoader$Builder;

    .line 1243
    .line 1244
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->onTouchEvent:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 1245
    .line 1246
    if-eqz v1, :cond_2d

    .line 1247
    .line 1248
    invoke-virtual {v1, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    move-result-object p1

    .line 1252
    check-cast p1, Ljava/lang/Boolean;

    .line 1253
    .line 1254
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1255
    .line 1256
    .line 1257
    move-result p1

    .line 1258
    if-eqz p1, :cond_2c

    .line 1259
    .line 1260
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Dispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 1261
    .line 1262
    goto :goto_18

    .line 1263
    :cond_2c
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->NotDispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 1264
    .line 1265
    :goto_18
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 1266
    .line 1267
    goto :goto_19

    .line 1268
    :cond_2d
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    throw v5

    .line 1272
    :cond_2e
    iget-object p0, v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->onTouchEvent:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    .line 1273
    .line 1274
    if-eqz p0, :cond_2f

    .line 1275
    .line 1276
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    :goto_19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1280
    .line 1281
    return-object p0

    .line 1282
    :cond_2f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    throw v5

    .line 1286
    :pswitch_e
    move-object v0, p1

    .line 1287
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 1288
    .line 1289
    iget-object p1, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 1290
    .line 1291
    move-object v1, p1

    .line 1292
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 1293
    .line 1294
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 1295
    .line 1296
    check-cast p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 1297
    .line 1298
    iget-object v4, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->layerBlock:Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 1299
    .line 1300
    const/4 v5, 0x4

    .line 1301
    const/4 v2, 0x0

    .line 1302
    const/4 v3, 0x0

    .line 1303
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    .line 1304
    .line 1305
    .line 1306
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1307
    .line 1308
    return-object p0

    .line 1309
    :pswitch_f
    move-object v0, p1

    .line 1310
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 1311
    .line 1312
    iget-object p1, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 1313
    .line 1314
    move-object v1, p1

    .line 1315
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 1316
    .line 1317
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 1318
    .line 1319
    check-cast p0, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;

    .line 1320
    .line 1321
    iget-object v4, p0, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 1322
    .line 1323
    const/4 v5, 0x4

    .line 1324
    const/4 v2, 0x0

    .line 1325
    const/4 v3, 0x0

    .line 1326
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    .line 1327
    .line 1328
    .line 1329
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1330
    .line 1331
    return-object p0

    .line 1332
    :pswitch_10
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 1333
    .line 1334
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 1335
    .line 1336
    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    .line 1337
    .line 1338
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 1339
    .line 1340
    check-cast p0, Landroidx/compose/animation/ContentTransform;

    .line 1341
    .line 1342
    iget-object p0, p0, Landroidx/compose/animation/ContentTransform;->targetContentZIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1343
    .line 1344
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 1345
    .line 1346
    .line 1347
    move-result p0

    .line 1348
    invoke-virtual {p1, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable;)V

    .line 1349
    .line 1350
    .line 1351
    iget-wide v1, v0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    .line 1352
    .line 1353
    const-wide/16 v3, 0x0

    .line 1354
    .line 1355
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 1356
    .line 1357
    .line 1358
    move-result-wide v1

    .line 1359
    invoke-virtual {v0, v1, v2, p0, v5}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 1360
    .line 1361
    .line 1362
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1363
    .line 1364
    return-object p0

    .line 1365
    :pswitch_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1366
    .line 1367
    check-cast p1, Ljava/lang/Throwable;

    .line 1368
    .line 1369
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$1;->$onComplete:Ljava/lang/Object;

    .line 1370
    .line 1371
    check-cast v1, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 1372
    .line 1373
    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$1;->this$0:Ljava/lang/Object;

    .line 1377
    .line 1378
    check-cast p0, Lcoil3/ImageLoader$Builder;

    .line 1379
    .line 1380
    iget-object p0, p0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 1381
    .line 1382
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1383
    .line 1384
    invoke-virtual {p0, p1, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 1385
    .line 1386
    .line 1387
    :cond_30
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v1

    .line 1391
    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v1

    .line 1395
    if-nez v1, :cond_31

    .line 1396
    .line 1397
    move-object v1, v5

    .line 1398
    goto :goto_1b

    .line 1399
    :cond_31
    check-cast v1, Landroidx/datastore/core/SingleProcessDataStore$Message;

    .line 1400
    .line 1401
    instance-of v2, v1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;

    .line 1402
    .line 1403
    if-eqz v2, :cond_33

    .line 1404
    .line 1405
    check-cast v1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;

    .line 1406
    .line 1407
    iget-object v1, v1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->ack:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1408
    .line 1409
    if-nez p1, :cond_32

    .line 1410
    .line 1411
    new-instance v2, Ljava/util/concurrent/CancellationException;

    .line 1412
    .line 1413
    const-string v3, "DataStore scope was cancelled before updateData could complete"

    .line 1414
    .line 1415
    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1416
    .line 1417
    .line 1418
    goto :goto_1a

    .line 1419
    :cond_32
    move-object v2, p1

    .line 1420
    :goto_1a
    new-instance v3, Lkotlinx/coroutines/CompletedExceptionally;

    .line 1421
    .line 1422
    invoke-direct {v3, v2, v4}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v1, v3}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 1426
    .line 1427
    .line 1428
    :cond_33
    move-object v1, v0

    .line 1429
    :goto_1b
    if-nez v1, :cond_30

    .line 1430
    .line 1431
    return-object v0

    .line 1432
    nop

    .line 1433
    :pswitch_data_0
    .packed-switch 0x0
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
