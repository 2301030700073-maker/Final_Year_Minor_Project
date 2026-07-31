.class public final Lcom/squareup/moshi/MapJsonAdapter$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/squareup/moshi/MapJsonAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static throwIfIsCollectionClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "No JsonAdapter for "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, ", you should probably use "

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, " instead of "

    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, " (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter."

    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method


# virtual methods
.method public final create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 20

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget v0, v0, Lcom/squareup/moshi/MapJsonAdapter$1;->$r8$classId:I

    .line 8
    .line 9
    const-class v3, Ljava/util/Map;

    .line 10
    .line 11
    const-class v4, Ljava/util/Set;

    .line 12
    .line 13
    const-class v5, Ljava/util/List;

    .line 14
    .line 15
    const-class v6, Ljava/util/Collection;

    .line 16
    .line 17
    const-class v7, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    const-class v9, Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v10, 0x2

    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x1

    .line 26
    const/4 v13, 0x0

    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    sget-object v3, Lcom/squareup/moshi/Types;->BOOLEAN_JSON_ADAPTER:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 41
    .line 42
    if-ne v1, v0, :cond_1

    .line 43
    .line 44
    move-object v13, v3

    .line 45
    goto/16 :goto_9

    .line 46
    .line 47
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    sget-object v4, Lcom/squareup/moshi/Types;->BYTE_JSON_ADAPTER:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 50
    .line 51
    if-ne v1, v0, :cond_2

    .line 52
    .line 53
    move-object v13, v4

    .line 54
    goto/16 :goto_9

    .line 55
    .line 56
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    sget-object v5, Lcom/squareup/moshi/Types;->CHARACTER_JSON_ADAPTER:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 59
    .line 60
    if-ne v1, v0, :cond_3

    .line 61
    .line 62
    move-object v13, v5

    .line 63
    goto/16 :goto_9

    .line 64
    .line 65
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    sget-object v6, Lcom/squareup/moshi/Types;->DOUBLE_JSON_ADAPTER:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 68
    .line 69
    if-ne v1, v0, :cond_4

    .line 70
    .line 71
    move-object v13, v6

    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    sget-object v14, Lcom/squareup/moshi/Types;->FLOAT_JSON_ADAPTER:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 77
    .line 78
    if-ne v1, v0, :cond_5

    .line 79
    .line 80
    move-object v13, v14

    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :cond_5
    sget-object v0, Lcom/squareup/moshi/Types;->INTEGER_JSON_ADAPTER:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 84
    .line 85
    if-ne v1, v8, :cond_6

    .line 86
    .line 87
    move-object v13, v0

    .line 88
    goto/16 :goto_9

    .line 89
    .line 90
    :cond_6
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    sget-object v15, Lcom/squareup/moshi/Types;->LONG_JSON_ADAPTER:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 93
    .line 94
    if-ne v1, v8, :cond_7

    .line 95
    .line 96
    move-object v13, v15

    .line 97
    goto/16 :goto_9

    .line 98
    .line 99
    :cond_7
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 100
    .line 101
    sget-object v16, Lcom/squareup/moshi/Types;->SHORT_JSON_ADAPTER:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 102
    .line 103
    if-ne v1, v8, :cond_8

    .line 104
    .line 105
    move-object/from16 v13, v16

    .line 106
    .line 107
    goto/16 :goto_9

    .line 108
    .line 109
    :cond_8
    const-class v8, Ljava/lang/Boolean;

    .line 110
    .line 111
    if-ne v1, v8, :cond_9

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    goto/16 :goto_9

    .line 118
    .line 119
    :cond_9
    const-class v3, Ljava/lang/Byte;

    .line 120
    .line 121
    if-ne v1, v3, :cond_a

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    goto/16 :goto_9

    .line 128
    .line 129
    :cond_a
    const-class v3, Ljava/lang/Character;

    .line 130
    .line 131
    if-ne v1, v3, :cond_b

    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    goto/16 :goto_9

    .line 138
    .line 139
    :cond_b
    const-class v3, Ljava/lang/Double;

    .line 140
    .line 141
    if-ne v1, v3, :cond_c

    .line 142
    .line 143
    invoke-virtual {v6}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    goto/16 :goto_9

    .line 148
    .line 149
    :cond_c
    const-class v3, Ljava/lang/Float;

    .line 150
    .line 151
    if-ne v1, v3, :cond_d

    .line 152
    .line 153
    invoke-virtual {v14}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    goto/16 :goto_9

    .line 158
    .line 159
    :cond_d
    const-class v3, Ljava/lang/Integer;

    .line 160
    .line 161
    if-ne v1, v3, :cond_e

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    goto/16 :goto_9

    .line 168
    .line 169
    :cond_e
    const-class v0, Ljava/lang/Long;

    .line 170
    .line 171
    if-ne v1, v0, :cond_f

    .line 172
    .line 173
    invoke-virtual {v15}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    goto/16 :goto_9

    .line 178
    .line 179
    :cond_f
    const-class v0, Ljava/lang/Short;

    .line 180
    .line 181
    if-ne v1, v0, :cond_10

    .line 182
    .line 183
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    goto/16 :goto_9

    .line 188
    .line 189
    :cond_10
    if-ne v1, v7, :cond_11

    .line 190
    .line 191
    sget-object v0, Lcom/squareup/moshi/Types;->STRING_JSON_ADAPTER:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    goto/16 :goto_9

    .line 198
    .line 199
    :cond_11
    if-ne v1, v9, :cond_12

    .line 200
    .line 201
    new-instance v0, Lcom/squareup/moshi/StandardJsonAdapters$ObjectJsonAdapter;

    .line 202
    .line 203
    invoke-direct {v0, v2}, Lcom/squareup/moshi/StandardJsonAdapters$ObjectJsonAdapter;-><init>(Lcom/squareup/moshi/Moshi;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    goto/16 :goto_9

    .line 211
    .line 212
    :cond_12
    invoke-static {v1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget-object v3, Lcom/squareup/moshi/internal/Util;->NO_ANNOTATIONS:Ljava/util/Set;

    .line 217
    .line 218
    const-class v3, [Ljava/lang/reflect/Type;

    .line 219
    .line 220
    const-class v4, Lcom/squareup/moshi/JsonClass;

    .line 221
    .line 222
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Lcom/squareup/moshi/JsonClass;

    .line 227
    .line 228
    if-eqz v4, :cond_17

    .line 229
    .line 230
    invoke-interface {v4}, Lcom/squareup/moshi/JsonClass;->generateAdapter()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_13

    .line 235
    .line 236
    goto/16 :goto_7

    .line 237
    .line 238
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v6, "$"

    .line 248
    .line 249
    const-string v7, "_"

    .line 250
    .line 251
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v4, "JsonAdapter"

    .line 259
    .line 260
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-static {v4, v12, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :try_start_1
    instance-of v5, v1, Ljava/lang/reflect/ParameterizedType;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    .line 277
    const-class v6, Lcom/squareup/moshi/Moshi;

    .line 278
    .line 279
    if-eqz v5, :cond_14

    .line 280
    .line 281
    :try_start_2
    move-object v5, v1

    .line 282
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 283
    .line 284
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 285
    .line 286
    .line 287
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 288
    :try_start_3
    new-array v7, v10, [Ljava/lang/Class;

    .line 289
    .line 290
    aput-object v6, v7, v11

    .line 291
    .line 292
    aput-object v3, v7, v12

    .line 293
    .line 294
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    new-array v7, v10, [Ljava/lang/Object;

    .line 299
    .line 300
    aput-object v2, v7, v11

    .line 301
    .line 302
    aput-object v5, v7, v12
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    .line 303
    .line 304
    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    goto :goto_1

    .line 307
    :catch_1
    move-exception v0

    .line 308
    goto :goto_2

    .line 309
    :catch_2
    move-exception v0

    .line 310
    goto :goto_3

    .line 311
    :catch_3
    move-exception v0

    .line 312
    goto/16 :goto_6

    .line 313
    .line 314
    :catch_4
    :try_start_4
    new-array v2, v12, [Ljava/lang/Class;

    .line 315
    .line 316
    aput-object v3, v2, v11

    .line 317
    .line 318
    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    new-array v7, v12, [Ljava/lang/Object;

    .line 323
    .line 324
    aput-object v5, v7, v11
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0

    .line 325
    .line 326
    goto :goto_0

    .line 327
    :catch_5
    move-exception v0

    .line 328
    goto :goto_4

    .line 329
    :cond_14
    :try_start_5
    new-array v3, v12, [Ljava/lang/Class;

    .line 330
    .line 331
    aput-object v6, v3, v11

    .line 332
    .line 333
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    new-array v7, v12, [Ljava/lang/Object;

    .line 338
    .line 339
    aput-object v2, v7, v11
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_0

    .line 340
    .line 341
    goto :goto_0

    .line 342
    :catch_6
    :try_start_6
    invoke-virtual {v4, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    new-array v7, v11, [Ljava/lang/Object;

    .line 347
    .line 348
    :goto_0
    invoke-virtual {v6, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    check-cast v2, Lcom/squareup/moshi/JsonAdapter;

    .line 356
    .line 357
    invoke-virtual {v2}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 358
    .line 359
    .line 360
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_0

    .line 361
    goto :goto_8

    .line 362
    :catch_7
    move-exception v0

    .line 363
    move-object v4, v13

    .line 364
    goto :goto_4

    .line 365
    :goto_1
    invoke-static {v0}, Lcom/squareup/moshi/internal/Util;->rethrowCause(Ljava/lang/reflect/InvocationTargetException;)V

    .line 366
    .line 367
    .line 368
    throw v13

    .line 369
    :goto_2
    const-string v2, "Failed to instantiate the generated JsonAdapter for "

    .line 370
    .line 371
    invoke-static {v2, v1, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 372
    .line 373
    .line 374
    goto :goto_9

    .line 375
    :goto_3
    const-string v2, "Failed to access the generated JsonAdapter for "

    .line 376
    .line 377
    invoke-static {v2, v1, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 378
    .line 379
    .line 380
    goto :goto_9

    .line 381
    :goto_4
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    .line 382
    .line 383
    if-nez v2, :cond_16

    .line 384
    .line 385
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    array-length v2, v2

    .line 390
    if-nez v2, :cond_15

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_15
    new-instance v2, Ljava/lang/RuntimeException;

    .line 394
    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v5, "Failed to find the generated JsonAdapter constructor for \'"

    .line 398
    .line 399
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    const-string v4, "\'. Suspiciously, the type was not parameterized but the target class \'"

    .line 410
    .line 411
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v1, "\' is generic. Consider using Types#newParameterizedType() to define these missing type variables."

    .line 418
    .line 419
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    .line 428
    .line 429
    throw v2

    .line 430
    :cond_16
    :goto_5
    const-string v2, "Failed to find the generated JsonAdapter constructor for "

    .line 431
    .line 432
    invoke-static {v2, v1, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 433
    .line 434
    .line 435
    goto :goto_9

    .line 436
    :goto_6
    const-string v2, "Failed to find the generated JsonAdapter class for "

    .line 437
    .line 438
    invoke-static {v2, v1, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 439
    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_17
    :goto_7
    move-object v1, v13

    .line 443
    :goto_8
    if-eqz v1, :cond_18

    .line 444
    .line 445
    move-object v13, v1

    .line 446
    goto :goto_9

    .line 447
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-eqz v1, :cond_19

    .line 452
    .line 453
    new-instance v1, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;

    .line 454
    .line 455
    invoke-direct {v1, v0}, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;-><init>(Ljava/lang/Class;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 459
    .line 460
    .line 461
    move-result-object v13

    .line 462
    :cond_19
    :goto_9
    :pswitch_0
    return-object v13

    .line 463
    :pswitch_1
    invoke-static {v1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-nez v3, :cond_1a

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_1a
    if-eq v0, v5, :cond_1c

    .line 475
    .line 476
    if-ne v0, v6, :cond_1b

    .line 477
    .line 478
    goto :goto_a

    .line 479
    :cond_1b
    if-ne v0, v4, :cond_1d

    .line 480
    .line 481
    invoke-static {v1}, Lcom/squareup/moshi/Types;->collectionElementType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    sget-object v1, Lcom/squareup/moshi/internal/Util;->NO_ANNOTATIONS:Ljava/util/Set;

    .line 486
    .line 487
    invoke-virtual {v2, v0, v1, v13}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/JsonAdapter;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    new-instance v1, Lcom/squareup/moshi/CollectionJsonAdapter$2;

    .line 492
    .line 493
    invoke-direct {v1, v0, v12}, Lcom/squareup/moshi/CollectionJsonAdapter$2;-><init>(Lcom/squareup/moshi/JsonAdapter;I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 497
    .line 498
    .line 499
    move-result-object v13

    .line 500
    goto :goto_b

    .line 501
    :cond_1c
    :goto_a
    invoke-static {v1}, Lcom/squareup/moshi/Types;->collectionElementType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    sget-object v1, Lcom/squareup/moshi/internal/Util;->NO_ANNOTATIONS:Ljava/util/Set;

    .line 506
    .line 507
    invoke-virtual {v2, v0, v1, v13}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/JsonAdapter;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    new-instance v1, Lcom/squareup/moshi/CollectionJsonAdapter$2;

    .line 512
    .line 513
    invoke-direct {v1, v0, v11}, Lcom/squareup/moshi/CollectionJsonAdapter$2;-><init>(Lcom/squareup/moshi/JsonAdapter;I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 517
    .line 518
    .line 519
    move-result-object v13

    .line 520
    :cond_1d
    :goto_b
    return-object v13

    .line 521
    :pswitch_2
    instance-of v0, v1, Ljava/lang/Class;

    .line 522
    .line 523
    if-nez v0, :cond_1f

    .line 524
    .line 525
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    .line 526
    .line 527
    if-nez v0, :cond_1f

    .line 528
    .line 529
    :cond_1e
    :goto_c
    move-object/from16 v16, v13

    .line 530
    .line 531
    goto/16 :goto_18

    .line 532
    .line 533
    :cond_1f
    invoke-static {v1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 538
    .line 539
    .line 540
    move-result v7

    .line 541
    if-nez v7, :cond_1e

    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    if-eqz v7, :cond_20

    .line 548
    .line 549
    goto :goto_c

    .line 550
    :cond_20
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 551
    .line 552
    .line 553
    move-result v7

    .line 554
    if-nez v7, :cond_21

    .line 555
    .line 556
    goto :goto_c

    .line 557
    :cond_21
    invoke-static {v0}, Lcom/squareup/moshi/internal/Util;->isPlatformType(Ljava/lang/Class;)Z

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    if-eqz v7, :cond_23

    .line 562
    .line 563
    invoke-static {v1, v5}, Lcom/squareup/moshi/MapJsonAdapter$1;->throwIfIsCollectionClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    .line 564
    .line 565
    .line 566
    invoke-static {v1, v4}, Lcom/squareup/moshi/MapJsonAdapter$1;->throwIfIsCollectionClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    .line 567
    .line 568
    .line 569
    invoke-static {v1, v3}, Lcom/squareup/moshi/MapJsonAdapter$1;->throwIfIsCollectionClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    .line 570
    .line 571
    .line 572
    invoke-static {v1, v6}, Lcom/squareup/moshi/MapJsonAdapter$1;->throwIfIsCollectionClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    .line 573
    .line 574
    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    const-string v3, "Platform "

    .line 578
    .line 579
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    .line 590
    .line 591
    if-eqz v2, :cond_22

    .line 592
    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    const-string v0, " in "

    .line 602
    .line 603
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    :cond_22
    const-string v1, " requires explicit JsonAdapter to be registered"

    .line 614
    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_1a

    .line 623
    .line 624
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    if-nez v3, :cond_37

    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    if-nez v3, :cond_36

    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    if-eqz v3, :cond_25

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 643
    .line 644
    .line 645
    move-result v3

    .line 646
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_24

    .line 651
    .line 652
    goto :goto_d

    .line 653
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    const-string v1, "Cannot serialize non-static nested class "

    .line 658
    .line 659
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    goto/16 :goto_1a

    .line 667
    .line 668
    :cond_25
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 673
    .line 674
    .line 675
    move-result v3

    .line 676
    if-nez v3, :cond_35

    .line 677
    .line 678
    sget-object v3, Lcom/squareup/moshi/internal/Util;->METADATA:Ljava/lang/Class;

    .line 679
    .line 680
    if-eqz v3, :cond_27

    .line 681
    .line 682
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    if-nez v3, :cond_26

    .line 687
    .line 688
    goto :goto_e

    .line 689
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    const-string v1, ". Reflective serialization of Kotlin classes without using kotlin-reflect has undefined and unexpected behavior. Please use KotlinJsonAdapterFactory from the moshi-kotlin artifact or use code gen from the moshi-kotlin-codegen artifact."

    .line 694
    .line 695
    const-string v2, "Cannot serialize Kotlin type "

    .line 696
    .line 697
    invoke-static {v0, v1, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    goto/16 :goto_1a

    .line 701
    .line 702
    :cond_27
    :goto_e
    const-string v3, "newInstance"

    .line 703
    .line 704
    const-class v4, Ljava/io/ObjectStreamClass;

    .line 705
    .line 706
    const-class v5, Ljava/lang/Class;

    .line 707
    .line 708
    :try_start_7
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    invoke-virtual {v6, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 713
    .line 714
    .line 715
    new-instance v7, Lcom/squareup/moshi/ClassFactory$1;

    .line 716
    .line 717
    invoke-direct {v7, v6, v0}, Lcom/squareup/moshi/ClassFactory$1;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_8

    .line 718
    .line 719
    .line 720
    goto :goto_f

    .line 721
    :catch_8
    :try_start_8
    const-string v6, "sun.misc.Unsafe"

    .line 722
    .line 723
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    move-result-object v6

    .line 727
    const-string v7, "theUnsafe"

    .line 728
    .line 729
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 730
    .line 731
    .line 732
    move-result-object v7

    .line 733
    invoke-virtual {v7, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v7

    .line 740
    const-string v14, "allocateInstance"

    .line 741
    .line 742
    new-array v15, v12, [Ljava/lang/Class;

    .line 743
    .line 744
    aput-object v5, v15, v11

    .line 745
    .line 746
    invoke-virtual {v6, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 747
    .line 748
    .line 749
    move-result-object v6

    .line 750
    new-instance v14, Lcom/squareup/moshi/ClassFactory$2;

    .line 751
    .line 752
    invoke-direct {v14, v6, v7, v0}, Lcom/squareup/moshi/ClassFactory$2;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_9

    .line 753
    .line 754
    .line 755
    move-object v7, v14

    .line 756
    goto :goto_f

    .line 757
    :catch_9
    :try_start_9
    const-string v6, "getConstructorId"

    .line 758
    .line 759
    new-array v7, v12, [Ljava/lang/Class;

    .line 760
    .line 761
    aput-object v5, v7, v11

    .line 762
    .line 763
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 764
    .line 765
    .line 766
    move-result-object v6

    .line 767
    invoke-virtual {v6, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 768
    .line 769
    .line 770
    new-array v7, v12, [Ljava/lang/Object;

    .line 771
    .line 772
    aput-object v9, v7, v11

    .line 773
    .line 774
    invoke-virtual {v6, v13, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v6

    .line 778
    check-cast v6, Ljava/lang/Integer;

    .line 779
    .line 780
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 781
    .line 782
    .line 783
    move-result v6

    .line 784
    new-array v7, v10, [Ljava/lang/Class;

    .line 785
    .line 786
    aput-object v5, v7, v11

    .line 787
    .line 788
    aput-object v8, v7, v12

    .line 789
    .line 790
    invoke-virtual {v4, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    invoke-virtual {v4, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 795
    .line 796
    .line 797
    new-instance v7, Lcom/squareup/moshi/ClassFactory$3;

    .line 798
    .line 799
    invoke-direct {v7, v4, v0, v6}, Lcom/squareup/moshi/ClassFactory$3;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_b

    .line 800
    .line 801
    .line 802
    goto :goto_f

    .line 803
    :catch_a
    move-exception v0

    .line 804
    move-object/from16 v16, v13

    .line 805
    .line 806
    goto/16 :goto_19

    .line 807
    .line 808
    :catch_b
    :try_start_a
    const-class v4, Ljava/io/ObjectInputStream;

    .line 809
    .line 810
    new-array v6, v10, [Ljava/lang/Class;

    .line 811
    .line 812
    aput-object v5, v6, v11

    .line 813
    .line 814
    aput-object v5, v6, v12

    .line 815
    .line 816
    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    invoke-virtual {v3, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 821
    .line 822
    .line 823
    new-instance v7, Lcom/squareup/moshi/ClassFactory$1;

    .line 824
    .line 825
    invoke-direct {v7, v3, v0}, Lcom/squareup/moshi/ClassFactory$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 826
    .line 827
    .line 828
    :goto_f
    new-instance v0, Ljava/util/TreeMap;

    .line 829
    .line 830
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 831
    .line 832
    .line 833
    :goto_10
    if-eq v1, v9, :cond_34

    .line 834
    .line 835
    invoke-static {v1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 836
    .line 837
    .line 838
    move-result-object v3

    .line 839
    invoke-static {v3}, Lcom/squareup/moshi/internal/Util;->isPlatformType(Ljava/lang/Class;)Z

    .line 840
    .line 841
    .line 842
    move-result v4

    .line 843
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    array-length v6, v5

    .line 848
    move v8, v11

    .line 849
    :goto_11
    if-ge v8, v6, :cond_33

    .line 850
    .line 851
    aget-object v10, v5, v8

    .line 852
    .line 853
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 854
    .line 855
    .line 856
    move-result v14

    .line 857
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 858
    .line 859
    .line 860
    move-result v15

    .line 861
    if-nez v15, :cond_2a

    .line 862
    .line 863
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 864
    .line 865
    .line 866
    move-result v15

    .line 867
    if-eqz v15, :cond_28

    .line 868
    .line 869
    goto :goto_12

    .line 870
    :cond_28
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 871
    .line 872
    .line 873
    move-result v15

    .line 874
    if-nez v15, :cond_29

    .line 875
    .line 876
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 877
    .line 878
    .line 879
    move-result v14

    .line 880
    if-nez v14, :cond_29

    .line 881
    .line 882
    if-nez v4, :cond_2a

    .line 883
    .line 884
    :cond_29
    const-class v14, Lcom/squareup/moshi/Json;

    .line 885
    .line 886
    invoke-virtual {v10, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 887
    .line 888
    .line 889
    move-result-object v14

    .line 890
    check-cast v14, Lcom/squareup/moshi/Json;

    .line 891
    .line 892
    if-eqz v14, :cond_2b

    .line 893
    .line 894
    invoke-interface {v14}, Lcom/squareup/moshi/Json;->ignore()Z

    .line 895
    .line 896
    .line 897
    move-result v15

    .line 898
    if-eqz v15, :cond_2b

    .line 899
    .line 900
    :cond_2a
    :goto_12
    move-object/from16 p1, v3

    .line 901
    .line 902
    move/from16 p2, v4

    .line 903
    .line 904
    move-object/from16 v19, v5

    .line 905
    .line 906
    move/from16 p0, v11

    .line 907
    .line 908
    move-object/from16 v16, v13

    .line 909
    .line 910
    goto/16 :goto_17

    .line 911
    .line 912
    :cond_2b
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 913
    .line 914
    .line 915
    move-result-object v15

    .line 916
    move/from16 p0, v11

    .line 917
    .line 918
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 919
    .line 920
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 921
    .line 922
    .line 923
    invoke-static {v1, v3, v15, v11}, Lcom/squareup/moshi/internal/Util;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/LinkedHashSet;)Ljava/lang/reflect/Type;

    .line 924
    .line 925
    .line 926
    move-result-object v11

    .line 927
    invoke-interface {v10}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 928
    .line 929
    .line 930
    move-result-object v15

    .line 931
    move-object/from16 v16, v13

    .line 932
    .line 933
    array-length v13, v15

    .line 934
    move/from16 v12, p0

    .line 935
    .line 936
    move-object/from16 v18, v16

    .line 937
    .line 938
    :goto_13
    if-ge v12, v13, :cond_2e

    .line 939
    .line 940
    move-object/from16 p1, v3

    .line 941
    .line 942
    aget-object v3, v15, v12

    .line 943
    .line 944
    move/from16 p2, v4

    .line 945
    .line 946
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    move-result-object v4

    .line 950
    move-object/from16 v19, v5

    .line 951
    .line 952
    const-class v5, Lcom/squareup/moshi/JsonQualifier;

    .line 953
    .line 954
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 955
    .line 956
    .line 957
    move-result v4

    .line 958
    if-eqz v4, :cond_2d

    .line 959
    .line 960
    if-nez v18, :cond_2c

    .line 961
    .line 962
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 963
    .line 964
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 965
    .line 966
    .line 967
    goto :goto_14

    .line 968
    :cond_2c
    move-object/from16 v4, v18

    .line 969
    .line 970
    :goto_14
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    move-object/from16 v18, v4

    .line 974
    .line 975
    :cond_2d
    add-int/lit8 v12, v12, 0x1

    .line 976
    .line 977
    move-object/from16 v3, p1

    .line 978
    .line 979
    move/from16 v4, p2

    .line 980
    .line 981
    move-object/from16 v5, v19

    .line 982
    .line 983
    goto :goto_13

    .line 984
    :cond_2e
    move-object/from16 p1, v3

    .line 985
    .line 986
    move/from16 p2, v4

    .line 987
    .line 988
    move-object/from16 v19, v5

    .line 989
    .line 990
    if-eqz v18, :cond_2f

    .line 991
    .line 992
    invoke-static/range {v18 .. v18}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    goto :goto_15

    .line 997
    :cond_2f
    sget-object v3, Lcom/squareup/moshi/internal/Util;->NO_ANNOTATIONS:Ljava/util/Set;

    .line 998
    .line 999
    :goto_15
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v4

    .line 1003
    invoke-virtual {v2, v11, v3, v4}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/JsonAdapter;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v3

    .line 1007
    const/4 v5, 0x1

    .line 1008
    invoke-virtual {v10, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1009
    .line 1010
    .line 1011
    if-nez v14, :cond_30

    .line 1012
    .line 1013
    goto :goto_16

    .line 1014
    :cond_30
    invoke-interface {v14}, Lcom/squareup/moshi/Json;->name()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v5

    .line 1018
    const-string v11, "\u0000"

    .line 1019
    .line 1020
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v11

    .line 1024
    if-eqz v11, :cond_31

    .line 1025
    .line 1026
    goto :goto_16

    .line 1027
    :cond_31
    move-object v4, v5

    .line 1028
    :goto_16
    new-instance v5, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;

    .line 1029
    .line 1030
    invoke-direct {v5, v4, v10, v3}, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/squareup/moshi/JsonAdapter;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    check-cast v3, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;

    .line 1038
    .line 1039
    if-nez v3, :cond_32

    .line 1040
    .line 1041
    goto :goto_17

    .line 1042
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1043
    .line 1044
    iget-object v1, v3, Lcom/squareup/moshi/ClassJsonAdapter$FieldBinding;->field:Ljava/lang/reflect/Field;

    .line 1045
    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    const-string v3, "Conflicting fields:\n    "

    .line 1049
    .line 1050
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    const-string v1, "\n    "

    .line 1057
    .line 1058
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v1

    .line 1068
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    throw v0

    .line 1072
    :goto_17
    add-int/lit8 v8, v8, 0x1

    .line 1073
    .line 1074
    move/from16 v11, p0

    .line 1075
    .line 1076
    move-object/from16 v3, p1

    .line 1077
    .line 1078
    move/from16 v4, p2

    .line 1079
    .line 1080
    move-object/from16 v13, v16

    .line 1081
    .line 1082
    move-object/from16 v5, v19

    .line 1083
    .line 1084
    const/4 v12, 0x1

    .line 1085
    goto/16 :goto_11

    .line 1086
    .line 1087
    :cond_33
    move/from16 p0, v11

    .line 1088
    .line 1089
    move-object/from16 v16, v13

    .line 1090
    .line 1091
    invoke-static {v1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v3

    .line 1095
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v4

    .line 1099
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 1100
    .line 1101
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1102
    .line 1103
    .line 1104
    invoke-static {v1, v3, v4, v5}, Lcom/squareup/moshi/internal/Util;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/LinkedHashSet;)Ljava/lang/reflect/Type;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v1

    .line 1108
    const/4 v12, 0x1

    .line 1109
    goto/16 :goto_10

    .line 1110
    .line 1111
    :cond_34
    new-instance v1, Lcom/squareup/moshi/ClassJsonAdapter;

    .line 1112
    .line 1113
    invoke-direct {v1, v7, v0}, Lcom/squareup/moshi/ClassJsonAdapter;-><init>(Lcom/squareup/moshi/Types;Ljava/util/TreeMap;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v13

    .line 1120
    goto :goto_1a

    .line 1121
    :catch_c
    move-object/from16 v16, v13

    .line 1122
    .line 1123
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    const-string v1, "cannot construct instances of "

    .line 1128
    .line 1129
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v0

    .line 1133
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    :goto_18
    move-object/from16 v13, v16

    .line 1137
    .line 1138
    goto :goto_1a

    .line 1139
    :goto_19
    invoke-static {v0}, Lcom/squareup/moshi/internal/Util;->rethrowCause(Ljava/lang/reflect/InvocationTargetException;)V

    .line 1140
    .line 1141
    .line 1142
    throw v16

    .line 1143
    :catch_d
    new-instance v0, Ljava/lang/AssertionError;

    .line 1144
    .line 1145
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 1146
    .line 1147
    .line 1148
    throw v0

    .line 1149
    :catch_e
    new-instance v0, Ljava/lang/AssertionError;

    .line 1150
    .line 1151
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 1152
    .line 1153
    .line 1154
    throw v0

    .line 1155
    :cond_35
    move-object/from16 v16, v13

    .line 1156
    .line 1157
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    const-string v1, "Cannot serialize abstract class "

    .line 1162
    .line 1163
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    goto :goto_1a

    .line 1171
    :cond_36
    move-object/from16 v16, v13

    .line 1172
    .line 1173
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    const-string v1, "Cannot serialize local class "

    .line 1178
    .line 1179
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    goto :goto_1a

    .line 1187
    :cond_37
    move-object/from16 v16, v13

    .line 1188
    .line 1189
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    const-string v1, "Cannot serialize anonymous class "

    .line 1194
    .line 1195
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    :goto_1a
    return-object v13

    .line 1203
    :pswitch_3
    move-object/from16 v16, v13

    .line 1204
    .line 1205
    instance-of v0, v1, Ljava/lang/reflect/GenericArrayType;

    .line 1206
    .line 1207
    if-eqz v0, :cond_38

    .line 1208
    .line 1209
    move-object v0, v1

    .line 1210
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 1211
    .line 1212
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v0

    .line 1216
    goto :goto_1b

    .line 1217
    :cond_38
    instance-of v0, v1, Ljava/lang/Class;

    .line 1218
    .line 1219
    if-eqz v0, :cond_39

    .line 1220
    .line 1221
    move-object v0, v1

    .line 1222
    check-cast v0, Ljava/lang/Class;

    .line 1223
    .line 1224
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    goto :goto_1b

    .line 1229
    :cond_39
    move-object/from16 v0, v16

    .line 1230
    .line 1231
    :goto_1b
    if-nez v0, :cond_3a

    .line 1232
    .line 1233
    goto :goto_1c

    .line 1234
    :cond_3a
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 1235
    .line 1236
    .line 1237
    move-result v1

    .line 1238
    if-nez v1, :cond_3b

    .line 1239
    .line 1240
    :goto_1c
    move-object/from16 v13, v16

    .line 1241
    .line 1242
    goto :goto_1d

    .line 1243
    :cond_3b
    invoke-static {v0}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v1

    .line 1247
    sget-object v3, Lcom/squareup/moshi/internal/Util;->NO_ANNOTATIONS:Ljava/util/Set;

    .line 1248
    .line 1249
    move-object/from16 v4, v16

    .line 1250
    .line 1251
    invoke-virtual {v2, v0, v3, v4}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/JsonAdapter;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    new-instance v2, Lcom/squareup/moshi/MapJsonAdapter;

    .line 1256
    .line 1257
    invoke-direct {v2, v1, v0}, Lcom/squareup/moshi/MapJsonAdapter;-><init>(Ljava/lang/Class;Lcom/squareup/moshi/JsonAdapter;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v2}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v13

    .line 1264
    :goto_1d
    return-object v13

    .line 1265
    :pswitch_4
    move/from16 p0, v11

    .line 1266
    .line 1267
    move-object v4, v13

    .line 1268
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 1269
    .line 1270
    .line 1271
    move-result v0

    .line 1272
    if-nez v0, :cond_3c

    .line 1273
    .line 1274
    goto :goto_1e

    .line 1275
    :cond_3c
    invoke-static {v1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    if-eq v0, v3, :cond_3d

    .line 1280
    .line 1281
    :goto_1e
    move-object v13, v4

    .line 1282
    goto :goto_21

    .line 1283
    :cond_3d
    const-class v5, Ljava/util/Properties;

    .line 1284
    .line 1285
    if-ne v1, v5, :cond_3e

    .line 1286
    .line 1287
    new-array v0, v10, [Ljava/lang/reflect/Type;

    .line 1288
    .line 1289
    aput-object v7, v0, p0

    .line 1290
    .line 1291
    const/16 v17, 0x1

    .line 1292
    .line 1293
    aput-object v7, v0, v17

    .line 1294
    .line 1295
    :goto_1f
    const/16 v17, 0x1

    .line 1296
    .line 1297
    goto :goto_20

    .line 1298
    :cond_3e
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v5

    .line 1302
    if-eqz v5, :cond_40

    .line 1303
    .line 1304
    invoke-static {v1, v0, v3}, Lcom/squareup/moshi/internal/Util;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v3

    .line 1308
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1309
    .line 1310
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1311
    .line 1312
    .line 1313
    invoke-static {v1, v0, v3, v4}, Lcom/squareup/moshi/internal/Util;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/LinkedHashSet;)Ljava/lang/reflect/Type;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 1318
    .line 1319
    if-eqz v1, :cond_3f

    .line 1320
    .line 1321
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1322
    .line 1323
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    goto :goto_1f

    .line 1328
    :cond_3f
    new-array v0, v10, [Ljava/lang/reflect/Type;

    .line 1329
    .line 1330
    aput-object v9, v0, p0

    .line 1331
    .line 1332
    const/16 v17, 0x1

    .line 1333
    .line 1334
    aput-object v9, v0, v17

    .line 1335
    .line 1336
    :goto_20
    new-instance v1, Lcom/squareup/moshi/MapJsonAdapter;

    .line 1337
    .line 1338
    aget-object v3, v0, p0

    .line 1339
    .line 1340
    aget-object v0, v0, v17

    .line 1341
    .line 1342
    invoke-direct {v1, v2, v3, v0}, Lcom/squareup/moshi/MapJsonAdapter;-><init>(Lcom/squareup/moshi/Moshi;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/internal/NullSafeJsonAdapter;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v13

    .line 1349
    goto :goto_21

    .line 1350
    :cond_40
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 1351
    .line 1352
    .line 1353
    goto :goto_1e

    .line 1354
    :goto_21
    return-object v13

    .line 1355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
