.class public final Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;
.super Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final _constructWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    new-instance v5, Lkotlin/UnsafeLazyImpl;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getWrapperName()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-direct {v5, v6, v4, v7}, Lkotlin/UnsafeLazyImpl;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object v8, v1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 32
    .line 33
    instance-of v9, v7, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 34
    .line 35
    if-eqz v9, :cond_0

    .line 36
    .line 37
    move-object v9, v7

    .line 38
    check-cast v9, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 39
    .line 40
    invoke-virtual {v9, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v1, v7, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isContainerType()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    invoke-virtual {v6}, Landroidx/work/Operation$State;->isReferenceType()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v5, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getContentType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v10, v8, v4, v6}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    if-nez v10, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0, v8, v5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object v11, v8, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;

    .line 82
    .line 83
    invoke-virtual {v11, v8, v4, v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual {v10, v8, v5, v11}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :goto_1
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-virtual {v10, v8, v4, v6}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    if-nez v10, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0, v8, v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iget-object v0, v8, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;

    .line 107
    .line 108
    invoke-virtual {v0, v8, v4, v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v10, v8, v6, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_2
    iget-object v10, v2, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Ljava/lang/Object;

    .line 117
    .line 118
    move-object v13, v10

    .line 119
    check-cast v13, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 120
    .line 121
    iget-object v10, v2, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v10, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 124
    .line 125
    iget-object v11, v2, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 128
    .line 129
    iget-object v12, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 130
    .line 131
    iget-object v14, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 132
    .line 133
    const/4 v15, 0x0

    .line 134
    move/from16 v9, p4

    .line 135
    .line 136
    const/16 v16, 0x0

    .line 137
    .line 138
    :try_start_0
    invoke-virtual {v2, v4, v9, v6}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;ZLcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 139
    .line 140
    .line 141
    move-result-object v9
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    if-eqz v5, :cond_7

    .line 143
    .line 144
    if-nez v9, :cond_5

    .line 145
    .line 146
    move-object v9, v6

    .line 147
    :cond_5
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getContentType()Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 148
    .line 149
    .line 150
    move-result-object v17

    .line 151
    if-eqz v17, :cond_6

    .line 152
    .line 153
    invoke-virtual {v9, v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;->withContentTypeHandler(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v2, "serialization type "

    .line 164
    .line 165
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v2, " has no content"

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-array v2, v15, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-virtual {v1, v11, v3, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    throw v16

    .line 186
    :cond_7
    :goto_3
    if-nez v9, :cond_8

    .line 187
    .line 188
    move-object v5, v6

    .line 189
    goto :goto_4

    .line 190
    :cond_8
    move-object v5, v9

    .line 191
    :goto_4
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 192
    .line 193
    .line 194
    move-result-object v17

    .line 195
    if-eqz v17, :cond_2a

    .line 196
    .line 197
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move/from16 p0, v15

    .line 201
    .line 202
    iget-object v15, v2, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v15, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 205
    .line 206
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    move-object/from16 v17, v0

    .line 210
    .line 211
    const/4 v0, 0x3

    .line 212
    new-array v3, v0, [Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 213
    .line 214
    aput-object v15, v3, p0

    .line 215
    .line 216
    const/4 v15, 0x1

    .line 217
    aput-object v16, v3, v15

    .line 218
    .line 219
    const/4 v15, 0x2

    .line 220
    aput-object v16, v3, v15

    .line 221
    .line 222
    sget-object v18, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 223
    .line 224
    move-object/from16 v19, v3

    .line 225
    .line 226
    move-object/from16 v15, v16

    .line 227
    .line 228
    move/from16 v3, p0

    .line 229
    .line 230
    :goto_5
    if-ge v3, v0, :cond_b

    .line 231
    .line 232
    aget-object v0, v19, v3

    .line 233
    .line 234
    if-eqz v0, :cond_a

    .line 235
    .line 236
    if-nez v15, :cond_9

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_9
    invoke-virtual {v15, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    :goto_6
    move-object v15, v0

    .line 244
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 245
    .line 246
    const/4 v0, 0x3

    .line 247
    goto :goto_5

    .line 248
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v15, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v3, v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 257
    .line 258
    sget-object v15, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 259
    .line 260
    if-ne v3, v15, :cond_c

    .line 261
    .line 262
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 263
    .line 264
    :cond_c
    sget-object v15, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    aget v3, v15, v3

    .line 271
    .line 272
    const/4 v15, 0x1

    .line 273
    if-eq v3, v15, :cond_14

    .line 274
    .line 275
    const/4 v15, 0x2

    .line 276
    if-eq v3, v15, :cond_12

    .line 277
    .line 278
    const/4 v2, 0x3

    .line 279
    if-eq v3, v2, :cond_11

    .line 280
    .line 281
    const/4 v2, 0x4

    .line 282
    if-eq v3, v2, :cond_f

    .line 283
    .line 284
    const/4 v0, 0x5

    .line 285
    if-eq v3, v0, :cond_d

    .line 286
    .line 287
    move/from16 v15, p0

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_d
    const/4 v15, 0x1

    .line 291
    :goto_7
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 292
    .line 293
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isContainerType()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_e

    .line 298
    .line 299
    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-nez v0, :cond_e

    .line 304
    .line 305
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 306
    .line 307
    :goto_8
    move v10, v15

    .line 308
    :goto_9
    move-object v15, v6

    .line 309
    goto/16 :goto_13

    .line 310
    .line 311
    :cond_e
    move v10, v15

    .line 312
    move-object/from16 v0, v16

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_f
    iget-object v0, v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_valueFilter:Ljava/lang/Class;

    .line 316
    .line 317
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    if-nez v0, :cond_10

    .line 322
    .line 323
    :goto_a
    move-object v15, v6

    .line 324
    :goto_b
    const/4 v10, 0x1

    .line 325
    goto/16 :goto_13

    .line 326
    .line 327
    :cond_10
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v15

    .line 331
    goto :goto_8

    .line 332
    :cond_11
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_12
    invoke-virtual {v5}, Landroidx/work/Operation$State;->isReferenceType()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_13

    .line 340
    .line 341
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_13
    move-object v15, v6

    .line 345
    move-object/from16 v0, v16

    .line 346
    .line 347
    goto :goto_b

    .line 348
    :cond_14
    iget-boolean v0, v2, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    .line 349
    .line 350
    if-eqz v0, :cond_20

    .line 351
    .line 352
    iget-object v0, v2, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 353
    .line 354
    if-nez v0, :cond_1b

    .line 355
    .line 356
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creators()Lcom/caverock/androidsvg/SVG;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    iget-object v3, v3, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 367
    .line 368
    if-nez v3, :cond_15

    .line 369
    .line 370
    move-object/from16 v18, v5

    .line 371
    .line 372
    move-object v15, v6

    .line 373
    move-object/from16 v0, v16

    .line 374
    .line 375
    goto :goto_d

    .line 376
    :cond_15
    if-eqz v0, :cond_16

    .line 377
    .line 378
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 379
    .line 380
    move-object/from16 v18, v5

    .line 381
    .line 382
    move-object v15, v6

    .line 383
    iget-wide v5, v12, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 384
    .line 385
    invoke-virtual {v0, v5, v6}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getMember()Ljava/lang/reflect/Member;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    if-eqz v5, :cond_17

    .line 394
    .line 395
    invoke-static {v5, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 396
    .line 397
    .line 398
    goto :goto_c

    .line 399
    :cond_16
    move-object/from16 v18, v5

    .line 400
    .line 401
    move-object v15, v6

    .line 402
    :cond_17
    :goto_c
    :try_start_1
    iget-object v0, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    .line 403
    .line 404
    move-object/from16 v3, v16

    .line 405
    .line 406
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    :goto_d
    if-nez v0, :cond_18

    .line 411
    .line 412
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 413
    .line 414
    :cond_18
    iput-object v0, v2, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 415
    .line 416
    :goto_e
    move-object v2, v0

    .line 417
    goto :goto_10

    .line 418
    :catch_0
    move-exception v0

    .line 419
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    if-eqz v1, :cond_19

    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    goto :goto_f

    .line 430
    :cond_19
    sget-object v1, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 431
    .line 432
    instance-of v1, v0, Ljava/lang/Error;

    .line 433
    .line 434
    if-nez v1, :cond_1a

    .line 435
    .line 436
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfRTE(Ljava/lang/Throwable;)V

    .line 437
    .line 438
    .line 439
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 440
    .line 441
    iget-object v2, v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    const-string v6, "Failed to instantiate bean of type "

    .line 462
    .line 463
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v2, ": ("

    .line 470
    .line 471
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v2, ") "

    .line 478
    .line 479
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    .line 491
    .line 492
    throw v1

    .line 493
    :cond_1a
    check-cast v0, Ljava/lang/Error;

    .line 494
    .line 495
    throw v0

    .line 496
    :cond_1b
    move-object/from16 v18, v5

    .line 497
    .line 498
    move-object v15, v6

    .line 499
    goto :goto_e

    .line 500
    :goto_10
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 501
    .line 502
    if-ne v0, v3, :cond_1c

    .line 503
    .line 504
    const/4 v2, 0x0

    .line 505
    :cond_1c
    if-eqz v2, :cond_21

    .line 506
    .line 507
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 508
    .line 509
    iget-wide v5, v8, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 510
    .line 511
    invoke-virtual {v0, v5, v6}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_1d

    .line 516
    .line 517
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 518
    .line 519
    iget-wide v5, v10, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 520
    .line 521
    invoke-virtual {v0, v5, v6}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    if-eqz v3, :cond_1d

    .line 530
    .line 531
    invoke-static {v3, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 532
    .line 533
    .line 534
    :cond_1d
    :try_start_2
    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 538
    move/from16 v2, p0

    .line 539
    .line 540
    goto :goto_12

    .line 541
    :catch_1
    move-exception v0

    .line 542
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    if-eqz v3, :cond_1e

    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    goto :goto_11

    .line 557
    :cond_1e
    sget-object v3, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 558
    .line 559
    instance-of v3, v0, Ljava/lang/Error;

    .line 560
    .line 561
    if-nez v3, :cond_1f

    .line 562
    .line 563
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfRTE(Ljava/lang/Throwable;)V

    .line 564
    .line 565
    .line 566
    const-string v0, "Failed to get property \'"

    .line 567
    .line 568
    const-string v3, "\' of default "

    .line 569
    .line 570
    invoke-static {v0, v1, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    const-string v2, " instance"

    .line 583
    .line 584
    invoke-static {v0, v1, v2}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    const/16 v16, 0x0

    .line 588
    .line 589
    return-object v16

    .line 590
    :cond_1f
    check-cast v0, Ljava/lang/Error;

    .line 591
    .line 592
    throw v0

    .line 593
    :cond_20
    move-object/from16 v18, v5

    .line 594
    .line 595
    move-object v15, v6

    .line 596
    :cond_21
    invoke-static/range {v18 .. v18}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getDefaultValue(Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    const/4 v2, 0x1

    .line 601
    :goto_12
    if-nez v0, :cond_22

    .line 602
    .line 603
    goto/16 :goto_b

    .line 604
    .line 605
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    if-eqz v3, :cond_23

    .line 614
    .line 615
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getArrayComparator(Ljava/lang/Object;)Lokhttp3/internal/http/StatusLine;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    :cond_23
    move v10, v2

    .line 620
    :goto_13
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findViews()[Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    if-nez v2, :cond_27

    .line 625
    .line 626
    iget-boolean v2, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_defaultViewsResolved:Z

    .line 627
    .line 628
    if-nez v2, :cond_26

    .line 629
    .line 630
    const/4 v2, 0x1

    .line 631
    iput-boolean v2, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_defaultViewsResolved:Z

    .line 632
    .line 633
    iget-object v2, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 634
    .line 635
    if-nez v2, :cond_24

    .line 636
    .line 637
    const/16 v16, 0x0

    .line 638
    .line 639
    goto :goto_14

    .line 640
    :cond_24
    invoke-virtual {v2, v14}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    move-object/from16 v16, v2

    .line 645
    .line 646
    :goto_14
    if-nez v16, :cond_25

    .line 647
    .line 648
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 649
    .line 650
    iget-wide v5, v12, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 651
    .line 652
    invoke-virtual {v2, v5, v6}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    if-nez v2, :cond_25

    .line 657
    .line 658
    sget-object v16, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->NO_VIEWS:[Ljava/lang/Class;

    .line 659
    .line 660
    :cond_25
    move-object/from16 v2, v16

    .line 661
    .line 662
    iput-object v2, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_defaultViews:[Ljava/lang/Class;

    .line 663
    .line 664
    :cond_26
    iget-object v2, v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_defaultViews:[Ljava/lang/Class;

    .line 665
    .line 666
    :cond_27
    move-object v12, v2

    .line 667
    iget-object v5, v14, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 668
    .line 669
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 670
    .line 671
    move-object/from16 v3, p2

    .line 672
    .line 673
    move-object v11, v0

    .line 674
    move-object v6, v15

    .line 675
    move-object/from16 v8, v17

    .line 676
    .line 677
    invoke-direct/range {v2 .. v12}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;Lcom/fasterxml/jackson/databind/type/TypeBase;ZLjava/lang/Object;[Ljava/lang/Class;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v13, v4}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    if-eqz v0, :cond_28

    .line 685
    .line 686
    invoke-virtual {v1, v4, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 691
    .line 692
    .line 693
    :cond_28
    invoke-virtual {v13, v4}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    if-eqz v0, :cond_29

    .line 698
    .line 699
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;

    .line 700
    .line 701
    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    .line 702
    .line 703
    .line 704
    return-object v1

    .line 705
    :cond_29
    return-object v2

    .line 706
    :cond_2a
    move/from16 p0, v15

    .line 707
    .line 708
    const-string v0, "could not determine property type"

    .line 709
    .line 710
    move/from16 v2, p0

    .line 711
    .line 712
    new-array v2, v2, [Ljava/lang/Object;

    .line 713
    .line 714
    invoke-virtual {v1, v11, v3, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    .line 716
    .line 717
    const/16 v16, 0x0

    .line 718
    .line 719
    throw v16

    .line 720
    :catch_2
    move-exception v0

    .line 721
    move v2, v15

    .line 722
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    new-array v2, v2, [Ljava/lang/Object;

    .line 727
    .line 728
    invoke-virtual {v1, v11, v3, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    .line 730
    .line 731
    throw v16
.end method

.method public final customSerializers()Lcom/fasterxml/jackson/databind/util/ArrayIterator;
    .locals 1

    .line 1
    new-instance p0, Lcom/fasterxml/jackson/databind/util/ArrayIterator;

    .line 2
    .line 3
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->NO_SERIALIZERS:[Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/ArrayIterator;-><init>([Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
