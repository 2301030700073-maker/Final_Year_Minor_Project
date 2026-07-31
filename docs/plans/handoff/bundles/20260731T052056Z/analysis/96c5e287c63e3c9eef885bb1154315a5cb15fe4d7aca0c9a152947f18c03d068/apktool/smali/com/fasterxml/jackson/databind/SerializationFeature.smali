.class public final enum Lcom/fasterxml/jackson/databind/SerializationFeature;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_WITH_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_DURATIONS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_ENUM_KEYS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WRITE_SELF_REFERENCES_AS_NULL:Lcom/fasterxml/jackson/databind/SerializationFeature;

.field public static final enum WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 50

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "WRAP_ROOT_VALUE"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 10
    .line 11
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "INDENT_OUTPUT"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 20
    .line 21
    new-instance v4, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "FAIL_ON_EMPTY_BEANS"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 30
    .line 31
    new-instance v6, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const-string v8, "FAIL_ON_SELF_REFERENCES"

    .line 35
    .line 36
    invoke-direct {v6, v7, v8, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    sput-object v6, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_SELF_REFERENCES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 40
    .line 41
    new-instance v8, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const-string v10, "WRAP_EXCEPTIONS"

    .line 45
    .line 46
    invoke-direct {v8, v9, v10, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 50
    .line 51
    new-instance v10, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    const-string v12, "FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS"

    .line 55
    .line 56
    invoke-direct {v10, v11, v12, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 60
    .line 61
    new-instance v12, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const-string v14, "WRITE_SELF_REFERENCES_AS_NULL"

    .line 65
    .line 66
    invoke-direct {v12, v13, v14, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    sput-object v12, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SELF_REFERENCES_AS_NULL:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 70
    .line 71
    new-instance v14, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 72
    .line 73
    const/4 v15, 0x7

    .line 74
    move/from16 v16, v5

    .line 75
    .line 76
    const-string v5, "CLOSE_CLOSEABLE"

    .line 77
    .line 78
    invoke-direct {v14, v15, v5, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 82
    .line 83
    new-instance v5, Lcom/fasterxml/jackson/databind/SerializationFeature;

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
    const-string v9, "FLUSH_AFTER_WRITE_VALUE"

    .line 92
    .line 93
    invoke-direct {v5, v7, v9, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    sput-object v5, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 97
    .line 98
    new-instance v9, Lcom/fasterxml/jackson/databind/SerializationFeature;

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
    const-string v11, "WRITE_DATES_AS_TIMESTAMPS"

    .line 107
    .line 108
    invoke-direct {v9, v7, v11, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    sput-object v9, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 112
    .line 113
    new-instance v11, Lcom/fasterxml/jackson/databind/SerializationFeature;

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
    const-string v13, "WRITE_DATE_KEYS_AS_TIMESTAMPS"

    .line 122
    .line 123
    invoke-direct {v11, v7, v13, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    sput-object v11, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 127
    .line 128
    new-instance v13, Lcom/fasterxml/jackson/databind/SerializationFeature;

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
    const-string v15, "WRITE_DATES_WITH_ZONE_ID"

    .line 137
    .line 138
    invoke-direct {v13, v7, v15, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    sput-object v13, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_WITH_ZONE_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 142
    .line 143
    new-instance v15, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 144
    .line 145
    move/from16 v25, v7

    .line 146
    .line 147
    const/16 v7, 0xc

    .line 148
    .line 149
    const-string v1, "WRITE_DATES_WITH_CONTEXT_TIME_ZONE"

    .line 150
    .line 151
    invoke-direct {v15, v7, v1, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    sput-object v15, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_WITH_CONTEXT_TIME_ZONE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 155
    .line 156
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 157
    .line 158
    move/from16 v27, v7

    .line 159
    .line 160
    const/16 v7, 0xd

    .line 161
    .line 162
    move-object/from16 v28, v0

    .line 163
    .line 164
    const-string v0, "WRITE_DURATIONS_AS_TIMESTAMPS"

    .line 165
    .line 166
    invoke-direct {v1, v7, v0, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DURATIONS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 170
    .line 171
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 172
    .line 173
    move/from16 v29, v7

    .line 174
    .line 175
    const/16 v7, 0xe

    .line 176
    .line 177
    const-string v3, "WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS"

    .line 178
    .line 179
    move-object/from16 v31, v1

    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-direct {v0, v7, v3, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 183
    .line 184
    .line 185
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 186
    .line 187
    new-instance v3, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 188
    .line 189
    move/from16 v32, v7

    .line 190
    .line 191
    const/16 v7, 0xf

    .line 192
    .line 193
    move-object/from16 v33, v0

    .line 194
    .line 195
    const-string v0, "WRITE_ENUMS_USING_TO_STRING"

    .line 196
    .line 197
    invoke-direct {v3, v7, v0, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 198
    .line 199
    .line 200
    sput-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 201
    .line 202
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 203
    .line 204
    move/from16 v34, v7

    .line 205
    .line 206
    const/16 v7, 0x10

    .line 207
    .line 208
    move-object/from16 v35, v2

    .line 209
    .line 210
    const-string v2, "WRITE_ENUMS_USING_INDEX"

    .line 211
    .line 212
    invoke-direct {v0, v7, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 216
    .line 217
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 218
    .line 219
    move/from16 v36, v7

    .line 220
    .line 221
    const/16 v7, 0x11

    .line 222
    .line 223
    move-object/from16 v37, v0

    .line 224
    .line 225
    const-string v0, "WRITE_ENUM_KEYS_USING_INDEX"

    .line 226
    .line 227
    invoke-direct {v2, v7, v0, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 228
    .line 229
    .line 230
    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUM_KEYS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 231
    .line 232
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 233
    .line 234
    const/16 v1, 0x12

    .line 235
    .line 236
    move/from16 v38, v7

    .line 237
    .line 238
    const-string v7, "WRITE_NULL_MAP_VALUES"

    .line 239
    .line 240
    move-object/from16 v39, v2

    .line 241
    .line 242
    const/4 v2, 0x1

    .line 243
    invoke-direct {v0, v1, v7, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 244
    .line 245
    .line 246
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 247
    .line 248
    new-instance v7, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 249
    .line 250
    move/from16 v40, v1

    .line 251
    .line 252
    const/16 v1, 0x13

    .line 253
    .line 254
    move-object/from16 v41, v0

    .line 255
    .line 256
    const-string v0, "WRITE_EMPTY_JSON_ARRAYS"

    .line 257
    .line 258
    invoke-direct {v7, v1, v0, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 259
    .line 260
    .line 261
    sput-object v7, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 262
    .line 263
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 264
    .line 265
    const/16 v2, 0x14

    .line 266
    .line 267
    move/from16 v42, v1

    .line 268
    .line 269
    const-string v1, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    .line 270
    .line 271
    move-object/from16 v43, v3

    .line 272
    .line 273
    const/4 v3, 0x0

    .line 274
    invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 278
    .line 279
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 280
    .line 281
    move/from16 v26, v2

    .line 282
    .line 283
    const/16 v2, 0x15

    .line 284
    .line 285
    move-object/from16 v44, v0

    .line 286
    .line 287
    const-string v0, "WRITE_BIGDECIMAL_AS_PLAIN"

    .line 288
    .line 289
    invoke-direct {v1, v2, v0, v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 290
    .line 291
    .line 292
    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 293
    .line 294
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 295
    .line 296
    move/from16 v45, v2

    .line 297
    .line 298
    const-string v2, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    .line 299
    .line 300
    const/16 v3, 0x16

    .line 301
    .line 302
    move-object/from16 v46, v1

    .line 303
    .line 304
    const/4 v1, 0x1

    .line 305
    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 306
    .line 307
    .line 308
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 309
    .line 310
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 311
    .line 312
    const-string v3, "ORDER_MAP_ENTRIES_BY_KEYS"

    .line 313
    .line 314
    const/16 v1, 0x17

    .line 315
    .line 316
    move-object/from16 v47, v0

    .line 317
    .line 318
    const/4 v0, 0x0

    .line 319
    invoke-direct {v2, v1, v3, v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 320
    .line 321
    .line 322
    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 323
    .line 324
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 325
    .line 326
    const-string v3, "EAGER_SERIALIZER_FETCH"

    .line 327
    .line 328
    const/16 v0, 0x18

    .line 329
    .line 330
    move-object/from16 v48, v2

    .line 331
    .line 332
    const/4 v2, 0x1

    .line 333
    invoke-direct {v1, v0, v3, v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 334
    .line 335
    .line 336
    sput-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 337
    .line 338
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 339
    .line 340
    const-string v3, "USE_EQUALITY_FOR_OBJECT_ID"

    .line 341
    .line 342
    move/from16 v30, v2

    .line 343
    .line 344
    const/16 v2, 0x19

    .line 345
    .line 346
    move-object/from16 v49, v1

    .line 347
    .line 348
    const/4 v1, 0x0

    .line 349
    invoke-direct {v0, v2, v3, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;-><init>(ILjava/lang/String;Z)V

    .line 350
    .line 351
    .line 352
    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->USE_EQUALITY_FOR_OBJECT_ID:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 353
    .line 354
    const/16 v2, 0x1a

    .line 355
    .line 356
    new-array v2, v2, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 357
    .line 358
    aput-object v28, v2, v1

    .line 359
    .line 360
    aput-object v35, v2, v30

    .line 361
    .line 362
    aput-object v4, v2, v16

    .line 363
    .line 364
    aput-object v6, v2, v17

    .line 365
    .line 366
    aput-object v8, v2, v18

    .line 367
    .line 368
    aput-object v10, v2, v20

    .line 369
    .line 370
    aput-object v12, v2, v22

    .line 371
    .line 372
    aput-object v14, v2, v24

    .line 373
    .line 374
    aput-object v5, v2, v19

    .line 375
    .line 376
    aput-object v9, v2, v21

    .line 377
    .line 378
    aput-object v11, v2, v23

    .line 379
    .line 380
    aput-object v13, v2, v25

    .line 381
    .line 382
    aput-object v15, v2, v27

    .line 383
    .line 384
    aput-object v31, v2, v29

    .line 385
    .line 386
    aput-object v33, v2, v32

    .line 387
    .line 388
    aput-object v43, v2, v34

    .line 389
    .line 390
    aput-object v37, v2, v36

    .line 391
    .line 392
    aput-object v39, v2, v38

    .line 393
    .line 394
    aput-object v41, v2, v40

    .line 395
    .line 396
    aput-object v7, v2, v42

    .line 397
    .line 398
    aput-object v44, v2, v26

    .line 399
    .line 400
    aput-object v46, v2, v45

    .line 401
    .line 402
    const/16 v1, 0x16

    .line 403
    .line 404
    aput-object v47, v2, v1

    .line 405
    .line 406
    const/16 v1, 0x17

    .line 407
    .line 408
    aput-object v48, v2, v1

    .line 409
    .line 410
    const/16 v1, 0x18

    .line 411
    .line 412
    aput-object v49, v2, v1

    .line 413
    .line 414
    const/16 v1, 0x19

    .line 415
    .line 416
    aput-object v0, v2, v1

    .line 417
    .line 418
    sput-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 419
    .line 420
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    shl-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    .line 13
    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationFeature;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/SerializationFeature;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->$VALUES:[Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/SerializationFeature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final enabledByDefault()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_defaultState:Z

    .line 2
    .line 3
    return p0
.end method

.method public final enabledIn(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final getMask()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->_mask:I

    .line 2
    .line 3
    return p0
.end method
