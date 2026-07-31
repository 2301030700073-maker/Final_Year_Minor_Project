.class public final Lkotlin/reflect/jvm/internal/KClassImpl$Data;
.super Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final allNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final allStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final declaredNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final declaredStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final descriptor$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final inheritedNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final inheritedStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final qualifiedName$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

.field public final simpleName$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 4
    .line 5
    const-class v2, Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "descriptor"

    .line 12
    .line 13
    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    .line 14
    .line 15
    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v5, "annotations"

    .line 29
    .line 30
    const-string v6, "getAnnotations()Ljava/util/List;"

    .line 31
    .line 32
    invoke-direct {v3, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-instance v4, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const-string v6, "simpleName"

    .line 46
    .line 47
    const-string v7, "getSimpleName()Ljava/lang/String;"

    .line 48
    .line 49
    invoke-direct {v4, v5, v6, v7}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-instance v5, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const-string v7, "qualifiedName"

    .line 63
    .line 64
    const-string v8, "getQualifiedName()Ljava/lang/String;"

    .line 65
    .line 66
    invoke-direct {v5, v6, v7, v8}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v5}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    new-instance v6, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const-string v8, "constructors"

    .line 80
    .line 81
    const-string v9, "getConstructors()Ljava/util/Collection;"

    .line 82
    .line 83
    invoke-direct {v6, v7, v8, v9}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v6}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    new-instance v7, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    const-string v9, "nestedClasses"

    .line 97
    .line 98
    const-string v10, "getNestedClasses()Ljava/util/Collection;"

    .line 99
    .line 100
    invoke-direct {v7, v8, v9, v10}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v7}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    new-instance v8, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    const-string v10, "objectInstance"

    .line 114
    .line 115
    const-string v11, "getObjectInstance()Ljava/lang/Object;"

    .line 116
    .line 117
    invoke-direct {v8, v9, v10, v11}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v8}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    new-instance v9, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    const-string/jumbo v11, "typeParameters"

    .line 131
    .line 132
    .line 133
    const-string v12, "getTypeParameters()Ljava/util/List;"

    .line 134
    .line 135
    invoke-direct {v9, v10, v11, v12}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v9}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    new-instance v10, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    const-string v12, "supertypes"

    .line 149
    .line 150
    const-string v13, "getSupertypes()Ljava/util/List;"

    .line 151
    .line 152
    invoke-direct {v10, v11, v12, v13}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v10}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    new-instance v11, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    const-string v13, "sealedSubclasses"

    .line 166
    .line 167
    const-string v14, "getSealedSubclasses()Ljava/util/List;"

    .line 168
    .line 169
    invoke-direct {v11, v12, v13, v14}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v11}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    new-instance v12, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    const-string v14, "declaredNonStaticMembers"

    .line 183
    .line 184
    const-string v15, "getDeclaredNonStaticMembers()Ljava/util/Collection;"

    .line 185
    .line 186
    invoke-direct {v12, v13, v14, v15}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v12}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    new-instance v13, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    const-string v15, "declaredStaticMembers"

    .line 200
    .line 201
    move-object/from16 v16, v0

    .line 202
    .line 203
    const-string v0, "getDeclaredStaticMembers()Ljava/util/Collection;"

    .line 204
    .line 205
    invoke-direct {v13, v14, v15, v0}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v13}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    new-instance v13, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 215
    .line 216
    .line 217
    move-result-object v14

    .line 218
    const-string v15, "inheritedNonStaticMembers"

    .line 219
    .line 220
    move-object/from16 v17, v0

    .line 221
    .line 222
    const-string v0, "getInheritedNonStaticMembers()Ljava/util/Collection;"

    .line 223
    .line 224
    invoke-direct {v13, v14, v15, v0}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v13}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    new-instance v13, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    const-string v15, "inheritedStaticMembers"

    .line 238
    .line 239
    move-object/from16 v18, v0

    .line 240
    .line 241
    const-string v0, "getInheritedStaticMembers()Ljava/util/Collection;"

    .line 242
    .line 243
    invoke-direct {v13, v14, v15, v0}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v13}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v13, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    const-string v15, "allNonStaticMembers"

    .line 257
    .line 258
    move-object/from16 v19, v0

    .line 259
    .line 260
    const-string v0, "getAllNonStaticMembers()Ljava/util/Collection;"

    .line 261
    .line 262
    invoke-direct {v13, v14, v15, v0}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v13}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-instance v13, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 272
    .line 273
    .line 274
    move-result-object v14

    .line 275
    const-string v15, "allStaticMembers"

    .line 276
    .line 277
    move-object/from16 v20, v0

    .line 278
    .line 279
    const-string v0, "getAllStaticMembers()Ljava/util/Collection;"

    .line 280
    .line 281
    invoke-direct {v13, v14, v15, v0}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v13}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    new-instance v13, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 289
    .line 290
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 291
    .line 292
    .line 293
    move-result-object v14

    .line 294
    const-string v15, "declaredMembers"

    .line 295
    .line 296
    move-object/from16 v21, v0

    .line 297
    .line 298
    const-string v0, "getDeclaredMembers()Ljava/util/Collection;"

    .line 299
    .line 300
    invoke-direct {v13, v14, v15, v0}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v13}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    new-instance v13, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    const-string v14, "allMembers"

    .line 314
    .line 315
    const-string v15, "getAllMembers()Ljava/util/Collection;"

    .line 316
    .line 317
    invoke-direct {v13, v2, v14, v15}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v13}, Lkotlin/jvm/internal/ReflectionFactory;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    const/16 v2, 0x12

    .line 325
    .line 326
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    .line 327
    .line 328
    const/4 v13, 0x0

    .line 329
    aput-object v16, v2, v13

    .line 330
    .line 331
    const/4 v13, 0x1

    .line 332
    aput-object v3, v2, v13

    .line 333
    .line 334
    const/4 v3, 0x2

    .line 335
    aput-object v4, v2, v3

    .line 336
    .line 337
    const/4 v3, 0x3

    .line 338
    aput-object v5, v2, v3

    .line 339
    .line 340
    const/4 v3, 0x4

    .line 341
    aput-object v6, v2, v3

    .line 342
    .line 343
    const/4 v3, 0x5

    .line 344
    aput-object v7, v2, v3

    .line 345
    .line 346
    const/4 v3, 0x6

    .line 347
    aput-object v8, v2, v3

    .line 348
    .line 349
    const/4 v3, 0x7

    .line 350
    aput-object v9, v2, v3

    .line 351
    .line 352
    const/16 v3, 0x8

    .line 353
    .line 354
    aput-object v10, v2, v3

    .line 355
    .line 356
    const/16 v3, 0x9

    .line 357
    .line 358
    aput-object v11, v2, v3

    .line 359
    .line 360
    const/16 v3, 0xa

    .line 361
    .line 362
    aput-object v12, v2, v3

    .line 363
    .line 364
    const/16 v3, 0xb

    .line 365
    .line 366
    aput-object v17, v2, v3

    .line 367
    .line 368
    const/16 v3, 0xc

    .line 369
    .line 370
    aput-object v18, v2, v3

    .line 371
    .line 372
    const/16 v3, 0xd

    .line 373
    .line 374
    aput-object v19, v2, v3

    .line 375
    .line 376
    const/16 v3, 0xe

    .line 377
    .line 378
    aput-object v20, v2, v3

    .line 379
    .line 380
    const/16 v3, 0xf

    .line 381
    .line 382
    aput-object v21, v2, v3

    .line 383
    .line 384
    const/16 v3, 0x10

    .line 385
    .line 386
    aput-object v0, v2, v3

    .line 387
    .line 388
    const/16 v0, 0x11

    .line 389
    .line 390
    aput-object v1, v2, v0

    .line 391
    .line 392
    sput-object v2, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 393
    .line 394
    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KClassImpl;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->descriptor$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 16
    .line 17
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-direct {v0, p0, v3}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 24
    .line 25
    .line 26
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;

    .line 27
    .line 28
    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;Lkotlin/reflect/jvm/internal/KClassImpl$Data;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->simpleName$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 36
    .line 37
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;

    .line 38
    .line 39
    const/4 v4, 0x7

    .line 40
    invoke-direct {v0, p1, v4}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->qualifiedName$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 48
    .line 49
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    invoke-direct {v0, p1, v4}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;

    .line 59
    .line 60
    const/4 v5, 0x5

    .line 61
    invoke-direct {v0, p0, v5}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 65
    .line 66
    .line 67
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2;

    .line 68
    .line 69
    invoke-direct {v0, p0, p1, v4}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 73
    .line 74
    .line 75
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2;

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    invoke-direct {v0, p0, p1, v6}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 82
    .line 83
    .line 84
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;

    .line 85
    .line 86
    const/4 v7, 0x6

    .line 87
    invoke-direct {v0, p0, v7}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 91
    .line 92
    .line 93
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;

    .line 94
    .line 95
    const/4 v8, 0x2

    .line 96
    invoke-direct {v0, p1, v8}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->declaredNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 104
    .line 105
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;

    .line 106
    .line 107
    invoke-direct {v0, p1, v3}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->declaredStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 115
    .line 116
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;

    .line 117
    .line 118
    invoke-direct {v0, p1, v5}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->inheritedNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 126
    .line 127
    new-instance v0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;

    .line 128
    .line 129
    invoke-direct {v0, p1, v7}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->inheritedStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 137
    .line 138
    new-instance p1, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;

    .line 139
    .line 140
    invoke-direct {p1, p0, v4}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->allNonStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 148
    .line 149
    new-instance p1, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;

    .line 150
    .line 151
    invoke-direct {p1, p0, v8}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->allStaticMembers$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 159
    .line 160
    new-instance p1, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;

    .line 161
    .line 162
    invoke-direct {p1, p0, v1}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    .line 163
    .line 164
    .line 165
    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 166
    .line 167
    .line 168
    new-instance p1, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;

    .line 169
    .line 170
    invoke-direct {p1, p0, v6}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$allMembers$2;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;I)V

    .line 171
    .line 172
    .line 173
    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->lazySoft(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 174
    .line 175
    .line 176
    return-void
.end method


# virtual methods
.method public final getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->descriptor$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 16
    .line 17
    return-object p0
.end method
