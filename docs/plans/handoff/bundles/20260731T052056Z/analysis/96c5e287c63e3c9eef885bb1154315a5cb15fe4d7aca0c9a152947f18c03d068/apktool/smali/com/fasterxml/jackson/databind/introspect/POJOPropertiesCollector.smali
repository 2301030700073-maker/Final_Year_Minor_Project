.class public final Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _accessorNaming:Landroidx/room/RoomOpenDelegate$ValidationResult;

.field public final _annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field public _anyGetterField:Ljava/util/LinkedList;

.field public _anyGetters:Ljava/util/LinkedList;

.field public _anySetterField:Ljava/util/LinkedList;

.field public _anySetters:Ljava/util/LinkedList;

.field public final _classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

.field public _collected:Z

.field public final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field public _creatorProperties:Ljava/util/LinkedList;

.field public _injectables:Ljava/util/LinkedHashMap;

.field public _jsonKeyAccessors:Ljava/util/LinkedList;

.field public _jsonValueAccessors:Ljava/util/LinkedList;

.field public _properties:Ljava/util/LinkedHashMap;

.field public final _type:Lcom/fasterxml/jackson/databind/type/TypeBase;

.field public final _useAnnotations:Z

.field public final _visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Landroidx/room/RoomOpenDelegate$ValidationResult;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 9
    .line 10
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 11
    .line 12
    iget-wide v1, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_useAnnotations:Z

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_useAnnotations:Z

    .line 32
    .line 33
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector$1;->instance:Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector$1;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 36
    .line 37
    :goto_0
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 38
    .line 39
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJDKClass(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->ALL_PUBLIC:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_1
    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 50
    .line 51
    sget-wide v3, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->AUTO_DETECT_MASK:J

    .line 52
    .line 53
    and-long v5, v1, v3

    .line 54
    .line 55
    cmp-long v0, v5, v3

    .line 56
    .line 57
    if-eqz v0, :cond_11

    .line 58
    .line 59
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 68
    .line 69
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 70
    .line 71
    if-ne v0, v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 77
    .line 78
    :cond_2
    move-object v8, v0

    .line 79
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 80
    .line 81
    if-ne v0, v8, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 85
    .line 86
    iget-object v4, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 87
    .line 88
    iget-object v5, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 89
    .line 90
    iget-object v6, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 91
    .line 92
    iget-object v7, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 93
    .line 94
    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :goto_1
    move-object v3, p2

    .line 99
    :goto_2
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_7

    .line 106
    .line 107
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 108
    .line 109
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 110
    .line 111
    if-ne v0, v4, :cond_5

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 117
    .line 118
    :cond_5
    move-object v5, v0

    .line 119
    iget-object v0, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 120
    .line 121
    if-ne v0, v5, :cond_6

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 125
    .line 126
    iget-object v6, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 127
    .line 128
    iget-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 129
    .line 130
    iget-object v8, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 131
    .line 132
    iget-object v9, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 133
    .line 134
    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    .line 135
    .line 136
    .line 137
    move-object v3, v4

    .line 138
    :cond_7
    :goto_3
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_a

    .line 145
    .line 146
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 147
    .line 148
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 149
    .line 150
    if-ne v0, v4, :cond_8

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 156
    .line 157
    :cond_8
    move-object v6, v0

    .line 158
    iget-object v0, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 159
    .line 160
    if-ne v0, v6, :cond_9

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_9
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 164
    .line 165
    iget-object v5, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 166
    .line 167
    iget-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 168
    .line 169
    iget-object v8, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 170
    .line 171
    iget-object v9, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 172
    .line 173
    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    .line 174
    .line 175
    .line 176
    move-object v3, v4

    .line 177
    :cond_a
    :goto_4
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 178
    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_d

    .line 184
    .line 185
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 186
    .line 187
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 188
    .line 189
    if-ne v0, v4, :cond_b

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 195
    .line 196
    :cond_b
    move-object v7, v0

    .line 197
    iget-object v0, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 198
    .line 199
    if-ne v0, v7, :cond_c

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_c
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 203
    .line 204
    iget-object v5, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 205
    .line 206
    iget-object v6, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 207
    .line 208
    iget-object v8, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 209
    .line 210
    iget-object v9, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 211
    .line 212
    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    .line 213
    .line 214
    .line 215
    move-object v3, v4

    .line 216
    :cond_d
    :goto_5
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_f

    .line 223
    .line 224
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 225
    .line 226
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->DEFAULT:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 227
    .line 228
    if-ne v0, v1, :cond_e

    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 234
    .line 235
    :cond_e
    move-object v8, v0

    .line 236
    iget-object p2, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 237
    .line 238
    if-ne p2, v8, :cond_10

    .line 239
    .line 240
    :cond_f
    move-object p2, v3

    .line 241
    goto :goto_6

    .line 242
    :cond_10
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 243
    .line 244
    iget-object v5, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 245
    .line 246
    iget-object v6, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 247
    .line 248
    iget-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 249
    .line 250
    iget-object v9, v3, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 251
    .line 252
    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;-><init>(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)V

    .line 253
    .line 254
    .line 255
    move-object p2, v4

    .line 256
    :cond_11
    :goto_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1, p3, p2}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 265
    .line 266
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_accessorNaming:Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 267
    .line 268
    sget-object p0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 269
    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    return-void
.end method


# virtual methods
.method public final _addCreatorParam(Ljava/util/LinkedHashMap;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    :goto_0
    move v7, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    if-nez v7, :cond_3

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object v1, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_owner:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    .line 45
    .line 46
    if-ne v1, v4, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_3
    move-object v6, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    :goto_2
    return-void

    .line 56
    :goto_3
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_checkRenameByField(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v7, :cond_6

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_6

    .line 67
    .line 68
    iget-object v1, v6, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 75
    .line 76
    if-nez v3, :cond_5

    .line 77
    .line 78
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 79
    .line 80
    invoke-direct {v3, v2, v0, v6, v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_4
    move-object p1, v3

    .line 87
    goto :goto_5

    .line 88
    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    goto :goto_4

    .line 93
    :goto_5
    new-instance v3, Landroidx/compose/runtime/ProvidedValue;

    .line 94
    .line 95
    iget-object v5, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 96
    .line 97
    const/4 v8, 0x1

    .line 98
    const/4 v9, 0x0

    .line 99
    move-object v4, p2

    .line 100
    invoke-direct/range {v3 .. v9}, Landroidx/compose/runtime/ProvidedValue;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/ProvidedValue;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    .line 101
    .line 102
    .line 103
    iput-object v3, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final _checkRenameByField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final _doAddInjectable(Lcom/fasterxml/jackson/annotation/JacksonInject$Value;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 22
    .line 23
    if-eqz p0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eq p0, p2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p2, "\' (of type "

    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    const-string v1, "Duplicate injectable value with id \'"

    .line 49
    .line 50
    invoke-static {v1, p1, p2, p0, v0}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public final _property(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 18
    .line 19
    invoke-direct {v0, p0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object v0
.end method

.method public final collectAll()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->PROPAGATE_TRANSIENT_MARKER:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 11
    .line 12
    iget-wide v4, v3, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:J

    .line 13
    .line 14
    invoke-virtual {v2, v4, v5}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 19
    .line 20
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    iget-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    iget-object v13, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 36
    .line 37
    if-eqz v8, :cond_11

    .line 38
    .line 39
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    move-object v15, v8

    .line 44
    check-cast v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 45
    .line 46
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v13, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasAsKey(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    invoke-virtual {v8, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    if-eqz v14, :cond_2

    .line 57
    .line 58
    iget-object v14, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonKeyAccessors:Ljava/util/LinkedList;

    .line 59
    .line 60
    if-nez v14, :cond_1

    .line 61
    .line 62
    new-instance v14, Ljava/util/LinkedList;

    .line 63
    .line 64
    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v14, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonKeyAccessors:Ljava/util/LinkedList;

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v13, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasAsValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    invoke-virtual {v8, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    if-eqz v14, :cond_4

    .line 81
    .line 82
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueAccessors:Ljava/util/LinkedList;

    .line 83
    .line 84
    if-nez v8, :cond_3

    .line 85
    .line 86
    new-instance v8, Ljava/util/LinkedList;

    .line 87
    .line 88
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueAccessors:Ljava/util/LinkedList;

    .line 92
    .line 93
    :cond_3
    invoke-virtual {v8, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v13, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasAnyGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    invoke-virtual {v8, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    invoke-virtual {v13, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasAnySetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-virtual {v8, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-nez v14, :cond_d

    .line 116
    .line 117
    if-eqz v8, :cond_5

    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_5
    iget-object v8, v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-nez v8, :cond_6

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_6
    invoke-static {v8, v10}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    if-eqz v12, :cond_7

    .line 138
    .line 139
    const/4 v14, 0x1

    .line 140
    goto :goto_1

    .line 141
    :cond_7
    move/from16 v14, v16

    .line 142
    .line 143
    :goto_1
    if-eqz v14, :cond_8

    .line 144
    .line 145
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v17

    .line 149
    if-eqz v17, :cond_8

    .line 150
    .line 151
    invoke-static {v8, v10}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    move/from16 v18, v16

    .line 156
    .line 157
    :goto_2
    move-object/from16 v17, v12

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_8
    move/from16 v18, v14

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :goto_3
    if-eqz v17, :cond_9

    .line 164
    .line 165
    const/4 v10, 0x1

    .line 166
    goto :goto_4

    .line 167
    :cond_9
    move/from16 v10, v16

    .line 168
    .line 169
    :goto_4
    if-nez v10, :cond_a

    .line 170
    .line 171
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-object v10, v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    .line 175
    .line 176
    iget-object v9, v9, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 177
    .line 178
    invoke-virtual {v9, v10}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    :cond_a
    invoke-virtual {v13, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    iget-object v12, v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->_field:Ljava/lang/reflect/Field;

    .line 187
    .line 188
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    if-eqz v12, :cond_c

    .line 197
    .line 198
    if-nez v14, :cond_c

    .line 199
    .line 200
    if-eqz v2, :cond_b

    .line 201
    .line 202
    move/from16 v19, v16

    .line 203
    .line 204
    const/16 v20, 0x1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_b
    move/from16 v20, v9

    .line 208
    .line 209
    move/from16 v19, v16

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_c
    move/from16 v20, v9

    .line 213
    .line 214
    move/from16 v19, v10

    .line 215
    .line 216
    :goto_5
    invoke-virtual {v0, v1, v8}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    new-instance v14, Landroidx/compose/runtime/ProvidedValue;

    .line 221
    .line 222
    iget-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 223
    .line 224
    move-object/from16 v16, v9

    .line 225
    .line 226
    invoke-direct/range {v14 .. v20}, Landroidx/compose/runtime/ProvidedValue;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/ProvidedValue;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    .line 227
    .line 228
    .line 229
    iput-object v14, v8, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_d
    :goto_6
    if-eqz v14, :cond_f

    .line 234
    .line 235
    iget-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetterField:Ljava/util/LinkedList;

    .line 236
    .line 237
    if-nez v9, :cond_e

    .line 238
    .line 239
    new-instance v9, Ljava/util/LinkedList;

    .line 240
    .line 241
    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 242
    .line 243
    .line 244
    iput-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetterField:Ljava/util/LinkedList;

    .line 245
    .line 246
    :cond_e
    invoke-virtual {v9, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    :cond_f
    if-eqz v8, :cond_0

    .line 250
    .line 251
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetterField:Ljava/util/LinkedList;

    .line 252
    .line 253
    if-nez v8, :cond_10

    .line 254
    .line 255
    new-instance v8, Ljava/util/LinkedList;

    .line 256
    .line 257
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 258
    .line 259
    .line 260
    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetterField:Ljava/util/LinkedList;

    .line 261
    .line 262
    :cond_10
    invoke-virtual {v8, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_11
    const/16 v16, 0x0

    .line 268
    .line 269
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_methods()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    :cond_12
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    const/4 v8, 0x2

    .line 282
    if-eqz v7, :cond_29

    .line 283
    .line 284
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 289
    .line 290
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterTypes()[Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    iget-object v14, v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    .line 295
    .line 296
    array-length v12, v12

    .line 297
    iget-object v15, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_accessorNaming:Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 298
    .line 299
    if-nez v12, :cond_21

    .line 300
    .line 301
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 306
    .line 307
    if-eq v8, v12, :cond_12

    .line 308
    .line 309
    const-class v12, Ljava/lang/Void;

    .line 310
    .line 311
    if-ne v8, v12, :cond_13

    .line 312
    .line 313
    sget-object v8, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_VOID_VALUED_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 314
    .line 315
    invoke-virtual {v8, v4, v5}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-nez v8, :cond_13

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_13
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 323
    .line 324
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasAnyGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    .line 325
    .line 326
    .line 327
    move-result-object v12

    .line 328
    invoke-virtual {v8, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    if-eqz v12, :cond_15

    .line 333
    .line 334
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 335
    .line 336
    if-nez v8, :cond_14

    .line 337
    .line 338
    new-instance v8, Ljava/util/LinkedList;

    .line 339
    .line 340
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 341
    .line 342
    .line 343
    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 344
    .line 345
    :cond_14
    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_15
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasAsKey(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    .line 350
    .line 351
    .line 352
    move-result-object v12

    .line 353
    invoke-virtual {v8, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v12

    .line 357
    if-eqz v12, :cond_17

    .line 358
    .line 359
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonKeyAccessors:Ljava/util/LinkedList;

    .line 360
    .line 361
    if-nez v8, :cond_16

    .line 362
    .line 363
    new-instance v8, Ljava/util/LinkedList;

    .line 364
    .line 365
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 366
    .line 367
    .line 368
    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonKeyAccessors:Ljava/util/LinkedList;

    .line 369
    .line 370
    :cond_16
    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    goto :goto_7

    .line 374
    :cond_17
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasAsValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    invoke-virtual {v8, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    if-eqz v8, :cond_19

    .line 383
    .line 384
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueAccessors:Ljava/util/LinkedList;

    .line 385
    .line 386
    if-nez v8, :cond_18

    .line 387
    .line 388
    new-instance v8, Ljava/util/LinkedList;

    .line 389
    .line 390
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 391
    .line 392
    .line 393
    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueAccessors:Ljava/util/LinkedList;

    .line 394
    .line 395
    :cond_18
    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_19
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 400
    .line 401
    .line 402
    move-result-object v8

    .line 403
    if-eqz v8, :cond_1a

    .line 404
    .line 405
    const/4 v12, 0x1

    .line 406
    goto :goto_8

    .line 407
    :cond_1a
    move/from16 v12, v16

    .line 408
    .line 409
    :goto_8
    if-nez v12, :cond_1d

    .line 410
    .line 411
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    invoke-virtual {v15, v7, v11}, Landroidx/room/RoomOpenDelegate$ValidationResult;->findNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v11

    .line 419
    if-nez v11, :cond_1c

    .line 420
    .line 421
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v11

    .line 425
    invoke-virtual {v15, v7, v11}, Landroidx/room/RoomOpenDelegate$ValidationResult;->findNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v11

    .line 429
    if-nez v11, :cond_1b

    .line 430
    .line 431
    goto/16 :goto_7

    .line 432
    .line 433
    :cond_1b
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 437
    .line 438
    invoke-virtual {v15, v14}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    .line 439
    .line 440
    .line 441
    move-result v14

    .line 442
    :goto_9
    move-object/from16 v20, v8

    .line 443
    .line 444
    move/from16 v21, v12

    .line 445
    .line 446
    move/from16 v22, v14

    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 453
    .line 454
    invoke-virtual {v15, v14}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    .line 455
    .line 456
    .line 457
    move-result v14

    .line 458
    goto :goto_9

    .line 459
    :cond_1d
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v11

    .line 463
    invoke-virtual {v15, v7, v11}, Landroidx/room/RoomOpenDelegate$ValidationResult;->findNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    if-nez v11, :cond_1e

    .line 468
    .line 469
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    invoke-virtual {v15, v7, v11}, Landroidx/room/RoomOpenDelegate$ValidationResult;->findNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v11

    .line 477
    :cond_1e
    if-nez v11, :cond_1f

    .line 478
    .line 479
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v11

    .line 483
    :cond_1f
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    .line 484
    .line 485
    .line 486
    move-result v14

    .line 487
    if-eqz v14, :cond_20

    .line 488
    .line 489
    invoke-static {v11, v10}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    move/from16 v12, v16

    .line 494
    .line 495
    :cond_20
    move-object/from16 v20, v8

    .line 496
    .line 497
    move/from16 v21, v12

    .line 498
    .line 499
    const/16 v22, 0x1

    .line 500
    .line 501
    :goto_a
    invoke-virtual {v0, v11}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_checkRenameByField(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    .line 506
    .line 507
    .line 508
    move-result v23

    .line 509
    invoke-virtual {v0, v1, v8}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 510
    .line 511
    .line 512
    move-result-object v8

    .line 513
    new-instance v17, Landroidx/compose/runtime/ProvidedValue;

    .line 514
    .line 515
    iget-object v11, v8, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 516
    .line 517
    move-object/from16 v18, v7

    .line 518
    .line 519
    move-object/from16 v19, v11

    .line 520
    .line 521
    invoke-direct/range {v17 .. v23}, Landroidx/compose/runtime/ProvidedValue;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/ProvidedValue;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    .line 522
    .line 523
    .line 524
    move-object/from16 v7, v17

    .line 525
    .line 526
    iput-object v7, v8, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 527
    .line 528
    goto/16 :goto_7

    .line 529
    .line 530
    :cond_21
    const/4 v11, 0x1

    .line 531
    if-ne v12, v11, :cond_27

    .line 532
    .line 533
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 534
    .line 535
    .line 536
    move-result-object v8

    .line 537
    if-eqz v8, :cond_22

    .line 538
    .line 539
    const/4 v11, 0x1

    .line 540
    goto :goto_b

    .line 541
    :cond_22
    move/from16 v11, v16

    .line 542
    .line 543
    :goto_b
    if-nez v11, :cond_24

    .line 544
    .line 545
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v12

    .line 549
    invoke-virtual {v15, v12}, Landroidx/room/RoomOpenDelegate$ValidationResult;->findNameForMutator(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v12

    .line 553
    if-nez v12, :cond_23

    .line 554
    .line 555
    goto/16 :goto_7

    .line 556
    .line 557
    :cond_23
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 561
    .line 562
    invoke-virtual {v15, v14}, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    .line 563
    .line 564
    .line 565
    move-result v14

    .line 566
    move/from16 v22, v14

    .line 567
    .line 568
    :goto_c
    move-object/from16 v20, v8

    .line 569
    .line 570
    move/from16 v21, v11

    .line 571
    .line 572
    goto :goto_d

    .line 573
    :cond_24
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v12

    .line 577
    invoke-virtual {v15, v12}, Landroidx/room/RoomOpenDelegate$ValidationResult;->findNameForMutator(Ljava/lang/String;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v12

    .line 581
    if-nez v12, :cond_25

    .line 582
    .line 583
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v12

    .line 587
    :cond_25
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    .line 588
    .line 589
    .line 590
    move-result v14

    .line 591
    if-eqz v14, :cond_26

    .line 592
    .line 593
    invoke-static {v12, v10}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    .line 594
    .line 595
    .line 596
    move-result-object v8

    .line 597
    move/from16 v11, v16

    .line 598
    .line 599
    :cond_26
    const/16 v22, 0x1

    .line 600
    .line 601
    goto :goto_c

    .line 602
    :goto_d
    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_checkRenameByField(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v8

    .line 606
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    .line 607
    .line 608
    .line 609
    move-result v23

    .line 610
    invoke-virtual {v0, v1, v8}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 611
    .line 612
    .line 613
    move-result-object v8

    .line 614
    new-instance v17, Landroidx/compose/runtime/ProvidedValue;

    .line 615
    .line 616
    iget-object v11, v8, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 617
    .line 618
    move-object/from16 v18, v7

    .line 619
    .line 620
    move-object/from16 v19, v11

    .line 621
    .line 622
    invoke-direct/range {v17 .. v23}, Landroidx/compose/runtime/ProvidedValue;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/ProvidedValue;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    .line 623
    .line 624
    .line 625
    move-object/from16 v7, v17

    .line 626
    .line 627
    iput-object v7, v8, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 628
    .line 629
    goto/16 :goto_7

    .line 630
    .line 631
    :cond_27
    if-ne v12, v8, :cond_12

    .line 632
    .line 633
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 634
    .line 635
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasAnySetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    .line 636
    .line 637
    .line 638
    move-result-object v11

    .line 639
    invoke-virtual {v8, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v8

    .line 643
    if-eqz v8, :cond_12

    .line 644
    .line 645
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    .line 646
    .line 647
    if-nez v8, :cond_28

    .line 648
    .line 649
    new-instance v8, Ljava/util/LinkedList;

    .line 650
    .line 651
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 652
    .line 653
    .line 654
    iput-object v8, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    .line 655
    .line 656
    :cond_28
    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    goto/16 :goto_7

    .line 660
    .line 661
    :cond_29
    iget-object v2, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_nonStaticInnerClass:Ljava/lang/Boolean;

    .line 662
    .line 663
    if-nez v2, :cond_2c

    .line 664
    .line 665
    iget-object v2, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 666
    .line 667
    sget-object v7, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 668
    .line 669
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 674
    .line 675
    .line 676
    move-result v7

    .line 677
    if-nez v7, :cond_2b

    .line 678
    .line 679
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isObjectOrPrimitive(Ljava/lang/Class;)Z

    .line 680
    .line 681
    .line 682
    move-result v7

    .line 683
    if-eqz v7, :cond_2a

    .line 684
    .line 685
    move-object v2, v10

    .line 686
    goto :goto_e

    .line 687
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    :goto_e
    if-eqz v2, :cond_2b

    .line 692
    .line 693
    const/4 v2, 0x1

    .line 694
    goto :goto_f

    .line 695
    :cond_2b
    move/from16 v2, v16

    .line 696
    .line 697
    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    iput-object v2, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_nonStaticInnerClass:Ljava/lang/Boolean;

    .line 702
    .line 703
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    if-nez v2, :cond_33

    .line 708
    .line 709
    iget-boolean v2, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_useAnnotations:Z

    .line 710
    .line 711
    if-nez v2, :cond_2d

    .line 712
    .line 713
    goto :goto_12

    .line 714
    :cond_2d
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creators()Lcom/caverock/androidsvg/SVG;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v2, Ljava/util/List;

    .line 721
    .line 722
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 727
    .line 728
    .line 729
    move-result v7

    .line 730
    if-eqz v7, :cond_30

    .line 731
    .line 732
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v7

    .line 736
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 737
    .line 738
    iget-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 739
    .line 740
    if-nez v9, :cond_2f

    .line 741
    .line 742
    new-instance v9, Ljava/util/LinkedList;

    .line 743
    .line 744
    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 745
    .line 746
    .line 747
    iput-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 748
    .line 749
    :cond_2f
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    .line 750
    .line 751
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 752
    .line 753
    .line 754
    move-result-object v9

    .line 755
    array-length v9, v9

    .line 756
    move/from16 v11, v16

    .line 757
    .line 758
    :goto_10
    if-ge v11, v9, :cond_2e

    .line 759
    .line 760
    invoke-virtual {v7, v11}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 761
    .line 762
    .line 763
    move-result-object v12

    .line 764
    invoke-virtual {v0, v1, v12}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addCreatorParam(Ljava/util/LinkedHashMap;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    .line 765
    .line 766
    .line 767
    add-int/lit8 v11, v11, 0x1

    .line 768
    .line 769
    goto :goto_10

    .line 770
    :cond_30
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creators()Lcom/caverock/androidsvg/SVG;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 775
    .line 776
    check-cast v2, Ljava/util/List;

    .line 777
    .line 778
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 783
    .line 784
    .line 785
    move-result v7

    .line 786
    if-eqz v7, :cond_33

    .line 787
    .line 788
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v7

    .line 792
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 793
    .line 794
    iget-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 795
    .line 796
    if-nez v9, :cond_32

    .line 797
    .line 798
    new-instance v9, Ljava/util/LinkedList;

    .line 799
    .line 800
    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 801
    .line 802
    .line 803
    iput-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 804
    .line 805
    :cond_32
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterTypes()[Ljava/lang/Class;

    .line 806
    .line 807
    .line 808
    move-result-object v9

    .line 809
    array-length v9, v9

    .line 810
    move/from16 v11, v16

    .line 811
    .line 812
    :goto_11
    if-ge v11, v9, :cond_31

    .line 813
    .line 814
    invoke-virtual {v7, v11}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 815
    .line 816
    .line 817
    move-result-object v12

    .line 818
    invoke-virtual {v0, v1, v12}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addCreatorParam(Ljava/util/LinkedHashMap;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    .line 819
    .line 820
    .line 821
    add-int/lit8 v11, v11, 0x1

    .line 822
    .line 823
    goto :goto_11

    .line 824
    :cond_33
    :goto_12
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    :cond_34
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 833
    .line 834
    .line 835
    move-result v7

    .line 836
    if-eqz v7, :cond_3d

    .line 837
    .line 838
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v7

    .line 842
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 843
    .line 844
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 845
    .line 846
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Landroidx/compose/runtime/ProvidedValue;)Z

    .line 847
    .line 848
    .line 849
    move-result v9

    .line 850
    if-nez v9, :cond_36

    .line 851
    .line 852
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 853
    .line 854
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Landroidx/compose/runtime/ProvidedValue;)Z

    .line 855
    .line 856
    .line 857
    move-result v9

    .line 858
    if-nez v9, :cond_36

    .line 859
    .line 860
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 861
    .line 862
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Landroidx/compose/runtime/ProvidedValue;)Z

    .line 863
    .line 864
    .line 865
    move-result v9

    .line 866
    if-nez v9, :cond_36

    .line 867
    .line 868
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 869
    .line 870
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Landroidx/compose/runtime/ProvidedValue;)Z

    .line 871
    .line 872
    .line 873
    move-result v9

    .line 874
    if-eqz v9, :cond_35

    .line 875
    .line 876
    goto :goto_14

    .line 877
    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 878
    .line 879
    .line 880
    goto :goto_13

    .line 881
    :cond_36
    :goto_14
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 882
    .line 883
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Landroidx/compose/runtime/ProvidedValue;)Z

    .line 884
    .line 885
    .line 886
    move-result v9

    .line 887
    if-nez v9, :cond_37

    .line 888
    .line 889
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 890
    .line 891
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Landroidx/compose/runtime/ProvidedValue;)Z

    .line 892
    .line 893
    .line 894
    move-result v9

    .line 895
    if-nez v9, :cond_37

    .line 896
    .line 897
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 898
    .line 899
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Landroidx/compose/runtime/ProvidedValue;)Z

    .line 900
    .line 901
    .line 902
    move-result v9

    .line 903
    if-nez v9, :cond_37

    .line 904
    .line 905
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 906
    .line 907
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Landroidx/compose/runtime/ProvidedValue;)Z

    .line 908
    .line 909
    .line 910
    move-result v9

    .line 911
    if-eqz v9, :cond_34

    .line 912
    .line 913
    :cond_37
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->isExplicitlyIncluded()Z

    .line 914
    .line 915
    .line 916
    move-result v9

    .line 917
    if-nez v9, :cond_38

    .line 918
    .line 919
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    goto :goto_13

    .line 926
    :cond_38
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 927
    .line 928
    if-nez v9, :cond_39

    .line 929
    .line 930
    goto :goto_15

    .line 931
    :cond_39
    invoke-virtual {v9}, Landroidx/compose/runtime/ProvidedValue;->withoutIgnored()Landroidx/compose/runtime/ProvidedValue;

    .line 932
    .line 933
    .line 934
    move-result-object v9

    .line 935
    :goto_15
    iput-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 936
    .line 937
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 938
    .line 939
    if-nez v9, :cond_3a

    .line 940
    .line 941
    goto :goto_16

    .line 942
    :cond_3a
    invoke-virtual {v9}, Landroidx/compose/runtime/ProvidedValue;->withoutIgnored()Landroidx/compose/runtime/ProvidedValue;

    .line 943
    .line 944
    .line 945
    move-result-object v9

    .line 946
    :goto_16
    iput-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 947
    .line 948
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 949
    .line 950
    if-nez v9, :cond_3b

    .line 951
    .line 952
    goto :goto_17

    .line 953
    :cond_3b
    invoke-virtual {v9}, Landroidx/compose/runtime/ProvidedValue;->withoutIgnored()Landroidx/compose/runtime/ProvidedValue;

    .line 954
    .line 955
    .line 956
    move-result-object v9

    .line 957
    :goto_17
    iput-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 958
    .line 959
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 960
    .line 961
    if-nez v9, :cond_3c

    .line 962
    .line 963
    goto :goto_18

    .line 964
    :cond_3c
    invoke-virtual {v9}, Landroidx/compose/runtime/ProvidedValue;->withoutIgnored()Landroidx/compose/runtime/ProvidedValue;

    .line 965
    .line 966
    .line 967
    move-result-object v9

    .line 968
    :goto_18
    iput-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 969
    .line 970
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->couldDeserialize()Z

    .line 971
    .line 972
    .line 973
    move-result v9

    .line 974
    if-nez v9, :cond_34

    .line 975
    .line 976
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    goto/16 :goto_13

    .line 980
    .line 981
    :cond_3d
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 982
    .line 983
    invoke-virtual {v2, v4, v5}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 984
    .line 985
    .line 986
    move-result v2

    .line 987
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 988
    .line 989
    .line 990
    move-result-object v7

    .line 991
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 992
    .line 993
    .line 994
    move-result-object v7

    .line 995
    :cond_3e
    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 996
    .line 997
    .line 998
    move-result v9

    .line 999
    const/4 v11, 0x3

    .line 1000
    if-eqz v9, :cond_4c

    .line 1001
    .line 1002
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v9

    .line 1006
    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1007
    .line 1008
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    .line 1010
    .line 1011
    sget-object v12, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 1012
    .line 1013
    iget-object v14, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 1014
    .line 1015
    if-nez v14, :cond_40

    .line 1016
    .line 1017
    :cond_3f
    move-object v15, v10

    .line 1018
    goto :goto_1a

    .line 1019
    :cond_40
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1020
    .line 1021
    if-eqz v15, :cond_41

    .line 1022
    .line 1023
    iget-object v15, v15, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 1024
    .line 1025
    check-cast v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 1026
    .line 1027
    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v15

    .line 1031
    if-eqz v15, :cond_41

    .line 1032
    .line 1033
    if-eq v15, v12, :cond_41

    .line 1034
    .line 1035
    goto :goto_1a

    .line 1036
    :cond_41
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1037
    .line 1038
    if-eqz v15, :cond_42

    .line 1039
    .line 1040
    iget-object v15, v15, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 1041
    .line 1042
    check-cast v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 1043
    .line 1044
    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v15

    .line 1048
    if-eqz v15, :cond_42

    .line 1049
    .line 1050
    if-eq v15, v12, :cond_42

    .line 1051
    .line 1052
    goto :goto_1a

    .line 1053
    :cond_42
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1054
    .line 1055
    if-eqz v15, :cond_43

    .line 1056
    .line 1057
    iget-object v15, v15, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 1058
    .line 1059
    check-cast v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 1060
    .line 1061
    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v15

    .line 1065
    if-eqz v15, :cond_43

    .line 1066
    .line 1067
    if-eq v15, v12, :cond_43

    .line 1068
    .line 1069
    goto :goto_1a

    .line 1070
    :cond_43
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1071
    .line 1072
    if-eqz v15, :cond_3f

    .line 1073
    .line 1074
    iget-object v15, v15, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 1075
    .line 1076
    check-cast v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 1077
    .line 1078
    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v15

    .line 1082
    if-eqz v15, :cond_3f

    .line 1083
    .line 1084
    if-eq v15, v12, :cond_3f

    .line 1085
    .line 1086
    :goto_1a
    if-nez v15, :cond_44

    .line 1087
    .line 1088
    goto :goto_1b

    .line 1089
    :cond_44
    move-object v12, v15

    .line 1090
    :goto_1b
    sget-object v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$6;->$SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access:[I

    .line 1091
    .line 1092
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 1093
    .line 1094
    .line 1095
    move-result v12

    .line 1096
    aget v12, v14, v12

    .line 1097
    .line 1098
    const/4 v14, 0x1

    .line 1099
    if-eq v12, v14, :cond_4b

    .line 1100
    .line 1101
    if-eq v12, v8, :cond_3e

    .line 1102
    .line 1103
    if-eq v12, v11, :cond_4a

    .line 1104
    .line 1105
    iget-object v11, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1106
    .line 1107
    if-nez v11, :cond_45

    .line 1108
    .line 1109
    goto :goto_1c

    .line 1110
    :cond_45
    invoke-virtual {v11}, Landroidx/compose/runtime/ProvidedValue;->withoutNonVisible()Landroidx/compose/runtime/ProvidedValue;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v11

    .line 1114
    :goto_1c
    iput-object v11, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1115
    .line 1116
    iget-object v11, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1117
    .line 1118
    if-nez v11, :cond_46

    .line 1119
    .line 1120
    goto :goto_1d

    .line 1121
    :cond_46
    invoke-virtual {v11}, Landroidx/compose/runtime/ProvidedValue;->withoutNonVisible()Landroidx/compose/runtime/ProvidedValue;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v11

    .line 1125
    :goto_1d
    iput-object v11, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1126
    .line 1127
    if-eqz v2, :cond_47

    .line 1128
    .line 1129
    iget-object v11, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1130
    .line 1131
    if-nez v11, :cond_3e

    .line 1132
    .line 1133
    :cond_47
    iget-object v11, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1134
    .line 1135
    if-nez v11, :cond_48

    .line 1136
    .line 1137
    goto :goto_1e

    .line 1138
    :cond_48
    invoke-virtual {v11}, Landroidx/compose/runtime/ProvidedValue;->withoutNonVisible()Landroidx/compose/runtime/ProvidedValue;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v11

    .line 1142
    :goto_1e
    iput-object v11, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1143
    .line 1144
    iget-object v11, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1145
    .line 1146
    if-nez v11, :cond_49

    .line 1147
    .line 1148
    goto :goto_1f

    .line 1149
    :cond_49
    invoke-virtual {v11}, Landroidx/compose/runtime/ProvidedValue;->withoutNonVisible()Landroidx/compose/runtime/ProvidedValue;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v11

    .line 1153
    :goto_1f
    iput-object v11, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1154
    .line 1155
    goto/16 :goto_19

    .line 1156
    .line 1157
    :cond_4a
    iput-object v10, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1158
    .line 1159
    iput-object v10, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1160
    .line 1161
    goto/16 :goto_19

    .line 1162
    .line 1163
    :cond_4b
    iput-object v10, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1164
    .line 1165
    iput-object v10, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1166
    .line 1167
    goto/16 :goto_19

    .line 1168
    .line 1169
    :cond_4c
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v2

    .line 1177
    move-object v7, v10

    .line 1178
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1179
    .line 1180
    .line 1181
    move-result v9

    .line 1182
    if-eqz v9, :cond_51

    .line 1183
    .line 1184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v9

    .line 1188
    check-cast v9, Ljava/util/Map$Entry;

    .line 1189
    .line 1190
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v9

    .line 1194
    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1195
    .line 1196
    iget-object v12, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1197
    .line 1198
    invoke-static {v12, v10}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findExplicitNames(Landroidx/compose/runtime/ProvidedValue;Ljava/util/Set;)Ljava/util/Set;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v12

    .line 1202
    iget-object v14, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1203
    .line 1204
    invoke-static {v14, v12}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findExplicitNames(Landroidx/compose/runtime/ProvidedValue;Ljava/util/Set;)Ljava/util/Set;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v12

    .line 1208
    iget-object v14, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1209
    .line 1210
    invoke-static {v14, v12}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findExplicitNames(Landroidx/compose/runtime/ProvidedValue;Ljava/util/Set;)Ljava/util/Set;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v12

    .line 1214
    iget-object v14, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1215
    .line 1216
    invoke-static {v14, v12}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_findExplicitNames(Landroidx/compose/runtime/ProvidedValue;Ljava/util/Set;)Ljava/util/Set;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v12

    .line 1220
    if-nez v12, :cond_4d

    .line 1221
    .line 1222
    sget-object v12, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 1223
    .line 1224
    :cond_4d
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 1225
    .line 1226
    .line 1227
    move-result v14

    .line 1228
    if-eqz v14, :cond_4e

    .line 1229
    .line 1230
    goto :goto_20

    .line 1231
    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1232
    .line 1233
    .line 1234
    if-nez v7, :cond_4f

    .line 1235
    .line 1236
    new-instance v7, Ljava/util/LinkedList;

    .line 1237
    .line 1238
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1239
    .line 1240
    .line 1241
    :cond_4f
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 1242
    .line 1243
    .line 1244
    move-result v14

    .line 1245
    const/4 v15, 0x1

    .line 1246
    if-ne v14, v15, :cond_50

    .line 1247
    .line 1248
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v12

    .line 1252
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v12

    .line 1256
    check-cast v12, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 1257
    .line 1258
    new-instance v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1259
    .line 1260
    invoke-direct {v14, v9, v12}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v7, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    goto :goto_20

    .line 1267
    :cond_50
    new-instance v14, Ljava/util/HashMap;

    .line 1268
    .line 1269
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1270
    .line 1271
    .line 1272
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1273
    .line 1274
    check-cast v12, Ljava/util/Set;

    .line 1275
    .line 1276
    invoke-virtual {v9, v12, v14, v15}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_explode(Ljava/util/Set;Ljava/util/HashMap;Landroidx/compose/runtime/ProvidedValue;)V

    .line 1277
    .line 1278
    .line 1279
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1280
    .line 1281
    invoke-virtual {v9, v12, v14, v15}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_explode(Ljava/util/Set;Ljava/util/HashMap;Landroidx/compose/runtime/ProvidedValue;)V

    .line 1282
    .line 1283
    .line 1284
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1285
    .line 1286
    invoke-virtual {v9, v12, v14, v15}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_explode(Ljava/util/Set;Ljava/util/HashMap;Landroidx/compose/runtime/ProvidedValue;)V

    .line 1287
    .line 1288
    .line 1289
    iget-object v15, v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1290
    .line 1291
    invoke-virtual {v9, v12, v14, v15}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_explode(Ljava/util/Set;Ljava/util/HashMap;Landroidx/compose/runtime/ProvidedValue;)V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v9

    .line 1298
    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1299
    .line 1300
    .line 1301
    goto :goto_20

    .line 1302
    :cond_51
    if-eqz v7, :cond_5d

    .line 1303
    .line 1304
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v2

    .line 1308
    :cond_52
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1309
    .line 1310
    .line 1311
    move-result v7

    .line 1312
    if-eqz v7, :cond_5d

    .line 1313
    .line 1314
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v7

    .line 1318
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1319
    .line 1320
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v9

    .line 1324
    invoke-virtual {v1, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v10

    .line 1328
    check-cast v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1329
    .line 1330
    if-nez v10, :cond_53

    .line 1331
    .line 1332
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    .line 1334
    .line 1335
    goto :goto_26

    .line 1336
    :cond_53
    iget-object v9, v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1337
    .line 1338
    iget-object v12, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1339
    .line 1340
    if-nez v9, :cond_54

    .line 1341
    .line 1342
    move-object v9, v12

    .line 1343
    goto :goto_22

    .line 1344
    :cond_54
    if-nez v12, :cond_55

    .line 1345
    .line 1346
    goto :goto_22

    .line 1347
    :cond_55
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ProvidedValue;->append(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v9

    .line 1351
    :goto_22
    iput-object v9, v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1352
    .line 1353
    iget-object v9, v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1354
    .line 1355
    iget-object v12, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1356
    .line 1357
    if-nez v9, :cond_56

    .line 1358
    .line 1359
    move-object v9, v12

    .line 1360
    goto :goto_23

    .line 1361
    :cond_56
    if-nez v12, :cond_57

    .line 1362
    .line 1363
    goto :goto_23

    .line 1364
    :cond_57
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ProvidedValue;->append(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v9

    .line 1368
    :goto_23
    iput-object v9, v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1369
    .line 1370
    iget-object v9, v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1371
    .line 1372
    iget-object v12, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1373
    .line 1374
    if-nez v9, :cond_58

    .line 1375
    .line 1376
    move-object v9, v12

    .line 1377
    goto :goto_24

    .line 1378
    :cond_58
    if-nez v12, :cond_59

    .line 1379
    .line 1380
    goto :goto_24

    .line 1381
    :cond_59
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ProvidedValue;->append(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v9

    .line 1385
    :goto_24
    iput-object v9, v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1386
    .line 1387
    iget-object v9, v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1388
    .line 1389
    iget-object v12, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1390
    .line 1391
    if-nez v9, :cond_5a

    .line 1392
    .line 1393
    move-object v9, v12

    .line 1394
    goto :goto_25

    .line 1395
    :cond_5a
    if-nez v12, :cond_5b

    .line 1396
    .line 1397
    goto :goto_25

    .line 1398
    :cond_5b
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ProvidedValue;->append(Landroidx/compose/runtime/ProvidedValue;)Landroidx/compose/runtime/ProvidedValue;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v9

    .line 1402
    :goto_25
    iput-object v9, v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1403
    .line 1404
    :goto_26
    iget-object v9, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 1405
    .line 1406
    if-eqz v9, :cond_52

    .line 1407
    .line 1408
    iget-object v10, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 1409
    .line 1410
    iget-object v10, v10, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 1411
    .line 1412
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    .line 1413
    .line 1414
    .line 1415
    move-result v12

    .line 1416
    move/from16 v14, v16

    .line 1417
    .line 1418
    :goto_27
    if-ge v14, v12, :cond_52

    .line 1419
    .line 1420
    invoke-virtual {v9, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v15

    .line 1424
    check-cast v15, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1425
    .line 1426
    iget-object v15, v15, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 1427
    .line 1428
    iget-object v15, v15, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 1429
    .line 1430
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v15

    .line 1434
    if-eqz v15, :cond_5c

    .line 1435
    .line 1436
    invoke-virtual {v9, v14, v7}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    goto/16 :goto_21

    .line 1440
    .line 1441
    :cond_5c
    add-int/lit8 v14, v14, 0x1

    .line 1442
    .line 1443
    goto :goto_27

    .line 1444
    :cond_5d
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields()Ljava/util/List;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v2

    .line 1448
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v2

    .line 1452
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1453
    .line 1454
    .line 1455
    move-result v7

    .line 1456
    if-eqz v7, :cond_5e

    .line 1457
    .line 1458
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v7

    .line 1462
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 1463
    .line 1464
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v9

    .line 1468
    invoke-virtual {v0, v9, v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_doAddInjectable(Lcom/fasterxml/jackson/annotation/JacksonInject$Value;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    .line 1469
    .line 1470
    .line 1471
    goto :goto_28

    .line 1472
    :cond_5e
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_methods()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v2

    .line 1476
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v2

    .line 1480
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1481
    .line 1482
    .line 1483
    move-result v7

    .line 1484
    if-eqz v7, :cond_60

    .line 1485
    .line 1486
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v7

    .line 1490
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 1491
    .line 1492
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterTypes()[Ljava/lang/Class;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v9

    .line 1496
    array-length v9, v9

    .line 1497
    const/4 v15, 0x1

    .line 1498
    if-eq v9, v15, :cond_5f

    .line 1499
    .line 1500
    goto :goto_29

    .line 1501
    :cond_5f
    invoke-virtual {v13, v7}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v9

    .line 1505
    invoke-virtual {v0, v9, v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_doAddInjectable(Lcom/fasterxml/jackson/annotation/JacksonInject$Value;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    .line 1506
    .line 1507
    .line 1508
    goto :goto_29

    .line 1509
    :cond_60
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v2

    .line 1513
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v2

    .line 1517
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1518
    .line 1519
    .line 1520
    move-result v7

    .line 1521
    if-eqz v7, :cond_63

    .line 1522
    .line 1523
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v7

    .line 1527
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1528
    .line 1529
    iget-object v9, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1530
    .line 1531
    iget-object v10, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1532
    .line 1533
    if-eqz v9, :cond_61

    .line 1534
    .line 1535
    iget-object v12, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1536
    .line 1537
    iget-object v14, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1538
    .line 1539
    const/4 v15, 0x4

    .line 1540
    new-array v15, v15, [Landroidx/compose/runtime/ProvidedValue;

    .line 1541
    .line 1542
    aput-object v9, v15, v16

    .line 1543
    .line 1544
    const/16 v24, 0x1

    .line 1545
    .line 1546
    aput-object v10, v15, v24

    .line 1547
    .line 1548
    aput-object v12, v15, v8

    .line 1549
    .line 1550
    aput-object v14, v15, v11

    .line 1551
    .line 1552
    move/from16 v9, v16

    .line 1553
    .line 1554
    invoke-static {v9, v15}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Landroidx/compose/runtime/ProvidedValue;)Lcoil3/memory/MemoryCacheService;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v10

    .line 1558
    iget-object v12, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1559
    .line 1560
    invoke-static {v12, v10}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_applyAnnotations(Landroidx/compose/runtime/ProvidedValue;Lcoil3/memory/MemoryCacheService;)Landroidx/compose/runtime/ProvidedValue;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v10

    .line 1564
    iput-object v10, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1565
    .line 1566
    goto :goto_2b

    .line 1567
    :cond_61
    move/from16 v9, v16

    .line 1568
    .line 1569
    if-eqz v10, :cond_62

    .line 1570
    .line 1571
    iget-object v12, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1572
    .line 1573
    iget-object v14, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1574
    .line 1575
    new-array v15, v11, [Landroidx/compose/runtime/ProvidedValue;

    .line 1576
    .line 1577
    aput-object v10, v15, v9

    .line 1578
    .line 1579
    const/16 v24, 0x1

    .line 1580
    .line 1581
    aput-object v12, v15, v24

    .line 1582
    .line 1583
    aput-object v14, v15, v8

    .line 1584
    .line 1585
    invoke-static {v9, v15}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Landroidx/compose/runtime/ProvidedValue;)Lcoil3/memory/MemoryCacheService;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v10

    .line 1589
    iget-object v12, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1590
    .line 1591
    invoke-static {v12, v10}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_applyAnnotations(Landroidx/compose/runtime/ProvidedValue;Lcoil3/memory/MemoryCacheService;)Landroidx/compose/runtime/ProvidedValue;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v10

    .line 1595
    iput-object v10, v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1596
    .line 1597
    :cond_62
    :goto_2b
    move/from16 v16, v9

    .line 1598
    .line 1599
    goto :goto_2a

    .line 1600
    :cond_63
    move/from16 v9, v16

    .line 1601
    .line 1602
    invoke-virtual {v13, v6}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v2

    .line 1606
    if-nez v2, :cond_64

    .line 1607
    .line 1608
    goto :goto_2c

    .line 1609
    :cond_64
    check-cast v2, Ljava/lang/Class;

    .line 1610
    .line 1611
    const-class v7, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 1612
    .line 1613
    if-ne v2, v7, :cond_65

    .line 1614
    .line 1615
    goto :goto_2c

    .line 1616
    :cond_65
    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1617
    .line 1618
    .line 1619
    move-result v7

    .line 1620
    if-eqz v7, :cond_7f

    .line 1621
    .line 1622
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 1623
    .line 1624
    .line 1625
    move-result v3

    .line 1626
    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v2

    .line 1630
    if-nez v2, :cond_7e

    .line 1631
    .line 1632
    :goto_2c
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v2

    .line 1636
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v2

    .line 1640
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1641
    .line 1642
    .line 1643
    move-result v3

    .line 1644
    if-eqz v3, :cond_6a

    .line 1645
    .line 1646
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v3

    .line 1650
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1651
    .line 1652
    iget-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1653
    .line 1654
    if-nez v7, :cond_66

    .line 1655
    .line 1656
    goto :goto_2e

    .line 1657
    :cond_66
    invoke-virtual {v7}, Landroidx/compose/runtime/ProvidedValue;->trimByVisibility()Landroidx/compose/runtime/ProvidedValue;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v7

    .line 1661
    :goto_2e
    iput-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Landroidx/compose/runtime/ProvidedValue;

    .line 1662
    .line 1663
    iget-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1664
    .line 1665
    if-nez v7, :cond_67

    .line 1666
    .line 1667
    goto :goto_2f

    .line 1668
    :cond_67
    invoke-virtual {v7}, Landroidx/compose/runtime/ProvidedValue;->trimByVisibility()Landroidx/compose/runtime/ProvidedValue;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v7

    .line 1672
    :goto_2f
    iput-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Landroidx/compose/runtime/ProvidedValue;

    .line 1673
    .line 1674
    iget-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1675
    .line 1676
    if-nez v7, :cond_68

    .line 1677
    .line 1678
    goto :goto_30

    .line 1679
    :cond_68
    invoke-virtual {v7}, Landroidx/compose/runtime/ProvidedValue;->trimByVisibility()Landroidx/compose/runtime/ProvidedValue;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v7

    .line 1683
    :goto_30
    iput-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Landroidx/compose/runtime/ProvidedValue;

    .line 1684
    .line 1685
    iget-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1686
    .line 1687
    if-nez v7, :cond_69

    .line 1688
    .line 1689
    goto :goto_31

    .line 1690
    :cond_69
    invoke-virtual {v7}, Landroidx/compose/runtime/ProvidedValue;->trimByVisibility()Landroidx/compose/runtime/ProvidedValue;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v7

    .line 1694
    :goto_31
    iput-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Landroidx/compose/runtime/ProvidedValue;

    .line 1695
    .line 1696
    goto :goto_2d

    .line 1697
    :cond_6a
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1698
    .line 1699
    invoke-virtual {v2, v4, v5}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 1700
    .line 1701
    .line 1702
    move-result v2

    .line 1703
    if-eqz v2, :cond_6b

    .line 1704
    .line 1705
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v2

    .line 1709
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v2

    .line 1713
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1714
    .line 1715
    .line 1716
    move-result v3

    .line 1717
    if-eqz v3, :cond_6b

    .line 1718
    .line 1719
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v3

    .line 1723
    check-cast v3, Ljava/util/Map$Entry;

    .line 1724
    .line 1725
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v3

    .line 1729
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1730
    .line 1731
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 1732
    .line 1733
    .line 1734
    goto :goto_32

    .line 1735
    :cond_6b
    invoke-virtual {v13, v6}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v2

    .line 1739
    if-nez v2, :cond_6c

    .line 1740
    .line 1741
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1742
    .line 1743
    invoke-virtual {v2, v4, v5}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v2

    .line 1747
    goto :goto_33

    .line 1748
    :cond_6c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1749
    .line 1750
    .line 1751
    move-result v2

    .line 1752
    :goto_33
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v3

    .line 1756
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1757
    .line 1758
    .line 1759
    move-result-object v3

    .line 1760
    :cond_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1761
    .line 1762
    .line 1763
    move-result v7

    .line 1764
    if-eqz v7, :cond_6e

    .line 1765
    .line 1766
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v7

    .line 1770
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1771
    .line 1772
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v7

    .line 1776
    iget-object v7, v7, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_index:Ljava/lang/Integer;

    .line 1777
    .line 1778
    if-eqz v7, :cond_6d

    .line 1779
    .line 1780
    const/4 v11, 0x1

    .line 1781
    goto :goto_34

    .line 1782
    :cond_6e
    move v11, v9

    .line 1783
    :goto_34
    invoke-virtual {v13, v6}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v3

    .line 1787
    if-nez v2, :cond_6f

    .line 1788
    .line 1789
    if-nez v11, :cond_6f

    .line 1790
    .line 1791
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 1792
    .line 1793
    if-nez v6, :cond_6f

    .line 1794
    .line 1795
    if-nez v3, :cond_6f

    .line 1796
    .line 1797
    goto/16 :goto_3d

    .line 1798
    .line 1799
    :cond_6f
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 1800
    .line 1801
    .line 1802
    move-result v6

    .line 1803
    if-eqz v2, :cond_70

    .line 1804
    .line 1805
    new-instance v7, Ljava/util/TreeMap;

    .line 1806
    .line 1807
    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 1808
    .line 1809
    .line 1810
    goto :goto_35

    .line 1811
    :cond_70
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 1812
    .line 1813
    add-int v8, v6, v6

    .line 1814
    .line 1815
    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1816
    .line 1817
    .line 1818
    :goto_35
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v8

    .line 1822
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v8

    .line 1826
    :goto_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1827
    .line 1828
    .line 1829
    move-result v10

    .line 1830
    if-eqz v10, :cond_71

    .line 1831
    .line 1832
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v10

    .line 1836
    check-cast v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1837
    .line 1838
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v12

    .line 1842
    invoke-interface {v7, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    .line 1844
    .line 1845
    goto :goto_36

    .line 1846
    :cond_71
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 1847
    .line 1848
    add-int/2addr v6, v6

    .line 1849
    invoke-direct {v8, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1850
    .line 1851
    .line 1852
    if-eqz v3, :cond_75

    .line 1853
    .line 1854
    array-length v6, v3

    .line 1855
    move v12, v9

    .line 1856
    :goto_37
    if-ge v12, v6, :cond_75

    .line 1857
    .line 1858
    aget-object v9, v3, v12

    .line 1859
    .line 1860
    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v10

    .line 1864
    check-cast v10, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1865
    .line 1866
    if-nez v10, :cond_73

    .line 1867
    .line 1868
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v13

    .line 1872
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v13

    .line 1876
    :cond_72
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 1877
    .line 1878
    .line 1879
    move-result v14

    .line 1880
    if-eqz v14, :cond_73

    .line 1881
    .line 1882
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v14

    .line 1886
    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1887
    .line 1888
    iget-object v15, v14, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 1889
    .line 1890
    iget-object v15, v15, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 1891
    .line 1892
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1893
    .line 1894
    .line 1895
    move-result v15

    .line 1896
    if-eqz v15, :cond_72

    .line 1897
    .line 1898
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v9

    .line 1902
    move-object v10, v14

    .line 1903
    :cond_73
    if-eqz v10, :cond_74

    .line 1904
    .line 1905
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    .line 1907
    .line 1908
    :cond_74
    add-int/lit8 v12, v12, 0x1

    .line 1909
    .line 1910
    goto :goto_37

    .line 1911
    :cond_75
    if-eqz v11, :cond_78

    .line 1912
    .line 1913
    new-instance v3, Ljava/util/TreeMap;

    .line 1914
    .line 1915
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 1916
    .line 1917
    .line 1918
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v6

    .line 1922
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v6

    .line 1926
    :cond_76
    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v9

    .line 1930
    if-eqz v9, :cond_77

    .line 1931
    .line 1932
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v9

    .line 1936
    check-cast v9, Ljava/util/Map$Entry;

    .line 1937
    .line 1938
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v9

    .line 1942
    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1943
    .line 1944
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v10

    .line 1948
    iget-object v10, v10, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_index:Ljava/lang/Integer;

    .line 1949
    .line 1950
    if-eqz v10, :cond_76

    .line 1951
    .line 1952
    invoke-virtual {v3, v10, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    .line 1954
    .line 1955
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 1956
    .line 1957
    .line 1958
    goto :goto_38

    .line 1959
    :cond_77
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v3

    .line 1963
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v3

    .line 1967
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1968
    .line 1969
    .line 1970
    move-result v6

    .line 1971
    if-eqz v6, :cond_78

    .line 1972
    .line 1973
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v6

    .line 1977
    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 1978
    .line 1979
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v9

    .line 1983
    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    .line 1985
    .line 1986
    goto :goto_39

    .line 1987
    :cond_78
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 1988
    .line 1989
    if-eqz v3, :cond_7d

    .line 1990
    .line 1991
    if-eqz v2, :cond_79

    .line 1992
    .line 1993
    sget-object v3, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_CREATOR_PROPERTIES_FIRST:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1994
    .line 1995
    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/MapperFeature;->enabledIn(J)Z

    .line 1996
    .line 1997
    .line 1998
    move-result v3

    .line 1999
    if-eqz v3, :cond_7d

    .line 2000
    .line 2001
    :cond_79
    if-eqz v2, :cond_7b

    .line 2002
    .line 2003
    new-instance v2, Ljava/util/TreeMap;

    .line 2004
    .line 2005
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 2006
    .line 2007
    .line 2008
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 2009
    .line 2010
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v3

    .line 2014
    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2015
    .line 2016
    .line 2017
    move-result v4

    .line 2018
    if-eqz v4, :cond_7a

    .line 2019
    .line 2020
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v4

    .line 2024
    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 2025
    .line 2026
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v5

    .line 2030
    invoke-virtual {v2, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    .line 2032
    .line 2033
    goto :goto_3a

    .line 2034
    :cond_7a
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v2

    .line 2038
    goto :goto_3b

    .line 2039
    :cond_7b
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 2040
    .line 2041
    :goto_3b
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v2

    .line 2045
    :cond_7c
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2046
    .line 2047
    .line 2048
    move-result v3

    .line 2049
    if-eqz v3, :cond_7d

    .line 2050
    .line 2051
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v3

    .line 2055
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .line 2056
    .line 2057
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v4

    .line 2061
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2062
    .line 2063
    .line 2064
    move-result v5

    .line 2065
    if-eqz v5, :cond_7c

    .line 2066
    .line 2067
    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    .line 2069
    .line 2070
    goto :goto_3c

    .line 2071
    :cond_7d
    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 2075
    .line 2076
    .line 2077
    invoke-interface {v1, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2078
    .line 2079
    .line 2080
    :goto_3d
    iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    .line 2081
    .line 2082
    const/4 v15, 0x1

    .line 2083
    iput-boolean v15, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_collected:Z

    .line 2084
    .line 2085
    return-void

    .line 2086
    :cond_7e
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 2087
    .line 2088
    .line 2089
    return-void

    .line 2090
    :cond_7f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2091
    .line 2092
    .line 2093
    move-result-object v0

    .line 2094
    const-string v1, "; expected Class<PropertyNamingStrategy>"

    .line 2095
    .line 2096
    const-string v2, "AnnotationIntrospector returned Class "

    .line 2097
    .line 2098
    invoke-static {v0, v1, v2}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2099
    .line 2100
    .line 2101
    return-void
.end method

.method public final varargs reportProblem(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Problem with definition of "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, ": "

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p2
.end method
