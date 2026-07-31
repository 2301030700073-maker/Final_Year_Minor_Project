.class public abstract Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ASSIGNMENT_OPERATIONS:Ljava/util/Set;

.field public static final BINARY_OPERATION_NAMES:Ljava/util/Set;

.field public static final COMPARE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final COMPONENT_REGEX:Lkotlin/text/Regex;

.field public static final CONTAINS:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final DEC:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final EQUALS:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final GET:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final GET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final HAS_NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final INC:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final INVOKE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final ITERATOR:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final PROVIDE_DELEGATE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final RANGE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final RANGE_UNTIL:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final SET:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final SET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final SIMPLE_UNARY_OPERATION_NAMES:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    const-string v0, "getValue"

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 8
    .line 9
    const-string v1, "setValue"

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 16
    .line 17
    const-string v2, "provideDelegate"

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->PROVIDE_DELEGATE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 24
    .line 25
    const-string v3, "equals"

    .line 26
    .line 27
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->EQUALS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 32
    .line 33
    const-string v4, "hashCode"

    .line 34
    .line 35
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 36
    .line 37
    .line 38
    const-string v4, "compareTo"

    .line 39
    .line 40
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sput-object v4, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPARE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 45
    .line 46
    const-string v5, "contains"

    .line 47
    .line 48
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    sput-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->CONTAINS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 53
    .line 54
    const-string v6, "invoke"

    .line 55
    .line 56
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INVOKE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 61
    .line 62
    const-string v6, "iterator"

    .line 63
    .line 64
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ITERATOR:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 69
    .line 70
    const-string v6, "get"

    .line 71
    .line 72
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 77
    .line 78
    const-string v6, "set"

    .line 79
    .line 80
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 85
    .line 86
    const-string v6, "next"

    .line 87
    .line 88
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 93
    .line 94
    const-string v6, "hasNext"

    .line 95
    .line 96
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->HAS_NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 101
    .line 102
    const-string v6, "toString"

    .line 103
    .line 104
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 105
    .line 106
    .line 107
    new-instance v6, Lkotlin/text/Regex;

    .line 108
    .line 109
    const-string v7, "component\\d+"

    .line 110
    .line 111
    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPONENT_REGEX:Lkotlin/text/Regex;

    .line 115
    .line 116
    const-string v6, "and"

    .line 117
    .line 118
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const-string v7, "or"

    .line 123
    .line 124
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    const-string/jumbo v8, "xor"

    .line 129
    .line 130
    .line 131
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    const-string v9, "inv"

    .line 136
    .line 137
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    const-string v10, "shl"

    .line 142
    .line 143
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    const-string v11, "shr"

    .line 148
    .line 149
    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    const-string/jumbo v12, "ushr"

    .line 154
    .line 155
    .line 156
    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    const-string v13, "inc"

    .line 161
    .line 162
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    sput-object v13, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 167
    .line 168
    const-string v14, "dec"

    .line 169
    .line 170
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    sput-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->DEC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 175
    .line 176
    const-string v15, "plus"

    .line 177
    .line 178
    invoke-static {v15}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    const-string v16, "minus"

    .line 183
    .line 184
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 185
    .line 186
    .line 187
    move-result-object v16

    .line 188
    const-string v17, "not"

    .line 189
    .line 190
    invoke-static/range {v17 .. v17}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 191
    .line 192
    .line 193
    move-result-object v17

    .line 194
    const-string/jumbo v18, "unaryMinus"

    .line 195
    .line 196
    .line 197
    invoke-static/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 198
    .line 199
    .line 200
    move-result-object v18

    .line 201
    const-string/jumbo v19, "unaryPlus"

    .line 202
    .line 203
    .line 204
    invoke-static/range {v19 .. v19}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 205
    .line 206
    .line 207
    move-result-object v19

    .line 208
    const-string v20, "times"

    .line 209
    .line 210
    invoke-static/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 211
    .line 212
    .line 213
    move-result-object v20

    .line 214
    const-string v21, "div"

    .line 215
    .line 216
    invoke-static/range {v21 .. v21}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 217
    .line 218
    .line 219
    move-result-object v21

    .line 220
    const-string v22, "mod"

    .line 221
    .line 222
    invoke-static/range {v22 .. v22}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 223
    .line 224
    .line 225
    move-result-object v22

    .line 226
    const-string v23, "rem"

    .line 227
    .line 228
    invoke-static/range {v23 .. v23}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 229
    .line 230
    .line 231
    move-result-object v23

    .line 232
    const-string v24, "rangeTo"

    .line 233
    .line 234
    invoke-static/range {v24 .. v24}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 235
    .line 236
    .line 237
    move-result-object v24

    .line 238
    sput-object v24, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 239
    .line 240
    const-string v25, "rangeUntil"

    .line 241
    .line 242
    invoke-static/range {v25 .. v25}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 243
    .line 244
    .line 245
    move-result-object v25

    .line 246
    sput-object v25, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_UNTIL:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 247
    .line 248
    const-string v26, "timesAssign"

    .line 249
    .line 250
    invoke-static/range {v26 .. v26}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 251
    .line 252
    .line 253
    move-result-object v26

    .line 254
    const-string v27, "divAssign"

    .line 255
    .line 256
    invoke-static/range {v27 .. v27}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 257
    .line 258
    .line 259
    move-result-object v27

    .line 260
    const-string v28, "modAssign"

    .line 261
    .line 262
    invoke-static/range {v28 .. v28}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 263
    .line 264
    .line 265
    move-result-object v28

    .line 266
    const-string v29, "remAssign"

    .line 267
    .line 268
    invoke-static/range {v29 .. v29}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 269
    .line 270
    .line 271
    move-result-object v29

    .line 272
    const-string v30, "plusAssign"

    .line 273
    .line 274
    invoke-static/range {v30 .. v30}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 275
    .line 276
    .line 277
    move-result-object v30

    .line 278
    const-string v31, "minusAssign"

    .line 279
    .line 280
    invoke-static/range {v31 .. v31}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 281
    .line 282
    .line 283
    move-result-object v31

    .line 284
    move-object/from16 v32, v0

    .line 285
    .line 286
    const/4 v0, 0x6

    .line 287
    move-object/from16 v33, v1

    .line 288
    .line 289
    new-array v1, v0, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 290
    .line 291
    const/16 v34, 0x0

    .line 292
    .line 293
    aput-object v13, v1, v34

    .line 294
    .line 295
    const/4 v13, 0x1

    .line 296
    aput-object v14, v1, v13

    .line 297
    .line 298
    const/4 v14, 0x2

    .line 299
    aput-object v19, v1, v14

    .line 300
    .line 301
    move/from16 v35, v13

    .line 302
    .line 303
    const/4 v13, 0x3

    .line 304
    aput-object v18, v1, v13

    .line 305
    .line 306
    move/from16 v36, v14

    .line 307
    .line 308
    const/4 v14, 0x4

    .line 309
    aput-object v17, v1, v14

    .line 310
    .line 311
    const/16 v37, 0x5

    .line 312
    .line 313
    aput-object v9, v1, v37

    .line 314
    .line 315
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 316
    .line 317
    .line 318
    new-array v1, v14, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 319
    .line 320
    aput-object v19, v1, v34

    .line 321
    .line 322
    aput-object v18, v1, v35

    .line 323
    .line 324
    aput-object v17, v1, v36

    .line 325
    .line 326
    aput-object v9, v1, v13

    .line 327
    .line 328
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SIMPLE_UNARY_OPERATION_NAMES:Ljava/util/Set;

    .line 333
    .line 334
    const/16 v1, 0x8

    .line 335
    .line 336
    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 337
    .line 338
    aput-object v20, v1, v34

    .line 339
    .line 340
    aput-object v15, v1, v35

    .line 341
    .line 342
    aput-object v16, v1, v36

    .line 343
    .line 344
    aput-object v21, v1, v13

    .line 345
    .line 346
    aput-object v22, v1, v14

    .line 347
    .line 348
    aput-object v23, v1, v37

    .line 349
    .line 350
    aput-object v24, v1, v0

    .line 351
    .line 352
    const/4 v15, 0x7

    .line 353
    aput-object v25, v1, v15

    .line 354
    .line 355
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->BINARY_OPERATION_NAMES:Ljava/util/Set;

    .line 360
    .line 361
    new-array v15, v15, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 362
    .line 363
    aput-object v6, v15, v34

    .line 364
    .line 365
    aput-object v7, v15, v35

    .line 366
    .line 367
    aput-object v8, v15, v36

    .line 368
    .line 369
    aput-object v9, v15, v13

    .line 370
    .line 371
    aput-object v10, v15, v14

    .line 372
    .line 373
    aput-object v11, v15, v37

    .line 374
    .line 375
    aput-object v12, v15, v0

    .line 376
    .line 377
    invoke-static {v15}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    check-cast v6, Ljava/lang/Iterable;

    .line 382
    .line 383
    invoke-static {v1, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    new-array v6, v13, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 388
    .line 389
    aput-object v3, v6, v34

    .line 390
    .line 391
    aput-object v5, v6, v35

    .line 392
    .line 393
    aput-object v4, v6, v36

    .line 394
    .line 395
    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    check-cast v3, Ljava/lang/Iterable;

    .line 400
    .line 401
    invoke-static {v1, v3}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 402
    .line 403
    .line 404
    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 405
    .line 406
    aput-object v26, v0, v34

    .line 407
    .line 408
    aput-object v27, v0, v35

    .line 409
    .line 410
    aput-object v28, v0, v36

    .line 411
    .line 412
    aput-object v29, v0, v13

    .line 413
    .line 414
    aput-object v30, v0, v14

    .line 415
    .line 416
    aput-object v31, v0, v37

    .line 417
    .line 418
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ASSIGNMENT_OPERATIONS:Ljava/util/Set;

    .line 423
    .line 424
    new-array v0, v13, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 425
    .line 426
    aput-object v32, v0, v34

    .line 427
    .line 428
    aput-object v33, v0, v35

    .line 429
    .line 430
    aput-object v2, v0, v36

    .line 431
    .line 432
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 433
    .line 434
    .line 435
    return-void
.end method
