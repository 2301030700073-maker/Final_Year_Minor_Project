.class public final Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $sCachedField:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$r8$classId:I

    iput-object p2, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)V
    .locals 0

    .line 1
    const/16 p2, 0xd

    .line 2
    .line 3
    iput p2, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$r8$classId:I

    .line 4
    .line 5
    iput-object p1, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

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

.method private final invoke$androidx$glance$session$InteractiveFrameClock$startInteractive$2$1$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p0, p0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/glance/session/InteractiveFrameClock;

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/glance/session/InteractiveFrameClock;->lock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    const/4 v0, 0x5

    .line 11
    :try_start_0
    iput v0, p0, Landroidx/glance/session/InteractiveFrameClock;->currentHz:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/glance/session/InteractiveFrameClock;->interactiveCoroutine:Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p1

    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1

    .line 22
    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$r8$classId:I

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$DataToEraseUpperBound;

    .line 15
    .line 16
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lokhttp3/FormBody$Builder;

    .line 19
    .line 20
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$DataToEraseUpperBound;->typeParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 21
    .line 22
    iget-object v7, v1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$DataToEraseUpperBound;->typeAttr:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 23
    .line 24
    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v7}, Lokhttp3/FormBody$Builder;->getDefaultType(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_0
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 52
    .line 53
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v4, v8, v1}, Landroidx/work/OperationKt;->extractTypeParametersFromUpperBounds(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v8, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/16 v4, 0x10

    .line 68
    .line 69
    if-ge v3, v4, :cond_1

    .line 70
    .line 71
    move v3, v4

    .line 72
    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_5

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    move-object v13, v8

    .line 92
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-nez v8, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-static {v13, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    goto :goto_4

    .line 108
    :cond_3
    :goto_1
    iget-object v8, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    .line 109
    .line 110
    if-eqz v8, :cond_4

    .line 111
    .line 112
    invoke-static {v8, v2}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    :goto_2
    move-object v10, v8

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    invoke-static {v2}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    goto :goto_2

    .line 123
    :goto_3
    const/4 v11, 0x0

    .line 124
    const/16 v12, 0x2f

    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    const/4 v9, 0x0

    .line 128
    invoke-static/range {v7 .. v12}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;ZLjava/util/Set;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v0, v13, v8}, Lokhttp3/FormBody$Builder;->getErasedUpperBound(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-static {v13, v7, v0, v8}, Landroidx/transition/Transition$1;->computeProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lokhttp3/FormBody$Builder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    :goto_4
    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;

    .line 149
    .line 150
    invoke-direct {v1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImplKt$buildStarProjectionTypeByTypeParameters$1;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    .line 154
    .line 155
    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v3, v1, v7}, Lokhttp3/FormBody$Builder;->substituteErasedUpperBounds(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/collections/builders/SetBuilder;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v2, v1, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 170
    .line 171
    invoke-virtual {v2}, Lkotlin/collections/builders/MapBuilder;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_7

    .line 176
    .line 177
    iget-object v0, v1, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 178
    .line 179
    iget v0, v0, Lkotlin/collections/builders/MapBuilder;->size:I

    .line 180
    .line 181
    if-ne v0, v5, :cond_6

    .line 182
    .line 183
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    move-object v6, v0

    .line 188
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_6
    const-string v0, "Should only be one computed upper bound if no need to intersect all bounds"

    .line 192
    .line 193
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_7
    invoke-virtual {v0, v7}, Lokhttp3/FormBody$Builder;->getDefaultType(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    :goto_5
    return-object v6

    .line 202
    :pswitch_0
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 203
    .line 204
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    return-object v0

    .line 220
    :pswitch_1
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 228
    .line 229
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    .line 230
    .line 231
    new-instance v7, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const/4 v4, 0x0

    .line 245
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_8

    .line 250
    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 256
    .line 257
    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move v4, v5

    .line 265
    goto :goto_6

    .line 266
    :cond_8
    if-nez v4, :cond_9

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_9
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 270
    .line 271
    if-eqz v2, :cond_a

    .line 272
    .line 273
    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    :cond_a
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 281
    .line 282
    invoke-direct {v1, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 286
    .line 287
    .line 288
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 289
    .line 290
    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/AbstractCollection;)V

    .line 291
    .line 292
    .line 293
    iput-object v6, v2, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 294
    .line 295
    move-object v6, v2

    .line 296
    :goto_7
    if-nez v6, :cond_b

    .line 297
    .line 298
    goto :goto_8

    .line 299
    :cond_b
    move-object v0, v6

    .line 300
    :goto_8
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    return-object v0

    .line 305
    :pswitch_2
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;

    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;

    .line 313
    .line 314
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->getSupertypeLoopChecker()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;->allSupertypes:Ljava/util/Collection;

    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_e

    .line 331
    .line 332
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->defaultSupertypeIfEmpty()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    if-eqz v2, :cond_c

    .line 337
    .line 338
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    goto :goto_9

    .line 343
    :cond_c
    move-object v2, v6

    .line 344
    :goto_9
    if-nez v2, :cond_d

    .line 345
    .line 346
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 347
    .line 348
    :cond_d
    move-object v3, v2

    .line 349
    :cond_e
    nop

    .line 350
    instance-of v2, v3, Ljava/util/List;

    .line 351
    .line 352
    if-eqz v2, :cond_f

    .line 353
    .line 354
    move-object v6, v3

    .line 355
    check-cast v6, Ljava/util/List;

    .line 356
    .line 357
    :cond_f
    if-nez v6, :cond_10

    .line 358
    .line 359
    check-cast v3, Ljava/lang/Iterable;

    .line 360
    .line 361
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    :cond_10
    invoke-virtual {v0, v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->processSupertypesWithoutCycles(Ljava/util/List;)Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    iput-object v0, v1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;->supertypesWithoutCycles:Ljava/util/List;

    .line 373
    .line 374
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 375
    .line 376
    return-object v0

    .line 377
    :pswitch_3
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$ClassKey;

    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    .line 385
    .line 386
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$ClassKey;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 387
    .line 388
    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->components:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 389
    .line 390
    iget-object v3, v8, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseContainer:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v3, Ljava/lang/Iterable;

    .line 393
    .line 394
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-eqz v4, :cond_12

    .line 403
    .line 404
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/ClassDescriptorFactory;

    .line 409
    .line 410
    invoke-interface {v4, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/ClassDescriptorFactory;->createClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    if-eqz v4, :cond_11

    .line 415
    .line 416
    move-object v6, v4

    .line 417
    goto/16 :goto_f

    .line 418
    .line 419
    :cond_12
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->BLACK_LIST:Ljava/util/Set;

    .line 420
    .line 421
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    if-eqz v3, :cond_13

    .line 426
    .line 427
    goto/16 :goto_f

    .line 428
    .line 429
    :cond_13
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer$ClassKey;->classData:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    .line 430
    .line 431
    if-nez v1, :cond_14

    .line 432
    .line 433
    iget-object v1, v8, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIconSa:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;

    .line 436
    .line 437
    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;->findClassData(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    if-nez v1, :cond_14

    .line 442
    .line 443
    goto/16 :goto_f

    .line 444
    .line 445
    :cond_14
    iget-object v9, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 446
    .line 447
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->classProto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 448
    .line 449
    iget-object v13, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->metadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;

    .line 450
    .line 451
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;->sourceElement:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    .line 452
    .line 453
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getOuterClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    if-eqz v4, :cond_18

    .line 458
    .line 459
    invoke-virtual {v0, v4, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    instance-of v4, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 464
    .line 465
    if-eqz v4, :cond_15

    .line 466
    .line 467
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 468
    .line 469
    goto :goto_a

    .line 470
    :cond_15
    move-object v0, v6

    .line 471
    :goto_a
    if-nez v0, :cond_16

    .line 472
    .line 473
    goto/16 :goto_f

    .line 474
    .line 475
    :cond_16
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->getClassNames$deserialization()Ljava/util/Set;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-nez v2, :cond_17

    .line 495
    .line 496
    goto/16 :goto_f

    .line 497
    .line 498
    :cond_17
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lcom/hcaptcha/sdk/HCaptcha;

    .line 499
    .line 500
    move-object v10, v0

    .line 501
    :goto_b
    move-object v12, v9

    .line 502
    goto/16 :goto_e

    .line 503
    .line 504
    :cond_18
    iget-object v0, v8, Lorg/wikipedia/databinding/ActivityGalleryBinding;->creditText:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    .line 507
    .line 508
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    new-instance v5, Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .line 522
    .line 523
    invoke-interface {v0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;->collectPackageFragments(Lkotlin/reflect/jvm/internal/impl/name/FqName;Ljava/util/ArrayList;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_1a

    .line 535
    .line 536
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    move-object v5, v4

    .line 541
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    .line 542
    .line 543
    instance-of v7, v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    .line 544
    .line 545
    if-eqz v7, :cond_1b

    .line 546
    .line 547
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    .line 548
    .line 549
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;

    .line 561
    .line 562
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberScope;->getClassNames$deserialization()Ljava/util/Set;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    if-eqz v5, :cond_19

    .line 571
    .line 572
    goto :goto_c

    .line 573
    :cond_1a
    move-object v4, v6

    .line 574
    :cond_1b
    :goto_c
    move-object v10, v4

    .line 575
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    .line 576
    .line 577
    if-nez v10, :cond_1c

    .line 578
    .line 579
    goto :goto_f

    .line 580
    :cond_1c
    new-instance v11, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 581
    .line 582
    iget-object v0, v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 583
    .line 584
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-direct {v11, v0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    .line 588
    .line 589
    .line 590
    iget-object v0, v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 591
    .line 592
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->requirement_:Ljava/util/List;

    .line 596
    .line 597
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    if-nez v2, :cond_1d

    .line 602
    .line 603
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->EMPTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 604
    .line 605
    move-object v12, v0

    .line 606
    goto :goto_d

    .line 607
    :cond_1d
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    .line 608
    .line 609
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->requirement_:Ljava/util/List;

    .line 610
    .line 611
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 615
    .line 616
    .line 617
    move-object v12, v2

    .line 618
    :goto_d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    new-instance v7, Lcom/hcaptcha/sdk/HCaptcha;

    .line 622
    .line 623
    const/4 v15, 0x0

    .line 624
    sget-object v16, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 625
    .line 626
    const/4 v14, 0x0

    .line 627
    invoke-direct/range {v7 .. v16}, Lcom/hcaptcha/sdk/HCaptcha;-><init>(Lorg/wikipedia/databinding/ActivityGalleryBinding;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lokhttp3/Dispatcher$promoteAndExecute$Effects;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lcom/google/gson/GsonBuilder;Ljava/util/List;)V

    .line 628
    .line 629
    .line 630
    move-object v10, v7

    .line 631
    goto/16 :goto_b

    .line 632
    .line 633
    :goto_e
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 634
    .line 635
    move-object v14, v1

    .line 636
    move-object v11, v3

    .line 637
    invoke-direct/range {v9 .. v14}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;-><init>(Lcom/hcaptcha/sdk/HCaptcha;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 638
    .line 639
    .line 640
    move-object v6, v9

    .line 641
    :goto_f
    return-object v6

    .line 642
    :pswitch_4
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 643
    .line 644
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;

    .line 650
    .line 651
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;->findPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    if-eqz v1, :cond_1f

    .line 656
    .line 657
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;->components:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 658
    .line 659
    if-eqz v0, :cond_1e

    .line 660
    .line 661
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->initialize(Lorg/wikipedia/databinding/ActivityGalleryBinding;)V

    .line 662
    .line 663
    .line 664
    move-object v6, v1

    .line 665
    goto :goto_10

    .line 666
    :cond_1e
    const-string v0, "components"

    .line 667
    .line 668
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw v6

    .line 672
    :cond_1f
    :goto_10
    return-object v6

    .line 673
    :pswitch_5
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 674
    .line 675
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 681
    .line 682
    return-object v0

    .line 683
    :pswitch_6
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 684
    .line 685
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    .line 695
    .line 696
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveArrayKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    return-object v0

    .line 701
    :pswitch_7
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    .line 704
    .line 705
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 712
    .line 713
    return-object v0

    .line 714
    :pswitch_8
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 715
    .line 716
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 720
    .line 721
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 722
    .line 723
    new-instance v2, Ljava/util/HashMap;

    .line 724
    .line 725
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 726
    .line 727
    .line 728
    new-instance v3, Ljava/util/HashMap;

    .line 729
    .line 730
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 731
    .line 732
    .line 733
    new-instance v5, Ljava/util/HashMap;

    .line 734
    .line 735
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 736
    .line 737
    .line 738
    new-instance v6, Lokhttp3/FormBody$Builder;

    .line 739
    .line 740
    invoke-direct {v6, v0, v2, v3}, Lokhttp3/FormBody$Builder;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 741
    .line 742
    .line 743
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    .line 744
    .line 745
    const-string v1, "("

    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 748
    .line 749
    .line 750
    move-result-object v7

    .line 751
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    .line 753
    .line 754
    array-length v8, v7

    .line 755
    const/4 v9, 0x0

    .line 756
    :goto_11
    if-ge v9, v8, :cond_25

    .line 757
    .line 758
    aget-object v10, v7, v9

    .line 759
    .line 760
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v11

    .line 764
    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 765
    .line 766
    .line 767
    move-result-object v11

    .line 768
    new-instance v12, Ljava/lang/StringBuilder;

    .line 769
    .line 770
    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 774
    .line 775
    .line 776
    move-result-object v13

    .line 777
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    array-length v14, v13

    .line 781
    const/4 v15, 0x0

    .line 782
    :goto_12
    if-ge v15, v14, :cond_20

    .line 783
    .line 784
    aget-object v16, v13, v15

    .line 785
    .line 786
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    const/16 v17, 0x0

    .line 790
    .line 791
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v4

    .line 795
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    add-int/lit8 v15, v15, 0x1

    .line 799
    .line 800
    goto :goto_12

    .line 801
    :cond_20
    const/16 v17, 0x0

    .line 802
    .line 803
    const-string v4, ")"

    .line 804
    .line 805
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 813
    .line 814
    .line 815
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v4

    .line 819
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    new-instance v12, Lcoil3/ImageLoader$Builder;

    .line 827
    .line 828
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v11

    .line 832
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 833
    .line 834
    .line 835
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 836
    .line 837
    invoke-virtual {v11, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    invoke-direct {v13, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    invoke-direct {v12, v6, v13}, Lcoil3/ImageLoader$Builder;-><init>(Lokhttp3/FormBody$Builder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    .line 853
    .line 854
    array-length v11, v4

    .line 855
    move/from16 v13, v17

    .line 856
    .line 857
    :goto_13
    if-ge v13, v11, :cond_21

    .line 858
    .line 859
    aget-object v14, v4, v13

    .line 860
    .line 861
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    .line 863
    .line 864
    invoke-static {v12, v14}, Lcoil3/util/UtilsKt;->processAnnotation(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;Ljava/lang/annotation/Annotation;)V

    .line 865
    .line 866
    .line 867
    add-int/lit8 v13, v13, 0x1

    .line 868
    .line 869
    goto :goto_13

    .line 870
    :cond_21
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 871
    .line 872
    .line 873
    move-result-object v4

    .line 874
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    check-cast v4, [[Ljava/lang/annotation/Annotation;

    .line 878
    .line 879
    array-length v10, v4

    .line 880
    move/from16 v11, v17

    .line 881
    .line 882
    :goto_14
    if-ge v11, v10, :cond_24

    .line 883
    .line 884
    aget-object v13, v4, v11

    .line 885
    .line 886
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    .line 888
    .line 889
    array-length v14, v13

    .line 890
    move/from16 v15, v17

    .line 891
    .line 892
    :goto_15
    if-ge v15, v14, :cond_23

    .line 893
    .line 894
    move-object/from16 v16, v0

    .line 895
    .line 896
    aget-object v0, v13, v15

    .line 897
    .line 898
    invoke-static {v0}, Lkotlin/UnsignedKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    .line 899
    .line 900
    .line 901
    move-result-object v18

    .line 902
    move-object/from16 p0, v4

    .line 903
    .line 904
    invoke-static/range {v18 .. v18}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    move-result-object v4

    .line 908
    move-object/from16 p1, v7

    .line 909
    .line 910
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 911
    .line 912
    .line 913
    move-result-object v7

    .line 914
    move/from16 v18, v8

    .line 915
    .line 916
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    .line 917
    .line 918
    invoke-direct {v8, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v12, v11, v7, v8}, Lcoil3/ImageLoader$Builder;->visitParameterAnnotation(ILkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lcom/google/gson/GsonBuilder;

    .line 922
    .line 923
    .line 924
    move-result-object v7

    .line 925
    if-eqz v7, :cond_22

    .line 926
    .line 927
    invoke-static {v7, v0, v4}, Lcoil3/util/UtilsKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 928
    .line 929
    .line 930
    :cond_22
    add-int/lit8 v15, v15, 0x1

    .line 931
    .line 932
    move-object/from16 v4, p0

    .line 933
    .line 934
    move-object/from16 v7, p1

    .line 935
    .line 936
    move-object/from16 v0, v16

    .line 937
    .line 938
    move/from16 v8, v18

    .line 939
    .line 940
    goto :goto_15

    .line 941
    :cond_23
    move-object/from16 v16, v0

    .line 942
    .line 943
    move-object/from16 p0, v4

    .line 944
    .line 945
    move-object/from16 p1, v7

    .line 946
    .line 947
    move/from16 v18, v8

    .line 948
    .line 949
    add-int/lit8 v11, v11, 0x1

    .line 950
    .line 951
    goto :goto_14

    .line 952
    :cond_24
    move-object/from16 v16, v0

    .line 953
    .line 954
    move-object/from16 p1, v7

    .line 955
    .line 956
    move/from16 v18, v8

    .line 957
    .line 958
    invoke-virtual {v12}, Lcoil3/ImageLoader$Builder;->visitEnd()V

    .line 959
    .line 960
    .line 961
    add-int/lit8 v9, v9, 0x1

    .line 962
    .line 963
    goto/16 :goto_11

    .line 964
    .line 965
    :cond_25
    move-object/from16 v16, v0

    .line 966
    .line 967
    const/16 v17, 0x0

    .line 968
    .line 969
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    .line 975
    .line 976
    array-length v4, v0

    .line 977
    move/from16 v7, v17

    .line 978
    .line 979
    :goto_16
    if-ge v7, v4, :cond_2c

    .line 980
    .line 981
    aget-object v8, v0, v7

    .line 982
    .line 983
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/name/SpecialNames;->INIT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 984
    .line 985
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    .line 987
    .line 988
    new-instance v10, Ljava/lang/StringBuilder;

    .line 989
    .line 990
    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 994
    .line 995
    .line 996
    move-result-object v11

    .line 997
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 998
    .line 999
    .line 1000
    array-length v12, v11

    .line 1001
    move/from16 v13, v17

    .line 1002
    .line 1003
    :goto_17
    if-ge v13, v12, :cond_26

    .line 1004
    .line 1005
    aget-object v14, v11, v13

    .line 1006
    .line 1007
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1008
    .line 1009
    .line 1010
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v14

    .line 1014
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    add-int/lit8 v13, v13, 0x1

    .line 1018
    .line 1019
    goto :goto_17

    .line 1020
    :cond_26
    const-string v11, ")V"

    .line 1021
    .line 1022
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v10

    .line 1029
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    .line 1031
    .line 1032
    new-instance v11, Lcoil3/ImageLoader$Builder;

    .line 1033
    .line 1034
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v9

    .line 1038
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 1042
    .line 1043
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v9

    .line 1047
    invoke-direct {v12, v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-direct {v11, v6, v12}, Lcoil3/ImageLoader$Builder;-><init>(Lokhttp3/FormBody$Builder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v9

    .line 1057
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    .line 1059
    .line 1060
    array-length v10, v9

    .line 1061
    move/from16 v12, v17

    .line 1062
    .line 1063
    :goto_18
    if-ge v12, v10, :cond_27

    .line 1064
    .line 1065
    aget-object v13, v9, v12

    .line 1066
    .line 1067
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1068
    .line 1069
    .line 1070
    invoke-static {v11, v13}, Lcoil3/util/UtilsKt;->processAnnotation(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationVisitor;Ljava/lang/annotation/Annotation;)V

    .line 1071
    .line 1072
    .line 1073
    add-int/lit8 v12, v12, 0x1

    .line 1074
    .line 1075
    goto :goto_18

    .line 1076
    :cond_27
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v9

    .line 1080
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1081
    .line 1082
    .line 1083
    array-length v10, v9

    .line 1084
    if-nez v10, :cond_29

    .line 1085
    .line 1086
    :cond_28
    move-object/from16 p0, v0

    .line 1087
    .line 1088
    move-object/from16 p1, v1

    .line 1089
    .line 1090
    move/from16 v18, v4

    .line 1091
    .line 1092
    move/from16 v19, v7

    .line 1093
    .line 1094
    goto :goto_1b

    .line 1095
    :cond_29
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v8

    .line 1099
    array-length v8, v8

    .line 1100
    array-length v10, v9

    .line 1101
    sub-int/2addr v8, v10

    .line 1102
    array-length v10, v9

    .line 1103
    move/from16 v12, v17

    .line 1104
    .line 1105
    :goto_19
    if-ge v12, v10, :cond_28

    .line 1106
    .line 1107
    aget-object v13, v9, v12

    .line 1108
    .line 1109
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    .line 1111
    .line 1112
    array-length v14, v13

    .line 1113
    move/from16 v15, v17

    .line 1114
    .line 1115
    :goto_1a
    if-ge v15, v14, :cond_2b

    .line 1116
    .line 1117
    move-object/from16 p0, v0

    .line 1118
    .line 1119
    aget-object v0, v13, v15

    .line 1120
    .line 1121
    invoke-static {v0}, Lkotlin/UnsignedKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v18

    .line 1125
    move-object/from16 p1, v1

    .line 1126
    .line 1127
    invoke-static/range {v18 .. v18}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v1

    .line 1131
    move/from16 v18, v4

    .line 1132
    .line 1133
    add-int v4, v12, v8

    .line 1134
    .line 1135
    move/from16 v19, v7

    .line 1136
    .line 1137
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v7

    .line 1141
    move/from16 v20, v8

    .line 1142
    .line 1143
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    .line 1144
    .line 1145
    invoke-direct {v8, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v11, v4, v7, v8}, Lcoil3/ImageLoader$Builder;->visitParameterAnnotation(ILkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;)Lcom/google/gson/GsonBuilder;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v4

    .line 1152
    if-eqz v4, :cond_2a

    .line 1153
    .line 1154
    invoke-static {v4, v0, v1}, Lcoil3/util/UtilsKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 1155
    .line 1156
    .line 1157
    :cond_2a
    add-int/lit8 v15, v15, 0x1

    .line 1158
    .line 1159
    move-object/from16 v0, p0

    .line 1160
    .line 1161
    move-object/from16 v1, p1

    .line 1162
    .line 1163
    move/from16 v4, v18

    .line 1164
    .line 1165
    move/from16 v7, v19

    .line 1166
    .line 1167
    move/from16 v8, v20

    .line 1168
    .line 1169
    goto :goto_1a

    .line 1170
    :cond_2b
    move-object/from16 p0, v0

    .line 1171
    .line 1172
    move-object/from16 p1, v1

    .line 1173
    .line 1174
    move/from16 v18, v4

    .line 1175
    .line 1176
    move/from16 v19, v7

    .line 1177
    .line 1178
    move/from16 v20, v8

    .line 1179
    .line 1180
    add-int/lit8 v12, v12, 0x1

    .line 1181
    .line 1182
    goto :goto_19

    .line 1183
    :goto_1b
    invoke-virtual {v11}, Lcoil3/ImageLoader$Builder;->visitEnd()V

    .line 1184
    .line 1185
    .line 1186
    add-int/lit8 v7, v19, 0x1

    .line 1187
    .line 1188
    move-object/from16 v0, p0

    .line 1189
    .line 1190
    move-object/from16 v1, p1

    .line 1191
    .line 1192
    move/from16 v4, v18

    .line 1193
    .line 1194
    goto/16 :goto_16

    .line 1195
    .line 1196
    :cond_2c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    array-length v1, v0

    .line 1204
    move/from16 v4, v17

    .line 1205
    .line 1206
    :goto_1c
    if-ge v4, v1, :cond_30

    .line 1207
    .line 1208
    aget-object v7, v0, v4

    .line 1209
    .line 1210
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v8

    .line 1214
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v8

    .line 1218
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v9

    .line 1222
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1223
    .line 1224
    .line 1225
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v9

    .line 1229
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v8

    .line 1233
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1234
    .line 1235
    .line 1236
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 1237
    .line 1238
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    const/16 v8, 0x23

    .line 1244
    .line 1245
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v8

    .line 1255
    invoke-direct {v10, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    new-instance v8, Ljava/util/ArrayList;

    .line 1259
    .line 1260
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v7

    .line 1267
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1268
    .line 1269
    .line 1270
    array-length v9, v7

    .line 1271
    move/from16 v11, v17

    .line 1272
    .line 1273
    :goto_1d
    if-ge v11, v9, :cond_2e

    .line 1274
    .line 1275
    aget-object v12, v7, v11

    .line 1276
    .line 1277
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1278
    .line 1279
    .line 1280
    invoke-static {v12}, Lkotlin/UnsignedKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v13

    .line 1284
    invoke-static {v13}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v13

    .line 1288
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v14

    .line 1292
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    .line 1293
    .line 1294
    invoke-direct {v15, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 1295
    .line 1296
    .line 1297
    move-object/from16 p0, v0

    .line 1298
    .line 1299
    iget-object v0, v6, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 1300
    .line 1301
    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1302
    .line 1303
    invoke-virtual {v0, v14, v15, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lcom/google/gson/GsonBuilder;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v0

    .line 1307
    if-eqz v0, :cond_2d

    .line 1308
    .line 1309
    invoke-static {v0, v12, v13}, Lcoil3/util/UtilsKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 1310
    .line 1311
    .line 1312
    :cond_2d
    add-int/lit8 v11, v11, 0x1

    .line 1313
    .line 1314
    move-object/from16 v0, p0

    .line 1315
    .line 1316
    goto :goto_1d

    .line 1317
    :cond_2e
    move-object/from16 p0, v0

    .line 1318
    .line 1319
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1320
    .line 1321
    .line 1322
    move-result v0

    .line 1323
    if-nez v0, :cond_2f

    .line 1324
    .line 1325
    iget-object v0, v6, Lokhttp3/FormBody$Builder;->values:Ljava/lang/Object;

    .line 1326
    .line 1327
    check-cast v0, Ljava/util/HashMap;

    .line 1328
    .line 1329
    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    .line 1333
    .line 1334
    move-object/from16 v0, p0

    .line 1335
    .line 1336
    goto/16 :goto_1c

    .line 1337
    .line 1338
    :cond_30
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants;

    .line 1339
    .line 1340
    invoke-direct {v0, v2, v3, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$AnnotationsContainerWithConstants;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1341
    .line 1342
    .line 1343
    return-object v0

    .line 1344
    :pswitch_9
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 1345
    .line 1346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1347
    .line 1348
    .line 1349
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v1

    .line 1353
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 1354
    .line 1355
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 1356
    .line 1357
    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->index:I

    .line 1358
    .line 1359
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v0

    .line 1363
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 1364
    .line 1365
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1370
    .line 1371
    .line 1372
    return-object v0

    .line 1373
    :pswitch_a
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 1374
    .line 1375
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    .line 1377
    .line 1378
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->defaultQualifiers:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    .line 1379
    .line 1380
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 1381
    .line 1382
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 1383
    .line 1384
    check-cast v0, Lcom/google/android/material/internal/CheckableGroup;

    .line 1385
    .line 1386
    iget-boolean v4, v0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    .line 1387
    .line 1388
    if-eqz v4, :cond_33

    .line 1389
    .line 1390
    if-eqz v1, :cond_32

    .line 1391
    .line 1392
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v4

    .line 1396
    if-eqz v4, :cond_32

    .line 1397
    .line 1398
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 1399
    .line 1400
    if-eqz v5, :cond_31

    .line 1401
    .line 1402
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    .line 1403
    .line 1404
    if-eqz v5, :cond_32

    .line 1405
    .line 1406
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    .line 1407
    .line 1408
    goto :goto_1e

    .line 1409
    :cond_31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1410
    .line 1411
    const-string v7, "ClassicTypeSystemContext couldn\'t handle: "

    .line 1412
    .line 1413
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1417
    .line 1418
    .line 1419
    const-string v7, ", "

    .line 1420
    .line 1421
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v4

    .line 1428
    sget-object v7, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 1429
    .line 1430
    invoke-static {v7, v4, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v4

    .line 1434
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 1435
    .line 1436
    .line 1437
    :cond_32
    move-object v4, v6

    .line 1438
    :goto_1e
    if-eqz v4, :cond_33

    .line 1439
    .line 1440
    goto/16 :goto_23

    .line 1441
    .line 1442
    :cond_33
    if-eqz v1, :cond_3a

    .line 1443
    .line 1444
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v4

    .line 1448
    if-nez v4, :cond_35

    .line 1449
    .line 1450
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v4

    .line 1454
    if-eqz v4, :cond_34

    .line 1455
    .line 1456
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->lowerBound(Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v4

    .line 1460
    if-nez v4, :cond_35

    .line 1461
    .line 1462
    :cond_34
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v4

    .line 1466
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1467
    .line 1468
    .line 1469
    :cond_35
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v4

    .line 1473
    if-eqz v4, :cond_3a

    .line 1474
    .line 1475
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 1476
    .line 1477
    if-eqz v5, :cond_36

    .line 1478
    .line 1479
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 1480
    .line 1481
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v4

    .line 1485
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1486
    .line 1487
    .line 1488
    goto :goto_1f

    .line 1489
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1490
    .line 1491
    const-string v7, "ClassicTypeSystemContext couldn\'t handle: "

    .line 1492
    .line 1493
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1497
    .line 1498
    .line 1499
    const-string v7, ", "

    .line 1500
    .line 1501
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v4

    .line 1508
    sget-object v7, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 1509
    .line 1510
    invoke-static {v7, v4, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v4

    .line 1514
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 1515
    .line 1516
    .line 1517
    move-object v4, v6

    .line 1518
    :goto_1f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1519
    .line 1520
    .line 1521
    instance-of v5, v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1522
    .line 1523
    if-eqz v5, :cond_37

    .line 1524
    .line 1525
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1526
    .line 1527
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v1

    .line 1531
    goto :goto_20

    .line 1532
    :cond_37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    const-string v7, "ClassicTypeSystemContext couldn\'t handle: "

    .line 1535
    .line 1536
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1537
    .line 1538
    .line 1539
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    const-string v7, ", "

    .line 1543
    .line 1544
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v1

    .line 1551
    sget-object v7, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 1552
    .line 1553
    invoke-static {v7, v1, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 1558
    .line 1559
    .line 1560
    move-object v1, v6

    .line 1561
    :goto_20
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v5

    .line 1565
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v7

    .line 1569
    new-instance v8, Ljava/util/ArrayList;

    .line 1570
    .line 1571
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1572
    .line 1573
    .line 1574
    move-result v4

    .line 1575
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1576
    .line 1577
    .line 1578
    move-result v1

    .line 1579
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 1580
    .line 1581
    .line 1582
    move-result v1

    .line 1583
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1584
    .line 1585
    .line 1586
    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1587
    .line 1588
    .line 1589
    move-result v1

    .line 1590
    if-eqz v1, :cond_39

    .line 1591
    .line 1592
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1593
    .line 1594
    .line 1595
    move-result v1

    .line 1596
    if-eqz v1, :cond_39

    .line 1597
    .line 1598
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v1

    .line 1602
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v3

    .line 1606
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 1607
    .line 1608
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 1609
    .line 1610
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Z

    .line 1611
    .line 1612
    .line 1613
    move-result v4

    .line 1614
    if-eqz v4, :cond_38

    .line 1615
    .line 1616
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 1617
    .line 1618
    invoke-direct {v3, v6, v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    .line 1619
    .line 1620
    .line 1621
    goto :goto_22

    .line 1622
    :cond_38
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v3

    .line 1626
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 1627
    .line 1628
    iget-object v9, v0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/lang/Object;

    .line 1629
    .line 1630
    check-cast v9, Lokhttp3/Request$Builder;

    .line 1631
    .line 1632
    iget-object v9, v9, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 1633
    .line 1634
    check-cast v9, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 1635
    .line 1636
    iget-object v9, v9, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 1637
    .line 1638
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 1639
    .line 1640
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v10

    .line 1644
    invoke-virtual {v9, v2, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v9

    .line 1648
    invoke-direct {v4, v3, v9, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    .line 1649
    .line 1650
    .line 1651
    move-object v3, v4

    .line 1652
    :goto_22
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    .line 1654
    .line 1655
    goto :goto_21

    .line 1656
    :cond_39
    move-object v6, v8

    .line 1657
    :cond_3a
    :goto_23
    return-object v6

    .line 1658
    :pswitch_b
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    .line 1659
    .line 1660
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1661
    .line 1662
    .line 1663
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 1664
    .line 1665
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 1666
    .line 1667
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 1668
    .line 1669
    .line 1670
    return-object v6

    .line 1671
    :pswitch_c
    const/16 v17, 0x0

    .line 1672
    .line 1673
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    .line 1674
    .line 1675
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1676
    .line 1677
    .line 1678
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    .line 1679
    .line 1680
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 1681
    .line 1682
    move-object v8, v0

    .line 1683
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 1684
    .line 1685
    iget-object v7, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lokhttp3/Request$Builder;

    .line 1686
    .line 1687
    iget-object v9, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->jClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 1688
    .line 1689
    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->additionalSupertypeClassDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 1690
    .line 1691
    if-eqz v0, :cond_3b

    .line 1692
    .line 1693
    move v10, v5

    .line 1694
    goto :goto_24

    .line 1695
    :cond_3b
    move/from16 v10, v17

    .line 1696
    .line 1697
    :goto_24
    iget-object v11, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->unsubstitutedMemberScope:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    .line 1698
    .line 1699
    invoke-direct/range {v6 .. v11}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;)V

    .line 1700
    .line 1701
    .line 1702
    return-object v6

    .line 1703
    :pswitch_d
    const/16 v17, 0x0

    .line 1704
    .line 1705
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    .line 1706
    .line 1707
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1708
    .line 1709
    .line 1710
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 1711
    .line 1712
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;

    .line 1713
    .line 1714
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/ClassDeclaredMemberIndex;->memberFilter:Lkotlin/jvm/functions/Function1;

    .line 1715
    .line 1716
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v0

    .line 1720
    check-cast v0, Ljava/lang/Boolean;

    .line 1721
    .line 1722
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1723
    .line 1724
    .line 1725
    move-result v0

    .line 1726
    if-eqz v0, :cond_46

    .line 1727
    .line 1728
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getMember()Ljava/lang/reflect/Member;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v0

    .line 1732
    check-cast v0, Ljava/lang/reflect/Method;

    .line 1733
    .line 1734
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v0

    .line 1738
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 1742
    .line 1743
    .line 1744
    move-result v0

    .line 1745
    if-eqz v0, :cond_45

    .line 1746
    .line 1747
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v0

    .line 1751
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v0

    .line 1755
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1756
    .line 1757
    .line 1758
    move-result v2

    .line 1759
    const v3, -0x69e9ad94

    .line 1760
    .line 1761
    .line 1762
    if-eq v2, v3, :cond_43

    .line 1763
    .line 1764
    const v3, -0x4d378041

    .line 1765
    .line 1766
    .line 1767
    if-eq v2, v3, :cond_3d

    .line 1768
    .line 1769
    const v3, 0x8cdac1b

    .line 1770
    .line 1771
    .line 1772
    if-eq v2, v3, :cond_3c

    .line 1773
    .line 1774
    goto :goto_26

    .line 1775
    :cond_3c
    const-string v2, "hashCode"

    .line 1776
    .line 1777
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1778
    .line 1779
    .line 1780
    move-result v0

    .line 1781
    if-nez v0, :cond_44

    .line 1782
    .line 1783
    goto :goto_26

    .line 1784
    :cond_3d
    const-string v2, "equals"

    .line 1785
    .line 1786
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1787
    .line 1788
    .line 1789
    move-result v0

    .line 1790
    if-nez v0, :cond_3e

    .line 1791
    .line 1792
    goto :goto_26

    .line 1793
    :cond_3e
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getValueParameters()Ljava/util/List;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v0

    .line 1797
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v0

    .line 1801
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaValueParameter;

    .line 1802
    .line 1803
    if-eqz v0, :cond_3f

    .line 1804
    .line 1805
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaValueParameter;->type:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    .line 1806
    .line 1807
    goto :goto_25

    .line 1808
    :cond_3f
    move-object v0, v6

    .line 1809
    :goto_25
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    .line 1810
    .line 1811
    if-eqz v1, :cond_40

    .line 1812
    .line 1813
    move-object v6, v0

    .line 1814
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    .line 1815
    .line 1816
    :cond_40
    if-nez v6, :cond_41

    .line 1817
    .line 1818
    goto :goto_26

    .line 1819
    :cond_41
    iget-object v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->classifier:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifier;

    .line 1820
    .line 1821
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 1822
    .line 1823
    if-eqz v1, :cond_42

    .line 1824
    .line 1825
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 1826
    .line 1827
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v0

    .line 1831
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v0

    .line 1835
    const-string v1, "java.lang.Object"

    .line 1836
    .line 1837
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1838
    .line 1839
    .line 1840
    move-result v0

    .line 1841
    if-eqz v0, :cond_42

    .line 1842
    .line 1843
    move v0, v5

    .line 1844
    goto :goto_27

    .line 1845
    :cond_42
    :goto_26
    move/from16 v0, v17

    .line 1846
    .line 1847
    goto :goto_27

    .line 1848
    :cond_43
    const-string v2, "toString"

    .line 1849
    .line 1850
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1851
    .line 1852
    .line 1853
    move-result v0

    .line 1854
    if-eqz v0, :cond_42

    .line 1855
    .line 1856
    :cond_44
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;->getValueParameters()Ljava/util/List;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v0

    .line 1860
    check-cast v0, Ljava/util/ArrayList;

    .line 1861
    .line 1862
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1863
    .line 1864
    .line 1865
    move-result v0

    .line 1866
    :goto_27
    if-eqz v0, :cond_45

    .line 1867
    .line 1868
    goto :goto_28

    .line 1869
    :cond_45
    move v4, v5

    .line 1870
    goto :goto_29

    .line 1871
    :cond_46
    :goto_28
    move/from16 v4, v17

    .line 1872
    .line 1873
    :goto_29
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v0

    .line 1877
    return-object v0

    .line 1878
    :pswitch_e
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    .line 1879
    .line 1880
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1881
    .line 1882
    .line 1883
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 1884
    .line 1885
    check-cast v0, Lokhttp3/Dispatcher;

    .line 1886
    .line 1887
    iget-object v2, v0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 1888
    .line 1889
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 1890
    .line 1891
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v2

    .line 1895
    check-cast v2, Ljava/lang/Integer;

    .line 1896
    .line 1897
    if-eqz v2, :cond_47

    .line 1898
    .line 1899
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1900
    .line 1901
    .line 1902
    move-result v2

    .line 1903
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    .line 1904
    .line 1905
    iget-object v3, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 1906
    .line 1907
    check-cast v3, Lokhttp3/Request$Builder;

    .line 1908
    .line 1909
    iget-object v4, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1910
    .line 1911
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 1912
    .line 1913
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1914
    .line 1915
    .line 1916
    new-instance v5, Lokhttp3/Request$Builder;

    .line 1917
    .line 1918
    iget-object v7, v3, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 1919
    .line 1920
    check-cast v7, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 1921
    .line 1922
    iget-object v3, v3, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 1923
    .line 1924
    check-cast v3, Lkotlin/Lazy;

    .line 1925
    .line 1926
    invoke-direct {v5, v7, v0, v3}, Lokhttp3/Request$Builder;-><init>(Lorg/wikipedia/databinding/ActivityPageBinding;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    .line 1927
    .line 1928
    .line 1929
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v3

    .line 1933
    invoke-static {v5, v3}, Lkotlin/text/UStringsKt;->copyWithNewDefaultTypeQualifiers(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lokhttp3/Request$Builder;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v3

    .line 1937
    iget v0, v0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 1938
    .line 1939
    add-int/2addr v0, v2

    .line 1940
    invoke-direct {v6, v3, v1, v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;-><init>(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;ILkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)V

    .line 1941
    .line 1942
    .line 1943
    :cond_47
    return-object v6

    .line 1944
    :pswitch_f
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;

    .line 1945
    .line 1946
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1947
    .line 1948
    .line 1949
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationMapper;->DEPRECATED_ANNOTATION_MESSAGE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 1950
    .line 1951
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 1952
    .line 1953
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    .line 1954
    .line 1955
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;->c:Lokhttp3/Request$Builder;

    .line 1956
    .line 1957
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;->areAnnotationsFreshlySupported:Z

    .line 1958
    .line 1959
    invoke-static {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationMapper;->mapOrResolveJavaAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;Lokhttp3/Request$Builder;Z)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/PossiblyExternalAnnotationDescriptor;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v0

    .line 1963
    return-object v0

    .line 1964
    :pswitch_10
    move-object v2, v1

    .line 1965
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 1966
    .line 1967
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1968
    .line 1969
    .line 1970
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 1971
    .line 1972
    check-cast v0, Lokhttp3/FormBody$Builder;

    .line 1973
    .line 1974
    iget-object v0, v0, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 1975
    .line 1976
    check-cast v0, Ljava/util/Map;

    .line 1977
    .line 1978
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1979
    .line 1980
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1981
    .line 1982
    .line 1983
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v0

    .line 1987
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v0

    .line 1991
    :cond_48
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1992
    .line 1993
    .line 1994
    move-result v3

    .line 1995
    if-eqz v3, :cond_4b

    .line 1996
    .line 1997
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1998
    .line 1999
    .line 2000
    move-result-object v3

    .line 2001
    check-cast v3, Ljava/util/Map$Entry;

    .line 2002
    .line 2003
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v4

    .line 2007
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2008
    .line 2009
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    .line 2010
    .line 2011
    .line 2012
    move-result v5

    .line 2013
    if-nez v5, :cond_4a

    .line 2014
    .line 2015
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2016
    .line 2017
    .line 2018
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->isRoot()Z

    .line 2019
    .line 2020
    .line 2021
    move-result v5

    .line 2022
    if-eqz v5, :cond_49

    .line 2023
    .line 2024
    move-object v5, v6

    .line 2025
    goto :goto_2b

    .line 2026
    :cond_49
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v5

    .line 2030
    :goto_2b
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2031
    .line 2032
    .line 2033
    move-result v4

    .line 2034
    if-eqz v4, :cond_48

    .line 2035
    .line 2036
    :cond_4a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v4

    .line 2040
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v3

    .line 2044
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    .line 2046
    .line 2047
    goto :goto_2a

    .line 2048
    :cond_4b
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 2049
    .line 2050
    .line 2051
    move-result v0

    .line 2052
    if-nez v0, :cond_4c

    .line 2053
    .line 2054
    goto :goto_2c

    .line 2055
    :cond_4c
    move-object v1, v6

    .line 2056
    :goto_2c
    if-nez v1, :cond_4d

    .line 2057
    .line 2058
    goto :goto_2e

    .line 2059
    :cond_4d
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v0

    .line 2063
    check-cast v0, Ljava/lang/Iterable;

    .line 2064
    .line 2065
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v3

    .line 2069
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2070
    .line 2071
    .line 2072
    move-result v0

    .line 2073
    if-nez v0, :cond_4e

    .line 2074
    .line 2075
    move-object v0, v6

    .line 2076
    goto :goto_2d

    .line 2077
    :cond_4e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v0

    .line 2081
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2082
    .line 2083
    .line 2084
    move-result v1

    .line 2085
    if-nez v1, :cond_4f

    .line 2086
    .line 2087
    goto :goto_2d

    .line 2088
    :cond_4f
    move-object v1, v0

    .line 2089
    check-cast v1, Ljava/util/Map$Entry;

    .line 2090
    .line 2091
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v1

    .line 2095
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2096
    .line 2097
    invoke-static {v1, v2}, Landroidx/work/OperationKt;->tail(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v1

    .line 2101
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v1

    .line 2105
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2106
    .line 2107
    .line 2108
    move-result v1

    .line 2109
    :cond_50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v4

    .line 2113
    move-object v5, v4

    .line 2114
    check-cast v5, Ljava/util/Map$Entry;

    .line 2115
    .line 2116
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2117
    .line 2118
    .line 2119
    move-result-object v5

    .line 2120
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2121
    .line 2122
    invoke-static {v5, v2}, Landroidx/work/OperationKt;->tail(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v5

    .line 2126
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v5

    .line 2130
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 2131
    .line 2132
    .line 2133
    move-result v5

    .line 2134
    if-le v1, v5, :cond_51

    .line 2135
    .line 2136
    move-object v0, v4

    .line 2137
    move v1, v5

    .line 2138
    :cond_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2139
    .line 2140
    .line 2141
    move-result v4

    .line 2142
    if-nez v4, :cond_50

    .line 2143
    .line 2144
    :goto_2d
    check-cast v0, Ljava/util/Map$Entry;

    .line 2145
    .line 2146
    if-eqz v0, :cond_52

    .line 2147
    .line 2148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v6

    .line 2152
    :cond_52
    :goto_2e
    return-object v6

    .line 2153
    :pswitch_11
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 2154
    .line 2155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2156
    .line 2157
    .line 2158
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures;->SIGNATURE_TO_JVM_REPRESENTATION_NAME:Ljava/util/LinkedHashMap;

    .line 2159
    .line 2160
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 2161
    .line 2162
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    .line 2163
    .line 2164
    invoke-static {v0}, Lkotlin/text/RegexKt;->computeJvmSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Ljava/lang/String;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v0

    .line 2168
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2169
    .line 2170
    .line 2171
    move-result v0

    .line 2172
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v0

    .line 2176
    return-object v0

    .line 2177
    :pswitch_12
    const/16 v17, 0x0

    .line 2178
    .line 2179
    check-cast v1, Ljava/lang/reflect/Method;

    .line 2180
    .line 2181
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 2182
    .line 2183
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    .line 2184
    .line 2185
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    .line 2186
    .line 2187
    .line 2188
    move-result v2

    .line 2189
    if-eqz v2, :cond_54

    .line 2190
    .line 2191
    :cond_53
    move/from16 v4, v17

    .line 2192
    .line 2193
    goto :goto_30

    .line 2194
    :cond_54
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->klass:Ljava/lang/Class;

    .line 2195
    .line 2196
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 2197
    .line 2198
    .line 2199
    move-result v0

    .line 2200
    if-eqz v0, :cond_57

    .line 2201
    .line 2202
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v0

    .line 2206
    const-string/jumbo v2, "values"

    .line 2207
    .line 2208
    .line 2209
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2210
    .line 2211
    .line 2212
    move-result v2

    .line 2213
    if-eqz v2, :cond_56

    .line 2214
    .line 2215
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v0

    .line 2219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2220
    .line 2221
    .line 2222
    array-length v0, v0

    .line 2223
    if-nez v0, :cond_55

    .line 2224
    .line 2225
    move v0, v5

    .line 2226
    goto :goto_2f

    .line 2227
    :cond_55
    move/from16 v0, v17

    .line 2228
    .line 2229
    goto :goto_2f

    .line 2230
    :cond_56
    const-string/jumbo v2, "valueOf"

    .line 2231
    .line 2232
    .line 2233
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2234
    .line 2235
    .line 2236
    move-result v0

    .line 2237
    if-eqz v0, :cond_55

    .line 2238
    .line 2239
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v0

    .line 2243
    new-array v1, v5, [Ljava/lang/Class;

    .line 2244
    .line 2245
    const-class v2, Ljava/lang/String;

    .line 2246
    .line 2247
    aput-object v2, v1, v17

    .line 2248
    .line 2249
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 2250
    .line 2251
    .line 2252
    move-result v0

    .line 2253
    :goto_2f
    if-nez v0, :cond_53

    .line 2254
    .line 2255
    :cond_57
    move v4, v5

    .line 2256
    :goto_30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v0

    .line 2260
    return-object v0

    .line 2261
    :pswitch_13
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2262
    .line 2263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2264
    .line 2265
    .line 2266
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 2267
    .line 2268
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    .line 2269
    .line 2270
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->packageViewDescriptorFactory:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory;

    .line 2271
    .line 2272
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 2273
    .line 2274
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Default;

    .line 2275
    .line 2276
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2277
    .line 2278
    .line 2279
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2280
    .line 2281
    .line 2282
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;

    .line 2283
    .line 2284
    invoke-direct {v2, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/LazyPackageViewDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    .line 2285
    .line 2286
    .line 2287
    return-object v2

    .line 2288
    :pswitch_14
    const/16 v17, 0x0

    .line 2289
    .line 2290
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 2291
    .line 2292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2293
    .line 2294
    .line 2295
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 2296
    .line 2297
    .line 2298
    move-result v2

    .line 2299
    if-nez v2, :cond_58

    .line 2300
    .line 2301
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 2302
    .line 2303
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    .line 2304
    .line 2305
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 2306
    .line 2307
    .line 2308
    move-result-object v1

    .line 2309
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v1

    .line 2313
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 2314
    .line 2315
    if-eqz v2, :cond_58

    .line 2316
    .line 2317
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 2318
    .line 2319
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v1

    .line 2323
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2324
    .line 2325
    .line 2326
    move-result v0

    .line 2327
    if-nez v0, :cond_58

    .line 2328
    .line 2329
    move v4, v5

    .line 2330
    goto :goto_31

    .line 2331
    :cond_58
    move/from16 v4, v17

    .line 2332
    .line 2333
    :goto_31
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v0

    .line 2337
    return-object v0

    .line 2338
    :pswitch_15
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 2339
    .line 2340
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2341
    .line 2342
    .line 2343
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 2344
    .line 2345
    .line 2346
    move-result-object v1

    .line 2347
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 2348
    .line 2349
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 2350
    .line 2351
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 2352
    .line 2353
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getStringType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 2354
    .line 2355
    .line 2356
    move-result-object v0

    .line 2357
    invoke-virtual {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 2358
    .line 2359
    .line 2360
    move-result-object v0

    .line 2361
    return-object v0

    .line 2362
    :pswitch_16
    check-cast v1, Ljava/lang/Throwable;

    .line 2363
    .line 2364
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 2365
    .line 2366
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 2367
    .line 2368
    invoke-interface {v0, v6}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 2369
    .line 2370
    .line 2371
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2372
    .line 2373
    return-object v0

    .line 2374
    :pswitch_17
    invoke-direct/range {p0 .. p1}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->invoke$androidx$glance$session$InteractiveFrameClock$startInteractive$2$1$2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v0

    .line 2378
    return-object v0

    .line 2379
    :pswitch_18
    const/16 v17, 0x0

    .line 2380
    .line 2381
    check-cast v1, Landroid/app/Activity;

    .line 2382
    .line 2383
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2384
    .line 2385
    .line 2386
    iget-object v0, v0, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;->$sCachedField:Ljava/lang/Object;

    .line 2387
    .line 2388
    check-cast v0, Ljava/lang/reflect/Field;

    .line 2389
    .line 2390
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    .line 2392
    .line 2393
    move-result-object v1

    .line 2394
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2395
    .line 2396
    .line 2397
    monitor-enter v1

    .line 2398
    :try_start_0
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 2399
    .line 2400
    .line 2401
    move-result v0

    .line 2402
    move/from16 v4, v17

    .line 2403
    .line 2404
    :goto_32
    if-ge v4, v0, :cond_59

    .line 2405
    .line 2406
    invoke-static {v1, v4, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2407
    .line 2408
    .line 2409
    add-int/lit8 v4, v4, 0x1

    .line 2410
    .line 2411
    goto :goto_32

    .line 2412
    :catchall_0
    move-exception v0

    .line 2413
    goto :goto_33

    .line 2414
    :cond_59
    monitor-exit v1

    .line 2415
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2416
    .line 2417
    return-object v0

    .line 2418
    :goto_33
    monitor-exit v1

    .line 2419
    throw v0

    .line 2420
    nop

    .line 2421
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
