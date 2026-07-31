.class public final Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final Array:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final BASE_ANNOTATION_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_COLLECTIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_COROUTINES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_ENUMS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_KOTLIN_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_RANGES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final BASE_REFLECT_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final EnumEntries:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final KFunction:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final MutableList:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final MutableMap:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final MutableSet:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final String:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final UByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final UInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final ULong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final UShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

.field public static final primitiveTypes:Ljava/util/Set;

.field public static final unsignedTypes:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2
    .line 3
    const-string v1, "kotlin"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_KOTLIN_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 9
    .line 10
    const-string v1, "reflect"

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_REFLECT_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 21
    .line 22
    const-string v2, "collections"

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_COLLECTIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 33
    .line 34
    const-string v3, "ranges"

    .line 35
    .line 36
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_RANGES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 45
    .line 46
    const-string v4, "jvm"

    .line 47
    .line 48
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v5, "internal"

    .line 57
    .line 58
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v4, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 63
    .line 64
    .line 65
    const-string v4, "annotation"

    .line 66
    .line 67
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sput-object v4, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ANNOTATION_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 76
    .line 77
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v0, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-string v6, "ir"

    .line 86
    .line 87
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v5, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 92
    .line 93
    .line 94
    const-string v6, "coroutines"

    .line 95
    .line 96
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v0, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_COROUTINES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 105
    .line 106
    const-string v7, "enums"

    .line 107
    .line 108
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v0, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    sput-object v7, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ENUMS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 117
    .line 118
    const/4 v7, 0x7

    .line 119
    new-array v8, v7, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    aput-object v0, v8, v9

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    aput-object v2, v8, v0

    .line 126
    .line 127
    const/4 v2, 0x2

    .line 128
    aput-object v3, v8, v2

    .line 129
    .line 130
    const/4 v3, 0x3

    .line 131
    aput-object v4, v8, v3

    .line 132
    .line 133
    const/4 v4, 0x4

    .line 134
    aput-object v1, v8, v4

    .line 135
    .line 136
    const/4 v1, 0x5

    .line 137
    aput-object v5, v8, v1

    .line 138
    .line 139
    const/4 v5, 0x6

    .line 140
    aput-object v6, v8, v5

    .line 141
    .line 142
    invoke-static {v8}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    const-string v6, "Nothing"

    .line 146
    .line 147
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 148
    .line 149
    .line 150
    const-string v6, "Unit"

    .line 151
    .line 152
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 153
    .line 154
    .line 155
    const-string v6, "Any"

    .line 156
    .line 157
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 158
    .line 159
    .line 160
    const-string v6, "Enum"

    .line 161
    .line 162
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 163
    .line 164
    .line 165
    const-string v6, "Annotation"

    .line 166
    .line 167
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 168
    .line 169
    .line 170
    const-string v6, "Array"

    .line 171
    .line 172
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->Array:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 177
    .line 178
    const-string v6, "Boolean"

    .line 179
    .line 180
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    const-string v8, "Char"

    .line 185
    .line 186
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    const-string v10, "Byte"

    .line 191
    .line 192
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    const-string v11, "Short"

    .line 197
    .line 198
    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    const-string v12, "Int"

    .line 203
    .line 204
    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    const-string v13, "Long"

    .line 209
    .line 210
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    const-string v14, "Float"

    .line 215
    .line 216
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 217
    .line 218
    .line 219
    move-result-object v14

    .line 220
    const-string v15, "Double"

    .line 221
    .line 222
    invoke-static {v15}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 227
    .line 228
    .line 229
    move-result-object v16

    .line 230
    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 231
    .line 232
    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 233
    .line 234
    .line 235
    move-result-object v16

    .line 236
    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 237
    .line 238
    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 239
    .line 240
    .line 241
    move-result-object v16

    .line 242
    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 243
    .line 244
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->unsignedId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 245
    .line 246
    .line 247
    move-result-object v16

    .line 248
    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->ULong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 249
    .line 250
    const-string v16, "CharSequence"

    .line 251
    .line 252
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 253
    .line 254
    .line 255
    const-string v16, "String"

    .line 256
    .line 257
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 258
    .line 259
    .line 260
    move-result-object v16

    .line 261
    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->String:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 262
    .line 263
    const-string v16, "Throwable"

    .line 264
    .line 265
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 266
    .line 267
    .line 268
    const-string v16, "Cloneable"

    .line 269
    .line 270
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 271
    .line 272
    .line 273
    const-string v16, "KProperty"

    .line 274
    .line 275
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 276
    .line 277
    .line 278
    const-string v16, "KMutableProperty"

    .line 279
    .line 280
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 281
    .line 282
    .line 283
    const-string v16, "KProperty0"

    .line 284
    .line 285
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 286
    .line 287
    .line 288
    const-string v16, "KMutableProperty0"

    .line 289
    .line 290
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 291
    .line 292
    .line 293
    const-string v16, "KProperty1"

    .line 294
    .line 295
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 296
    .line 297
    .line 298
    const-string v16, "KMutableProperty1"

    .line 299
    .line 300
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 301
    .line 302
    .line 303
    const-string v16, "KProperty2"

    .line 304
    .line 305
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 306
    .line 307
    .line 308
    const-string v16, "KMutableProperty2"

    .line 309
    .line 310
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 311
    .line 312
    .line 313
    const-string v16, "KFunction"

    .line 314
    .line 315
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 316
    .line 317
    .line 318
    move-result-object v16

    .line 319
    sput-object v16, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->KFunction:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 320
    .line 321
    const-string v16, "KClass"

    .line 322
    .line 323
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 324
    .line 325
    .line 326
    const-string v16, "KCallable"

    .line 327
    .line 328
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->reflectId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 329
    .line 330
    .line 331
    const-string v16, "Comparable"

    .line 332
    .line 333
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 334
    .line 335
    .line 336
    const-string v16, "Number"

    .line 337
    .line 338
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 339
    .line 340
    .line 341
    const-string v16, "Function"

    .line 342
    .line 343
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 344
    .line 345
    .line 346
    move/from16 v16, v0

    .line 347
    .line 348
    const/16 v0, 0x8

    .line 349
    .line 350
    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 351
    .line 352
    aput-object v6, v0, v9

    .line 353
    .line 354
    aput-object v8, v0, v16

    .line 355
    .line 356
    aput-object v10, v0, v2

    .line 357
    .line 358
    aput-object v11, v0, v3

    .line 359
    .line 360
    aput-object v12, v0, v4

    .line 361
    .line 362
    aput-object v13, v0, v1

    .line 363
    .line 364
    aput-object v14, v0, v5

    .line 365
    .line 366
    aput-object v15, v0, v7

    .line 367
    .line 368
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->primitiveTypes:Ljava/util/Set;

    .line 373
    .line 374
    check-cast v0, Ljava/lang/Iterable;

    .line 375
    .line 376
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 377
    .line 378
    const/16 v5, 0xa

    .line 379
    .line 380
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    const/16 v7, 0x10

    .line 389
    .line 390
    if-ge v6, v7, :cond_0

    .line 391
    .line 392
    move v6, v7

    .line 393
    :cond_0
    invoke-direct {v1, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 394
    .line 395
    .line 396
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    if-eqz v6, :cond_1

    .line 405
    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    move-object v8, v6

    .line 411
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 412
    .line 413
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->primitiveArrayId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 421
    .line 422
    .line 423
    move-result-object v8

    .line 424
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    goto :goto_0

    .line 428
    :cond_1
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->inverseMap(Ljava/util/LinkedHashMap;)V

    .line 429
    .line 430
    .line 431
    new-array v0, v4, [Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 432
    .line 433
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UByte:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 434
    .line 435
    aput-object v1, v0, v9

    .line 436
    .line 437
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UShort:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 438
    .line 439
    aput-object v1, v0, v16

    .line 440
    .line 441
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->UInt:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 442
    .line 443
    aput-object v1, v0, v2

    .line 444
    .line 445
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->ULong:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 446
    .line 447
    aput-object v1, v0, v3

    .line 448
    .line 449
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->unsignedTypes:Ljava/util/Set;

    .line 454
    .line 455
    check-cast v0, Ljava/lang/Iterable;

    .line 456
    .line 457
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 458
    .line 459
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-ge v2, v7, :cond_2

    .line 468
    .line 469
    goto :goto_1

    .line 470
    :cond_2
    move v7, v2

    .line 471
    :goto_1
    invoke-direct {v1, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 472
    .line 473
    .line 474
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    if-eqz v2, :cond_3

    .line 483
    .line 484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    move-object v4, v2

    .line 489
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 490
    .line 491
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->primitiveArrayId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    goto :goto_2

    .line 506
    :cond_3
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->inverseMap(Ljava/util/LinkedHashMap;)V

    .line 507
    .line 508
    .line 509
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->primitiveTypes:Ljava/util/Set;

    .line 510
    .line 511
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->unsignedTypes:Ljava/util/Set;

    .line 512
    .line 513
    check-cast v1, Ljava/lang/Iterable;

    .line 514
    .line 515
    invoke-static {v0, v1}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->String:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 520
    .line 521
    invoke-static {v0, v1}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 522
    .line 523
    .line 524
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_COROUTINES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 525
    .line 526
    const-string v1, "Continuation"

    .line 527
    .line 528
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    const/4 v2, 0x0

    .line 533
    if-eqz v0, :cond_6

    .line 534
    .line 535
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 536
    .line 537
    .line 538
    const-string v0, "Iterator"

    .line 539
    .line 540
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 541
    .line 542
    .line 543
    const-string v0, "Iterable"

    .line 544
    .line 545
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 546
    .line 547
    .line 548
    const-string v0, "Collection"

    .line 549
    .line 550
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 551
    .line 552
    .line 553
    const-string v0, "List"

    .line 554
    .line 555
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 556
    .line 557
    .line 558
    const-string v0, "ListIterator"

    .line 559
    .line 560
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 561
    .line 562
    .line 563
    const-string v0, "Set"

    .line 564
    .line 565
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 566
    .line 567
    .line 568
    const-string v0, "Map"

    .line 569
    .line 570
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    const-string v1, "MutableIterator"

    .line 575
    .line 576
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 577
    .line 578
    .line 579
    const-string v1, "CharIterator"

    .line 580
    .line 581
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 582
    .line 583
    .line 584
    const-string v1, "MutableIterable"

    .line 585
    .line 586
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 587
    .line 588
    .line 589
    const-string v1, "MutableCollection"

    .line 590
    .line 591
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 592
    .line 593
    .line 594
    const-string v1, "MutableList"

    .line 595
    .line 596
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->MutableList:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 601
    .line 602
    const-string v1, "MutableListIterator"

    .line 603
    .line 604
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 605
    .line 606
    .line 607
    const-string v1, "MutableSet"

    .line 608
    .line 609
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->MutableSet:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 614
    .line 615
    const-string v1, "MutableMap"

    .line 616
    .line 617
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->collectionsId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->MutableMap:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 622
    .line 623
    const-string v4, "Entry"

    .line 624
    .line 625
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 630
    .line 631
    .line 632
    const-string v0, "MutableEntry"

    .line 633
    .line 634
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 639
    .line 640
    .line 641
    const-string v0, "Result"

    .line 642
    .line 643
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIdsKt;->baseId(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 644
    .line 645
    .line 646
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_RANGES_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 647
    .line 648
    const-string v1, "IntRange"

    .line 649
    .line 650
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    if-eqz v0, :cond_5

    .line 655
    .line 656
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 657
    .line 658
    .line 659
    const-string v0, "LongRange"

    .line 660
    .line 661
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 666
    .line 667
    .line 668
    const-string v0, "CharRange"

    .line 669
    .line 670
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 675
    .line 676
    .line 677
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ANNOTATION_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 678
    .line 679
    const-string v1, "AnnotationRetention"

    .line 680
    .line 681
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    if-eqz v0, :cond_4

    .line 686
    .line 687
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 688
    .line 689
    .line 690
    const-string v0, "AnnotationTarget"

    .line 691
    .line 692
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 697
    .line 698
    .line 699
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 700
    .line 701
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->BASE_ENUMS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 702
    .line 703
    const-string v2, "EnumEntries"

    .line 704
    .line 705
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    .line 710
    .line 711
    .line 712
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->EnumEntries:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 713
    .line 714
    return-void

    .line 715
    :cond_4
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    .line 716
    .line 717
    .line 718
    throw v2

    .line 719
    :cond_5
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    .line 720
    .line 721
    .line 722
    throw v2

    .line 723
    :cond_6
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->$$$reportNull$$$0(I)V

    .line 724
    .line 725
    .line 726
    throw v2
.end method
