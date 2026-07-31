.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.super Lcom/fasterxml/jackson/databind/introspect/Annotated;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;


# static fields
.field public static final NO_CREATORS:Lcom/caverock/androidsvg/SVG;


# instance fields
.field public final _annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field public final _bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field public final _class:Ljava/lang/Class;

.field public final _classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

.field public final _collectAnnotations:Z

.field public _creators:Lcom/caverock/androidsvg/SVG;

.field public _fields:Ljava/util/List;

.field public _memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

.field public final _mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

.field public transient _nonStaticInnerClass:Ljava/lang/Boolean;

.field public final _primaryMixIn:Ljava/lang/Class;

.field public final _superTypes:Ljava/util/List;

.field public final _type:Lcom/fasterxml/jackson/databind/type/TypeBase;

.field public final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    const/16 v2, 0x1a

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/caverock/androidsvg/SVG;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->NO_CREATORS:Lcom/caverock/androidsvg/SVG;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 35
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 36
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    .line 38
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 39
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 40
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 41
    iput-object p8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 42
    iput-object p9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 43
    iput-boolean p10, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectAnnotations:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 8
    .line 9
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    .line 14
    .line 15
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/Annotated;->NO_ANNOTATIONS:Lcom/hcaptcha/sdk/HCaptchaHtml;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 18
    .line 19
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectAnnotations:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final _creators()Lcom/caverock/androidsvg/SVG;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creators:Lcom/caverock/androidsvg/SVG;

    .line 4
    .line 5
    if-nez v1, :cond_3b

    .line 6
    .line 7
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->NO_CREATORS:Lcom/caverock/androidsvg/SVG;

    .line 12
    .line 13
    goto/16 :goto_25

    .line 14
    .line 15
    :cond_0
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v5, 0x0

    .line 24
    :goto_0
    iget-boolean v6, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectAnnotations:Z

    .line 25
    .line 26
    or-int/2addr v5, v6

    .line 27
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;

    .line 28
    .line 29
    iget-object v7, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 30
    .line 31
    invoke-direct {v6, v7, v0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;-><init>(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Z)V

    .line 32
    .line 33
    .line 34
    iget-object v5, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_typeFactory:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 37
    .line 38
    sget-object v8, Lcom/fasterxml/jackson/databind/util/ClassUtil;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    .line 39
    .line 40
    const-class v8, Ljava/lang/Enum;

    .line 41
    .line 42
    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const/4 v9, 0x0

    .line 47
    if-nez v8, :cond_6

    .line 48
    .line 49
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    array-length v10, v8

    .line 54
    move-object v12, v9

    .line 55
    move-object v13, v12

    .line 56
    const/4 v11, 0x0

    .line 57
    :goto_1
    if-ge v11, v10, :cond_7

    .line 58
    .line 59
    aget-object v14, v8, v11

    .line 60
    .line 61
    iget-object v15, v14, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 62
    .line 63
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    .line 64
    .line 65
    .line 66
    move-result v15

    .line 67
    if-eqz v15, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    iget v15, v14, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramCount:I

    .line 71
    .line 72
    if-gez v15, :cond_3

    .line 73
    .line 74
    iget-object v15, v14, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 75
    .line 76
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    array-length v15, v15

    .line 81
    iput v15, v14, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramCount:I

    .line 82
    .line 83
    :cond_3
    if-nez v15, :cond_4

    .line 84
    .line 85
    move-object v12, v14

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    if-nez v13, :cond_5

    .line 88
    .line 89
    new-instance v13, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    move-object v12, v9

    .line 101
    move-object v13, v12

    .line 102
    :cond_7
    if-nez v13, :cond_9

    .line 103
    .line 104
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 105
    .line 106
    if-nez v12, :cond_8

    .line 107
    .line 108
    move-object/from16 v17, v1

    .line 109
    .line 110
    move-object/from16 v19, v3

    .line 111
    .line 112
    goto/16 :goto_b

    .line 113
    .line 114
    :cond_8
    const/4 v10, 0x0

    .line 115
    goto :goto_4

    .line 116
    :cond_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    new-instance v10, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .line 124
    .line 125
    const/4 v11, 0x0

    .line 126
    :goto_3
    if-ge v11, v8, :cond_a

    .line 127
    .line 128
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 v11, v11, 0x1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_a
    move-object/from16 v24, v10

    .line 135
    .line 136
    move v10, v8

    .line 137
    move-object/from16 v8, v24

    .line 138
    .line 139
    :goto_4
    sget-object v11, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATION_MAPS:[Lcoil3/memory/MemoryCacheService;

    .line 140
    .line 141
    if-eqz v3, :cond_11

    .line 142
    .line 143
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    array-length v15, v14

    .line 148
    move-object/from16 v16, v9

    .line 149
    .line 150
    const/4 v4, 0x0

    .line 151
    :goto_5
    if-ge v4, v15, :cond_11

    .line 152
    .line 153
    aget-object v9, v14, v4

    .line 154
    .line 155
    move-object/from16 v17, v1

    .line 156
    .line 157
    iget v1, v9, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramCount:I

    .line 158
    .line 159
    move/from16 v18, v1

    .line 160
    .line 161
    iget-object v1, v9, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 162
    .line 163
    if-gez v18, :cond_b

    .line 164
    .line 165
    move-object/from16 v19, v3

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    array-length v3, v3

    .line 172
    iput v3, v9, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_paramCount:I

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_b
    move-object/from16 v19, v3

    .line 176
    .line 177
    move/from16 v3, v18

    .line 178
    .line 179
    :goto_6
    if-nez v3, :cond_d

    .line 180
    .line 181
    if-eqz v12, :cond_c

    .line 182
    .line 183
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 184
    .line 185
    iget-object v3, v12, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 186
    .line 187
    invoke-virtual {v6, v12, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcoil3/memory/MemoryCacheService;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-direct {v1, v5, v3, v9, v11}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcoil3/memory/MemoryCacheService;[Lcoil3/memory/MemoryCacheService;)V

    .line 192
    .line 193
    .line 194
    iput-object v1, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Ljava/lang/Object;

    .line 195
    .line 196
    move/from16 v18, v4

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    goto :goto_9

    .line 200
    :cond_c
    move/from16 v18, v4

    .line 201
    .line 202
    goto :goto_9

    .line 203
    :cond_d
    if-eqz v13, :cond_c

    .line 204
    .line 205
    if-nez v16, :cond_e

    .line 206
    .line 207
    new-array v3, v10, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 208
    .line 209
    move-object/from16 v16, v3

    .line 210
    .line 211
    const/4 v3, 0x0

    .line 212
    :goto_7
    if-ge v3, v10, :cond_e

    .line 213
    .line 214
    move/from16 v18, v4

    .line 215
    .line 216
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 217
    .line 218
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v20

    .line 222
    move/from16 v21, v3

    .line 223
    .line 224
    move-object/from16 v3, v20

    .line 225
    .line 226
    check-cast v3, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 227
    .line 228
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 229
    .line 230
    invoke-direct {v4, v3}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 231
    .line 232
    .line 233
    aput-object v4, v16, v21

    .line 234
    .line 235
    add-int/lit8 v3, v21, 0x1

    .line 236
    .line 237
    move/from16 v4, v18

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_e
    move/from16 v18, v4

    .line 241
    .line 242
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 243
    .line 244
    invoke-direct {v3, v1}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 245
    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    :goto_8
    if-ge v1, v10, :cond_10

    .line 249
    .line 250
    aget-object v4, v16, v1

    .line 251
    .line 252
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_f

    .line 257
    .line 258
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    check-cast v3, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 263
    .line 264
    invoke-virtual {v6, v3, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-interface {v8, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_10
    :goto_9
    add-int/lit8 v4, v18, 0x1

    .line 276
    .line 277
    move-object/from16 v1, v17

    .line 278
    .line 279
    move-object/from16 v3, v19

    .line 280
    .line 281
    const/4 v9, 0x0

    .line 282
    goto/16 :goto_5

    .line 283
    .line 284
    :cond_11
    move-object/from16 v17, v1

    .line 285
    .line 286
    move-object/from16 v19, v3

    .line 287
    .line 288
    if-eqz v12, :cond_12

    .line 289
    .line 290
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 291
    .line 292
    iget-object v3, v12, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->_ctor:Ljava/lang/reflect/Constructor;

    .line 293
    .line 294
    const/4 v4, 0x0

    .line 295
    invoke-virtual {v6, v12, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcoil3/memory/MemoryCacheService;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-direct {v1, v5, v3, v9, v11}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcoil3/memory/MemoryCacheService;[Lcoil3/memory/MemoryCacheService;)V

    .line 300
    .line 301
    .line 302
    iput-object v1, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Ljava/lang/Object;

    .line 303
    .line 304
    :cond_12
    const/4 v1, 0x0

    .line 305
    :goto_a
    if-ge v1, v10, :cond_14

    .line 306
    .line 307
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 312
    .line 313
    if-nez v3, :cond_13

    .line 314
    .line 315
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    check-cast v3, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 320
    .line 321
    const/4 v4, 0x0

    .line 322
    invoke-virtual {v6, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-interface {v8, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_14
    :goto_b
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    array-length v3, v1

    .line 337
    const/4 v4, 0x0

    .line 338
    const/4 v9, 0x0

    .line 339
    :goto_c
    if-ge v9, v3, :cond_17

    .line 340
    .line 341
    aget-object v10, v1, v9

    .line 342
    .line 343
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 344
    .line 345
    .line 346
    move-result v11

    .line 347
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 348
    .line 349
    .line 350
    move-result v11

    .line 351
    if-eqz v11, :cond_16

    .line 352
    .line 353
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->isSynthetic()Z

    .line 354
    .line 355
    .line 356
    move-result v11

    .line 357
    if-nez v11, :cond_16

    .line 358
    .line 359
    if-nez v4, :cond_15

    .line 360
    .line 361
    new-instance v4, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .line 365
    .line 366
    :cond_15
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    :cond_16
    add-int/lit8 v9, v9, 0x1

    .line 370
    .line 371
    goto :goto_c

    .line 372
    :cond_17
    if-nez v4, :cond_18

    .line 373
    .line 374
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 375
    .line 376
    goto/16 :goto_22

    .line 377
    .line 378
    :cond_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    new-instance v9, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .line 386
    .line 387
    const/4 v10, 0x0

    .line 388
    :goto_d
    if-ge v10, v3, :cond_19

    .line 389
    .line 390
    const/4 v11, 0x0

    .line 391
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    add-int/lit8 v10, v10, 0x1

    .line 395
    .line 396
    goto :goto_d

    .line 397
    :cond_19
    if-eqz v19, :cond_1e

    .line 398
    .line 399
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 400
    .line 401
    .line 402
    move-result-object v10

    .line 403
    array-length v11, v10

    .line 404
    const/4 v12, 0x0

    .line 405
    const/4 v13, 0x0

    .line 406
    :goto_e
    if-ge v13, v11, :cond_1e

    .line 407
    .line 408
    aget-object v14, v10, v13

    .line 409
    .line 410
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 411
    .line 412
    .line 413
    move-result v15

    .line 414
    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 415
    .line 416
    .line 417
    move-result v15

    .line 418
    if-eqz v15, :cond_1c

    .line 419
    .line 420
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->isSynthetic()Z

    .line 421
    .line 422
    .line 423
    move-result v15

    .line 424
    if-nez v15, :cond_1c

    .line 425
    .line 426
    if-nez v12, :cond_1a

    .line 427
    .line 428
    new-array v12, v3, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 429
    .line 430
    const/4 v15, 0x0

    .line 431
    :goto_f
    if-ge v15, v3, :cond_1a

    .line 432
    .line 433
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 434
    .line 435
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v18

    .line 439
    move-object/from16 v19, v10

    .line 440
    .line 441
    move-object/from16 v10, v18

    .line 442
    .line 443
    check-cast v10, Ljava/lang/reflect/Method;

    .line 444
    .line 445
    invoke-direct {v1, v10}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 446
    .line 447
    .line 448
    aput-object v1, v12, v15

    .line 449
    .line 450
    add-int/lit8 v15, v15, 0x1

    .line 451
    .line 452
    move-object/from16 v10, v19

    .line 453
    .line 454
    goto :goto_f

    .line 455
    :cond_1a
    move-object/from16 v19, v10

    .line 456
    .line 457
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 458
    .line 459
    invoke-direct {v1, v14}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 460
    .line 461
    .line 462
    const/4 v10, 0x0

    .line 463
    :goto_10
    if-ge v10, v3, :cond_1d

    .line 464
    .line 465
    aget-object v15, v12, v10

    .line 466
    .line 467
    invoke-virtual {v1, v15}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v15

    .line 471
    if-eqz v15, :cond_1b

    .line 472
    .line 473
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    check-cast v1, Ljava/lang/reflect/Method;

    .line 478
    .line 479
    invoke-virtual {v6, v1, v5, v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v9, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    goto :goto_11

    .line 487
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    .line 488
    .line 489
    goto :goto_10

    .line 490
    :cond_1c
    move-object/from16 v19, v10

    .line 491
    .line 492
    :cond_1d
    :goto_11
    add-int/lit8 v13, v13, 0x1

    .line 493
    .line 494
    move-object/from16 v10, v19

    .line 495
    .line 496
    goto :goto_e

    .line 497
    :cond_1e
    const/4 v1, 0x0

    .line 498
    :goto_12
    if-ge v1, v3, :cond_35

    .line 499
    .line 500
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v10

    .line 504
    check-cast v10, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 505
    .line 506
    if-nez v10, :cond_34

    .line 507
    .line 508
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v10

    .line 512
    check-cast v10, Ljava/lang/reflect/Method;

    .line 513
    .line 514
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 515
    .line 516
    .line 517
    move-result-object v11

    .line 518
    array-length v12, v11

    .line 519
    if-eqz v12, :cond_1f

    .line 520
    .line 521
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 522
    .line 523
    .line 524
    move-result-object v12

    .line 525
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    .line 526
    .line 527
    .line 528
    move-result v12

    .line 529
    if-eqz v12, :cond_20

    .line 530
    .line 531
    :cond_1f
    move-object/from16 v18, v2

    .line 532
    .line 533
    move/from16 v19, v3

    .line 534
    .line 535
    goto :goto_15

    .line 536
    :cond_20
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 537
    .line 538
    .line 539
    move-result-object v12

    .line 540
    instance-of v13, v12, Ljava/lang/reflect/ParameterizedType;

    .line 541
    .line 542
    if-nez v13, :cond_21

    .line 543
    .line 544
    :goto_13
    move-object/from16 v18, v2

    .line 545
    .line 546
    :goto_14
    move/from16 v19, v3

    .line 547
    .line 548
    :goto_15
    move-object/from16 v20, v4

    .line 549
    .line 550
    :goto_16
    const/4 v2, 0x0

    .line 551
    goto/16 :goto_1e

    .line 552
    .line 553
    :cond_21
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 554
    .line 555
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 556
    .line 557
    .line 558
    move-result-object v13

    .line 559
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v13

    .line 563
    if-nez v13, :cond_22

    .line 564
    .line 565
    goto :goto_13

    .line 566
    :cond_22
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 567
    .line 568
    .line 569
    move-result-object v12

    .line 570
    new-instance v13, Ljava/util/ArrayList;

    .line 571
    .line 572
    array-length v14, v11

    .line 573
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 574
    .line 575
    .line 576
    new-instance v14, Ljava/util/ArrayList;

    .line 577
    .line 578
    array-length v15, v11

    .line 579
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 580
    .line 581
    .line 582
    move-object/from16 v18, v2

    .line 583
    .line 584
    const/4 v15, 0x0

    .line 585
    :goto_17
    array-length v2, v12

    .line 586
    if-ge v15, v2, :cond_2f

    .line 587
    .line 588
    aget-object v2, v12, v15

    .line 589
    .line 590
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->maybeGetTypeVariable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    if-eqz v2, :cond_2d

    .line 595
    .line 596
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    if-nez v2, :cond_23

    .line 601
    .line 602
    goto :goto_14

    .line 603
    :cond_23
    move/from16 v19, v3

    .line 604
    .line 605
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-virtual {v3, v15}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundType(I)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    if-nez v3, :cond_24

    .line 614
    .line 615
    goto :goto_15

    .line 616
    :cond_24
    move-object/from16 v20, v4

    .line 617
    .line 618
    array-length v4, v11

    .line 619
    move-object/from16 v21, v11

    .line 620
    .line 621
    const/4 v11, 0x0

    .line 622
    :goto_18
    if-ge v11, v4, :cond_26

    .line 623
    .line 624
    aget-object v22, v21, v11

    .line 625
    .line 626
    move/from16 v23, v4

    .line 627
    .line 628
    invoke-interface/range {v22 .. v22}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v4

    .line 632
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v4

    .line 636
    if-eqz v4, :cond_25

    .line 637
    .line 638
    goto :goto_19

    .line 639
    :cond_25
    add-int/lit8 v11, v11, 0x1

    .line 640
    .line 641
    move/from16 v4, v23

    .line 642
    .line 643
    goto :goto_18

    .line 644
    :cond_26
    const/16 v22, 0x0

    .line 645
    .line 646
    :goto_19
    if-nez v22, :cond_27

    .line 647
    .line 648
    :goto_1a
    goto :goto_16

    .line 649
    :cond_27
    invoke-interface/range {v22 .. v22}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    array-length v11, v4

    .line 654
    move-object/from16 v22, v4

    .line 655
    .line 656
    const/4 v4, 0x0

    .line 657
    :goto_1b
    if-ge v4, v11, :cond_29

    .line 658
    .line 659
    move/from16 v23, v4

    .line 660
    .line 661
    aget-object v4, v22, v23

    .line 662
    .line 663
    invoke-static {v5, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->pessimisticallyValidateBound(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/type/TypeBase;Ljava/lang/reflect/Type;)Z

    .line 664
    .line 665
    .line 666
    move-result v4

    .line 667
    if-nez v4, :cond_28

    .line 668
    .line 669
    goto :goto_1c

    .line 670
    :cond_28
    add-int/lit8 v4, v23, 0x1

    .line 671
    .line 672
    goto :goto_1b

    .line 673
    :cond_29
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 674
    .line 675
    .line 676
    move-result v4

    .line 677
    const/4 v11, -0x1

    .line 678
    if-eq v4, v11, :cond_2c

    .line 679
    .line 680
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    check-cast v2, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 685
    .line 686
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v11

    .line 690
    if-eqz v11, :cond_2a

    .line 691
    .line 692
    goto :goto_1c

    .line 693
    :cond_2a
    iget-object v11, v3, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 694
    .line 695
    invoke-virtual {v2, v11}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    .line 696
    .line 697
    .line 698
    move-result v11

    .line 699
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 700
    .line 701
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/type/TypeBase;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    .line 702
    .line 703
    .line 704
    move-result v2

    .line 705
    if-nez v11, :cond_2b

    .line 706
    .line 707
    if-nez v2, :cond_2b

    .line 708
    .line 709
    goto :goto_1a

    .line 710
    :cond_2b
    xor-int/2addr v11, v2

    .line 711
    if-eqz v11, :cond_2e

    .line 712
    .line 713
    if-eqz v2, :cond_2e

    .line 714
    .line 715
    invoke-virtual {v14, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    goto :goto_1c

    .line 719
    :cond_2c
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    goto :goto_1c

    .line 726
    :cond_2d
    move/from16 v19, v3

    .line 727
    .line 728
    move-object/from16 v20, v4

    .line 729
    .line 730
    move-object/from16 v21, v11

    .line 731
    .line 732
    :cond_2e
    :goto_1c
    add-int/lit8 v15, v15, 0x1

    .line 733
    .line 734
    move/from16 v3, v19

    .line 735
    .line 736
    move-object/from16 v4, v20

    .line 737
    .line 738
    move-object/from16 v11, v21

    .line 739
    .line 740
    goto/16 :goto_17

    .line 741
    .line 742
    :cond_2f
    move/from16 v19, v3

    .line 743
    .line 744
    move-object/from16 v20, v4

    .line 745
    .line 746
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    if-eqz v2, :cond_30

    .line 751
    .line 752
    goto :goto_1a

    .line 753
    :cond_30
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 754
    .line 755
    .line 756
    move-result v2

    .line 757
    if-nez v2, :cond_32

    .line 758
    .line 759
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    if-eqz v2, :cond_31

    .line 764
    .line 765
    goto :goto_1d

    .line 766
    :cond_31
    new-instance v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 767
    .line 768
    sget-object v3, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    .line 769
    .line 770
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    check-cast v3, [Ljava/lang/String;

    .line 775
    .line 776
    sget-object v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 777
    .line 778
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    check-cast v4, [Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 783
    .line 784
    const/4 v11, 0x0

    .line 785
    invoke-direct {v2, v3, v4, v11}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/type/TypeBase;[Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    goto :goto_1e

    .line 789
    :cond_32
    :goto_1d
    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 790
    .line 791
    :goto_1e
    if-nez v2, :cond_33

    .line 792
    .line 793
    move-object v3, v5

    .line 794
    :goto_1f
    const/4 v4, 0x0

    .line 795
    goto :goto_20

    .line 796
    :cond_33
    new-instance v3, Lcoil3/svg/internal/AndroidSvg;

    .line 797
    .line 798
    iget-object v4, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 799
    .line 800
    invoke-direct {v3, v4, v2}, Lcoil3/svg/internal/AndroidSvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    goto :goto_1f

    .line 804
    :goto_20
    invoke-virtual {v6, v10, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    invoke-virtual {v9, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    goto :goto_21

    .line 812
    :cond_34
    move-object/from16 v18, v2

    .line 813
    .line 814
    move/from16 v19, v3

    .line 815
    .line 816
    move-object/from16 v20, v4

    .line 817
    .line 818
    :goto_21
    add-int/lit8 v1, v1, 0x1

    .line 819
    .line 820
    move-object/from16 v2, v18

    .line 821
    .line 822
    move/from16 v3, v19

    .line 823
    .line 824
    move-object/from16 v4, v20

    .line 825
    .line 826
    goto/16 :goto_12

    .line 827
    .line 828
    :cond_35
    move-object v2, v9

    .line 829
    :goto_22
    iget-boolean v1, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    .line 830
    .line 831
    if-eqz v1, :cond_3a

    .line 832
    .line 833
    iget-object v1, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Ljava/lang/Object;

    .line 834
    .line 835
    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 836
    .line 837
    if-eqz v1, :cond_36

    .line 838
    .line 839
    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    if-eqz v1, :cond_36

    .line 844
    .line 845
    const/4 v4, 0x0

    .line 846
    iput-object v4, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Ljava/lang/Object;

    .line 847
    .line 848
    :cond_36
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    :cond_37
    :goto_23
    const/16 v16, -0x1

    .line 853
    .line 854
    add-int/lit8 v1, v1, -0x1

    .line 855
    .line 856
    if-ltz v1, :cond_38

    .line 857
    .line 858
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v3

    .line 862
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 863
    .line 864
    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    .line 865
    .line 866
    .line 867
    move-result v3

    .line 868
    if-eqz v3, :cond_37

    .line 869
    .line 870
    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    goto :goto_23

    .line 874
    :cond_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 875
    .line 876
    .line 877
    move-result v1

    .line 878
    const/16 v16, -0x1

    .line 879
    .line 880
    :cond_39
    :goto_24
    add-int/lit8 v1, v1, -0x1

    .line 881
    .line 882
    if-ltz v1, :cond_3a

    .line 883
    .line 884
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 889
    .line 890
    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    .line 891
    .line 892
    .line 893
    move-result v3

    .line 894
    if-eqz v3, :cond_39

    .line 895
    .line 896
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    goto :goto_24

    .line 900
    :cond_3a
    new-instance v1, Lcom/caverock/androidsvg/SVG;

    .line 901
    .line 902
    iget-object v3, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Ljava/lang/Object;

    .line 903
    .line 904
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 905
    .line 906
    const/16 v4, 0x1a

    .line 907
    .line 908
    invoke-direct {v1, v3, v8, v2, v4}, Lcom/caverock/androidsvg/SVG;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 909
    .line 910
    .line 911
    :goto_25
    iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creators:Lcom/caverock/androidsvg/SVG;

    .line 912
    .line 913
    :cond_3b
    return-object v1
.end method

.method public final _fields()Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 19
    .line 20
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectAnnotations:Z

    .line 21
    .line 22
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;-><init>(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_findFields(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/type/TypeBase;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;

    .line 62
    .line 63
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 64
    .line 65
    iget-object v4, v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 66
    .line 67
    iget-object v5, v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->field:Ljava/lang/reflect/Field;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->asAnnotationMap()Lcoil3/memory/MemoryCacheService;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v3, v4, v5, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Field;Lcoil3/memory/MemoryCacheService;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move-object v0, v1

    .line 83
    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 84
    .line 85
    :cond_3
    return-object v0
.end method

.method public final _methods()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 17
    .line 18
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 23
    .line 24
    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectAnnotations:Z

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;-><init>(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    .line 35
    .line 36
    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMemberMethods(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget-object v5, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v6, v4, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-interface {v5, v6}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    :goto_1
    new-instance v5, Lcoil3/svg/internal/AndroidSvg;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/type/TypeBase;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 76
    .line 77
    invoke-direct {v5, v8, v7}, Lcoil3/svg/internal/AndroidSvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v4, Lcom/fasterxml/jackson/databind/type/TypeBase;->_class:Ljava/lang/Class;

    .line 81
    .line 82
    invoke-virtual {v1, v5, v4, v2, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMemberMethods(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    if-eqz v5, :cond_5

    .line 87
    .line 88
    const-class v3, Ljava/lang/Object;

    .line 89
    .line 90
    invoke-interface {v5, v3}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    invoke-virtual {v1, p0, v0, v2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMethodMixIns(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/LinkedHashMap;Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :catch_0
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_5

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Ljava/util/Map$Entry;

    .line 128
    .line 129
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 134
    .line 135
    const-string v7, "hashCode"

    .line 136
    .line 137
    iget-object v8, v5, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_name:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_3

    .line 144
    .line 145
    iget-object v7, v5, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    .line 146
    .line 147
    array-length v7, v7

    .line 148
    if-eqz v7, :cond_4

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    :try_start_0
    iget-object v5, v5, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->_name:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    if-eqz v5, :cond_3

    .line 158
    .line 159
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    .line 164
    .line 165
    iget-object v7, v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {v1, v7, v8}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectDefaultAnnotations(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    iput-object v7, v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 176
    .line 177
    iput-object v5, v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 189
    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_9

    .line 214
    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Ljava/util/Map$Entry;

    .line 220
    .line 221
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    .line 226
    .line 227
    iget-object v4, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;

    .line 228
    .line 229
    if-nez v4, :cond_8

    .line 230
    .line 231
    move-object v5, v6

    .line 232
    goto :goto_4

    .line 233
    :cond_8
    new-instance v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 234
    .line 235
    iget-object v7, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 236
    .line 237
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 238
    .line 239
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->asAnnotationMap()Lcoil3/memory/MemoryCacheService;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-direct {v5, v7, v4, v3, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcoil3/memory/MemoryCacheService;[Lcoil3/memory/MemoryCacheService;)V

    .line 244
    .line 245
    .line 246
    :goto_4
    if-eqz v5, :cond_7

    .line 247
    .line 248
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_9
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    .line 257
    .line 258
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 259
    .line 260
    .line 261
    iput-object v0, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->_methods:Ljava/util/LinkedHashMap;

    .line 262
    .line 263
    move-object v0, v1

    .line 264
    :goto_5
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    .line 265
    .line 266
    :cond_a
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-class v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 6
    .line 7
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->hasClass(Ljava/lang/Object;Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 20
    .line 21
    if-ne p1, p0, :cond_2

    .line 22
    .line 23
    return v0

    .line 24
    :cond_2
    return v2
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_type:Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/type/TypeBase;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 5
    .line 6
    invoke-virtual {p0, v1, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromAny(Lcom/caverock/androidsvg/SVG;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/TypeBase;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[AnnotedClass "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, "]"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
