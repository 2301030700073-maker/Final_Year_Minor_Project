.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static enhanceInflexible(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/datastore/core/SimpleActor$1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->INFLEXIBLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eq v1, v3, :cond_0

    .line 15
    .line 16
    move v6, v5

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v6, v4

    .line 19
    :goto_0
    if-eqz v2, :cond_2

    .line 20
    .line 21
    if-nez p4, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v7, v4

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    :goto_1
    move v7, v5

    .line 27
    :goto_2
    const/4 v8, 0x0

    .line 28
    if-nez v6, :cond_3

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_3

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 41
    .line 42
    invoke-direct {v0, v8, v5, v4}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;IZ)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-nez v6, :cond_4

    .line 55
    .line 56
    new-instance v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 57
    .line 58
    invoke-direct {v0, v8, v5, v4}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;IZ)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-virtual {v0, v9}, Landroidx/datastore/core/SimpleActor$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 71
    .line 72
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 73
    .line 74
    if-eq v1, v3, :cond_5

    .line 75
    .line 76
    instance-of v10, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 77
    .line 78
    if-nez v10, :cond_6

    .line 79
    .line 80
    :cond_5
    move-object v6, v8

    .line 81
    goto :goto_3

    .line 82
    :cond_6
    iget-object v10, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 83
    .line 84
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 85
    .line 86
    if-ne v10, v11, :cond_8

    .line 87
    .line 88
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    .line 89
    .line 90
    if-ne v1, v10, :cond_8

    .line 91
    .line 92
    move-object v10, v6

    .line 93
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 94
    .line 95
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mutableToReadOnly:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_8

    .line 108
    .line 109
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 118
    .line 119
    if-eqz v6, :cond_7

    .line 120
    .line 121
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    invoke-virtual {v10, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    const-string v0, "Given class "

    .line 134
    .line 135
    const-string v1, " is not a mutable collection"

    .line 136
    .line 137
    invoke-static {v10, v1, v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v8

    .line 141
    :cond_8
    iget-object v10, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 142
    .line 143
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 144
    .line 145
    if-ne v10, v11, :cond_5

    .line 146
    .line 147
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    .line 148
    .line 149
    if-ne v1, v10, :cond_5

    .line 150
    .line 151
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 152
    .line 153
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable:Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-eqz v10, :cond_5

    .line 166
    .line 167
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->convertReadOnlyToMutable(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    :goto_3
    const/4 v10, 0x2

    .line 172
    if-eq v1, v3, :cond_a

    .line 173
    .line 174
    iget-object v1, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 175
    .line 176
    if-nez v1, :cond_9

    .line 177
    .line 178
    const/4 v1, -0x1

    .line 179
    goto :goto_4

    .line 180
    :cond_9
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    aget v1, v3, v1

    .line 187
    .line 188
    :goto_4
    if-eq v1, v5, :cond_c

    .line 189
    .line 190
    if-eq v1, v10, :cond_b

    .line 191
    .line 192
    :cond_a
    move-object v1, v8

    .line 193
    goto :goto_5

    .line 194
    :cond_b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 198
    .line 199
    :goto_5
    if-eqz v6, :cond_d

    .line 200
    .line 201
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    if-nez v3, :cond_e

    .line 206
    .line 207
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    add-int/lit8 v11, p2, 0x1

    .line 215
    .line 216
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    move/from16 p4, v10

    .line 236
    .line 237
    new-instance v10, Ljava/util/ArrayList;

    .line 238
    .line 239
    const/16 v5, 0xa

    .line 240
    .line 241
    invoke-static {v12, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    invoke-static {v13, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .line 255
    .line 256
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    if-eqz v12, :cond_15

    .line 261
    .line 262
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v12

    .line 266
    if-eqz v12, :cond_15

    .line 267
    .line 268
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 277
    .line 278
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 279
    .line 280
    const/16 v5, 0xb

    .line 281
    .line 282
    if-nez v7, :cond_f

    .line 283
    .line 284
    move-object/from16 v16, v1

    .line 285
    .line 286
    new-instance v1, Lokio/PriorityQueue;

    .line 287
    .line 288
    invoke-direct {v1, v4, v5, v8}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_f
    move-object/from16 v16, v1

    .line 293
    .line 294
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-nez v1, :cond_10

    .line 299
    .line 300
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v1, v0, v11, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhancePossiblyFlexible(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Landroidx/datastore/core/SimpleActor$1;IZ)Lokio/PriorityQueue;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    goto :goto_7

    .line 313
    :cond_10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Landroidx/datastore/core/SimpleActor$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 322
    .line 323
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 324
    .line 325
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 326
    .line 327
    if-ne v1, v8, :cond_11

    .line 328
    .line 329
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    new-instance v8, Lokio/PriorityQueue;

    .line 338
    .line 339
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    const/4 v4, 0x1

    .line 352
    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-static {v5, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    const/16 v5, 0xb

    .line 361
    .line 362
    invoke-direct {v8, v4, v5, v1}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    move-object v1, v8

    .line 366
    goto :goto_7

    .line 367
    :cond_11
    const/4 v4, 0x1

    .line 368
    new-instance v1, Lokio/PriorityQueue;

    .line 369
    .line 370
    const/4 v8, 0x0

    .line 371
    invoke-direct {v1, v4, v5, v8}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :goto_7
    iget v4, v1, Lokio/PriorityQueue;->size:I

    .line 375
    .line 376
    add-int/2addr v11, v4

    .line 377
    iget-object v1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 380
    .line 381
    if-eqz v1, :cond_12

    .line 382
    .line 383
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    invoke-static {v1, v4, v13}, Landroidx/work/OperationKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    goto :goto_8

    .line 395
    :cond_12
    if-eqz v6, :cond_13

    .line 396
    .line 397
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-nez v1, :cond_13

    .line 402
    .line 403
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    invoke-static {v1, v4, v13}, Landroidx/work/OperationKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    goto :goto_8

    .line 422
    :cond_13
    if-eqz v6, :cond_14

    .line 423
    .line 424
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    goto :goto_8

    .line 429
    :cond_14
    const/4 v1, 0x0

    .line 430
    :goto_8
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-object/from16 v1, v16

    .line 434
    .line 435
    const/4 v4, 0x0

    .line 436
    const/16 v5, 0xa

    .line 437
    .line 438
    const/4 v8, 0x0

    .line 439
    goto/16 :goto_6

    .line 440
    .line 441
    :cond_15
    move-object/from16 v16, v1

    .line 442
    .line 443
    sub-int v11, v11, p2

    .line 444
    .line 445
    if-nez v6, :cond_18

    .line 446
    .line 447
    if-nez v16, :cond_18

    .line 448
    .line 449
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_16

    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_16
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-eqz v1, :cond_17

    .line 465
    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 471
    .line 472
    if-nez v1, :cond_18

    .line 473
    .line 474
    goto :goto_9

    .line 475
    :cond_17
    :goto_a
    new-instance v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 476
    .line 477
    const/4 v1, 0x0

    .line 478
    const/4 v8, 0x0

    .line 479
    invoke-direct {v0, v8, v11, v1}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;IZ)V

    .line 480
    .line 481
    .line 482
    return-object v0

    .line 483
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_MUTABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 488
    .line 489
    if-eqz v6, :cond_19

    .line 490
    .line 491
    goto :goto_b

    .line 492
    :cond_19
    const/4 v8, 0x0

    .line 493
    :goto_b
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 494
    .line 495
    if-eqz v16, :cond_1a

    .line 496
    .line 497
    goto :goto_c

    .line 498
    :cond_1a
    const/4 v1, 0x0

    .line 499
    :goto_c
    const/4 v2, 0x3

    .line 500
    new-array v2, v2, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 501
    .line 502
    const/16 v18, 0x0

    .line 503
    .line 504
    aput-object v0, v2, v18

    .line 505
    .line 506
    const/4 v4, 0x1

    .line 507
    aput-object v8, v2, v4

    .line 508
    .line 509
    aput-object v1, v2, p4

    .line 510
    .line 511
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    if-eqz v1, :cond_21

    .line 520
    .line 521
    if-eq v1, v4, :cond_1b

    .line 522
    .line 523
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 524
    .line 525
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-direct {v1, v4, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(ILjava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    goto :goto_d

    .line 533
    :cond_1b
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    move-object v1, v0

    .line 538
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 539
    .line 540
    :goto_d
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->toDefaultAttributes(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    new-instance v6, Ljava/util/ArrayList;

    .line 557
    .line 558
    const/16 v7, 0xa

    .line 559
    .line 560
    invoke-static {v10, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 561
    .line 562
    .line 563
    move-result v8

    .line 564
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 573
    .line 574
    .line 575
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-eqz v1, :cond_1d

    .line 580
    .line 581
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    if-eqz v1, :cond_1d

    .line 586
    .line 587
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 596
    .line 597
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 598
    .line 599
    if-nez v1, :cond_1c

    .line 600
    .line 601
    goto :goto_f

    .line 602
    :cond_1c
    move-object v7, v1

    .line 603
    :goto_f
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    goto :goto_e

    .line 607
    :cond_1d
    if-eqz v16, :cond_1e

    .line 608
    .line 609
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    goto :goto_10

    .line 614
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    :goto_10
    invoke-static {v6, v0, v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    iget-boolean v1, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->definitelyNotNull:Z

    .line 623
    .line 624
    if-eqz v1, :cond_1f

    .line 625
    .line 626
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameterImpl;

    .line 627
    .line 628
    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    .line 629
    .line 630
    .line 631
    move-object v0, v1

    .line 632
    :cond_1f
    if-eqz v16, :cond_20

    .line 633
    .line 634
    iget-boolean v1, v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    .line 635
    .line 636
    if-eqz v1, :cond_20

    .line 637
    .line 638
    goto :goto_11

    .line 639
    :cond_20
    move/from16 v4, v18

    .line 640
    .line 641
    :goto_11
    new-instance v1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 642
    .line 643
    invoke-direct {v1, v0, v11, v4}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;IZ)V

    .line 644
    .line 645
    .line 646
    return-object v1

    .line 647
    :cond_21
    const-string v0, "At least one Annotations object expected"

    .line 648
    .line 649
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    const/16 v17, 0x0

    .line 653
    .line 654
    return-object v17
.end method

.method public static enhancePossiblyFlexible(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Landroidx/datastore/core/SimpleActor$1;IZ)Lokio/PriorityQueue;
    .locals 10

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance p0, Lokio/PriorityQueue;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-direct {p0, p1, v1, v2}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 18
    .line 19
    if-eqz v0, :cond_b

    .line 20
    .line 21
    instance-of v7, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    .line 22
    .line 23
    move-object v0, p0

    .line 24
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 25
    .line 26
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 27
    .line 28
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->lowerBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 29
    .line 30
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    .line 31
    .line 32
    move-object v4, p1

    .line 33
    move v5, p2

    .line 34
    move v8, p3

    .line 35
    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhanceInflexible(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/datastore/core/SimpleActor$1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    move-object p2, v3

    .line 40
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 41
    .line 42
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    .line 43
    .line 44
    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhanceInflexible(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/datastore/core/SimpleActor$1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    iget-object v0, p3, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_1
    iget-boolean v2, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 62
    .line 63
    if-nez v2, :cond_8

    .line 64
    .line 65
    iget-boolean p3, p3, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 66
    .line 67
    if-eqz p3, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    if-eqz v7, :cond_5

    .line 71
    .line 72
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    .line 73
    .line 74
    if-nez v3, :cond_3

    .line 75
    .line 76
    move-object v3, p2

    .line 77
    :cond_3
    if-nez v0, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    move-object v9, v0

    .line 81
    :goto_0
    invoke-direct {v2, v3, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_5
    if-nez v3, :cond_6

    .line 86
    .line 87
    move-object v3, p2

    .line 88
    :cond_6
    if-nez v0, :cond_7

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_7
    move-object v9, v0

    .line 92
    :goto_1
    invoke-static {v3, v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    goto :goto_4

    .line 97
    :cond_8
    :goto_2
    if-eqz v0, :cond_a

    .line 98
    .line 99
    if-nez v3, :cond_9

    .line 100
    .line 101
    move-object v3, v0

    .line 102
    :cond_9
    invoke-static {v3, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_3

    .line 107
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-static {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    :goto_4
    new-instance p0, Lokio/PriorityQueue;

    .line 115
    .line 116
    iget p1, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 117
    .line 118
    invoke-direct {p0, p1, v1, v2}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_b
    move-object v4, p1

    .line 123
    move v5, p2

    .line 124
    move v8, p3

    .line 125
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 126
    .line 127
    if-eqz p1, :cond_d

    .line 128
    .line 129
    move-object v3, p0

    .line 130
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 131
    .line 132
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->INFLEXIBLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    .line 133
    .line 134
    const/4 v7, 0x0

    .line 135
    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhanceInflexible(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/datastore/core/SimpleActor$1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance p2, Lokio/PriorityQueue;

    .line 140
    .line 141
    iget-boolean p3, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 142
    .line 143
    iget-object v0, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 146
    .line 147
    if-eqz p3, :cond_c

    .line 148
    .line 149
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    :cond_c
    iget p0, p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 154
    .line 155
    invoke-direct {p2, p0, v1, v0}, Lokio/PriorityQueue;-><init>(IILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return-object p2

    .line 159
    :cond_d
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 160
    .line 161
    .line 162
    return-object v2
.end method


# virtual methods
.method public enhance(Lcom/google/android/material/internal/CheckableGroup;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lokhttp3/Request$Builder;

    .line 10
    .line 11
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;

    .line 12
    .line 13
    iget-boolean v4, v0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/material/internal/CheckableGroup;->toIndexed(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    new-instance v6, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/16 v7, 0xa

    .line 25
    .line 26
    move-object/from16 v8, p3

    .line 27
    .line 28
    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_0

    .line 44
    .line 45
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 50
    .line 51
    invoke-virtual {v0, v9}, Lcom/google/android/material/internal/CheckableGroup;->toIndexed(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    if-eqz v4, :cond_3

    .line 60
    .line 61
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_3

    .line 77
    .line 78
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 83
    .line 84
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object v10, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v10, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 90
    .line 91
    iget-object v10, v10, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 94
    .line 95
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 96
    .line 97
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 98
    .line 99
    move-object/from16 v11, p2

    .line 100
    .line 101
    invoke-virtual {v10, v11, v9}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-nez v9, :cond_2

    .line 106
    .line 107
    const/4 v8, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    :goto_1
    move-object/from16 v11, p2

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    :goto_2
    new-array v9, v8, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 116
    .line 117
    const/4 v12, 0x0

    .line 118
    :goto_3
    if-ge v12, v8, :cond_56

    .line 119
    .line 120
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 125
    .line 126
    iget-object v14, v0, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChangeListener:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 129
    .line 130
    iget-object v15, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 131
    .line 132
    iget-object v10, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->typeParameterForArgument:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 133
    .line 134
    if-nez v15, :cond_5

    .line 135
    .line 136
    if-eqz v10, :cond_4

    .line 137
    .line 138
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 139
    .line 140
    .line 141
    move-result-object v16

    .line 142
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static/range {v16 .. v16}, Landroidx/work/Operation$State;->convertVariance(Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 146
    .line 147
    .line 148
    move-result-object v16

    .line 149
    move-object/from16 v7, v16

    .line 150
    .line 151
    :goto_4
    move/from16 v16, v4

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_4
    const/4 v7, 0x0

    .line 155
    goto :goto_4

    .line 156
    :goto_5
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->IN:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    .line 157
    .line 158
    if-ne v7, v4, :cond_6

    .line 159
    .line 160
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->NONE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 161
    .line 162
    move-object/from16 v20, v2

    .line 163
    .line 164
    move-object/from16 v18, v5

    .line 165
    .line 166
    move-object/from16 v22, v6

    .line 167
    .line 168
    move/from16 v24, v8

    .line 169
    .line 170
    const/4 v8, 0x1

    .line 171
    const/4 v10, 0x0

    .line 172
    goto/16 :goto_28

    .line 173
    .line 174
    :cond_5
    move/from16 v16, v4

    .line 175
    .line 176
    :cond_6
    if-nez v10, :cond_7

    .line 177
    .line 178
    const/4 v4, 0x1

    .line 179
    goto :goto_6

    .line 180
    :cond_7
    const/4 v4, 0x0

    .line 181
    :goto_6
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 182
    .line 183
    if-eqz v15, :cond_8

    .line 184
    .line 185
    move-object/from16 v17, v15

    .line 186
    .line 187
    check-cast v17, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 188
    .line 189
    invoke-virtual/range {v17 .. v17}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 190
    .line 191
    .line 192
    move-result-object v17

    .line 193
    move-object/from16 v25, v17

    .line 194
    .line 195
    move/from16 v17, v4

    .line 196
    .line 197
    move-object/from16 v4, v25

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_8
    move/from16 v17, v4

    .line 201
    .line 202
    move-object v4, v7

    .line 203
    :goto_7
    if-eqz v15, :cond_9

    .line 204
    .line 205
    invoke-virtual {v3, v15}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    if-eqz v15, :cond_9

    .line 210
    .line 211
    invoke-static {v15}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->getTypeParameterClassifier(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    :goto_8
    move-object/from16 v18, v5

    .line 216
    .line 217
    goto :goto_9

    .line 218
    :cond_9
    const/4 v15, 0x0

    .line 219
    goto :goto_8

    .line 220
    :goto_9
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 221
    .line 222
    if-ne v14, v5, :cond_a

    .line 223
    .line 224
    const/4 v5, 0x1

    .line 225
    goto :goto_a

    .line 226
    :cond_a
    const/4 v5, 0x0

    .line 227
    :goto_a
    if-nez v17, :cond_b

    .line 228
    .line 229
    move/from16 v19, v5

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_b
    move/from16 v19, v5

    .line 233
    .line 234
    if-nez v5, :cond_c

    .line 235
    .line 236
    iget-object v5, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 237
    .line 238
    :cond_c
    if-eqz v1, :cond_d

    .line 239
    .line 240
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    if-eqz v5, :cond_d

    .line 245
    .line 246
    move-object v7, v5

    .line 247
    :cond_d
    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    :goto_b
    iget-object v5, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 252
    .line 253
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    const/4 v7, 0x0

    .line 258
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v20

    .line 262
    if-eqz v20, :cond_11

    .line 263
    .line 264
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v20

    .line 268
    move-object/from16 v21, v4

    .line 269
    .line 270
    invoke-static/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->getFqName(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    move-object/from16 v20, v5

    .line 275
    .line 276
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->READ_ONLY_ANNOTATIONS:Ljava/util/Set;

    .line 277
    .line 278
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_e

    .line 283
    .line 284
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 285
    .line 286
    goto :goto_d

    .line 287
    :cond_e
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->MUTABLE_ANNOTATIONS:Ljava/util/Set;

    .line 288
    .line 289
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    if-eqz v4, :cond_10

    .line 294
    .line 295
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 296
    .line 297
    :goto_d
    if-eqz v7, :cond_f

    .line 298
    .line 299
    if-eq v7, v4, :cond_f

    .line 300
    .line 301
    const/4 v7, 0x0

    .line 302
    goto :goto_e

    .line 303
    :cond_f
    move-object v7, v4

    .line 304
    :cond_10
    move-object/from16 v5, v20

    .line 305
    .line 306
    move-object/from16 v4, v21

    .line 307
    .line 308
    goto :goto_c

    .line 309
    :cond_11
    move-object/from16 v21, v4

    .line 310
    .line 311
    :goto_e
    iget-object v4, v2, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v4, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 314
    .line 315
    iget-object v4, v4, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 318
    .line 319
    new-instance v5, Landroidx/datastore/core/SimpleActor$1;

    .line 320
    .line 321
    move-object/from16 v20, v2

    .line 322
    .line 323
    const/16 v2, 0x11

    .line 324
    .line 325
    invoke-direct {v5, v2, v0, v13}, Landroidx/datastore/core/SimpleActor$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    move-object/from16 v21, v2

    .line 333
    .line 334
    const/4 v2, 0x0

    .line 335
    :goto_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v22

    .line 339
    if-eqz v22, :cond_1d

    .line 340
    .line 341
    move-object/from16 v22, v6

    .line 342
    .line 343
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-virtual {v5, v6}, Landroidx/datastore/core/SimpleActor$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v23

    .line 351
    check-cast v23, Ljava/lang/Boolean;

    .line 352
    .line 353
    move/from16 v24, v8

    .line 354
    .line 355
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    invoke-virtual {v4, v6, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->knownNullability(Ljava/lang/Object;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    if-eqz v8, :cond_12

    .line 364
    .line 365
    move-object/from16 p3, v4

    .line 366
    .line 367
    move-object/from16 v23, v10

    .line 368
    .line 369
    :goto_10
    const/4 v10, 0x0

    .line 370
    goto :goto_16

    .line 371
    :cond_12
    invoke-virtual {v4, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->resolveTypeQualifierAnnotation(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    if-nez v8, :cond_14

    .line 376
    .line 377
    move-object/from16 v23, v10

    .line 378
    .line 379
    :cond_13
    move-object/from16 p3, v4

    .line 380
    .line 381
    const/4 v10, 0x0

    .line 382
    goto :goto_15

    .line 383
    :cond_14
    invoke-virtual {v4, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->resolveJsr305CustomState(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    if-eqz v6, :cond_15

    .line 388
    .line 389
    :goto_11
    move-object/from16 v23, v10

    .line 390
    .line 391
    goto :goto_12

    .line 392
    :cond_15
    iget-object v6, v4, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->javaTypeEnhancementState:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    .line 393
    .line 394
    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->jsr305:Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;

    .line 395
    .line 396
    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;->globalLevel:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    .line 397
    .line 398
    goto :goto_11

    .line 399
    :goto_12
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->IGNORE:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    .line 400
    .line 401
    if-ne v6, v10, :cond_16

    .line 402
    .line 403
    move-object/from16 p3, v4

    .line 404
    .line 405
    const/4 v8, 0x0

    .line 406
    goto :goto_10

    .line 407
    :cond_16
    invoke-virtual {v5, v8}, Landroidx/datastore/core/SimpleActor$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v10

    .line 411
    check-cast v10, Ljava/lang/Boolean;

    .line 412
    .line 413
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 414
    .line 415
    .line 416
    move-result v10

    .line 417
    invoke-virtual {v4, v8, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->knownNullability(Ljava/lang/Object;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    if-eqz v8, :cond_13

    .line 422
    .line 423
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->WARN:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    .line 424
    .line 425
    if-ne v6, v10, :cond_17

    .line 426
    .line 427
    const/4 v6, 0x1

    .line 428
    :goto_13
    move-object/from16 p3, v4

    .line 429
    .line 430
    const/4 v4, 0x1

    .line 431
    const/4 v10, 0x0

    .line 432
    goto :goto_14

    .line 433
    :cond_17
    const/4 v6, 0x0

    .line 434
    goto :goto_13

    .line 435
    :goto_14
    invoke-static {v8, v10, v6, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZI)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    goto :goto_16

    .line 440
    :goto_15
    move-object v8, v10

    .line 441
    :goto_16
    if-nez v2, :cond_18

    .line 442
    .line 443
    goto :goto_17

    .line 444
    :cond_18
    iget-boolean v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    .line 445
    .line 446
    if-eqz v8, :cond_1c

    .line 447
    .line 448
    invoke-virtual {v8, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    if-eqz v6, :cond_19

    .line 453
    .line 454
    goto :goto_18

    .line 455
    :cond_19
    iget-boolean v6, v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    .line 456
    .line 457
    if-eqz v6, :cond_1a

    .line 458
    .line 459
    if-nez v4, :cond_1a

    .line 460
    .line 461
    goto :goto_18

    .line 462
    :cond_1a
    if-nez v6, :cond_1b

    .line 463
    .line 464
    if-eqz v4, :cond_1b

    .line 465
    .line 466
    :goto_17
    move-object v2, v8

    .line 467
    goto :goto_18

    .line 468
    :cond_1b
    move-object v2, v10

    .line 469
    goto :goto_19

    .line 470
    :cond_1c
    :goto_18
    move-object/from16 v4, p3

    .line 471
    .line 472
    move-object/from16 v6, v22

    .line 473
    .line 474
    move-object/from16 v10, v23

    .line 475
    .line 476
    move/from16 v8, v24

    .line 477
    .line 478
    goto/16 :goto_f

    .line 479
    .line 480
    :cond_1d
    move-object/from16 v22, v6

    .line 481
    .line 482
    move/from16 v24, v8

    .line 483
    .line 484
    move-object/from16 v23, v10

    .line 485
    .line 486
    const/4 v10, 0x0

    .line 487
    :goto_19
    if-eqz v2, :cond_1f

    .line 488
    .line 489
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 490
    .line 491
    iget-object v5, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 492
    .line 493
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 494
    .line 495
    if-ne v5, v6, :cond_1e

    .line 496
    .line 497
    if-eqz v15, :cond_1e

    .line 498
    .line 499
    const/4 v6, 0x1

    .line 500
    goto :goto_1a

    .line 501
    :cond_1e
    const/4 v6, 0x0

    .line 502
    :goto_1a
    iget-boolean v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    .line 503
    .line 504
    invoke-direct {v4, v5, v7, v6, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    .line 505
    .line 506
    .line 507
    const/4 v8, 0x1

    .line 508
    goto/16 :goto_28

    .line 509
    .line 510
    :cond_1f
    if-nez v17, :cond_21

    .line 511
    .line 512
    if-eqz v19, :cond_20

    .line 513
    .line 514
    goto :goto_1b

    .line 515
    :cond_20
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_USE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 516
    .line 517
    :cond_21
    :goto_1b
    iget-object v2, v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->defaultQualifiers:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    .line 518
    .line 519
    if-eqz v2, :cond_22

    .line 520
    .line 521
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;->defaultQualifiers:Ljava/util/EnumMap;

    .line 522
    .line 523
    invoke-virtual {v2, v14}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDefaultQualifiers;

    .line 528
    .line 529
    goto :goto_1c

    .line 530
    :cond_22
    move-object v2, v10

    .line 531
    :goto_1c
    if-eqz v15, :cond_23

    .line 532
    .line 533
    invoke-static {v15}, Lcom/google/android/material/internal/CheckableGroup;->getBoundsNullability(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    goto :goto_1d

    .line 538
    :cond_23
    move-object v4, v10

    .line 539
    :goto_1d
    const/4 v5, 0x2

    .line 540
    if-eqz v4, :cond_24

    .line 541
    .line 542
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 543
    .line 544
    const/4 v8, 0x0

    .line 545
    invoke-static {v4, v6, v8, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZI)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    .line 546
    .line 547
    .line 548
    move-result-object v6

    .line 549
    goto :goto_1e

    .line 550
    :cond_24
    if-eqz v2, :cond_25

    .line 551
    .line 552
    iget-object v6, v2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDefaultQualifiers;->nullabilityQualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    .line 553
    .line 554
    goto :goto_1e

    .line 555
    :cond_25
    move-object v6, v10

    .line 556
    :goto_1e
    if-eqz v4, :cond_26

    .line 557
    .line 558
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 559
    .line 560
    goto :goto_1f

    .line 561
    :cond_26
    move-object v4, v10

    .line 562
    :goto_1f
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 563
    .line 564
    if-eq v4, v8, :cond_28

    .line 565
    .line 566
    if-eqz v15, :cond_27

    .line 567
    .line 568
    if-eqz v2, :cond_27

    .line 569
    .line 570
    iget-boolean v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDefaultQualifiers;->definitelyNotNull:Z

    .line 571
    .line 572
    const/4 v4, 0x1

    .line 573
    if-ne v2, v4, :cond_27

    .line 574
    .line 575
    goto :goto_20

    .line 576
    :cond_27
    const/4 v4, 0x0

    .line 577
    goto :goto_21

    .line 578
    :cond_28
    :goto_20
    const/4 v4, 0x1

    .line 579
    :goto_21
    if-eqz v23, :cond_29

    .line 580
    .line 581
    invoke-static/range {v23 .. v23}, Lcom/google/android/material/internal/CheckableGroup;->getBoundsNullability(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    if-eqz v2, :cond_29

    .line 586
    .line 587
    iget-object v8, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 588
    .line 589
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 590
    .line 591
    if-ne v8, v13, :cond_2a

    .line 592
    .line 593
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 594
    .line 595
    const/4 v13, 0x0

    .line 596
    invoke-static {v2, v8, v13, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;ZI)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    goto :goto_22

    .line 601
    :cond_29
    move-object v2, v10

    .line 602
    :cond_2a
    :goto_22
    if-nez v2, :cond_2b

    .line 603
    .line 604
    goto :goto_24

    .line 605
    :cond_2b
    iget-object v5, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 606
    .line 607
    if-nez v6, :cond_2c

    .line 608
    .line 609
    goto :goto_23

    .line 610
    :cond_2c
    iget-object v8, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 611
    .line 612
    iget-boolean v13, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    .line 613
    .line 614
    iget-boolean v14, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    .line 615
    .line 616
    if-eqz v14, :cond_2d

    .line 617
    .line 618
    if-nez v13, :cond_2d

    .line 619
    .line 620
    goto :goto_24

    .line 621
    :cond_2d
    if-nez v14, :cond_2e

    .line 622
    .line 623
    if-eqz v13, :cond_2e

    .line 624
    .line 625
    goto :goto_23

    .line 626
    :cond_2e
    invoke-virtual {v5, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 627
    .line 628
    .line 629
    move-result v13

    .line 630
    if-gez v13, :cond_2f

    .line 631
    .line 632
    goto :goto_24

    .line 633
    :cond_2f
    invoke-virtual {v5, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    if-lez v5, :cond_30

    .line 638
    .line 639
    :goto_23
    move-object v6, v2

    .line 640
    :cond_30
    :goto_24
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 641
    .line 642
    if-eqz v6, :cond_31

    .line 643
    .line 644
    iget-object v5, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->qualifier:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 645
    .line 646
    goto :goto_25

    .line 647
    :cond_31
    move-object v5, v10

    .line 648
    :goto_25
    if-eqz v6, :cond_33

    .line 649
    .line 650
    iget-boolean v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifierWithMigrationStatus;->isForWarningOnly:Z

    .line 651
    .line 652
    const/4 v8, 0x1

    .line 653
    if-ne v6, v8, :cond_32

    .line 654
    .line 655
    move v6, v8

    .line 656
    goto :goto_27

    .line 657
    :cond_32
    :goto_26
    const/4 v6, 0x0

    .line 658
    goto :goto_27

    .line 659
    :cond_33
    const/4 v8, 0x1

    .line 660
    goto :goto_26

    .line 661
    :goto_27
    invoke-direct {v2, v5, v7, v4, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    .line 662
    .line 663
    .line 664
    move-object v4, v2

    .line 665
    :goto_28
    new-instance v2, Ljava/util/ArrayList;

    .line 666
    .line 667
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .line 669
    .line 670
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    :cond_34
    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 675
    .line 676
    .line 677
    move-result v6

    .line 678
    if-eqz v6, :cond_41

    .line 679
    .line 680
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v6

    .line 684
    check-cast v6, Ljava/util/List;

    .line 685
    .line 686
    invoke-static {v6, v12}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 691
    .line 692
    if-eqz v6, :cond_40

    .line 693
    .line 694
    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 695
    .line 696
    if-eqz v6, :cond_40

    .line 697
    .line 698
    invoke-static {v6}, Lcom/google/android/material/internal/CheckableGroup;->getNullabilityQualifier(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 699
    .line 700
    .line 701
    move-result-object v7

    .line 702
    if-nez v7, :cond_36

    .line 703
    .line 704
    move-object v13, v6

    .line 705
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 706
    .line 707
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 708
    .line 709
    .line 710
    move-result-object v13

    .line 711
    if-eqz v13, :cond_35

    .line 712
    .line 713
    invoke-static {v13}, Lcom/google/android/material/internal/CheckableGroup;->getNullabilityQualifier(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 714
    .line 715
    .line 716
    move-result-object v13

    .line 717
    goto :goto_2a

    .line 718
    :cond_35
    move-object v13, v10

    .line 719
    goto :goto_2a

    .line 720
    :cond_36
    move-object v13, v7

    .line 721
    :goto_2a
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    .line 722
    .line 723
    invoke-virtual {v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 724
    .line 725
    .line 726
    move-result-object v14

    .line 727
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->DONT_CARE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 728
    .line 729
    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 730
    .line 731
    .line 732
    move-result-object v14

    .line 733
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 734
    .line 735
    .line 736
    move-result-object v14

    .line 737
    instance-of v15, v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 738
    .line 739
    if-eqz v15, :cond_37

    .line 740
    .line 741
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 742
    .line 743
    goto :goto_2b

    .line 744
    :cond_37
    move-object v14, v10

    .line 745
    :goto_2b
    if-eqz v14, :cond_38

    .line 746
    .line 747
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 748
    .line 749
    .line 750
    move-result-object v14

    .line 751
    goto :goto_2c

    .line 752
    :cond_38
    move-object v14, v10

    .line 753
    :goto_2c
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable:Ljava/util/HashMap;

    .line 754
    .line 755
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result v14

    .line 759
    if-eqz v14, :cond_39

    .line 760
    .line 761
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 762
    .line 763
    goto :goto_2f

    .line 764
    :cond_39
    invoke-virtual {v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 765
    .line 766
    .line 767
    move-result-object v14

    .line 768
    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 769
    .line 770
    .line 771
    move-result-object v14

    .line 772
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 773
    .line 774
    .line 775
    move-result-object v14

    .line 776
    instance-of v15, v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 777
    .line 778
    if-eqz v15, :cond_3a

    .line 779
    .line 780
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 781
    .line 782
    goto :goto_2d

    .line 783
    :cond_3a
    move-object v14, v10

    .line 784
    :goto_2d
    if-eqz v14, :cond_3b

    .line 785
    .line 786
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 787
    .line 788
    .line 789
    move-result-object v14

    .line 790
    goto :goto_2e

    .line 791
    :cond_3b
    move-object v14, v10

    .line 792
    :goto_2e
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mutableToReadOnly:Ljava/util/HashMap;

    .line 793
    .line 794
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    move-result v14

    .line 798
    if-eqz v14, :cond_3c

    .line 799
    .line 800
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 801
    .line 802
    goto :goto_2f

    .line 803
    :cond_3c
    move-object v14, v10

    .line 804
    :goto_2f
    invoke-virtual {v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    .line 805
    .line 806
    .line 807
    move-result v15

    .line 808
    if-nez v15, :cond_3e

    .line 809
    .line 810
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 811
    .line 812
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 813
    .line 814
    .line 815
    move-result-object v6

    .line 816
    instance-of v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameterImpl;

    .line 817
    .line 818
    if-eqz v6, :cond_3d

    .line 819
    .line 820
    goto :goto_30

    .line 821
    :cond_3d
    const/4 v6, 0x0

    .line 822
    goto :goto_31

    .line 823
    :cond_3e
    :goto_30
    move v6, v8

    .line 824
    :goto_31
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 825
    .line 826
    if-eq v13, v7, :cond_3f

    .line 827
    .line 828
    move v7, v8

    .line 829
    goto :goto_32

    .line 830
    :cond_3f
    const/4 v7, 0x0

    .line 831
    :goto_32
    invoke-direct {v15, v13, v14, v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    .line 832
    .line 833
    .line 834
    goto :goto_33

    .line 835
    :cond_40
    move-object v15, v10

    .line 836
    :goto_33
    if-eqz v15, :cond_34

    .line 837
    .line 838
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    goto/16 :goto_29

    .line 842
    .line 843
    :cond_41
    if-nez v12, :cond_42

    .line 844
    .line 845
    if-eqz v16, :cond_42

    .line 846
    .line 847
    move v5, v8

    .line 848
    goto :goto_34

    .line 849
    :cond_42
    const/4 v5, 0x0

    .line 850
    :goto_34
    if-nez v12, :cond_43

    .line 851
    .line 852
    instance-of v6, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 853
    .line 854
    if-eqz v6, :cond_43

    .line 855
    .line 856
    move-object v6, v1

    .line 857
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 858
    .line 859
    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->varargElementType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 860
    .line 861
    if-eqz v6, :cond_43

    .line 862
    .line 863
    move v6, v8

    .line 864
    goto :goto_35

    .line 865
    :cond_43
    const/4 v6, 0x0

    .line 866
    :goto_35
    iget-object v7, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 867
    .line 868
    new-instance v13, Ljava/util/ArrayList;

    .line 869
    .line 870
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 874
    .line 875
    .line 876
    move-result-object v14

    .line 877
    :goto_36
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 878
    .line 879
    .line 880
    move-result v15

    .line 881
    if-eqz v15, :cond_46

    .line 882
    .line 883
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v15

    .line 887
    check-cast v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 888
    .line 889
    iget-boolean v8, v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    .line 890
    .line 891
    if-eqz v8, :cond_44

    .line 892
    .line 893
    move-object v8, v10

    .line 894
    goto :goto_37

    .line 895
    :cond_44
    iget-object v8, v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 896
    .line 897
    :goto_37
    if-eqz v8, :cond_45

    .line 898
    .line 899
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    .line 901
    .line 902
    :cond_45
    const/4 v8, 0x1

    .line 903
    goto :goto_36

    .line 904
    :cond_46
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 905
    .line 906
    .line 907
    move-result-object v8

    .line 908
    iget-boolean v13, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    .line 909
    .line 910
    if-eqz v13, :cond_47

    .line 911
    .line 912
    move-object v13, v10

    .line 913
    goto :goto_38

    .line 914
    :cond_47
    move-object v13, v7

    .line 915
    :goto_38
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 916
    .line 917
    if-ne v13, v14, :cond_48

    .line 918
    .line 919
    goto :goto_39

    .line 920
    :cond_48
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 921
    .line 922
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 923
    .line 924
    invoke-static {v8, v14, v15, v13, v5}, Lkotlin/ExceptionsKt;->select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v8

    .line 928
    move-object v14, v8

    .line 929
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 930
    .line 931
    :goto_39
    if-nez v14, :cond_4c

    .line 932
    .line 933
    new-instance v8, Ljava/util/ArrayList;

    .line 934
    .line 935
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 939
    .line 940
    .line 941
    move-result-object v13

    .line 942
    :cond_49
    :goto_3a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 943
    .line 944
    .line 945
    move-result v15

    .line 946
    if-eqz v15, :cond_4a

    .line 947
    .line 948
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v15

    .line 952
    check-cast v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 953
    .line 954
    iget-object v15, v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 955
    .line 956
    if-eqz v15, :cond_49

    .line 957
    .line 958
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    goto :goto_3a

    .line 962
    :cond_4a
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 963
    .line 964
    .line 965
    move-result-object v8

    .line 966
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 967
    .line 968
    if-ne v7, v13, :cond_4b

    .line 969
    .line 970
    goto :goto_3b

    .line 971
    :cond_4b
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 972
    .line 973
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 974
    .line 975
    invoke-static {v8, v13, v15, v7, v5}, Lkotlin/ExceptionsKt;->select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v7

    .line 979
    move-object v13, v7

    .line 980
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 981
    .line 982
    goto :goto_3b

    .line 983
    :cond_4c
    move-object v13, v14

    .line 984
    :goto_3b
    new-instance v7, Ljava/util/ArrayList;

    .line 985
    .line 986
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 990
    .line 991
    .line 992
    move-result-object v8

    .line 993
    :cond_4d
    :goto_3c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 994
    .line 995
    .line 996
    move-result v15

    .line 997
    if-eqz v15, :cond_4e

    .line 998
    .line 999
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v15

    .line 1003
    check-cast v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 1004
    .line 1005
    iget-object v15, v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 1006
    .line 1007
    if-eqz v15, :cond_4d

    .line 1008
    .line 1009
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    .line 1011
    .line 1012
    goto :goto_3c

    .line 1013
    :cond_4e
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v7

    .line 1017
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 1018
    .line 1019
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 1020
    .line 1021
    iget-object v10, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 1022
    .line 1023
    invoke-static {v7, v8, v15, v10, v5}, Lkotlin/ExceptionsKt;->select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v5

    .line 1027
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    .line 1028
    .line 1029
    if-eqz v13, :cond_50

    .line 1030
    .line 1031
    if-nez p5, :cond_50

    .line 1032
    .line 1033
    if-eqz v6, :cond_4f

    .line 1034
    .line 1035
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 1036
    .line 1037
    if-ne v13, v6, :cond_4f

    .line 1038
    .line 1039
    goto :goto_3d

    .line 1040
    :cond_4f
    move-object v7, v13

    .line 1041
    goto :goto_3e

    .line 1042
    :cond_50
    :goto_3d
    const/4 v7, 0x0

    .line 1043
    :goto_3e
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    .line 1044
    .line 1045
    if-ne v7, v6, :cond_54

    .line 1046
    .line 1047
    iget-boolean v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->definitelyNotNull:Z

    .line 1048
    .line 1049
    if-nez v4, :cond_53

    .line 1050
    .line 1051
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1052
    .line 1053
    .line 1054
    move-result v4

    .line 1055
    if-eqz v4, :cond_51

    .line 1056
    .line 1057
    goto :goto_3f

    .line 1058
    :cond_51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v2

    .line 1062
    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v4

    .line 1066
    if-eqz v4, :cond_54

    .line 1067
    .line 1068
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v4

    .line 1072
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 1073
    .line 1074
    iget-boolean v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->definitelyNotNull:Z

    .line 1075
    .line 1076
    if-eqz v4, :cond_52

    .line 1077
    .line 1078
    :cond_53
    const/4 v4, 0x1

    .line 1079
    goto :goto_40

    .line 1080
    :cond_54
    :goto_3f
    const/4 v4, 0x0

    .line 1081
    :goto_40
    if-eqz v7, :cond_55

    .line 1082
    .line 1083
    if-eq v14, v13, :cond_55

    .line 1084
    .line 1085
    const/4 v2, 0x1

    .line 1086
    goto :goto_41

    .line 1087
    :cond_55
    const/4 v2, 0x0

    .line 1088
    :goto_41
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    .line 1089
    .line 1090
    invoke-direct {v6, v7, v5, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;ZZ)V

    .line 1091
    .line 1092
    .line 1093
    aput-object v6, v9, v12

    .line 1094
    .line 1095
    add-int/lit8 v12, v12, 0x1

    .line 1096
    .line 1097
    move/from16 v4, v16

    .line 1098
    .line 1099
    move-object/from16 v5, v18

    .line 1100
    .line 1101
    move-object/from16 v2, v20

    .line 1102
    .line 1103
    move-object/from16 v6, v22

    .line 1104
    .line 1105
    move/from16 v8, v24

    .line 1106
    .line 1107
    goto/16 :goto_3

    .line 1108
    .line 1109
    :cond_56
    new-instance v1, Landroidx/datastore/core/SimpleActor$1;

    .line 1110
    .line 1111
    const/16 v2, 0x10

    .line 1112
    .line 1113
    move-object/from16 v3, p4

    .line 1114
    .line 1115
    invoke-direct {v1, v2, v3, v9}, Landroidx/datastore/core/SimpleActor$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1116
    .line 1117
    .line 1118
    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    .line 1119
    .line 1120
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v2

    .line 1124
    const/4 v13, 0x0

    .line 1125
    invoke-static {v2, v1, v13, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhancePossiblyFlexible(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Landroidx/datastore/core/SimpleActor$1;IZ)Lokio/PriorityQueue;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 1130
    .line 1131
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1132
    .line 1133
    return-object v0
.end method

.method public enhance(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;ZLokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 6

    .line 1134
    new-instance v0, Lcom/google/android/material/internal/CheckableGroup;

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 1135
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/internal/CheckableGroup;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;ZLokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Z)V

    .line 1136
    invoke-interface {p8, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    .line 1137
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p1, p4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1138
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1139
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 1140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p8, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1141
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p4, p6

    move p5, p7

    move-object p1, v0

    .line 1142
    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhance(Lcom/google/android/material/internal/CheckableGroup;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0
.end method

.method public enhanceSignatures(Lokhttp3/Request$Builder;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p2

    .line 9
    .line 10
    check-cast v2, Ljava/lang/Iterable;

    .line 11
    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v4, 0xa

    .line 15
    .line 16
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_28

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 38
    .line 39
    instance-of v6, v5, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    .line 40
    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    move v9, v4

    .line 44
    goto/16 :goto_1f

    .line 45
    .line 46
    :cond_0
    move-object v8, v5

    .line 47
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    .line 48
    .line 49
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 54
    .line 55
    const/4 v9, 0x1

    .line 56
    if-ne v6, v7, :cond_1

    .line 57
    .line 58
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getOverriddenDescriptors()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v6, v9, :cond_1

    .line 71
    .line 72
    goto/16 :goto_1b

    .line 73
    .line 74
    :cond_1
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->getTopLevelContainingClassifier(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    if-nez v6, :cond_2

    .line 81
    .line 82
    move-object v6, v5

    .line 83
    check-cast v6, Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 84
    .line 85
    invoke-virtual {v6}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    goto :goto_5

    .line 90
    :cond_2
    instance-of v11, v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 91
    .line 92
    if-eqz v11, :cond_3

    .line 93
    .line 94
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move-object v6, v10

    .line 98
    :goto_1
    if-eqz v6, :cond_4

    .line 99
    .line 100
    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->moduleAnnotations$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 101
    .line 102
    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Ljava/util/List;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move-object v6, v10

    .line 110
    :goto_2
    if-eqz v6, :cond_8

    .line 111
    .line 112
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-eqz v11, :cond_5

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_6

    .line 137
    .line 138
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;

    .line 143
    .line 144
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    .line 145
    .line 146
    invoke-direct {v13, v12, v0, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaAnnotation;Lokhttp3/Request$Builder;Z)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    move-object v6, v5

    .line 154
    check-cast v6, Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 155
    .line 156
    invoke-virtual {v6}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v6, v11}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    if-eqz v11, :cond_7

    .line 169
    .line 170
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_7
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    .line 174
    .line 175
    invoke-direct {v11, v7, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    move-object v6, v11

    .line 179
    goto :goto_5

    .line 180
    :cond_8
    :goto_4
    move-object v6, v5

    .line 181
    check-cast v6, Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 182
    .line 183
    invoke-virtual {v6}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    :goto_5
    invoke-static {v0, v6}, Lkotlin/text/UStringsKt;->copyWithNewDefaultTypeQualifiers(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lokhttp3/Request$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    instance-of v11, v5, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;

    .line 192
    .line 193
    if-eqz v11, :cond_9

    .line 194
    .line 195
    move-object v11, v5

    .line 196
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;

    .line 197
    .line 198
    iget-object v11, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 199
    .line 200
    if-eqz v11, :cond_9

    .line 201
    .line 202
    iget-boolean v12, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->isDefault:Z

    .line 203
    .line 204
    if-nez v12, :cond_9

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_9
    move-object v11, v5

    .line 208
    :goto_6
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    if-eqz v12, :cond_d

    .line 213
    .line 214
    instance-of v12, v11, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 215
    .line 216
    if-eqz v12, :cond_a

    .line 217
    .line 218
    move-object v12, v11

    .line 219
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_a
    move-object v12, v10

    .line 223
    :goto_7
    if-eqz v12, :cond_b

    .line 224
    .line 225
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->ORIGINAL_VALUE_PARAMETER_FOR_EXTENSION_RECEIVER:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    .line 226
    .line 227
    invoke-interface {v12, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 232
    .line 233
    goto :goto_8

    .line 234
    :cond_b
    move-object v12, v10

    .line 235
    :goto_8
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;

    .line 236
    .line 237
    if-eqz v12, :cond_c

    .line 238
    .line 239
    invoke-virtual {v12}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    invoke-static {v6, v13}, Lkotlin/text/UStringsKt;->copyWithNewDefaultTypeQualifiers(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lokhttp3/Request$Builder;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    :goto_9
    move v14, v9

    .line 248
    move-object v9, v12

    .line 249
    goto :goto_a

    .line 250
    :cond_c
    move-object v13, v6

    .line 251
    goto :goto_9

    .line 252
    :goto_a
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 253
    .line 254
    move-object/from16 v16, v10

    .line 255
    .line 256
    const/4 v10, 0x0

    .line 257
    move-object/from16 v17, v11

    .line 258
    .line 259
    move-object v11, v13

    .line 260
    const/4 v13, 0x0

    .line 261
    move/from16 v18, v14

    .line 262
    .line 263
    const/4 v14, 0x0

    .line 264
    move/from16 v16, v7

    .line 265
    .line 266
    move-object/from16 v7, p0

    .line 267
    .line 268
    invoke-virtual/range {v7 .. v15}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhance(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;ZLokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    move-object/from16 v18, v10

    .line 273
    .line 274
    goto :goto_b

    .line 275
    :cond_d
    move/from16 v16, v7

    .line 276
    .line 277
    move-object/from16 v17, v11

    .line 278
    .line 279
    const/16 v18, 0x0

    .line 280
    .line 281
    :goto_b
    instance-of v7, v5, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    .line 282
    .line 283
    if-eqz v7, :cond_e

    .line 284
    .line 285
    move-object v10, v5

    .line 286
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    .line 287
    .line 288
    goto :goto_c

    .line 289
    :cond_e
    const/4 v10, 0x0

    .line 290
    :goto_c
    if-eqz v10, :cond_f

    .line 291
    .line 292
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 300
    .line 301
    const/4 v9, 0x3

    .line 302
    invoke-static {v10, v9}, Lkotlin/text/RegexKt;->computeJvmDescriptor$default(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-static {v7, v9}, Lcoil3/util/UtilsKt;->signature(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/LinkedHashMap;

    .line 311
    .line 312
    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    move-object v10, v7

    .line 317
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;

    .line 318
    .line 319
    move-object v7, v10

    .line 320
    goto :goto_d

    .line 321
    :cond_f
    const/4 v7, 0x0

    .line 322
    :goto_d
    if-eqz v7, :cond_10

    .line 323
    .line 324
    iget-object v9, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->parametersInfo:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 327
    .line 328
    .line 329
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 334
    .line 335
    .line 336
    :cond_10
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;

    .line 337
    .line 338
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->JSPECIFY_ANNOTATIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 339
    .line 340
    invoke-virtual {v9, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->STRICT:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    .line 345
    .line 346
    if-ne v9, v10, :cond_11

    .line 347
    .line 348
    instance-of v9, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 349
    .line 350
    if-eqz v9, :cond_11

    .line 351
    .line 352
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->HAS_ERASED_VALUE_PARAMETERS:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    .line 353
    .line 354
    invoke-interface {v5, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 359
    .line 360
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    if-eqz v9, :cond_11

    .line 365
    .line 366
    const/4 v14, 0x1

    .line 367
    goto :goto_e

    .line 368
    :cond_11
    move/from16 v14, v16

    .line 369
    .line 370
    :goto_e
    invoke-interface/range {v17 .. v17}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    new-instance v10, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-static {v9, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 380
    .line 381
    .line 382
    move-result v11

    .line 383
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    .line 385
    .line 386
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 387
    .line 388
    .line 389
    move-result-object v19

    .line 390
    :goto_f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    if-eqz v9, :cond_14

    .line 395
    .line 396
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 401
    .line 402
    if-eqz v7, :cond_12

    .line 403
    .line 404
    iget-object v11, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->parametersInfo:Ljava/util/ArrayList;

    .line 405
    .line 406
    iget v12, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;->index:I

    .line 407
    .line 408
    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v11

    .line 412
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    .line 413
    .line 414
    move-object v13, v11

    .line 415
    goto :goto_10

    .line 416
    :cond_12
    const/4 v13, 0x0

    .line 417
    :goto_10
    new-instance v15, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

    .line 418
    .line 419
    const/16 v11, 0xf

    .line 420
    .line 421
    invoke-direct {v15, v11, v9}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;-><init>(ILjava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    if-eqz v9, :cond_13

    .line 425
    .line 426
    invoke-virtual {v9}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    invoke-static {v6, v11}, Lkotlin/text/UStringsKt;->copyWithNewDefaultTypeQualifiers(Lokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lokhttp3/Request$Builder;

    .line 431
    .line 432
    .line 433
    move-result-object v11

    .line 434
    goto :goto_11

    .line 435
    :cond_13
    move-object v11, v6

    .line 436
    :goto_11
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 437
    .line 438
    move-object/from16 v20, v10

    .line 439
    .line 440
    const/4 v10, 0x0

    .line 441
    move-object v4, v7

    .line 442
    move-object/from16 v0, v20

    .line 443
    .line 444
    move-object/from16 v7, p0

    .line 445
    .line 446
    invoke-virtual/range {v7 .. v15}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhance(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;ZLokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 447
    .line 448
    .line 449
    move-result-object v9

    .line 450
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-object v10, v0

    .line 454
    move-object v7, v4

    .line 455
    const/16 v4, 0xa

    .line 456
    .line 457
    move-object/from16 v0, p1

    .line 458
    .line 459
    goto :goto_f

    .line 460
    :cond_14
    move-object v4, v7

    .line 461
    move-object v0, v10

    .line 462
    instance-of v7, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    .line 463
    .line 464
    if-eqz v7, :cond_15

    .line 465
    .line 466
    move-object v10, v5

    .line 467
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    .line 468
    .line 469
    goto :goto_12

    .line 470
    :cond_15
    const/4 v10, 0x0

    .line 471
    :goto_12
    if-eqz v10, :cond_16

    .line 472
    .line 473
    invoke-static {v10}, Landroidx/compose/ui/unit/DpKt;->isJavaField(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Z

    .line 474
    .line 475
    .line 476
    move-result v7

    .line 477
    const/4 v14, 0x1

    .line 478
    if-ne v7, v14, :cond_16

    .line 479
    .line 480
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->FIELD:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 481
    .line 482
    :goto_13
    move-object v12, v7

    .line 483
    goto :goto_14

    .line 484
    :cond_16
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->METHOD_RETURN_TYPE:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    .line 485
    .line 486
    goto :goto_13

    .line 487
    :goto_14
    if-eqz v4, :cond_17

    .line 488
    .line 489
    iget-object v10, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedFunctionEnhancementInfo;->returnTypeInfo:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    .line 490
    .line 491
    move-object v13, v10

    .line 492
    goto :goto_15

    .line 493
    :cond_17
    const/4 v13, 0x0

    .line 494
    :goto_15
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;->INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureEnhancement$containsFunctionN$1;

    .line 495
    .line 496
    const/4 v14, 0x0

    .line 497
    const/4 v10, 0x1

    .line 498
    move-object/from16 v7, p0

    .line 499
    .line 500
    move-object v11, v6

    .line 501
    move-object/from16 v9, v17

    .line 502
    .line 503
    invoke-virtual/range {v7 .. v15}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhance(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;ZLokhttp3/Request$Builder;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;ZLkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    const/4 v7, 0x0

    .line 515
    invoke-static {v6, v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 516
    .line 517
    .line 518
    move-result v6

    .line 519
    if-nez v6, :cond_1c

    .line 520
    .line 521
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    if-eqz v6, :cond_18

    .line 526
    .line 527
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    invoke-static {v6, v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    goto :goto_16

    .line 536
    :cond_18
    move/from16 v6, v16

    .line 537
    .line 538
    :goto_16
    if-nez v6, :cond_1c

    .line 539
    .line 540
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 548
    .line 549
    .line 550
    move-result v9

    .line 551
    if-eqz v9, :cond_19

    .line 552
    .line 553
    goto :goto_17

    .line 554
    :cond_19
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 555
    .line 556
    .line 557
    move-result-object v6

    .line 558
    :cond_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 559
    .line 560
    .line 561
    move-result v9

    .line 562
    if-eqz v9, :cond_1b

    .line 563
    .line 564
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v9

    .line 568
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 569
    .line 570
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 571
    .line 572
    .line 573
    move-result-object v9

    .line 574
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-static {v9, v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 578
    .line 579
    .line 580
    move-result v9

    .line 581
    if-eqz v9, :cond_1a

    .line 582
    .line 583
    goto :goto_18

    .line 584
    :cond_1b
    :goto_17
    move-object v10, v7

    .line 585
    goto :goto_19

    .line 586
    :cond_1c
    :goto_18
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/DeprecationCausedByFunctionNInfo;

    .line 587
    .line 588
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 589
    .line 590
    .line 591
    new-instance v10, Lkotlin/Pair;

    .line 592
    .line 593
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt;->DEPRECATED_FUNCTION_KEY:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    .line 594
    .line 595
    invoke-direct {v10, v9, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    :goto_19
    if-nez v18, :cond_21

    .line 599
    .line 600
    if-nez v4, :cond_21

    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 603
    .line 604
    .line 605
    move-result v6

    .line 606
    if-eqz v6, :cond_1d

    .line 607
    .line 608
    goto :goto_1a

    .line 609
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 614
    .line 615
    .line 616
    move-result v9

    .line 617
    if-eqz v9, :cond_1f

    .line 618
    .line 619
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v9

    .line 623
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 624
    .line 625
    if-eqz v9, :cond_1e

    .line 626
    .line 627
    goto :goto_1c

    .line 628
    :cond_1f
    :goto_1a
    if-eqz v10, :cond_20

    .line 629
    .line 630
    goto :goto_1c

    .line 631
    :cond_20
    :goto_1b
    const/16 v9, 0xa

    .line 632
    .line 633
    goto :goto_1f

    .line 634
    :cond_21
    :goto_1c
    if-nez v18, :cond_23

    .line 635
    .line 636
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    if-eqz v5, :cond_22

    .line 641
    .line 642
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    goto :goto_1d

    .line 647
    :cond_22
    move-object v5, v7

    .line 648
    goto :goto_1d

    .line 649
    :cond_23
    move-object/from16 v5, v18

    .line 650
    .line 651
    :goto_1d
    new-instance v6, Ljava/util/ArrayList;

    .line 652
    .line 653
    const/16 v9, 0xa

    .line 654
    .line 655
    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 656
    .line 657
    .line 658
    move-result v11

    .line 659
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    move/from16 v11, v16

    .line 667
    .line 668
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 669
    .line 670
    .line 671
    move-result v12

    .line 672
    if-eqz v12, :cond_26

    .line 673
    .line 674
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v12

    .line 678
    add-int/lit8 v13, v11, 0x1

    .line 679
    .line 680
    if-ltz v11, :cond_25

    .line 681
    .line 682
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 683
    .line 684
    if-nez v12, :cond_24

    .line 685
    .line 686
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 687
    .line 688
    .line 689
    move-result-object v12

    .line 690
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v11

    .line 694
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 695
    .line 696
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 697
    .line 698
    .line 699
    move-result-object v12

    .line 700
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    :cond_24
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move v11, v13

    .line 707
    goto :goto_1e

    .line 708
    :cond_25
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 709
    .line 710
    .line 711
    throw v7

    .line 712
    :cond_26
    if-nez v4, :cond_27

    .line 713
    .line 714
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 719
    .line 720
    .line 721
    :cond_27
    invoke-interface {v8, v5, v6, v4, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;->enhance(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/Pair;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    :goto_1f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-object/from16 v0, p1

    .line 729
    .line 730
    move v4, v9

    .line 731
    goto/16 :goto_0

    .line 732
    .line 733
    :cond_28
    return-object v3
.end method
