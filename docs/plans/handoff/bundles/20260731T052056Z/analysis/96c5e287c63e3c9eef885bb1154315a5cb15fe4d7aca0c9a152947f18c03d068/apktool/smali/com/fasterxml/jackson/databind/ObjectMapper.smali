.class public final Lcom/fasterxml/jackson/databind/ObjectMapper;
.super Lcom/fasterxml/jackson/core/ObjectCodec;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;


# instance fields
.field public final _deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

.field public final _jsonFactory:Lcom/fasterxml/jackson/databind/MappingJsonFactory;

.field public final _serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field public final _serializerFactory:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

.field public final _serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 7
    .line 8
    const/16 v1, 0x30

    .line 9
    .line 10
    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, v2, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, v2, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_cfgConstructorPropertiesImpliesCreator:Z

    .line 17
    .line 18
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 19
    .line 20
    sget-object v3, Lcom/fasterxml/jackson/databind/type/TypeFactory;->instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 21
    .line 22
    sget-object v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sget-object v6, Lcom/fasterxml/jackson/core/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/fasterxml/jackson/core/Base64Variant;

    .line 29
    .line 30
    new-instance v7, Lcom/hcaptcha/sdk/HCaptchaHtml;

    .line 31
    .line 32
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/text/DateFormat;Ljava/util/Locale;Lcom/fasterxml/jackson/core/Base64Variant;Lcom/hcaptcha/sdk/HCaptchaHtml;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const v2, 0x3f19999a    # 0.6f

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/16 v4, 0x40

    .line 13
    .line 14
    invoke-direct {v1, v4, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    new-instance v3, Landroidx/work/impl/AutoMigration_14_15;

    .line 28
    .line 29
    const/16 v5, 0x16

    .line 30
    .line 31
    invoke-direct {v3, v5}, Landroidx/work/impl/AutoMigration_14_15;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    .line 42
    new-instance v3, Landroidx/transition/Transition$1;

    .line 43
    .line 44
    const/16 v5, 0x15

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-direct {v3, v5, v6}, Landroidx/transition/Transition$1;-><init>(IZ)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget v2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I

    .line 54
    .line 55
    iput v2, v1, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I

    .line 56
    .line 57
    sget v2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I

    .line 58
    .line 59
    iput v2, v1, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    .line 60
    .line 61
    sget-object v2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 62
    .line 63
    iput-object v2, v1, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 64
    .line 65
    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    .line 66
    .line 67
    new-instance v9, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;

    .line 68
    .line 69
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v11, Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    .line 73
    .line 74
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 78
    .line 79
    const/16 v2, 0x14

    .line 80
    .line 81
    const/16 v3, 0xc8

    .line 82
    .line 83
    invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v11, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 87
    .line 88
    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 89
    .line 90
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 91
    .line 92
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v13, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    .line 96
    .line 97
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 101
    .line 102
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_classIntrospector:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 103
    .line 104
    if-ne v2, v13, :cond_0

    .line 105
    .line 106
    move-object v8, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance v12, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 109
    .line 110
    iget-object v14, v1, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;

    .line 111
    .line 112
    iget-object v15, v1, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 113
    .line 114
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_dateFormat:Ljava/text/DateFormat;

    .line 115
    .line 116
    iget-object v3, v1, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_locale:Ljava/util/Locale;

    .line 117
    .line 118
    iget-object v5, v1, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_defaultBase64:Lcom/fasterxml/jackson/core/Base64Variant;

    .line 119
    .line 120
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_accessorNaming:Lcom/hcaptcha/sdk/HCaptchaHtml;

    .line 121
    .line 122
    move-object/from16 v19, v1

    .line 123
    .line 124
    move-object/from16 v16, v2

    .line 125
    .line 126
    move-object/from16 v17, v3

    .line 127
    .line 128
    move-object/from16 v18, v5

    .line 129
    .line 130
    invoke-direct/range {v12 .. v19}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/text/DateFormat;Ljava/util/Locale;Lcom/fasterxml/jackson/core/Base64Variant;Lcom/hcaptcha/sdk/HCaptchaHtml;)V

    .line 131
    .line 132
    .line 133
    move-object v8, v12

    .line 134
    :goto_0
    new-instance v12, Lkotlin/InitializedLazyImpl;

    .line 135
    .line 136
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 137
    .line 138
    sget v2, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->$r8$clinit:I

    .line 139
    .line 140
    sget-object v2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 141
    .line 142
    invoke-direct {v12}, Lkotlin/InitializedLazyImpl;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v1, v12, Lkotlin/InitializedLazyImpl;->value:Ljava/lang/Object;

    .line 146
    .line 147
    new-instance v13, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 148
    .line 149
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 150
    .line 151
    sget v1, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->INPUT_SHAPE_COUNT:I

    .line 152
    .line 153
    new-array v1, v1, [Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 154
    .line 155
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    new-instance v7, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 159
    .line 160
    invoke-direct/range {v7 .. v12}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lkotlin/InitializedLazyImpl;)V

    .line 161
    .line 162
    .line 163
    iput-object v7, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 164
    .line 165
    new-instance v7, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 166
    .line 167
    invoke-direct/range {v7 .. v13}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lkotlin/InitializedLazyImpl;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V

    .line 168
    .line 169
    .line 170
    iput-object v7, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 171
    .line 172
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 173
    .line 174
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 175
    .line 176
    iget-wide v7, v1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 177
    .line 178
    invoke-virtual {v2, v7, v8}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_1

    .line 183
    .line 184
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 185
    .line 186
    const/4 v3, 0x1

    .line 187
    new-array v5, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 188
    .line 189
    aput-object v2, v5, v6

    .line 190
    .line 191
    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 196
    .line 197
    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 198
    .line 199
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 200
    .line 201
    new-array v3, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 202
    .line 203
    aput-object v2, v3, v6

    .line 204
    .line 205
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 210
    .line 211
    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 212
    .line 213
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 214
    .line 215
    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 219
    .line 220
    sget v1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->$r8$clinit:I

    .line 221
    .line 222
    new-instance v1, Ljava/util/HashMap;

    .line 223
    .line 224
    const/16 v2, 0x8

    .line 225
    .line 226
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 227
    .line 228
    .line 229
    const/16 v1, 0x1f4

    .line 230
    .line 231
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 236
    .line 237
    const v3, 0x3f4ccccd    # 0.8f

    .line 238
    .line 239
    .line 240
    const/4 v4, 0x4

    .line 241
    invoke-direct {v2, v1, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 242
    .line 243
    .line 244
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    .line 245
    .line 246
    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    .line 247
    .line 248
    return-void
.end method


# virtual methods
.method public final _writeValueAndClose(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    instance-of v0, p2, Ljava/io/Closeable;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    move-object v0, p2

    .line 20
    check-cast v0, Ljava/io/Closeable;

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 26
    .line 27
    invoke-direct {v3, p0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/SerializationConfig;Lkotlin/UnsignedKt;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;->serializeValue(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->close()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const/4 v0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :catch_1
    move-exception p0

    .line 44
    :goto_0
    sget-object p2, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 45
    .line 46
    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_2
    move-exception p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    if-eqz v0, :cond_0

    .line 60
    .line 61
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_3
    move-exception p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_2
    instance-of p1, p0, Ljava/io/IOException;

    .line 70
    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfRTE(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    check-cast p0, Ljava/io/IOException;

    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .line 87
    .line 88
    invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/SerializationConfig;Lkotlin/UnsignedKt;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;->serializeValue(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->close()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catch_4
    move-exception p0

    .line 99
    sget-object p2, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 100
    .line 101
    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;

    .line 104
    .line 105
    .line 106
    :try_start_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catch_5
    move-exception p1

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :goto_3
    instance-of p1, p0, Ljava/io/IOException;

    .line 115
    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfRTE(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    check-cast p0, Ljava/io/IOException;

    .line 126
    .line 127
    throw p0
.end method

.method public final createGenerator(Landroidx/fragment/app/LogWriter;)Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/fasterxml/jackson/core/io/ContentReference;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(Landroidx/fragment/app/LogWriter;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcoil3/ImageLoader$Builder;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v2, v3, v1}, Lcoil3/ImageLoader$Builder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;Lcom/fasterxml/jackson/core/io/ContentReference;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;

    .line 21
    .line 22
    iget v3, v0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I

    .line 23
    .line 24
    invoke-direct {v1, v2, v3, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;-><init>(Lcoil3/ImageLoader$Builder;ILandroidx/fragment/app/LogWriter;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 28
    .line 29
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    iput-object p1, v1, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_rootValueSeparator:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 41
    .line 42
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;->enabledIn(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, v1, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 55
    .line 56
    instance-of p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    check-cast p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 61
    .line 62
    new-instance p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)V

    .line 65
    .line 66
    .line 67
    move-object p0, p1

    .line 68
    :cond_1
    if-eqz p0, :cond_2

    .line 69
    .line 70
    iput-object p0, v1, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 71
    .line 72
    :cond_2
    sget-object p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;->enabledIn(I)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_9

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    sget-object p0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    :goto_0
    move v0, p0

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move p0, p1

    .line 92
    goto :goto_0

    .line 93
    :goto_1
    iget v2, v1, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    .line 94
    .line 95
    not-int v3, v0

    .line 96
    and-int/2addr v3, v2

    .line 97
    and-int/2addr p0, v0

    .line 98
    or-int/2addr p0, v3

    .line 99
    xor-int v0, v2, p0

    .line 100
    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    iput p0, v1, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_features:I

    .line 104
    .line 105
    sget v2, Lcom/fasterxml/jackson/core/base/GeneratorBase;->DERIVED_FEATURES_MASK:I

    .line 106
    .line 107
    and-int/2addr v2, v0

    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 112
    .line 113
    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iput-boolean v2, v1, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    .line 118
    .line 119
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    const/16 p1, 0x7f

    .line 134
    .line 135
    iput p1, v1, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_maximumNonEscapedChar:I

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    iput p1, v1, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_maximumNonEscapedChar:I

    .line 139
    .line 140
    :cond_6
    :goto_2
    sget-object p1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iget-object v0, v1, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 153
    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    iget-object p1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Lcoil3/ImageLoader$Builder;

    .line 159
    .line 160
    if-nez p1, :cond_8

    .line 161
    .line 162
    new-instance p1, Lcoil3/ImageLoader$Builder;

    .line 163
    .line 164
    const/16 v2, 0x16

    .line 165
    .line 166
    invoke-direct {p1, v2, v1}, Lcoil3/ImageLoader$Builder;-><init>(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iput-object p1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v0, v1, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    const/4 p1, 0x0

    .line 175
    iput-object p1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v0, v1, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 178
    .line 179
    :cond_8
    :goto_3
    sget-object p1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 180
    .line 181
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    xor-int/lit8 p0, p0, 0x1

    .line 186
    .line 187
    iput-boolean p0, v1, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_cfgUnqNames:Z

    .line 188
    .line 189
    :cond_9
    return-object v1
.end method

.method public final writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroidx/fragment/app/LogWriter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroidx/fragment/app/LogWriter;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createGenerator(Landroidx/fragment/app/LogWriter;)Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_writeValueAndClose(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    iget-object p0, v0, Landroidx/fragment/app/LogWriter;->mBuilder:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_inputStart:I

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 33
    .line 34
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_resultArray:[C

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_hasSegments:Z

    .line 41
    .line 42
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_segmentSize:I

    .line 48
    .line 49
    iput v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_allocator:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSegment:[C

    .line 60
    .line 61
    const/4 p0, 0x2

    .line 62
    iget-object v0, v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 63
    .line 64
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-object p1

    .line 68
    :catch_0
    move-exception p0

    .line 69
    new-instance p1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string v2, "Unexpected IOException (of type "

    .line 84
    .line 85
    const-string v3, "): "

    .line 86
    .line 87
    invoke-static {v2, v0, v3, p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-direct {p1, v1, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :catch_1
    move-exception p0

    .line 96
    throw p0
.end method
