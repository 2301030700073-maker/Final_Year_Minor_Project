.class public final enum Lcom/fasterxml/jackson/databind/MapperFeature;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_EXPLICIT_PROPERTY_RENAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum ALLOW_VOID_VALUED_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum APPLY_DEFAULT_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum IGNORE_DUPLICATE_MODULE_REGISTRATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum IGNORE_MERGE_FOR_UNMERGEABLE:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum INFER_BUILDER_TYPE_BINDINGS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum PROPAGATE_TRANSIENT_MARKER:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum SORT_CREATOR_PROPERTIES_FIRST:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_BASE_TYPE_AS_DEFAULT_IMPL:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

.field public static final enum USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:J


# direct methods
.method static constructor <clinit>()V
    .locals 56

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "USE_ANNOTATIONS"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 11
    .line 12
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 13
    .line 14
    const-string v4, "USE_GETTERS_AS_SETTERS"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 20
    .line 21
    new-instance v4, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "PROPAGATE_TRANSIENT_MARKER"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->PROPAGATE_TRANSIENT_MARKER:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 30
    .line 31
    new-instance v6, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const-string v8, "AUTO_DETECT_CREATORS"

    .line 35
    .line 36
    invoke-direct {v6, v7, v8, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    sput-object v6, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 40
    .line 41
    new-instance v8, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const-string v10, "AUTO_DETECT_FIELDS"

    .line 45
    .line 46
    invoke-direct {v8, v9, v10, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 50
    .line 51
    new-instance v10, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    const-string v12, "AUTO_DETECT_GETTERS"

    .line 55
    .line 56
    invoke-direct {v10, v11, v12, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 60
    .line 61
    new-instance v12, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const-string v14, "AUTO_DETECT_IS_GETTERS"

    .line 65
    .line 66
    invoke-direct {v12, v13, v14, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    sput-object v12, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 70
    .line 71
    new-instance v14, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 72
    .line 73
    const/4 v15, 0x7

    .line 74
    move/from16 v16, v5

    .line 75
    .line 76
    const-string v5, "AUTO_DETECT_SETTERS"

    .line 77
    .line 78
    invoke-direct {v14, v15, v5, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 82
    .line 83
    new-instance v5, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 84
    .line 85
    move/from16 v17, v7

    .line 86
    .line 87
    const/16 v7, 0x8

    .line 88
    .line 89
    move/from16 v18, v9

    .line 90
    .line 91
    const-string v9, "REQUIRE_SETTERS_FOR_GETTERS"

    .line 92
    .line 93
    invoke-direct {v5, v7, v9, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    sput-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 97
    .line 98
    new-instance v9, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 99
    .line 100
    move/from16 v19, v7

    .line 101
    .line 102
    const/16 v7, 0x9

    .line 103
    .line 104
    move/from16 v20, v11

    .line 105
    .line 106
    const-string v11, "ALLOW_FINAL_FIELDS_AS_MUTATORS"

    .line 107
    .line 108
    invoke-direct {v9, v7, v11, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    sput-object v9, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 112
    .line 113
    new-instance v11, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 114
    .line 115
    move/from16 v21, v7

    .line 116
    .line 117
    const/16 v7, 0xa

    .line 118
    .line 119
    move/from16 v22, v13

    .line 120
    .line 121
    const-string v13, "INFER_PROPERTY_MUTATORS"

    .line 122
    .line 123
    invoke-direct {v11, v7, v13, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    sput-object v11, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 127
    .line 128
    new-instance v13, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 129
    .line 130
    move/from16 v23, v7

    .line 131
    .line 132
    const/16 v7, 0xb

    .line 133
    .line 134
    move/from16 v24, v15

    .line 135
    .line 136
    const-string v15, "INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES"

    .line 137
    .line 138
    invoke-direct {v13, v7, v15, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    sput-object v13, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 142
    .line 143
    new-instance v15, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 144
    .line 145
    move/from16 v25, v7

    .line 146
    .line 147
    const/16 v7, 0xc

    .line 148
    .line 149
    const-string v3, "ALLOW_VOID_VALUED_PROPERTIES"

    .line 150
    .line 151
    invoke-direct {v15, v7, v3, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    sput-object v15, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_VOID_VALUED_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 155
    .line 156
    new-instance v3, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 157
    .line 158
    move/from16 v27, v7

    .line 159
    .line 160
    const/16 v7, 0xd

    .line 161
    .line 162
    const-string v1, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    .line 163
    .line 164
    move-object/from16 v29, v0

    .line 165
    .line 166
    const/4 v0, 0x1

    .line 167
    invoke-direct {v3, v7, v1, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    sput-object v3, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 171
    .line 172
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 173
    .line 174
    move/from16 v30, v7

    .line 175
    .line 176
    const/16 v7, 0xe

    .line 177
    .line 178
    move-object/from16 v31, v2

    .line 179
    .line 180
    const-string v2, "OVERRIDE_PUBLIC_ACCESS_MODIFIERS"

    .line 181
    .line 182
    invoke-direct {v1, v7, v2, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 183
    .line 184
    .line 185
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 186
    .line 187
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 188
    .line 189
    const/16 v2, 0xf

    .line 190
    .line 191
    move/from16 v32, v7

    .line 192
    .line 193
    const-string v7, "USE_STATIC_TYPING"

    .line 194
    .line 195
    move-object/from16 v33, v1

    .line 196
    .line 197
    const/4 v1, 0x0

    .line 198
    invoke-direct {v0, v2, v7, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 199
    .line 200
    .line 201
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 202
    .line 203
    new-instance v7, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 204
    .line 205
    move/from16 v34, v2

    .line 206
    .line 207
    const/16 v2, 0x10

    .line 208
    .line 209
    move-object/from16 v35, v0

    .line 210
    .line 211
    const-string v0, "USE_BASE_TYPE_AS_DEFAULT_IMPL"

    .line 212
    .line 213
    invoke-direct {v7, v2, v0, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    sput-object v7, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_BASE_TYPE_AS_DEFAULT_IMPL:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 217
    .line 218
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 219
    .line 220
    const/16 v1, 0x11

    .line 221
    .line 222
    move/from16 v36, v2

    .line 223
    .line 224
    const-string v2, "INFER_BUILDER_TYPE_BINDINGS"

    .line 225
    .line 226
    move-object/from16 v37, v3

    .line 227
    .line 228
    const/4 v3, 0x1

    .line 229
    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 230
    .line 231
    .line 232
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_BUILDER_TYPE_BINDINGS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 233
    .line 234
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 235
    .line 236
    move/from16 v38, v1

    .line 237
    .line 238
    const/16 v1, 0x12

    .line 239
    .line 240
    move-object/from16 v39, v0

    .line 241
    .line 242
    const-string v0, "DEFAULT_VIEW_INCLUSION"

    .line 243
    .line 244
    invoke-direct {v2, v1, v0, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 245
    .line 246
    .line 247
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 248
    .line 249
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 250
    .line 251
    move/from16 v40, v1

    .line 252
    .line 253
    const/16 v1, 0x13

    .line 254
    .line 255
    const-string v3, "SORT_PROPERTIES_ALPHABETICALLY"

    .line 256
    .line 257
    move-object/from16 v41, v2

    .line 258
    .line 259
    const/4 v2, 0x0

    .line 260
    invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 261
    .line 262
    .line 263
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 264
    .line 265
    new-instance v3, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 266
    .line 267
    move/from16 v42, v1

    .line 268
    .line 269
    const/16 v1, 0x14

    .line 270
    .line 271
    const-string v2, "SORT_CREATOR_PROPERTIES_FIRST"

    .line 272
    .line 273
    move-object/from16 v43, v0

    .line 274
    .line 275
    const/4 v0, 0x1

    .line 276
    invoke-direct {v3, v1, v2, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 277
    .line 278
    .line 279
    sput-object v3, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_CREATOR_PROPERTIES_FIRST:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 280
    .line 281
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 282
    .line 283
    const/16 v2, 0x15

    .line 284
    .line 285
    move/from16 v44, v1

    .line 286
    .line 287
    const-string v1, "ACCEPT_CASE_INSENSITIVE_PROPERTIES"

    .line 288
    .line 289
    move-object/from16 v45, v3

    .line 290
    .line 291
    const/4 v3, 0x0

    .line 292
    invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 293
    .line 294
    .line 295
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 296
    .line 297
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 298
    .line 299
    move/from16 v46, v2

    .line 300
    .line 301
    const-string v2, "ACCEPT_CASE_INSENSITIVE_ENUMS"

    .line 302
    .line 303
    move-object/from16 v47, v0

    .line 304
    .line 305
    const/16 v0, 0x16

    .line 306
    .line 307
    invoke-direct {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 308
    .line 309
    .line 310
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 311
    .line 312
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 313
    .line 314
    const-string v2, "ACCEPT_CASE_INSENSITIVE_VALUES"

    .line 315
    .line 316
    move-object/from16 v48, v1

    .line 317
    .line 318
    const/16 v1, 0x17

    .line 319
    .line 320
    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 321
    .line 322
    .line 323
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 324
    .line 325
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 326
    .line 327
    const-string v2, "USE_WRAPPER_NAME_AS_PROPERTY_NAME"

    .line 328
    .line 329
    move-object/from16 v49, v0

    .line 330
    .line 331
    const/16 v0, 0x18

    .line 332
    .line 333
    invoke-direct {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 334
    .line 335
    .line 336
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 337
    .line 338
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 339
    .line 340
    const-string v2, "USE_STD_BEAN_NAMING"

    .line 341
    .line 342
    move-object/from16 v50, v1

    .line 343
    .line 344
    const/16 v1, 0x19

    .line 345
    .line 346
    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 347
    .line 348
    .line 349
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 350
    .line 351
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 352
    .line 353
    const-string v2, "ALLOW_EXPLICIT_PROPERTY_RENAMING"

    .line 354
    .line 355
    move-object/from16 v51, v0

    .line 356
    .line 357
    const/16 v0, 0x1a

    .line 358
    .line 359
    invoke-direct {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 360
    .line 361
    .line 362
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_EXPLICIT_PROPERTY_RENAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 363
    .line 364
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 365
    .line 366
    const-string v2, "ALLOW_COERCION_OF_SCALARS"

    .line 367
    .line 368
    const/16 v3, 0x1b

    .line 369
    .line 370
    move-object/from16 v52, v1

    .line 371
    .line 372
    const/4 v1, 0x1

    .line 373
    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 374
    .line 375
    .line 376
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 377
    .line 378
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 379
    .line 380
    const-string v3, "IGNORE_DUPLICATE_MODULE_REGISTRATIONS"

    .line 381
    .line 382
    move-object/from16 v26, v0

    .line 383
    .line 384
    const/16 v0, 0x1c

    .line 385
    .line 386
    invoke-direct {v2, v0, v3, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 387
    .line 388
    .line 389
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->IGNORE_DUPLICATE_MODULE_REGISTRATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 390
    .line 391
    new-instance v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 392
    .line 393
    const-string v3, "IGNORE_MERGE_FOR_UNMERGEABLE"

    .line 394
    .line 395
    move-object/from16 v53, v2

    .line 396
    .line 397
    const/16 v2, 0x1d

    .line 398
    .line 399
    invoke-direct {v0, v2, v3, v1}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 400
    .line 401
    .line 402
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->IGNORE_MERGE_FOR_UNMERGEABLE:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 403
    .line 404
    new-instance v2, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 405
    .line 406
    const-string v3, "BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES"

    .line 407
    .line 408
    const/16 v1, 0x1e

    .line 409
    .line 410
    move-object/from16 v54, v0

    .line 411
    .line 412
    const/4 v0, 0x0

    .line 413
    invoke-direct {v2, v1, v3, v0}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 414
    .line 415
    .line 416
    sput-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 417
    .line 418
    new-instance v1, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 419
    .line 420
    const-string v3, "APPLY_DEFAULT_VALUES"

    .line 421
    .line 422
    move/from16 v28, v0

    .line 423
    .line 424
    const/16 v0, 0x1f

    .line 425
    .line 426
    move-object/from16 v55, v2

    .line 427
    .line 428
    const/4 v2, 0x1

    .line 429
    invoke-direct {v1, v0, v3, v2}, Lcom/fasterxml/jackson/databind/MapperFeature;-><init>(ILjava/lang/String;Z)V

    .line 430
    .line 431
    .line 432
    sput-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->APPLY_DEFAULT_VALUES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 433
    .line 434
    const/16 v0, 0x20

    .line 435
    .line 436
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 437
    .line 438
    aput-object v29, v0, v28

    .line 439
    .line 440
    aput-object v31, v0, v2

    .line 441
    .line 442
    aput-object v4, v0, v16

    .line 443
    .line 444
    aput-object v6, v0, v17

    .line 445
    .line 446
    aput-object v8, v0, v18

    .line 447
    .line 448
    aput-object v10, v0, v20

    .line 449
    .line 450
    aput-object v12, v0, v22

    .line 451
    .line 452
    aput-object v14, v0, v24

    .line 453
    .line 454
    aput-object v5, v0, v19

    .line 455
    .line 456
    aput-object v9, v0, v21

    .line 457
    .line 458
    aput-object v11, v0, v23

    .line 459
    .line 460
    aput-object v13, v0, v25

    .line 461
    .line 462
    aput-object v15, v0, v27

    .line 463
    .line 464
    aput-object v37, v0, v30

    .line 465
    .line 466
    aput-object v33, v0, v32

    .line 467
    .line 468
    aput-object v35, v0, v34

    .line 469
    .line 470
    aput-object v7, v0, v36

    .line 471
    .line 472
    aput-object v39, v0, v38

    .line 473
    .line 474
    aput-object v41, v0, v40

    .line 475
    .line 476
    aput-object v43, v0, v42

    .line 477
    .line 478
    aput-object v45, v0, v44

    .line 479
    .line 480
    aput-object v47, v0, v46

    .line 481
    .line 482
    const/16 v2, 0x16

    .line 483
    .line 484
    aput-object v48, v0, v2

    .line 485
    .line 486
    const/16 v2, 0x17

    .line 487
    .line 488
    aput-object v49, v0, v2

    .line 489
    .line 490
    const/16 v2, 0x18

    .line 491
    .line 492
    aput-object v50, v0, v2

    .line 493
    .line 494
    const/16 v2, 0x19

    .line 495
    .line 496
    aput-object v51, v0, v2

    .line 497
    .line 498
    const/16 v2, 0x1a

    .line 499
    .line 500
    aput-object v52, v0, v2

    .line 501
    .line 502
    const/16 v2, 0x1b

    .line 503
    .line 504
    aput-object v26, v0, v2

    .line 505
    .line 506
    const/16 v2, 0x1c

    .line 507
    .line 508
    aput-object v53, v0, v2

    .line 509
    .line 510
    const/16 v2, 0x1d

    .line 511
    .line 512
    aput-object v54, v0, v2

    .line 513
    .line 514
    const/16 v2, 0x1e

    .line 515
    .line 516
    aput-object v55, v0, v2

    .line 517
    .line 518
    const/16 v2, 0x1f

    .line 519
    .line 520
    aput-object v1, v0, v2

    .line 521
    .line 522
    sput-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 523
    .line 524
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_defaultState:Z

    .line 5
    .line 6
    const-wide/16 p1, 0x1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    shl-long/2addr p1, p3

    .line 13
    iput-wide p1, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:J

    .line 14
    .line 15
    return-void
.end method

.method public static collectLongDefaults()J
    .locals 7

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/databind/MapperFeature;->values()[Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    if-ge v4, v1, :cond_1

    .line 10
    .line 11
    aget-object v5, v0, v4

    .line 12
    .line 13
    iget-boolean v6, v5, Lcom/fasterxml/jackson/databind/MapperFeature;->_defaultState:Z

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    iget-wide v5, v5, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:J

    .line 18
    .line 19
    or-long/2addr v2, v5

    .line 20
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-wide v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/MapperFeature;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/MapperFeature;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/MapperFeature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final enabledByDefault()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_defaultState:Z

    .line 2
    .line 3
    return p0
.end method

.method public final enabledIn(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:J

    .line 2
    .line 3
    and-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p0, p1, v0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final getLongMask()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMask()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/MapperFeature;->_mask:J

    .line 2
    .line 3
    long-to-int p0, v0

    .line 4
    return p0
.end method
