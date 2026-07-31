.class public abstract Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final checks:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 2
    .line 3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 4
    .line 5
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

    .line 6
    .line 7
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    new-array v6, v5, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v2, v6, v7

    .line 18
    .line 19
    aput-object v3, v6, v4

    .line 20
    .line 21
    invoke-direct {v0, v1, v6}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 25
    .line 26
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 27
    .line 28
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;

    .line 29
    .line 30
    invoke-direct {v6, v5}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-array v8, v5, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 34
    .line 35
    aput-object v2, v8, v7

    .line 36
    .line 37
    aput-object v6, v8, v4

    .line 38
    .line 39
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/Checks$2;->INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/util/Checks$2;

    .line 40
    .line 41
    invoke-direct {v1, v3, v8, v6}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 45
    .line 46
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 47
    .line 48
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/util/IsKPropertyCheck;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/util/IsKPropertyCheck;

    .line 49
    .line 50
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;

    .line 51
    .line 52
    invoke-direct {v9, v5}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/util/IsKPropertyCheck;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/IsKPropertyCheck;

    .line 56
    .line 57
    const/4 v11, 0x4

    .line 58
    new-array v12, v11, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 59
    .line 60
    aput-object v2, v12, v7

    .line 61
    .line 62
    aput-object v8, v12, v4

    .line 63
    .line 64
    aput-object v9, v12, v5

    .line 65
    .line 66
    const/4 v9, 0x3

    .line 67
    aput-object v10, v12, v9

    .line 68
    .line 69
    invoke-direct {v3, v6, v12}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 73
    .line 74
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 75
    .line 76
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;

    .line 77
    .line 78
    invoke-direct {v13, v9}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$AtLeast;-><init>(I)V

    .line 79
    .line 80
    .line 81
    new-array v14, v11, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 82
    .line 83
    aput-object v2, v14, v7

    .line 84
    .line 85
    aput-object v8, v14, v4

    .line 86
    .line 87
    aput-object v13, v14, v5

    .line 88
    .line 89
    aput-object v10, v14, v9

    .line 90
    .line 91
    invoke-direct {v6, v12, v14}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 92
    .line 93
    .line 94
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 95
    .line 96
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->PROVIDE_DELEGATE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 97
    .line 98
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    .line 99
    .line 100
    const-string v15, "must have exactly 2 value parameters"

    .line 101
    .line 102
    invoke-direct {v14, v7, v15}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-array v15, v11, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 106
    .line 107
    aput-object v2, v15, v7

    .line 108
    .line 109
    aput-object v8, v15, v4

    .line 110
    .line 111
    aput-object v14, v15, v5

    .line 112
    .line 113
    aput-object v10, v15, v9

    .line 114
    .line 115
    invoke-direct {v12, v13, v15}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 116
    .line 117
    .line 118
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 119
    .line 120
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INVOKE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 121
    .line 122
    new-array v14, v4, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 123
    .line 124
    aput-object v2, v14, v7

    .line 125
    .line 126
    invoke-direct {v10, v13, v14}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 127
    .line 128
    .line 129
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 130
    .line 131
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->CONTAINS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 132
    .line 133
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    .line 134
    .line 135
    sget-object v16, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;

    .line 136
    .line 137
    move/from16 v17, v7

    .line 138
    .line 139
    new-array v7, v11, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 140
    .line 141
    aput-object v2, v7, v17

    .line 142
    .line 143
    aput-object v15, v7, v4

    .line 144
    .line 145
    aput-object v8, v7, v5

    .line 146
    .line 147
    aput-object v16, v7, v9

    .line 148
    .line 149
    invoke-direct {v13, v14, v7}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 150
    .line 151
    .line 152
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 153
    .line 154
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ITERATOR:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 155
    .line 156
    sget-object v18, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    .line 157
    .line 158
    new-array v11, v5, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 159
    .line 160
    aput-object v2, v11, v17

    .line 161
    .line 162
    aput-object v18, v11, v4

    .line 163
    .line 164
    invoke-direct {v7, v14, v11}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 165
    .line 166
    .line 167
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 168
    .line 169
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 170
    .line 171
    move/from16 v20, v4

    .line 172
    .line 173
    new-array v4, v5, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 174
    .line 175
    aput-object v2, v4, v17

    .line 176
    .line 177
    aput-object v18, v4, v20

    .line 178
    .line 179
    invoke-direct {v11, v14, v4}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 180
    .line 181
    .line 182
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 183
    .line 184
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->HAS_NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 185
    .line 186
    move/from16 v21, v5

    .line 187
    .line 188
    new-array v5, v9, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 189
    .line 190
    aput-object v2, v5, v17

    .line 191
    .line 192
    aput-object v18, v5, v20

    .line 193
    .line 194
    aput-object v16, v5, v21

    .line 195
    .line 196
    invoke-direct {v4, v14, v5}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 197
    .line 198
    .line 199
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 200
    .line 201
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 202
    .line 203
    move-object/from16 v16, v0

    .line 204
    .line 205
    new-array v0, v9, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 206
    .line 207
    aput-object v2, v0, v17

    .line 208
    .line 209
    aput-object v15, v0, v20

    .line 210
    .line 211
    aput-object v8, v0, v21

    .line 212
    .line 213
    invoke-direct {v5, v14, v0}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 217
    .line 218
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_UNTIL:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 219
    .line 220
    move-object/from16 v22, v1

    .line 221
    .line 222
    new-array v1, v9, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 223
    .line 224
    aput-object v2, v1, v17

    .line 225
    .line 226
    aput-object v15, v1, v20

    .line 227
    .line 228
    aput-object v8, v1, v21

    .line 229
    .line 230
    invoke-direct {v0, v14, v1}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 234
    .line 235
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->EQUALS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 236
    .line 237
    move/from16 v23, v9

    .line 238
    .line 239
    move/from16 v9, v20

    .line 240
    .line 241
    move-object/from16 v20, v0

    .line 242
    .line 243
    new-array v0, v9, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 244
    .line 245
    sget-object v24, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

    .line 246
    .line 247
    aput-object v24, v0, v17

    .line 248
    .line 249
    move/from16 v24, v9

    .line 250
    .line 251
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/Checks$2;->INSTANCE$4:Lkotlin/reflect/jvm/internal/impl/util/Checks$2;

    .line 252
    .line 253
    invoke-direct {v1, v14, v0, v9}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/functions/Function1;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 257
    .line 258
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPARE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 259
    .line 260
    move-object/from16 v25, v1

    .line 261
    .line 262
    const/4 v14, 0x4

    .line 263
    new-array v1, v14, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 264
    .line 265
    aput-object v2, v1, v17

    .line 266
    .line 267
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;

    .line 268
    .line 269
    aput-object v14, v1, v24

    .line 270
    .line 271
    aput-object v15, v1, v21

    .line 272
    .line 273
    aput-object v8, v1, v23

    .line 274
    .line 275
    invoke-direct {v0, v9, v1}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 276
    .line 277
    .line 278
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 279
    .line 280
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->BINARY_OPERATION_NAMES:Ljava/util/Set;

    .line 281
    .line 282
    check-cast v9, Ljava/util/Collection;

    .line 283
    .line 284
    move-object/from16 v26, v0

    .line 285
    .line 286
    move/from16 v14, v23

    .line 287
    .line 288
    new-array v0, v14, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 289
    .line 290
    aput-object v2, v0, v17

    .line 291
    .line 292
    aput-object v15, v0, v24

    .line 293
    .line 294
    aput-object v8, v0, v21

    .line 295
    .line 296
    invoke-direct {v1, v9, v0}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 297
    .line 298
    .line 299
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 300
    .line 301
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SIMPLE_UNARY_OPERATION_NAMES:Ljava/util/Set;

    .line 302
    .line 303
    check-cast v9, Ljava/util/Collection;

    .line 304
    .line 305
    move-object/from16 v27, v1

    .line 306
    .line 307
    move/from16 v14, v21

    .line 308
    .line 309
    new-array v1, v14, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 310
    .line 311
    aput-object v2, v1, v17

    .line 312
    .line 313
    aput-object v18, v1, v24

    .line 314
    .line 315
    invoke-direct {v0, v9, v1}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 316
    .line 317
    .line 318
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 319
    .line 320
    new-array v9, v14, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 321
    .line 322
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 323
    .line 324
    aput-object v14, v9, v17

    .line 325
    .line 326
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->DEC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 327
    .line 328
    aput-object v14, v9, v24

    .line 329
    .line 330
    invoke-static {v9}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    move/from16 v14, v24

    .line 335
    .line 336
    move-object/from16 v24, v0

    .line 337
    .line 338
    new-array v0, v14, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 339
    .line 340
    aput-object v2, v0, v17

    .line 341
    .line 342
    move/from16 v28, v14

    .line 343
    .line 344
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/Checks$2;->INSTANCE$5:Lkotlin/reflect/jvm/internal/impl/util/Checks$2;

    .line 345
    .line 346
    invoke-direct {v1, v9, v0, v14}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/functions/Function1;)V

    .line 347
    .line 348
    .line 349
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 350
    .line 351
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ASSIGNMENT_OPERATIONS:Ljava/util/Set;

    .line 352
    .line 353
    check-cast v9, Ljava/util/Collection;

    .line 354
    .line 355
    move-object/from16 v29, v1

    .line 356
    .line 357
    const/4 v14, 0x4

    .line 358
    new-array v1, v14, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 359
    .line 360
    aput-object v2, v1, v17

    .line 361
    .line 362
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;

    .line 363
    .line 364
    aput-object v14, v1, v28

    .line 365
    .line 366
    const/4 v14, 0x2

    .line 367
    aput-object v15, v1, v14

    .line 368
    .line 369
    const/16 v23, 0x3

    .line 370
    .line 371
    aput-object v8, v1, v23

    .line 372
    .line 373
    invoke-direct {v0, v9, v1}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 374
    .line 375
    .line 376
    new-instance v30, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 377
    .line 378
    sget-object v32, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPONENT_REGEX:Lkotlin/text/Regex;

    .line 379
    .line 380
    new-array v1, v14, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 381
    .line 382
    aput-object v2, v1, v17

    .line 383
    .line 384
    aput-object v18, v1, v28

    .line 385
    .line 386
    sget-object v34, Lkotlin/reflect/jvm/internal/impl/util/Checks$2;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/util/Checks$2;

    .line 387
    .line 388
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-static {v1, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    move-object/from16 v35, v1

    .line 396
    .line 397
    check-cast v35, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    .line 398
    .line 399
    const/16 v31, 0x0

    .line 400
    .line 401
    const/16 v33, 0x0

    .line 402
    .line 403
    invoke-direct/range {v30 .. v35}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/text/Regex;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    .line 404
    .line 405
    .line 406
    const/16 v1, 0x13

    .line 407
    .line 408
    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/util/Checks;

    .line 409
    .line 410
    aput-object v16, v1, v17

    .line 411
    .line 412
    aput-object v22, v1, v28

    .line 413
    .line 414
    aput-object v3, v1, v14

    .line 415
    .line 416
    const/16 v23, 0x3

    .line 417
    .line 418
    aput-object v6, v1, v23

    .line 419
    .line 420
    const/16 v19, 0x4

    .line 421
    .line 422
    aput-object v12, v1, v19

    .line 423
    .line 424
    const/4 v2, 0x5

    .line 425
    aput-object v10, v1, v2

    .line 426
    .line 427
    const/4 v2, 0x6

    .line 428
    aput-object v13, v1, v2

    .line 429
    .line 430
    const/4 v2, 0x7

    .line 431
    aput-object v7, v1, v2

    .line 432
    .line 433
    const/16 v2, 0x8

    .line 434
    .line 435
    aput-object v11, v1, v2

    .line 436
    .line 437
    const/16 v2, 0x9

    .line 438
    .line 439
    aput-object v4, v1, v2

    .line 440
    .line 441
    const/16 v2, 0xa

    .line 442
    .line 443
    aput-object v5, v1, v2

    .line 444
    .line 445
    const/16 v2, 0xb

    .line 446
    .line 447
    aput-object v20, v1, v2

    .line 448
    .line 449
    const/16 v2, 0xc

    .line 450
    .line 451
    aput-object v25, v1, v2

    .line 452
    .line 453
    const/16 v2, 0xd

    .line 454
    .line 455
    aput-object v26, v1, v2

    .line 456
    .line 457
    const/16 v2, 0xe

    .line 458
    .line 459
    aput-object v27, v1, v2

    .line 460
    .line 461
    const/16 v2, 0xf

    .line 462
    .line 463
    aput-object v24, v1, v2

    .line 464
    .line 465
    const/16 v2, 0x10

    .line 466
    .line 467
    aput-object v29, v1, v2

    .line 468
    .line 469
    const/16 v2, 0x11

    .line 470
    .line 471
    aput-object v0, v1, v2

    .line 472
    .line 473
    const/16 v0, 0x12

    .line 474
    .line 475
    aput-object v30, v1, v0

    .line 476
    .line 477
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;->checks:Ljava/util/List;

    .line 482
    .line 483
    return-void
.end method
