.class public final Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# static fields
.field public static final MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;


# instance fields
.field public transient _dynamicSerializers:Lcoil3/util/UtilsKt;

.field public final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field public final _referredType:Lcom/fasterxml/jackson/databind/type/TypeBase;

.field public final _suppressNulls:Z

.field public final _suppressableValue:Ljava/lang/Object;

.field public final _unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

.field public final _valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

.field public final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 2
    .line 3
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;Ljava/lang/Object;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;)V

    .line 28
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_referredType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_referredType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 29
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;->FOR_PROPERTIES:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;

    .line 30
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_dynamicSerializers:Lcoil3/util/UtilsKt;

    .line 31
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 32
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 33
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 34
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 35
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 36
    iput-boolean p7, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressNulls:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/type/ReferenceType;->_referencedType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_referredType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressNulls:Z

    .line 21
    .line 22
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;->FOR_PROPERTIES:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_dynamicSerializers:Lcoil3/util/UtilsKt;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final _findCachedSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_dynamicSerializers:Lcoil3/util/UtilsKt;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcoil3/util/UtilsKt;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_referredType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->hasGenericTypes()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findPrimaryPropertySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_dynamicSerializers:Lcoil3/util/UtilsKt;

    .line 41
    .line 42
    invoke-virtual {v0, p2, p1}, Lcoil3/util/UtilsKt;->newWith(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcoil3/util/UtilsKt;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_dynamicSerializers:Lcoil3/util/UtilsKt;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    return-object v0
.end method

.method public final createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 14

    .line 1
    move-object/from16 v2, p2

    .line 2
    .line 3
    iget-object v9, p1, Lcom/fasterxml/jackson/databind/SerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v3, v0

    .line 15
    :goto_0
    const/4 v10, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v4, v10

    .line 40
    :goto_1
    const/4 v11, 0x0

    .line 41
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 42
    .line 43
    iget-object v12, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_referredType:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 44
    .line 45
    const/4 v13, 0x1

    .line 46
    if-nez v4, :cond_9

    .line 47
    .line 48
    if-nez v5, :cond_8

    .line 49
    .line 50
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isJavaLangObject()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    :goto_2
    move v4, v11

    .line 57
    goto :goto_4

    .line 58
    :cond_2
    iget-object v4, v12, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    :goto_3
    move v4, v13

    .line 71
    goto :goto_4

    .line 72
    :cond_3
    iget-boolean v4, v12, Lcom/fasterxml/jackson/databind/type/TypeBase;->_asStatic:Z

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-interface {v2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    invoke-interface {v2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    sget-object v6, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 98
    .line 99
    if-ne v4, v6, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    sget-object v6, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DYNAMIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 103
    .line 104
    if-ne v4, v6, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 108
    .line 109
    iget-wide v6, v9, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 110
    .line 111
    invoke-virtual {v4, v6, v7}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    :goto_4
    if-eqz v4, :cond_7

    .line 116
    .line 117
    invoke-virtual {p1, v12, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    goto :goto_5

    .line 122
    :cond_7
    move-object v4, v5

    .line 123
    goto :goto_5

    .line 124
    :cond_8
    invoke-virtual {p1, v5, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    :cond_9
    :goto_5
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 129
    .line 130
    if-ne v6, v2, :cond_a

    .line 131
    .line 132
    if-ne v0, v3, :cond_a

    .line 133
    .line 134
    if-ne v5, v4, :cond_a

    .line 135
    .line 136
    move-object v0, p0

    .line 137
    goto :goto_6

    .line 138
    :cond_a
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;

    .line 139
    .line 140
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 141
    .line 142
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressNulls:Z

    .line 143
    .line 144
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 145
    .line 146
    move-object v1, p0

    .line 147
    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;Ljava/lang/Object;Z)V

    .line 148
    .line 149
    .line 150
    :goto_6
    if-eqz v2, :cond_11

    .line 151
    .line 152
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    .line 153
    .line 154
    invoke-interface {v2, v9, v3}, Lcom/fasterxml/jackson/databind/BeanProperty;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_11

    .line 159
    .line 160
    iget-object v3, v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 161
    .line 162
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 163
    .line 164
    if-eq v3, v4, :cond_11

    .line 165
    .line 166
    sget-object v4, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    aget v3, v4, v3

    .line 173
    .line 174
    if-eq v3, v13, :cond_10

    .line 175
    .line 176
    const/4 v4, 0x2

    .line 177
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 178
    .line 179
    if-eq v3, v4, :cond_f

    .line 180
    .line 181
    const/4 v4, 0x3

    .line 182
    if-eq v3, v4, :cond_e

    .line 183
    .line 184
    const/4 v4, 0x4

    .line 185
    if-eq v3, v4, :cond_c

    .line 186
    .line 187
    const/4 v2, 0x5

    .line 188
    if-eq v3, v2, :cond_b

    .line 189
    .line 190
    :goto_7
    move-object v7, v10

    .line 191
    move v8, v11

    .line 192
    goto :goto_a

    .line 193
    :cond_b
    :goto_8
    move-object v7, v10

    .line 194
    :goto_9
    move v8, v13

    .line 195
    goto :goto_a

    .line 196
    :cond_c
    iget-object v2, v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->_contentFilter:Ljava/lang/Class;

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    if-nez v10, :cond_d

    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_d
    invoke-virtual {p1, v10}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    goto :goto_7

    .line 210
    :cond_e
    move-object v7, v5

    .line 211
    goto :goto_9

    .line 212
    :cond_f
    invoke-virtual {v12}, Landroidx/work/Operation$State;->isReferenceType()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_b

    .line 217
    .line 218
    move-object v10, v5

    .line 219
    goto :goto_8

    .line 220
    :cond_10
    invoke-static {v12}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getDefaultValue(Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    if-eqz v10, :cond_b

    .line 225
    .line 226
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_b

    .line 235
    .line 236
    invoke-static {v10}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getArrayComparator(Ljava/lang/Object;)Lokhttp3/internal/http/StatusLine;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    goto :goto_8

    .line 241
    :goto_a
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 242
    .line 243
    if-ne v2, v7, :cond_12

    .line 244
    .line 245
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressNulls:Z

    .line 246
    .line 247
    if-eq v1, v8, :cond_11

    .line 248
    .line 249
    goto :goto_b

    .line 250
    :cond_11
    move-object v2, v0

    .line 251
    goto :goto_c

    .line 252
    :cond_12
    :goto_b
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;

    .line 253
    .line 254
    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 255
    .line 256
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 257
    .line 258
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 259
    .line 260
    iget-object v4, v0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 261
    .line 262
    move-object v2, v0

    .line 263
    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;Ljava/lang/Object;Z)V

    .line 264
    .line 265
    .line 266
    return-object v1

    .line 267
    :goto_c
    return-object v2
.end method

.method public final isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressNulls:Z

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_findCachedSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 33
    .line 34
    .line 35
    move-result-object v1
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Lcoil3/network/HttpException;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    :goto_0
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->MARKER_FOR_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 45
    .line 46
    if-ne v0, p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_4
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public final isUnwrappingSerializer()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_findCachedSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 30
    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_findCachedSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    move-object v6, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v6, v0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    move-object v7, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    new-instance v2, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;

    .line 22
    .line 23
    invoke-direct {v2, p1, v1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;-><init>(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    .line 24
    .line 25
    .line 26
    move-object v7, v2

    .line 27
    :goto_1
    if-ne v0, v6, :cond_3

    .line 28
    .line 29
    if-ne v1, v7, :cond_3

    .line 30
    .line 31
    :goto_2
    return-object p0

    .line 32
    :cond_3
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;

    .line 33
    .line 34
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 35
    .line 36
    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_suppressNulls:Z

    .line 37
    .line 38
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 41
    .line 42
    move-object v3, p0

    .line 43
    invoke-direct/range {v2 .. v9}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;Ljava/lang/Object;Z)V

    .line 44
    .line 45
    .line 46
    return-object v2
.end method
