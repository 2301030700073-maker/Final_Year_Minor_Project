.class public final Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final constructorConstructor:Lokhttp3/FormBody$Builder;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/FormBody$Builder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lokhttp3/FormBody$Builder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static getTypeAdapter(Lokhttp3/FormBody$Builder;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;
    .locals 2

    .line 1
    invoke-interface {p3}, Lcom/google/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lokhttp3/FormBody$Builder;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p3}, Lcom/google/gson/annotations/JsonAdapter;->nullSafe()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    instance-of v0, p0, Lcom/google/gson/TypeAdapter;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    check-cast p0, Lcom/google/gson/TypeAdapter;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    instance-of v0, p0, Lcom/google/gson/TypeAdapterFactory;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    check-cast p0, Lcom/google/gson/TypeAdapterFactory;

    .line 34
    .line 35
    invoke-interface {p0, p1, p2}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    if-eqz p0, :cond_1

    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_1
    return-object p0

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object p2, p2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 59
    .line 60
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, "Invalid attempt to bind an instance of "

    .line 67
    .line 68
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, " as a @JsonAdapter for "

    .line 75
    .line 76
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    .line 83
    .line 84
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 12

    .line 1
    iget v3, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->$r8$classId:I

    .line 2
    .line 3
    const-class v4, Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v5, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lokhttp3/FormBody$Builder;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v1, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 13
    .line 14
    const-class v3, Lcom/google/gson/annotations/JsonAdapter;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/gson/annotations/JsonAdapter;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v5, p1, p2, v1}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->getTypeAdapter(Lokhttp3/FormBody$Builder;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    :goto_0
    return-object v6

    .line 30
    :pswitch_0
    iget-object v1, p2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 31
    .line 32
    iget-object v3, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 33
    .line 34
    const-class v8, Ljava/util/Collection;

    .line 35
    .line 36
    invoke-virtual {v8, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-nez v9, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    instance-of v6, v1, Ljava/lang/reflect/WildcardType;

    .line 44
    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    aget-object v1, v1, v7

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v8, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-static {v6}, Lcom/google/gson/internal/$Gson$Types;->checkArgument(Z)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v3, v8}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    new-instance v8, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v3, v6, v8}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    aget-object v4, v1, v7

    .line 86
    .line 87
    :cond_3
    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    .line 88
    .line 89
    invoke-direct {v1, v4}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v5, p2}, Lokhttp3/FormBody$Builder;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v6, Lcom/google/gson/internal/bind/ArrayTypeAdapter;

    .line 101
    .line 102
    invoke-direct {v6, p1, v4, v1, v0}, Lcom/google/gson/internal/bind/ArrayTypeAdapter;-><init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    return-object v6

    .line 106
    :pswitch_1
    iget-object v3, p2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 107
    .line 108
    iget-object v8, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 109
    .line 110
    const-class v9, Ljava/util/Map;

    .line 111
    .line 112
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-nez v10, :cond_4

    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_4
    const-class v6, Ljava/util/Properties;

    .line 121
    .line 122
    const/4 v10, 0x2

    .line 123
    const/4 v11, 0x1

    .line 124
    if-ne v3, v6, :cond_5

    .line 125
    .line 126
    new-array v3, v10, [Ljava/lang/reflect/Type;

    .line 127
    .line 128
    const-class v4, Ljava/lang/String;

    .line 129
    .line 130
    aput-object v4, v3, v7

    .line 131
    .line 132
    aput-object v4, v3, v11

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    instance-of v6, v3, Ljava/lang/reflect/WildcardType;

    .line 136
    .line 137
    if-eqz v6, :cond_6

    .line 138
    .line 139
    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 140
    .line 141
    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    aget-object v3, v3, v7

    .line 146
    .line 147
    :cond_6
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    invoke-static {v6}, Lcom/google/gson/internal/$Gson$Types;->checkArgument(Z)V

    .line 152
    .line 153
    .line 154
    invoke-static {v3, v8, v9}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    new-instance v9, Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-static {v3, v8, v6, v9}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    instance-of v6, v3, Ljava/lang/reflect/ParameterizedType;

    .line 168
    .line 169
    if-eqz v6, :cond_7

    .line 170
    .line 171
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 172
    .line 173
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    goto :goto_2

    .line 178
    :cond_7
    new-array v3, v10, [Ljava/lang/reflect/Type;

    .line 179
    .line 180
    aput-object v4, v3, v7

    .line 181
    .line 182
    aput-object v4, v3, v11

    .line 183
    .line 184
    :goto_2
    aget-object v4, v3, v7

    .line 185
    .line 186
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 187
    .line 188
    if-eq v4, v6, :cond_9

    .line 189
    .line 190
    const-class v6, Ljava/lang/Boolean;

    .line 191
    .line 192
    if-ne v4, v6, :cond_8

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_8
    new-instance v6, Lcom/google/gson/reflect/TypeToken;

    .line 196
    .line 197
    invoke-direct {v6, v4}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v6}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    goto :goto_4

    .line 205
    :cond_9
    :goto_3
    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/google/gson/Gson$1;

    .line 206
    .line 207
    :goto_4
    aget-object v6, v3, v11

    .line 208
    .line 209
    new-instance v8, Lcom/google/gson/reflect/TypeToken;

    .line 210
    .line 211
    invoke-direct {v8, v6}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v8}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {v5, p2}, Lokhttp3/FormBody$Builder;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    move v5, v7

    .line 223
    move-object v7, v0

    .line 224
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

    .line 225
    .line 226
    aget-object v5, v3, v5

    .line 227
    .line 228
    aget-object v3, v3, v11

    .line 229
    .line 230
    move-object v1, v5

    .line 231
    move-object v5, v3

    .line 232
    move-object v3, v1

    .line 233
    move-object v1, p0

    .line 234
    move-object v2, p1

    .line 235
    invoke-direct/range {v0 .. v7}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;-><init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V

    .line 236
    .line 237
    .line 238
    move-object v6, v0

    .line 239
    :goto_5
    return-object v6

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
