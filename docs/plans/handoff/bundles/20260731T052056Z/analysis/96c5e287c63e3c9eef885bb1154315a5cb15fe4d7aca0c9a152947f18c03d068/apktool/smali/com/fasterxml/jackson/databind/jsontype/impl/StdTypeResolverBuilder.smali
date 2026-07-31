.class public final Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public _customIdResolver:Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;

.field public _idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

.field public _includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

.field public _typeProperty:Ljava/lang/String;


# virtual methods
.method public final buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/util/ArrayList;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 2
    .line 3
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :goto_0
    return-object v2

    .line 18
    :cond_1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 21
    .line 22
    iget-wide v3, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 23
    .line 24
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_customIdResolver:Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;

    .line 30
    .line 31
    const/4 v3, 0x5

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x4

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 41
    .line 42
    if-eqz v1, :cond_10

    .line 43
    .line 44
    sget-object v8, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$Id:[I

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    aget v1, v8, v1

    .line 51
    .line 52
    if-eq v1, v6, :cond_9

    .line 53
    .line 54
    if-eq v1, v5, :cond_9

    .line 55
    .line 56
    if-eq v1, v4, :cond_8

    .line 57
    .line 58
    if-eq v1, v7, :cond_4

    .line 59
    .line 60
    if-ne v1, v3, :cond_3

    .line 61
    .line 62
    move-object v1, v2

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const-string p1, "Do not know how to construct standard type id resolver for idType: "

    .line 65
    .line 66
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 67
    .line 68
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    if-eqz p3, :cond_7

    .line 83
    .line 84
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 99
    .line 100
    iget-object v8, v1, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_class:Ljava/lang/Class;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->_name:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/16 v9, 0x2e

    .line 112
    .line 113
    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-gez v9, :cond_6

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v0, v8, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    new-instance v1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;

    .line 135
    .line 136
    invoke-direct {v1, p1, p2, v0, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    new-instance v1, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;

    .line 141
    .line 142
    invoke-direct {v1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_9
    new-instance v1, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;

    .line 147
    .line 148
    invoke-direct {v1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 149
    .line 150
    .line 151
    :goto_3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_idType:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 152
    .line 153
    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->DEDUCTION:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 154
    .line 155
    if-ne p1, p2, :cond_a

    .line 156
    .line 157
    new-instance p1, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExistingPropertyTypeSerializer;

    .line 158
    .line 159
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    .line 160
    .line 161
    invoke-direct {p1, v1, v2, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object p1

    .line 165
    :cond_a
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As:[I

    .line 166
    .line 167
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 168
    .line 169
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    aget p1, p1, p2

    .line 174
    .line 175
    if-eq p1, v6, :cond_f

    .line 176
    .line 177
    if-eq p1, v5, :cond_e

    .line 178
    .line 179
    if-eq p1, v4, :cond_d

    .line 180
    .line 181
    if-eq p1, v7, :cond_c

    .line 182
    .line 183
    if-ne p1, v3, :cond_b

    .line 184
    .line 185
    new-instance p1, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExistingPropertyTypeSerializer;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    .line 188
    .line 189
    invoke-direct {p1, v1, v2, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-object p1

    .line 193
    :cond_b
    const-string p1, "Do not know how to construct standard type serializer for inclusion type: "

    .line 194
    .line 195
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_includeAs:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 196
    .line 197
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    return-object v2

    .line 201
    :cond_c
    new-instance p1, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    .line 204
    .line 205
    invoke-direct {p1, v1, v2, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-object p1

    .line 209
    :cond_d
    new-instance p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;

    .line 210
    .line 211
    invoke-direct {p0, v1, v2, v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;Lcom/fasterxml/jackson/databind/BeanProperty;I)V

    .line 212
    .line 213
    .line 214
    return-object p0

    .line 215
    :cond_e
    new-instance p1, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;

    .line 216
    .line 217
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->_typeProperty:Ljava/lang/String;

    .line 218
    .line 219
    invoke-direct {p1, v1, v2, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-object p1

    .line 223
    :cond_f
    new-instance p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;

    .line 224
    .line 225
    const/4 p1, 0x0

    .line 226
    invoke-direct {p0, v1, v2, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;Lcom/fasterxml/jackson/databind/BeanProperty;I)V

    .line 227
    .line 228
    .line 229
    return-object p0

    .line 230
    :cond_10
    const-string p0, "Cannot build, \'init()\' not yet called"

    .line 231
    .line 232
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-object v2
.end method
