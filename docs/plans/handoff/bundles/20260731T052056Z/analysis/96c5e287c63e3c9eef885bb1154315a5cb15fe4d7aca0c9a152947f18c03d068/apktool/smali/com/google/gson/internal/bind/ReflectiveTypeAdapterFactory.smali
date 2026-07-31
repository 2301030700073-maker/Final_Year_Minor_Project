.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final constructorConstructor:Lokhttp3/FormBody$Builder;

.field public final excluder:Lcom/google/gson/internal/Excluder;

.field public final fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy;

.field public final reflectionFilters:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lokhttp3/FormBody$Builder;Lcom/google/gson/FieldNamingPolicy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lokhttp3/FormBody$Builder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method

.method public static checkAccessible(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/lang/reflect/Member;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :cond_0
    sget-object v0, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->INSTANCE:Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;

    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->canAccess(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    invoke-static {p1, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 30
    .line 31
    const-string v0, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 7

    .line 1
    iget-object v3, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v0, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getFilterResult(Ljava/util/ArrayList;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    sget-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_INACCESSIBLE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :goto_0
    move v4, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    sget-object v0, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcoil3/util/UtilsKt;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lcoil3/util/UtilsKt;->isRecord(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v6, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    move-object v0, p0

    .line 44
    move-object v1, p1

    .line 45
    move-object v2, p2

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;ZZ)Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v6, v3, p0, v4}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$RecordAdapter;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;Z)V

    .line 51
    .line 52
    .line 53
    return-object v6

    .line 54
    :cond_2
    move-object v0, p0

    .line 55
    move-object v1, p1

    .line 56
    move-object v2, p2

    .line 57
    iget-object p0, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lokhttp3/FormBody$Builder;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lokhttp3/FormBody$Builder;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance p1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;ZZ)Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {p1, p0, p2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/LinkedHashMap;)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_3
    new-instance p0, Lcom/google/gson/JsonIOException;

    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p2, "ReflectionAccessFilter does not permit using reflection for "

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p2, ". Register a TypeAdapter for this type or adjust the access filter."

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;ZZ)Ljava/util/LinkedHashMap;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v14, p3

    .line 6
    .line 7
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v14}, Ljava/lang/Class;->isInterface()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_f

    .line 19
    .line 20
    :cond_0
    move-object/from16 v1, p2

    .line 21
    .line 22
    move/from16 v2, p4

    .line 23
    .line 24
    move-object v3, v14

    .line 25
    :goto_0
    iget-object v1, v1, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 26
    .line 27
    const-class v4, Ljava/lang/Object;

    .line 28
    .line 29
    if-eq v3, v4, :cond_17

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eq v3, v14, :cond_3

    .line 38
    .line 39
    array-length v7, v4

    .line 40
    if-lez v7, :cond_3

    .line 41
    .line 42
    iget-object v2, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->reflectionFilters:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->getFilterResult(Ljava/util/ArrayList;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v7, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 49
    .line 50
    if-eq v2, v7, :cond_2

    .line 51
    .line 52
    sget-object v7, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_INACCESSIBLE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 53
    .line 54
    if-ne v2, v7, :cond_1

    .line 55
    .line 56
    move v2, v5

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v2, v6

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Lcom/google/gson/JsonIOException;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "ReflectionAccessFilter does not permit using reflection for "

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, " (supertype of "

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, "). Register a TypeAdapter for this type or adjust the access filter."

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_3
    :goto_1
    array-length v7, v4

    .line 94
    move v8, v6

    .line 95
    :goto_2
    if-ge v8, v7, :cond_16

    .line 96
    .line 97
    aget-object v9, v4, v8

    .line 98
    .line 99
    invoke-virtual {v0, v9, v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    invoke-virtual {v0, v9, v6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->includeField(Ljava/lang/reflect/Field;Z)Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-nez v11, :cond_4

    .line 108
    .line 109
    if-nez v12, :cond_4

    .line 110
    .line 111
    move-object v14, v1

    .line 112
    move-object/from16 v19, v3

    .line 113
    .line 114
    move-object/from16 v26, v4

    .line 115
    .line 116
    move/from16 v20, v5

    .line 117
    .line 118
    move/from16 v23, v6

    .line 119
    .line 120
    move/from16 v24, v7

    .line 121
    .line 122
    move/from16 v17, v8

    .line 123
    .line 124
    move v6, v2

    .line 125
    goto/16 :goto_e

    .line 126
    .line 127
    :cond_4
    const-class v13, Lcom/google/gson/annotations/SerializedName;

    .line 128
    .line 129
    const/16 v16, 0x0

    .line 130
    .line 131
    if-eqz p5, :cond_8

    .line 132
    .line 133
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 134
    .line 135
    .line 136
    move-result v17

    .line 137
    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 138
    .line 139
    .line 140
    move-result v17

    .line 141
    if-eqz v17, :cond_5

    .line 142
    .line 143
    move/from16 p2, v5

    .line 144
    .line 145
    move v12, v6

    .line 146
    :goto_3
    move-object/from16 v5, v16

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_5
    move/from16 p2, v5

    .line 150
    .line 151
    sget-object v5, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcoil3/util/UtilsKt;

    .line 152
    .line 153
    invoke-virtual {v5, v3, v9}, Lcoil3/util/UtilsKt;->getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    if-nez v2, :cond_6

    .line 158
    .line 159
    invoke-static {v5}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    invoke-virtual {v5, v13}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 163
    .line 164
    .line 165
    move-result-object v17

    .line 166
    if-eqz v17, :cond_9

    .line 167
    .line 168
    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 169
    .line 170
    .line 171
    move-result-object v17

    .line 172
    if-eqz v17, :cond_7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    invoke-static {v5, v6}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    new-instance v1, Lcom/google/gson/JsonIOException;

    .line 180
    .line 181
    const-string v2, "@SerializedName on "

    .line 182
    .line 183
    const-string v3, " is not supported"

    .line 184
    .line 185
    invoke-static {v2, v0, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v1

    .line 193
    :cond_8
    move/from16 p2, v5

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    :goto_4
    if-nez v2, :cond_a

    .line 197
    .line 198
    if-nez v5, :cond_a

    .line 199
    .line 200
    invoke-static {v9}, Lcom/google/gson/internal/reflect/ReflectionHelper;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 201
    .line 202
    .line 203
    :cond_a
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    move/from16 v17, v2

    .line 208
    .line 209
    new-instance v2, Ljava/util/HashMap;

    .line 210
    .line 211
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-static {v1, v3, v6, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    check-cast v6, Lcom/google/gson/annotations/SerializedName;

    .line 223
    .line 224
    if-nez v6, :cond_b

    .line 225
    .line 226
    iget-object v6, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingPolicy;

    .line 227
    .line 228
    invoke-virtual {v6, v9}, Lcom/google/gson/FieldNamingPolicy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    move-object/from16 v18, v1

    .line 237
    .line 238
    :goto_5
    move-object/from16 v19, v3

    .line 239
    .line 240
    move-object v1, v6

    .line 241
    goto :goto_6

    .line 242
    :cond_b
    invoke-interface {v6}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v13

    .line 246
    invoke-interface {v6}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    move-object/from16 v18, v1

    .line 251
    .line 252
    array-length v1, v6

    .line 253
    if-nez v1, :cond_c

    .line 254
    .line 255
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    goto :goto_5

    .line 260
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    .line 261
    .line 262
    move-object/from16 v19, v3

    .line 263
    .line 264
    array-length v3, v6

    .line 265
    add-int/lit8 v3, v3, 0x1

    .line 266
    .line 267
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    invoke-static {v1, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    move-object/from16 v13, v16

    .line 281
    .line 282
    const/4 v6, 0x0

    .line 283
    :goto_7
    if-ge v6, v3, :cond_14

    .line 284
    .line 285
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v20

    .line 289
    check-cast v20, Ljava/lang/String;

    .line 290
    .line 291
    if-eqz v6, :cond_d

    .line 292
    .line 293
    const/4 v11, 0x0

    .line 294
    :cond_d
    move-object/from16 v21, v1

    .line 295
    .line 296
    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    .line 297
    .line 298
    invoke-direct {v1, v2}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v22, v2

    .line 302
    .line 303
    iget-object v2, v1, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 304
    .line 305
    if-eqz v2, :cond_e

    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_e

    .line 312
    .line 313
    move v2, v7

    .line 314
    move-object v7, v5

    .line 315
    move v5, v12

    .line 316
    move/from16 v12, p2

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_e
    move v2, v7

    .line 320
    move-object v7, v5

    .line 321
    move v5, v12

    .line 322
    const/4 v12, 0x0

    .line 323
    :goto_8
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 324
    .line 325
    .line 326
    move-result v23

    .line 327
    invoke-static/range {v23 .. v23}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 328
    .line 329
    .line 330
    move-result v24

    .line 331
    if-eqz v24, :cond_f

    .line 332
    .line 333
    invoke-static/range {v23 .. v23}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 334
    .line 335
    .line 336
    move-result v23

    .line 337
    if-eqz v23, :cond_f

    .line 338
    .line 339
    move-object/from16 v23, v13

    .line 340
    .line 341
    move/from16 v13, p2

    .line 342
    .line 343
    :goto_9
    move/from16 v24, v2

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_f
    move-object/from16 v23, v13

    .line 347
    .line 348
    const/4 v13, 0x0

    .line 349
    goto :goto_9

    .line 350
    :goto_a
    const-class v2, Lcom/google/gson/annotations/JsonAdapter;

    .line 351
    .line 352
    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    check-cast v2, Lcom/google/gson/annotations/JsonAdapter;

    .line 357
    .line 358
    move/from16 v25, v3

    .line 359
    .line 360
    if-eqz v2, :cond_10

    .line 361
    .line 362
    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lokhttp3/FormBody$Builder;

    .line 363
    .line 364
    invoke-static {v3, v10, v1, v2}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->getTypeAdapter(Lokhttp3/FormBody$Builder;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    goto :goto_b

    .line 369
    :cond_10
    move-object/from16 v2, v16

    .line 370
    .line 371
    :goto_b
    move v3, v8

    .line 372
    if-eqz v2, :cond_11

    .line 373
    .line 374
    move/from16 v8, p2

    .line 375
    .line 376
    goto :goto_c

    .line 377
    :cond_11
    const/4 v8, 0x0

    .line 378
    :goto_c
    if-nez v2, :cond_12

    .line 379
    .line 380
    invoke-virtual {v10, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    :cond_12
    move-object/from16 v26, v4

    .line 385
    .line 386
    move v4, v11

    .line 387
    move-object v11, v1

    .line 388
    new-instance v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .line 389
    .line 390
    move-object/from16 v14, v18

    .line 391
    .line 392
    move-object/from16 v0, v23

    .line 393
    .line 394
    const/16 v23, 0x0

    .line 395
    .line 396
    move/from16 v18, v6

    .line 397
    .line 398
    move/from16 v6, v17

    .line 399
    .line 400
    move/from16 v17, v3

    .line 401
    .line 402
    move-object v3, v9

    .line 403
    move-object v9, v2

    .line 404
    move-object/from16 v2, v20

    .line 405
    .line 406
    move/from16 v20, p2

    .line 407
    .line 408
    invoke-direct/range {v1 .. v13}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZZLjava/lang/reflect/Method;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;ZZ)V

    .line 409
    .line 410
    .line 411
    invoke-interface {v15, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    move-object v13, v1

    .line 416
    check-cast v13, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .line 417
    .line 418
    if-nez v0, :cond_13

    .line 419
    .line 420
    goto :goto_d

    .line 421
    :cond_13
    move-object v13, v0

    .line 422
    :goto_d
    add-int/lit8 v0, v18, 0x1

    .line 423
    .line 424
    move-object/from16 v10, p1

    .line 425
    .line 426
    move-object v9, v3

    .line 427
    move v11, v4

    .line 428
    move v12, v5

    .line 429
    move-object v5, v7

    .line 430
    move-object/from16 v18, v14

    .line 431
    .line 432
    move/from16 v8, v17

    .line 433
    .line 434
    move/from16 p2, v20

    .line 435
    .line 436
    move-object/from16 v1, v21

    .line 437
    .line 438
    move-object/from16 v2, v22

    .line 439
    .line 440
    move/from16 v7, v24

    .line 441
    .line 442
    move/from16 v3, v25

    .line 443
    .line 444
    move-object/from16 v4, v26

    .line 445
    .line 446
    move-object/from16 v14, p3

    .line 447
    .line 448
    move/from16 v17, v6

    .line 449
    .line 450
    move v6, v0

    .line 451
    move-object/from16 v0, p0

    .line 452
    .line 453
    goto/16 :goto_7

    .line 454
    .line 455
    :cond_14
    move/from16 v20, p2

    .line 456
    .line 457
    move-object/from16 v26, v4

    .line 458
    .line 459
    move/from16 v24, v7

    .line 460
    .line 461
    move-object v3, v9

    .line 462
    move-object v0, v13

    .line 463
    move/from16 v6, v17

    .line 464
    .line 465
    move-object/from16 v14, v18

    .line 466
    .line 467
    const/16 v23, 0x0

    .line 468
    .line 469
    move/from16 v17, v8

    .line 470
    .line 471
    if-nez v0, :cond_15

    .line 472
    .line 473
    :goto_e
    add-int/lit8 v8, v17, 0x1

    .line 474
    .line 475
    move-object/from16 v0, p0

    .line 476
    .line 477
    move-object/from16 v10, p1

    .line 478
    .line 479
    move v2, v6

    .line 480
    move-object v1, v14

    .line 481
    move-object/from16 v3, v19

    .line 482
    .line 483
    move/from16 v5, v20

    .line 484
    .line 485
    move/from16 v6, v23

    .line 486
    .line 487
    move/from16 v7, v24

    .line 488
    .line 489
    move-object/from16 v4, v26

    .line 490
    .line 491
    move-object/from16 v14, p3

    .line 492
    .line 493
    goto/16 :goto_2

    .line 494
    .line 495
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 496
    .line 497
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    iget-object v4, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->name:Ljava/lang/String;

    .line 502
    .line 503
    iget-object v0, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->field:Ljava/lang/reflect/Field;

    .line 504
    .line 505
    invoke-static {v0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-static {v3}, Lcom/google/gson/internal/reflect/ReflectionHelper;->fieldToString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    const-string v6, "Class "

    .line 516
    .line 517
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string v2, " declares multiple JSON fields named \'"

    .line 524
    .line 525
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v2, "\'; conflict is caused by fields "

    .line 532
    .line 533
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v0, " and "

    .line 540
    .line 541
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    throw v1

    .line 555
    :cond_16
    move-object v14, v1

    .line 556
    move v6, v2

    .line 557
    move-object/from16 v19, v3

    .line 558
    .line 559
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    new-instance v1, Ljava/util/HashMap;

    .line 564
    .line 565
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 566
    .line 567
    .line 568
    move-object/from16 v2, v19

    .line 569
    .line 570
    invoke-static {v14, v2, v0, v1}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    .line 575
    .line 576
    invoke-direct {v1, v0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 577
    .line 578
    .line 579
    iget-object v3, v1, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 580
    .line 581
    move-object/from16 v0, p0

    .line 582
    .line 583
    move-object/from16 v10, p1

    .line 584
    .line 585
    move-object/from16 v14, p3

    .line 586
    .line 587
    move v2, v6

    .line 588
    goto/16 :goto_0

    .line 589
    .line 590
    :cond_17
    :goto_f
    return-object v15
.end method

.method public final includeField(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_6

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Z)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x88

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    and-int/2addr v0, v1

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    if-eqz p2, :cond_3

    .line 48
    .line 49
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 53
    .line 54
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_5

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    throw p0

    .line 76
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    :cond_6
    :goto_2
    const/4 p0, 0x0

    .line 79
    return p0
.end method
