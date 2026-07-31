.class public abstract Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final json:Lkotlinx/serialization/json/JsonImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lkotlinx/serialization/json/JsonBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, v1, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 18
    .line 19
    iget-boolean v5, v3, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 20
    .line 21
    iget-object v4, v3, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v6, v4

    .line 24
    check-cast v6, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, v3, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v7, v4

    .line 29
    check-cast v7, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v4, v3, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v9, v4

    .line 34
    check-cast v9, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 35
    .line 36
    iget-boolean v8, v3, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 37
    .line 38
    iget-object v1, v1, Lkotlinx/serialization/json/Json;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 39
    .line 40
    iput-object v1, v2, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 41
    .line 42
    iget-boolean v10, v3, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string v0, "    "

    .line 48
    .line 49
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_b

    .line 54
    .line 55
    new-instance v4, Landroidx/compose/runtime/ProvidedValue;

    .line 56
    .line 57
    invoke-direct/range {v4 .. v10}, Landroidx/compose/runtime/ProvidedValue;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLkotlinx/serialization/json/ClassDiscriminatorMode;Z)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lkotlinx/serialization/json/JsonImpl;

    .line 61
    .line 62
    iget-object v1, v2, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v4, v1}, Lkotlinx/serialization/json/Json;-><init>(Landroidx/compose/runtime/ProvidedValue;Lkotlinx/serialization/modules/SerialModuleImpl;)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 71
    .line 72
    if-eq v1, v2, :cond_a

    .line 73
    .line 74
    iget-object v2, v4, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 77
    .line 78
    sget-object v3, Lkotlinx/serialization/json/ClassDiscriminatorMode;->NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    if-eq v2, v3, :cond_0

    .line 82
    .line 83
    move v2, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v2, 0x0

    .line 86
    :goto_0
    iget-object v3, v1, Lkotlinx/serialization/modules/SerialModuleImpl;->class2ContextualFactory:Ljava/util/Map;

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_3

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/util/Map$Entry;

    .line 107
    .line 108
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Lkotlin/reflect/KClass;

    .line 113
    .line 114
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Lkotlinx/serialization/modules/ContextualProvider;

    .line 119
    .line 120
    instance-of v7, v5, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    .line 121
    .line 122
    if-eqz v7, :cond_1

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v5, Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;->INSTANCE:Lnet/thunderbird/feature/search/legacy/serialization/MessageSearchFieldAsSearchFieldSerializer;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    instance-of v5, v5, Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;

    .line 131
    .line 132
    if-eqz v5, :cond_2

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_3
    iget-object v3, v1, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2Serializers:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_8

    .line 157
    .line 158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    check-cast v5, Ljava/util/Map$Entry;

    .line 163
    .line 164
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    check-cast v6, Lkotlin/reflect/KClass;

    .line 169
    .line 170
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Ljava/util/Map;

    .line 175
    .line 176
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_4

    .line 189
    .line 190
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    check-cast v7, Ljava/util/Map$Entry;

    .line 195
    .line 196
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    check-cast v8, Lkotlin/reflect/KClass;

    .line 201
    .line 202
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 207
    .line 208
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-interface {v7}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-interface {v7}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlin/ranges/RangesKt;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    instance-of v9, v7, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    .line 226
    .line 227
    const-string v10, "Serializer for "

    .line 228
    .line 229
    if-nez v9, :cond_7

    .line 230
    .line 231
    sget-object v9, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    .line 232
    .line 233
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    if-nez v9, :cond_7

    .line 238
    .line 239
    if-nez v2, :cond_5

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_5
    sget-object v9, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$2:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 243
    .line 244
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-nez v9, :cond_6

    .line 249
    .line 250
    sget-object v9, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 251
    .line 252
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    if-nez v9, :cond_6

    .line 257
    .line 258
    instance-of v9, v7, Lkotlinx/serialization/descriptors/PrimitiveKind$INT;

    .line 259
    .line 260
    if-nez v9, :cond_6

    .line 261
    .line 262
    instance-of v9, v7, Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    .line 263
    .line 264
    if-nez v9, :cond_6

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_6
    check-cast v8, Lkotlin/jvm/internal/ClassReference;

    .line 268
    .line 269
    invoke-virtual {v8}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v1, " of kind "

    .line 274
    .line 275
    const-string v2, " cannot be serialized polymorphically with class discriminator."

    .line 276
    .line 277
    invoke-static {v10, v0, v1, v7, v2}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_7
    check-cast v8, Lkotlin/jvm/internal/ClassReference;

    .line 282
    .line 283
    invoke-virtual {v8}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const-string v1, " can\'t be registered as a subclass for polymorphic serialization because its kind "

    .line 288
    .line 289
    const-string v2, " is not concrete. To work with multiple hierarchies, register it as a base class."

    .line 290
    .line 291
    invoke-static {v10, v0, v1, v7, v2}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_8
    iget-object v2, v1, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultSerializerProvider:Ljava/util/Map;

    .line 296
    .line 297
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_9

    .line 310
    .line 311
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Ljava/util/Map$Entry;

    .line 316
    .line 317
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    check-cast v5, Lkotlin/reflect/KClass;

    .line 322
    .line 323
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 328
    .line 329
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    invoke-static {v4, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_9
    iget-object v1, v1, Lkotlinx/serialization/modules/SerialModuleImpl;->polyBase2DefaultDeserializerProvider:Ljava/util/Map;

    .line 340
    .line 341
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_a

    .line 354
    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Ljava/util/Map$Entry;

    .line 360
    .line 361
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    check-cast v3, Lkotlin/reflect/KClass;

    .line 366
    .line 367
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 372
    .line 373
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    invoke-static {v4, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_a
    sput-object v0, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 384
    .line 385
    return-void

    .line 386
    :cond_b
    const-string v0, "Indent should not be specified when default printing mode is used"

    .line 387
    .line 388
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    return-void
.end method

.method public static deserialize([B)Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->Companion:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$Companion;

    .line 9
    .line 10
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 15
    .line 16
    sget-object v2, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->StringJsonLexer(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Landroidx/compose/ui/node/RulerTrackingMap;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 29
    .line 30
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/4 v6, 0x0

    .line 35
    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    .line 36
    .line 37
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/compose/ui/node/RulerTrackingMap;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/fsck/k9/mailstore/LocalStore$8;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v4}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken()B

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0xa

    .line 49
    .line 50
    if-ne v0, v1, :cond_0

    .line 51
    .line 52
    check-cast p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "Expected EOF after parsing, but had "

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v4, Landroidx/compose/ui/node/RulerTrackingMap;->newRulers:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    iget v1, v4, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 67
    .line 68
    add-int/lit8 v1, v1, -0x1

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, " instead"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x6

    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-static {v4, p0, v0, v2, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    throw v2
.end method

.method public static serialize(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/thunderbird/feature/search/legacy/serialization/LocalMessageSearchSerializer;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 5
    .line 6
    sget-object v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->Companion:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$Companion;

    .line 7
    .line 8
    invoke-virtual {v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Lokio/PriorityQueue;

    .line 21
    .line 22
    const/16 v3, 0x11

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v2, v3, v4}, Lokio/PriorityQueue;-><init>(IB)V

    .line 26
    .line 27
    .line 28
    sget-object v3, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 29
    .line 30
    monitor-enter v3

    .line 31
    :try_start_0
    iget-object v4, v3, Lkotlinx/serialization/json/internal/CharArrayPool;->arrays:Lkotlin/collections/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, 0x0

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    move-object v4, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    :goto_0
    check-cast v4, [C

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iget v5, v3, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I

    .line 51
    .line 52
    array-length v6, v4

    .line 53
    sub-int/2addr v5, v6

    .line 54
    iput v5, v3, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    move-object v6, v4

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_1
    monitor-exit v3

    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    const/16 v3, 0x80

    .line 64
    .line 65
    new-array v6, v3, [C

    .line 66
    .line 67
    :cond_2
    iput-object v6, v2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 68
    .line 69
    :try_start_1
    new-instance v3, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 70
    .line 71
    sget-object v4, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    .line 72
    .line 73
    sget-object v5, Lkotlinx/serialization/json/internal/WriteMode;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 74
    .line 75
    invoke-virtual {v5}, Lkotlin/enums/EnumEntriesList;->getSize()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    new-array v5, v5, [Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 80
    .line 81
    new-instance v6, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 82
    .line 83
    invoke-direct {v6, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Lokio/PriorityQueue;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v6, v0, v4, v5}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lcom/fsck/k9/mailstore/LocalFolder$8;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lokio/PriorityQueue;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    invoke-virtual {v2}, Lokio/PriorityQueue;->release()V

    .line 97
    .line 98
    .line 99
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    invoke-virtual {v2}, Lokio/PriorityQueue;->release()V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :goto_2
    monitor-exit v3

    .line 115
    throw p0
.end method
