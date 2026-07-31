.class public final Landroidx/glance/appwidget/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/Schema;


# static fields
.field public static final EMPTY_INT_ARRAY:[I

.field public static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field public final buffer:[I

.field public final checkInitializedCount:I

.field public final defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

.field public final intArray:[I

.field public final listFieldSchema:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

.field public final lite:Z

.field public final mapFieldSchema:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

.field public final maxFieldNumber:I

.field public final minFieldNumber:I

.field public final newInstanceSchema:Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;

.field public final objects:[Ljava/lang/Object;

.field public final repeatedFieldOffsetStart:I

.field public final unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$1;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sput-object v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILandroidx/glance/appwidget/protobuf/AbstractMessageLite;[IIILandroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->minFieldNumber:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->maxFieldNumber:I

    .line 11
    .line 12
    instance-of p1, p5, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 13
    .line 14
    iput-boolean p1, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->lite:Z

    .line 15
    .line 16
    iput-object p6, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->intArray:[I

    .line 17
    .line 18
    iput p7, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->checkInitializedCount:I

    .line 19
    .line 20
    iput p8, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 21
    .line 22
    iput-object p9, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->newInstanceSchema:Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;

    .line 23
    .line 24
    iput-object p10, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->listFieldSchema:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

    .line 25
    .line 26
    iput-object p11, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 27
    .line 28
    iput-object p5, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 29
    .line 30
    iput-object p13, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->mapFieldSchema:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

    .line 31
    .line 32
    return-void
.end method

.method public static isMutable(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->isMutable()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static newSchema(Landroidx/glance/appwidget/protobuf/RawMessageInfo;Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;)Landroidx/glance/appwidget/protobuf/MessageSchema;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;

    .line 4
    .line 5
    if-eqz v1, :cond_36

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const v6, 0xd800

    .line 19
    .line 20
    .line 21
    if-lt v4, v6, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-lt v4, v6, :cond_1

    .line 31
    .line 32
    move v4, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v7, 0x1

    .line 35
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 36
    .line 37
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-lt v7, v6, :cond_3

    .line 42
    .line 43
    and-int/lit16 v7, v7, 0x1fff

    .line 44
    .line 45
    const/16 v9, 0xd

    .line 46
    .line 47
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-lt v4, v6, :cond_2

    .line 54
    .line 55
    and-int/lit16 v4, v4, 0x1fff

    .line 56
    .line 57
    shl-int/2addr v4, v9

    .line 58
    or-int/2addr v7, v4

    .line 59
    add-int/lit8 v9, v9, 0xd

    .line 60
    .line 61
    move v4, v10

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    shl-int/2addr v4, v9

    .line 64
    or-int/2addr v7, v4

    .line 65
    move v4, v10

    .line 66
    :cond_3
    if-nez v7, :cond_4

    .line 67
    .line 68
    sget-object v7, Landroidx/glance/appwidget/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 69
    .line 70
    move v9, v3

    .line 71
    move v10, v9

    .line 72
    move v11, v10

    .line 73
    move v12, v11

    .line 74
    move v13, v12

    .line 75
    move/from16 v16, v13

    .line 76
    .line 77
    move-object v15, v7

    .line 78
    move/from16 v7, v16

    .line 79
    .line 80
    goto/16 :goto_a

    .line 81
    .line 82
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-lt v4, v6, :cond_6

    .line 89
    .line 90
    and-int/lit16 v4, v4, 0x1fff

    .line 91
    .line 92
    const/16 v9, 0xd

    .line 93
    .line 94
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 95
    .line 96
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-lt v7, v6, :cond_5

    .line 101
    .line 102
    and-int/lit16 v7, v7, 0x1fff

    .line 103
    .line 104
    shl-int/2addr v7, v9

    .line 105
    or-int/2addr v4, v7

    .line 106
    add-int/lit8 v9, v9, 0xd

    .line 107
    .line 108
    move v7, v10

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    shl-int/2addr v7, v9

    .line 111
    or-int/2addr v4, v7

    .line 112
    move v7, v10

    .line 113
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 114
    .line 115
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-lt v7, v6, :cond_8

    .line 120
    .line 121
    and-int/lit16 v7, v7, 0x1fff

    .line 122
    .line 123
    const/16 v10, 0xd

    .line 124
    .line 125
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 126
    .line 127
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-lt v9, v6, :cond_7

    .line 132
    .line 133
    and-int/lit16 v9, v9, 0x1fff

    .line 134
    .line 135
    shl-int/2addr v9, v10

    .line 136
    or-int/2addr v7, v9

    .line 137
    add-int/lit8 v10, v10, 0xd

    .line 138
    .line 139
    move v9, v11

    .line 140
    goto :goto_3

    .line 141
    :cond_7
    shl-int/2addr v9, v10

    .line 142
    or-int/2addr v7, v9

    .line 143
    move v9, v11

    .line 144
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 145
    .line 146
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-lt v9, v6, :cond_a

    .line 151
    .line 152
    and-int/lit16 v9, v9, 0x1fff

    .line 153
    .line 154
    const/16 v11, 0xd

    .line 155
    .line 156
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 157
    .line 158
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-lt v10, v6, :cond_9

    .line 163
    .line 164
    and-int/lit16 v10, v10, 0x1fff

    .line 165
    .line 166
    shl-int/2addr v10, v11

    .line 167
    or-int/2addr v9, v10

    .line 168
    add-int/lit8 v11, v11, 0xd

    .line 169
    .line 170
    move v10, v12

    .line 171
    goto :goto_4

    .line 172
    :cond_9
    shl-int/2addr v10, v11

    .line 173
    or-int/2addr v9, v10

    .line 174
    move v10, v12

    .line 175
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 176
    .line 177
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-lt v10, v6, :cond_c

    .line 182
    .line 183
    and-int/lit16 v10, v10, 0x1fff

    .line 184
    .line 185
    const/16 v12, 0xd

    .line 186
    .line 187
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 188
    .line 189
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-lt v11, v6, :cond_b

    .line 194
    .line 195
    and-int/lit16 v11, v11, 0x1fff

    .line 196
    .line 197
    shl-int/2addr v11, v12

    .line 198
    or-int/2addr v10, v11

    .line 199
    add-int/lit8 v12, v12, 0xd

    .line 200
    .line 201
    move v11, v13

    .line 202
    goto :goto_5

    .line 203
    :cond_b
    shl-int/2addr v11, v12

    .line 204
    or-int/2addr v10, v11

    .line 205
    move v11, v13

    .line 206
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 207
    .line 208
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-lt v11, v6, :cond_e

    .line 213
    .line 214
    and-int/lit16 v11, v11, 0x1fff

    .line 215
    .line 216
    const/16 v13, 0xd

    .line 217
    .line 218
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 219
    .line 220
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-lt v12, v6, :cond_d

    .line 225
    .line 226
    and-int/lit16 v12, v12, 0x1fff

    .line 227
    .line 228
    shl-int/2addr v12, v13

    .line 229
    or-int/2addr v11, v12

    .line 230
    add-int/lit8 v13, v13, 0xd

    .line 231
    .line 232
    move v12, v14

    .line 233
    goto :goto_6

    .line 234
    :cond_d
    shl-int/2addr v12, v13

    .line 235
    or-int/2addr v11, v12

    .line 236
    move v12, v14

    .line 237
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 238
    .line 239
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    if-lt v12, v6, :cond_10

    .line 244
    .line 245
    and-int/lit16 v12, v12, 0x1fff

    .line 246
    .line 247
    const/16 v14, 0xd

    .line 248
    .line 249
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 250
    .line 251
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-lt v13, v6, :cond_f

    .line 256
    .line 257
    and-int/lit16 v13, v13, 0x1fff

    .line 258
    .line 259
    shl-int/2addr v13, v14

    .line 260
    or-int/2addr v12, v13

    .line 261
    add-int/lit8 v14, v14, 0xd

    .line 262
    .line 263
    move v13, v15

    .line 264
    goto :goto_7

    .line 265
    :cond_f
    shl-int/2addr v13, v14

    .line 266
    or-int/2addr v12, v13

    .line 267
    move v13, v15

    .line 268
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 269
    .line 270
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    if-lt v13, v6, :cond_12

    .line 275
    .line 276
    and-int/lit16 v13, v13, 0x1fff

    .line 277
    .line 278
    const/16 v15, 0xd

    .line 279
    .line 280
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 281
    .line 282
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 283
    .line 284
    .line 285
    move-result v14

    .line 286
    if-lt v14, v6, :cond_11

    .line 287
    .line 288
    and-int/lit16 v14, v14, 0x1fff

    .line 289
    .line 290
    shl-int/2addr v14, v15

    .line 291
    or-int/2addr v13, v14

    .line 292
    add-int/lit8 v15, v15, 0xd

    .line 293
    .line 294
    move/from16 v14, v16

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_11
    shl-int/2addr v14, v15

    .line 298
    or-int/2addr v13, v14

    .line 299
    move/from16 v14, v16

    .line 300
    .line 301
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 302
    .line 303
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    if-lt v14, v6, :cond_14

    .line 308
    .line 309
    and-int/lit16 v14, v14, 0x1fff

    .line 310
    .line 311
    const/16 v16, 0xd

    .line 312
    .line 313
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 314
    .line 315
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 316
    .line 317
    .line 318
    move-result v15

    .line 319
    if-lt v15, v6, :cond_13

    .line 320
    .line 321
    and-int/lit16 v15, v15, 0x1fff

    .line 322
    .line 323
    shl-int v15, v15, v16

    .line 324
    .line 325
    or-int/2addr v14, v15

    .line 326
    add-int/lit8 v16, v16, 0xd

    .line 327
    .line 328
    move/from16 v15, v17

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_13
    shl-int v15, v15, v16

    .line 332
    .line 333
    or-int/2addr v14, v15

    .line 334
    move/from16 v15, v17

    .line 335
    .line 336
    :cond_14
    add-int v16, v14, v12

    .line 337
    .line 338
    add-int v13, v16, v13

    .line 339
    .line 340
    new-array v13, v13, [I

    .line 341
    .line 342
    mul-int/lit8 v16, v4, 0x2

    .line 343
    .line 344
    add-int v16, v16, v7

    .line 345
    .line 346
    move v7, v12

    .line 347
    move v12, v9

    .line 348
    move v9, v7

    .line 349
    move v7, v4

    .line 350
    move v4, v15

    .line 351
    move-object v15, v13

    .line 352
    move v13, v10

    .line 353
    move/from16 v10, v16

    .line 354
    .line 355
    move/from16 v16, v14

    .line 356
    .line 357
    :goto_a
    iget-object v14, v0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    .line 358
    .line 359
    iget-object v3, v0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    const/16 v18, 0x1

    .line 366
    .line 367
    mul-int/lit8 v5, v11, 0x3

    .line 368
    .line 369
    new-array v5, v5, [I

    .line 370
    .line 371
    mul-int/lit8 v11, v11, 0x2

    .line 372
    .line 373
    new-array v11, v11, [Ljava/lang/Object;

    .line 374
    .line 375
    add-int v9, v16, v9

    .line 376
    .line 377
    move/from16 v22, v9

    .line 378
    .line 379
    move/from16 v21, v16

    .line 380
    .line 381
    const/16 v19, 0x0

    .line 382
    .line 383
    const/16 v20, 0x0

    .line 384
    .line 385
    :goto_b
    if-ge v4, v2, :cond_35

    .line 386
    .line 387
    add-int/lit8 v23, v4, 0x1

    .line 388
    .line 389
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-lt v4, v6, :cond_16

    .line 394
    .line 395
    and-int/lit16 v4, v4, 0x1fff

    .line 396
    .line 397
    move/from16 v8, v23

    .line 398
    .line 399
    const/16 v23, 0xd

    .line 400
    .line 401
    :goto_c
    add-int/lit8 v24, v8, 0x1

    .line 402
    .line 403
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    if-lt v8, v6, :cond_15

    .line 408
    .line 409
    and-int/lit16 v8, v8, 0x1fff

    .line 410
    .line 411
    shl-int v8, v8, v23

    .line 412
    .line 413
    or-int/2addr v4, v8

    .line 414
    add-int/lit8 v23, v23, 0xd

    .line 415
    .line 416
    move/from16 v8, v24

    .line 417
    .line 418
    goto :goto_c

    .line 419
    :cond_15
    shl-int v8, v8, v23

    .line 420
    .line 421
    or-int/2addr v4, v8

    .line 422
    move/from16 v8, v24

    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_16
    move/from16 v8, v23

    .line 426
    .line 427
    :goto_d
    add-int/lit8 v23, v8, 0x1

    .line 428
    .line 429
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 430
    .line 431
    .line 432
    move-result v8

    .line 433
    if-lt v8, v6, :cond_18

    .line 434
    .line 435
    and-int/lit16 v8, v8, 0x1fff

    .line 436
    .line 437
    move/from16 v6, v23

    .line 438
    .line 439
    const/16 v23, 0xd

    .line 440
    .line 441
    :goto_e
    add-int/lit8 v25, v6, 0x1

    .line 442
    .line 443
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    move/from16 v26, v2

    .line 448
    .line 449
    const v2, 0xd800

    .line 450
    .line 451
    .line 452
    if-lt v6, v2, :cond_17

    .line 453
    .line 454
    and-int/lit16 v2, v6, 0x1fff

    .line 455
    .line 456
    shl-int v2, v2, v23

    .line 457
    .line 458
    or-int/2addr v8, v2

    .line 459
    add-int/lit8 v23, v23, 0xd

    .line 460
    .line 461
    move/from16 v6, v25

    .line 462
    .line 463
    move/from16 v2, v26

    .line 464
    .line 465
    goto :goto_e

    .line 466
    :cond_17
    shl-int v2, v6, v23

    .line 467
    .line 468
    or-int/2addr v8, v2

    .line 469
    move/from16 v2, v25

    .line 470
    .line 471
    goto :goto_f

    .line 472
    :cond_18
    move/from16 v26, v2

    .line 473
    .line 474
    move/from16 v2, v23

    .line 475
    .line 476
    :goto_f
    and-int/lit16 v6, v8, 0xff

    .line 477
    .line 478
    move/from16 v23, v4

    .line 479
    .line 480
    and-int/lit16 v4, v8, 0x400

    .line 481
    .line 482
    if-eqz v4, :cond_19

    .line 483
    .line 484
    add-int/lit8 v4, v19, 0x1

    .line 485
    .line 486
    aput v20, v15, v19

    .line 487
    .line 488
    move/from16 v19, v4

    .line 489
    .line 490
    :cond_19
    const/16 v4, 0x33

    .line 491
    .line 492
    move-object/from16 v28, v5

    .line 493
    .line 494
    sget-object v5, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 495
    .line 496
    if-lt v6, v4, :cond_22

    .line 497
    .line 498
    add-int/lit8 v4, v2, 0x1

    .line 499
    .line 500
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    move/from16 v29, v4

    .line 505
    .line 506
    const v4, 0xd800

    .line 507
    .line 508
    .line 509
    if-lt v2, v4, :cond_1b

    .line 510
    .line 511
    and-int/lit16 v2, v2, 0x1fff

    .line 512
    .line 513
    move/from16 v4, v29

    .line 514
    .line 515
    const/16 v29, 0xd

    .line 516
    .line 517
    :goto_10
    add-int/lit8 v30, v4, 0x1

    .line 518
    .line 519
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    move/from16 v31, v2

    .line 524
    .line 525
    const v2, 0xd800

    .line 526
    .line 527
    .line 528
    if-lt v4, v2, :cond_1a

    .line 529
    .line 530
    and-int/lit16 v2, v4, 0x1fff

    .line 531
    .line 532
    shl-int v2, v2, v29

    .line 533
    .line 534
    or-int v2, v31, v2

    .line 535
    .line 536
    add-int/lit8 v29, v29, 0xd

    .line 537
    .line 538
    move/from16 v4, v30

    .line 539
    .line 540
    goto :goto_10

    .line 541
    :cond_1a
    shl-int v2, v4, v29

    .line 542
    .line 543
    or-int v2, v31, v2

    .line 544
    .line 545
    move/from16 v4, v30

    .line 546
    .line 547
    goto :goto_11

    .line 548
    :cond_1b
    move/from16 v4, v29

    .line 549
    .line 550
    :goto_11
    move/from16 v29, v2

    .line 551
    .line 552
    add-int/lit8 v2, v6, -0x33

    .line 553
    .line 554
    move/from16 v30, v4

    .line 555
    .line 556
    const/16 v4, 0x9

    .line 557
    .line 558
    if-eq v2, v4, :cond_1e

    .line 559
    .line 560
    const/16 v4, 0x11

    .line 561
    .line 562
    if-ne v2, v4, :cond_1c

    .line 563
    .line 564
    goto :goto_13

    .line 565
    :cond_1c
    const/16 v4, 0xc

    .line 566
    .line 567
    if-ne v2, v4, :cond_1f

    .line 568
    .line 569
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->getSyntax()Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    sget-object v4, Landroidx/glance/appwidget/protobuf/ProtoSyntax;->PROTO2:Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 574
    .line 575
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    if-nez v2, :cond_1d

    .line 580
    .line 581
    and-int/lit16 v2, v8, 0x800

    .line 582
    .line 583
    if-eqz v2, :cond_1f

    .line 584
    .line 585
    :cond_1d
    div-int/lit8 v2, v20, 0x3

    .line 586
    .line 587
    mul-int/lit8 v2, v2, 0x2

    .line 588
    .line 589
    add-int/lit8 v2, v2, 0x1

    .line 590
    .line 591
    add-int/lit8 v4, v10, 0x1

    .line 592
    .line 593
    aget-object v10, v14, v10

    .line 594
    .line 595
    aput-object v10, v11, v2

    .line 596
    .line 597
    :goto_12
    move v10, v4

    .line 598
    goto :goto_14

    .line 599
    :cond_1e
    :goto_13
    div-int/lit8 v2, v20, 0x3

    .line 600
    .line 601
    mul-int/lit8 v2, v2, 0x2

    .line 602
    .line 603
    add-int/lit8 v2, v2, 0x1

    .line 604
    .line 605
    add-int/lit8 v4, v10, 0x1

    .line 606
    .line 607
    aget-object v10, v14, v10

    .line 608
    .line 609
    aput-object v10, v11, v2

    .line 610
    .line 611
    goto :goto_12

    .line 612
    :cond_1f
    :goto_14
    mul-int/lit8 v2, v29, 0x2

    .line 613
    .line 614
    aget-object v4, v14, v2

    .line 615
    .line 616
    move/from16 v25, v2

    .line 617
    .line 618
    instance-of v2, v4, Ljava/lang/reflect/Field;

    .line 619
    .line 620
    if-eqz v2, :cond_20

    .line 621
    .line 622
    check-cast v4, Ljava/lang/reflect/Field;

    .line 623
    .line 624
    :goto_15
    move/from16 v29, v9

    .line 625
    .line 626
    move v2, v10

    .line 627
    goto :goto_16

    .line 628
    :cond_20
    check-cast v4, Ljava/lang/String;

    .line 629
    .line 630
    invoke-static {v3, v4}, Landroidx/glance/appwidget/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 631
    .line 632
    .line 633
    move-result-object v4

    .line 634
    aput-object v4, v14, v25

    .line 635
    .line 636
    goto :goto_15

    .line 637
    :goto_16
    invoke-virtual {v5, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 638
    .line 639
    .line 640
    move-result-wide v9

    .line 641
    long-to-int v4, v9

    .line 642
    add-int/lit8 v9, v25, 0x1

    .line 643
    .line 644
    aget-object v10, v14, v9

    .line 645
    .line 646
    move/from16 v25, v2

    .line 647
    .line 648
    instance-of v2, v10, Ljava/lang/reflect/Field;

    .line 649
    .line 650
    if-eqz v2, :cond_21

    .line 651
    .line 652
    check-cast v10, Ljava/lang/reflect/Field;

    .line 653
    .line 654
    goto :goto_17

    .line 655
    :cond_21
    check-cast v10, Ljava/lang/String;

    .line 656
    .line 657
    invoke-static {v3, v10}, Landroidx/glance/appwidget/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 658
    .line 659
    .line 660
    move-result-object v10

    .line 661
    aput-object v10, v14, v9

    .line 662
    .line 663
    :goto_17
    invoke-virtual {v5, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 664
    .line 665
    .line 666
    move-result-wide v9

    .line 667
    long-to-int v2, v9

    .line 668
    move v5, v2

    .line 669
    move/from16 v10, v25

    .line 670
    .line 671
    move/from16 v27, v30

    .line 672
    .line 673
    const/4 v2, 0x0

    .line 674
    move/from16 v25, v7

    .line 675
    .line 676
    goto/16 :goto_22

    .line 677
    .line 678
    :cond_22
    move/from16 v29, v9

    .line 679
    .line 680
    add-int/lit8 v4, v10, 0x1

    .line 681
    .line 682
    aget-object v9, v14, v10

    .line 683
    .line 684
    check-cast v9, Ljava/lang/String;

    .line 685
    .line 686
    invoke-static {v3, v9}, Landroidx/glance/appwidget/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 687
    .line 688
    .line 689
    move-result-object v9

    .line 690
    move/from16 v30, v4

    .line 691
    .line 692
    const/16 v4, 0x9

    .line 693
    .line 694
    if-eq v6, v4, :cond_23

    .line 695
    .line 696
    const/16 v4, 0x11

    .line 697
    .line 698
    if-ne v6, v4, :cond_24

    .line 699
    .line 700
    :cond_23
    move/from16 v25, v7

    .line 701
    .line 702
    goto/16 :goto_1b

    .line 703
    .line 704
    :cond_24
    const/16 v4, 0x1b

    .line 705
    .line 706
    if-eq v6, v4, :cond_25

    .line 707
    .line 708
    const/16 v4, 0x31

    .line 709
    .line 710
    if-ne v6, v4, :cond_26

    .line 711
    .line 712
    :cond_25
    move/from16 v25, v7

    .line 713
    .line 714
    goto :goto_1a

    .line 715
    :cond_26
    const/16 v4, 0xc

    .line 716
    .line 717
    if-eq v6, v4, :cond_2a

    .line 718
    .line 719
    const/16 v4, 0x1e

    .line 720
    .line 721
    if-eq v6, v4, :cond_2a

    .line 722
    .line 723
    const/16 v4, 0x2c

    .line 724
    .line 725
    if-ne v6, v4, :cond_27

    .line 726
    .line 727
    goto :goto_18

    .line 728
    :cond_27
    const/16 v4, 0x32

    .line 729
    .line 730
    if-ne v6, v4, :cond_29

    .line 731
    .line 732
    add-int/lit8 v4, v21, 0x1

    .line 733
    .line 734
    aput v20, v15, v21

    .line 735
    .line 736
    div-int/lit8 v21, v20, 0x3

    .line 737
    .line 738
    mul-int/lit8 v21, v21, 0x2

    .line 739
    .line 740
    add-int/lit8 v25, v10, 0x2

    .line 741
    .line 742
    aget-object v27, v14, v30

    .line 743
    .line 744
    aput-object v27, v11, v21

    .line 745
    .line 746
    move/from16 v27, v4

    .line 747
    .line 748
    and-int/lit16 v4, v8, 0x800

    .line 749
    .line 750
    if-eqz v4, :cond_28

    .line 751
    .line 752
    add-int/lit8 v21, v21, 0x1

    .line 753
    .line 754
    add-int/lit8 v4, v10, 0x3

    .line 755
    .line 756
    aget-object v10, v14, v25

    .line 757
    .line 758
    aput-object v10, v11, v21

    .line 759
    .line 760
    move/from16 v25, v7

    .line 761
    .line 762
    move/from16 v21, v27

    .line 763
    .line 764
    goto :goto_1d

    .line 765
    :cond_28
    move/from16 v4, v25

    .line 766
    .line 767
    move/from16 v21, v27

    .line 768
    .line 769
    move/from16 v25, v7

    .line 770
    .line 771
    goto :goto_1d

    .line 772
    :cond_29
    move/from16 v25, v7

    .line 773
    .line 774
    goto :goto_1c

    .line 775
    :cond_2a
    :goto_18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->getSyntax()Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 776
    .line 777
    .line 778
    move-result-object v4

    .line 779
    move/from16 v25, v7

    .line 780
    .line 781
    sget-object v7, Landroidx/glance/appwidget/protobuf/ProtoSyntax;->PROTO2:Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 782
    .line 783
    if-eq v4, v7, :cond_2b

    .line 784
    .line 785
    and-int/lit16 v4, v8, 0x800

    .line 786
    .line 787
    if-eqz v4, :cond_2c

    .line 788
    .line 789
    :cond_2b
    div-int/lit8 v4, v20, 0x3

    .line 790
    .line 791
    mul-int/lit8 v4, v4, 0x2

    .line 792
    .line 793
    add-int/lit8 v4, v4, 0x1

    .line 794
    .line 795
    add-int/lit8 v10, v10, 0x2

    .line 796
    .line 797
    aget-object v7, v14, v30

    .line 798
    .line 799
    aput-object v7, v11, v4

    .line 800
    .line 801
    :goto_19
    move v4, v10

    .line 802
    goto :goto_1d

    .line 803
    :goto_1a
    div-int/lit8 v4, v20, 0x3

    .line 804
    .line 805
    mul-int/lit8 v4, v4, 0x2

    .line 806
    .line 807
    add-int/lit8 v4, v4, 0x1

    .line 808
    .line 809
    add-int/lit8 v10, v10, 0x2

    .line 810
    .line 811
    aget-object v7, v14, v30

    .line 812
    .line 813
    aput-object v7, v11, v4

    .line 814
    .line 815
    goto :goto_19

    .line 816
    :goto_1b
    div-int/lit8 v4, v20, 0x3

    .line 817
    .line 818
    mul-int/lit8 v4, v4, 0x2

    .line 819
    .line 820
    add-int/lit8 v4, v4, 0x1

    .line 821
    .line 822
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    move-result-object v7

    .line 826
    aput-object v7, v11, v4

    .line 827
    .line 828
    :cond_2c
    :goto_1c
    move/from16 v4, v30

    .line 829
    .line 830
    :goto_1d
    invoke-virtual {v5, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 831
    .line 832
    .line 833
    move-result-wide v9

    .line 834
    long-to-int v7, v9

    .line 835
    and-int/lit16 v9, v8, 0x1000

    .line 836
    .line 837
    if-eqz v9, :cond_30

    .line 838
    .line 839
    const/16 v9, 0x11

    .line 840
    .line 841
    if-gt v6, v9, :cond_30

    .line 842
    .line 843
    add-int/lit8 v9, v2, 0x1

    .line 844
    .line 845
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 846
    .line 847
    .line 848
    move-result v2

    .line 849
    const v10, 0xd800

    .line 850
    .line 851
    .line 852
    if-lt v2, v10, :cond_2e

    .line 853
    .line 854
    and-int/lit16 v2, v2, 0x1fff

    .line 855
    .line 856
    const/16 v24, 0xd

    .line 857
    .line 858
    :goto_1e
    add-int/lit8 v27, v9, 0x1

    .line 859
    .line 860
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 861
    .line 862
    .line 863
    move-result v9

    .line 864
    if-lt v9, v10, :cond_2d

    .line 865
    .line 866
    and-int/lit16 v9, v9, 0x1fff

    .line 867
    .line 868
    shl-int v9, v9, v24

    .line 869
    .line 870
    or-int/2addr v2, v9

    .line 871
    add-int/lit8 v24, v24, 0xd

    .line 872
    .line 873
    move/from16 v9, v27

    .line 874
    .line 875
    goto :goto_1e

    .line 876
    :cond_2d
    shl-int v9, v9, v24

    .line 877
    .line 878
    or-int/2addr v2, v9

    .line 879
    goto :goto_1f

    .line 880
    :cond_2e
    move/from16 v27, v9

    .line 881
    .line 882
    :goto_1f
    mul-int/lit8 v9, v25, 0x2

    .line 883
    .line 884
    div-int/lit8 v24, v2, 0x20

    .line 885
    .line 886
    add-int v24, v24, v9

    .line 887
    .line 888
    aget-object v9, v14, v24

    .line 889
    .line 890
    instance-of v10, v9, Ljava/lang/reflect/Field;

    .line 891
    .line 892
    if-eqz v10, :cond_2f

    .line 893
    .line 894
    check-cast v9, Ljava/lang/reflect/Field;

    .line 895
    .line 896
    goto :goto_20

    .line 897
    :cond_2f
    check-cast v9, Ljava/lang/String;

    .line 898
    .line 899
    invoke-static {v3, v9}, Landroidx/glance/appwidget/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 900
    .line 901
    .line 902
    move-result-object v9

    .line 903
    aput-object v9, v14, v24

    .line 904
    .line 905
    :goto_20
    invoke-virtual {v5, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 906
    .line 907
    .line 908
    move-result-wide v9

    .line 909
    long-to-int v5, v9

    .line 910
    rem-int/lit8 v2, v2, 0x20

    .line 911
    .line 912
    goto :goto_21

    .line 913
    :cond_30
    const v5, 0xfffff

    .line 914
    .line 915
    .line 916
    move/from16 v27, v2

    .line 917
    .line 918
    const/4 v2, 0x0

    .line 919
    :goto_21
    const/16 v9, 0x12

    .line 920
    .line 921
    if-lt v6, v9, :cond_31

    .line 922
    .line 923
    const/16 v9, 0x31

    .line 924
    .line 925
    if-gt v6, v9, :cond_31

    .line 926
    .line 927
    add-int/lit8 v9, v22, 0x1

    .line 928
    .line 929
    aput v7, v15, v22

    .line 930
    .line 931
    move v10, v4

    .line 932
    move v4, v7

    .line 933
    move/from16 v22, v9

    .line 934
    .line 935
    goto :goto_22

    .line 936
    :cond_31
    move v10, v4

    .line 937
    move v4, v7

    .line 938
    :goto_22
    add-int/lit8 v7, v20, 0x1

    .line 939
    .line 940
    aput v23, v28, v20

    .line 941
    .line 942
    add-int/lit8 v9, v20, 0x2

    .line 943
    .line 944
    move-object/from16 v23, v1

    .line 945
    .line 946
    and-int/lit16 v1, v8, 0x200

    .line 947
    .line 948
    if-eqz v1, :cond_32

    .line 949
    .line 950
    const/high16 v1, 0x20000000

    .line 951
    .line 952
    goto :goto_23

    .line 953
    :cond_32
    const/4 v1, 0x0

    .line 954
    :goto_23
    move/from16 v24, v1

    .line 955
    .line 956
    and-int/lit16 v1, v8, 0x100

    .line 957
    .line 958
    if-eqz v1, :cond_33

    .line 959
    .line 960
    const/high16 v1, 0x10000000

    .line 961
    .line 962
    goto :goto_24

    .line 963
    :cond_33
    const/4 v1, 0x0

    .line 964
    :goto_24
    or-int v1, v24, v1

    .line 965
    .line 966
    and-int/lit16 v8, v8, 0x800

    .line 967
    .line 968
    if-eqz v8, :cond_34

    .line 969
    .line 970
    const/high16 v8, -0x80000000

    .line 971
    .line 972
    goto :goto_25

    .line 973
    :cond_34
    const/4 v8, 0x0

    .line 974
    :goto_25
    or-int/2addr v1, v8

    .line 975
    shl-int/lit8 v6, v6, 0x14

    .line 976
    .line 977
    or-int/2addr v1, v6

    .line 978
    or-int/2addr v1, v4

    .line 979
    aput v1, v28, v7

    .line 980
    .line 981
    add-int/lit8 v20, v20, 0x3

    .line 982
    .line 983
    shl-int/lit8 v1, v2, 0x14

    .line 984
    .line 985
    or-int/2addr v1, v5

    .line 986
    aput v1, v28, v9

    .line 987
    .line 988
    move-object/from16 v1, v23

    .line 989
    .line 990
    move/from16 v7, v25

    .line 991
    .line 992
    move/from16 v2, v26

    .line 993
    .line 994
    move/from16 v4, v27

    .line 995
    .line 996
    move-object/from16 v5, v28

    .line 997
    .line 998
    move/from16 v9, v29

    .line 999
    .line 1000
    const v6, 0xd800

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_b

    .line 1004
    .line 1005
    :cond_35
    move-object/from16 v28, v5

    .line 1006
    .line 1007
    move/from16 v29, v9

    .line 1008
    .line 1009
    new-instance v9, Landroidx/glance/appwidget/protobuf/MessageSchema;

    .line 1010
    .line 1011
    iget-object v14, v0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 1012
    .line 1013
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->getSyntax()Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 1014
    .line 1015
    .line 1016
    move-object/from16 v18, p1

    .line 1017
    .line 1018
    move-object/from16 v19, p2

    .line 1019
    .line 1020
    move-object/from16 v20, p3

    .line 1021
    .line 1022
    move-object/from16 v21, p4

    .line 1023
    .line 1024
    move-object/from16 v22, p5

    .line 1025
    .line 1026
    move-object/from16 v10, v28

    .line 1027
    .line 1028
    move/from16 v17, v29

    .line 1029
    .line 1030
    invoke-direct/range {v9 .. v22}, Landroidx/glance/appwidget/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/glance/appwidget/protobuf/AbstractMessageLite;[IIILandroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;)V

    .line 1031
    .line 1032
    .line 1033
    return-object v9

    .line 1034
    :cond_36
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 1035
    .line 1036
    .line 1037
    const/4 v0, 0x0

    .line 1038
    return-object v0
.end method

.method public static offset(I)J
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-long v0, p0

    .line 6
    return-wide v0
.end method

.method public static oneofIntAt(JLjava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static oneofLongAt(JLjava/lang/Object;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string v2, "Field "

    .line 33
    .line 34
    const-string v3, " for "

    .line 35
    .line 36
    invoke-static {v2, p1, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " not found. Known fields are "

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public static type(I)I
    .locals 1

    .line 1
    const/high16 v0, 0xff00000

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    ushr-int/lit8 p0, p0, 0x14

    .line 5
    .line 6
    return p0
.end method

.method public static writeString(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object p2, p2, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;

    .line 10
    .line 11
    invoke-virtual {p2, p0, p1}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeString(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    check-cast p1, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 16
    .line 17
    invoke-virtual {p2, p0, p1}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final equals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    int-to-long v7, v7

    .line 19
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    packed-switch v5, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    .line 29
    .line 30
    aget v5, v0, v5

    .line 31
    .line 32
    and-int/2addr v5, v6

    .line 33
    int-to-long v5, v5

    .line 34
    invoke-static {v5, v6, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    invoke-static {v5, v6, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-ne v9, v5, :cond_0

    .line 43
    .line 44
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v5, v6}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_0
    move v4, v2

    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :pswitch_1
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :pswitch_2
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_0

    .line 96
    .line 97
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v5, v6}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_0

    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_0

    .line 118
    .line 119
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    cmp-long v5, v5, v7

    .line 128
    .line 129
    if-nez v5, :cond_0

    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_0

    .line 138
    .line 139
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-ne v5, v6, :cond_0

    .line 148
    .line 149
    goto/16 :goto_1

    .line 150
    .line 151
    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_0

    .line 156
    .line 157
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v5

    .line 161
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v7

    .line 165
    cmp-long v5, v5, v7

    .line 166
    .line 167
    if-nez v5, :cond_0

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_0

    .line 176
    .line 177
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-ne v5, v6, :cond_0

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_0

    .line 194
    .line 195
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-ne v5, v6, :cond_0

    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_0

    .line 212
    .line 213
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-ne v5, v6, :cond_0

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_0

    .line 230
    .line 231
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-static {v5, v6}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_0

    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_0

    .line 252
    .line 253
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-static {v5, v6}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_0

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_0

    .line 274
    .line 275
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    invoke-static {v5, v6}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_0

    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_0

    .line 296
    .line 297
    sget-object v5, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 298
    .line 299
    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-ne v6, v5, :cond_0

    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_0

    .line 316
    .line 317
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    if-ne v5, v6, :cond_0

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-eqz v5, :cond_0

    .line 334
    .line 335
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 336
    .line 337
    .line 338
    move-result-wide v5

    .line 339
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 340
    .line 341
    .line 342
    move-result-wide v7

    .line 343
    cmp-long v5, v5, v7

    .line 344
    .line 345
    if-nez v5, :cond_0

    .line 346
    .line 347
    goto/16 :goto_1

    .line 348
    .line 349
    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-eqz v5, :cond_0

    .line 354
    .line 355
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-ne v5, v6, :cond_0

    .line 364
    .line 365
    goto :goto_1

    .line 366
    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-eqz v5, :cond_0

    .line 371
    .line 372
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 373
    .line 374
    .line 375
    move-result-wide v5

    .line 376
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 377
    .line 378
    .line 379
    move-result-wide v7

    .line 380
    cmp-long v5, v5, v7

    .line 381
    .line 382
    if-nez v5, :cond_0

    .line 383
    .line 384
    goto :goto_1

    .line 385
    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_0

    .line 390
    .line 391
    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 392
    .line 393
    .line 394
    move-result-wide v5

    .line 395
    invoke-static {v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 396
    .line 397
    .line 398
    move-result-wide v7

    .line 399
    cmp-long v5, v5, v7

    .line 400
    .line 401
    if-nez v5, :cond_0

    .line 402
    .line 403
    goto :goto_1

    .line 404
    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-eqz v5, :cond_0

    .line 409
    .line 410
    sget-object v5, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 411
    .line 412
    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    if-ne v6, v5, :cond_0

    .line 429
    .line 430
    goto :goto_1

    .line 431
    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->arePresentForEquals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;I)Z

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    if-eqz v5, :cond_0

    .line 436
    .line 437
    sget-object v5, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 438
    .line 439
    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 440
    .line 441
    .line 442
    move-result-wide v9

    .line 443
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 444
    .line 445
    .line 446
    move-result-wide v9

    .line 447
    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 448
    .line 449
    .line 450
    move-result-wide v5

    .line 451
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 452
    .line 453
    .line 454
    move-result-wide v5

    .line 455
    cmp-long v5, v9, v5

    .line 456
    .line 457
    if-nez v5, :cond_0

    .line 458
    .line 459
    :goto_1
    if-nez v4, :cond_1

    .line 460
    .line 461
    goto :goto_2

    .line 462
    :cond_1
    add-int/lit8 v3, v3, 0x3

    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :cond_2
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 467
    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 472
    .line 473
    iget-object p1, p2, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 474
    .line 475
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result p0

    .line 479
    if-nez p0, :cond_3

    .line 480
    .line 481
    :goto_2
    return v2

    .line 482
    :cond_3
    return v4

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p3, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    aget p3, p3, p1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p3, v0

    .line 13
    int-to-long v0, p3

    .line 14
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getEnumFieldVerifier(I)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v0, p0, p1

    .line 8
    .line 9
    check-cast v0, Landroidx/glance/appwidget/protobuf/Schema;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Landroidx/glance/appwidget/protobuf/Protobuf;->INSTANCE:Landroidx/glance/appwidget/protobuf/Protobuf;

    .line 15
    .line 16
    add-int/lit8 v1, p1, 0x1

    .line 17
    .line 18
    aget-object v1, p0, v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/Schema;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    aput-object v0, p0, p1

    .line 27
    .line 28
    return-object v0
.end method

.method public final getSerializedSize(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const v7, 0xfffff

    .line 7
    .line 8
    .line 9
    move v2, v6

    .line 10
    move v4, v2

    .line 11
    move v8, v4

    .line 12
    move v3, v7

    .line 13
    :goto_0
    iget-object v5, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 14
    .line 15
    array-length v9, v5

    .line 16
    if-ge v2, v9, :cond_1c

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v9

    .line 22
    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    aget v11, v5, v2

    .line 27
    .line 28
    add-int/lit8 v12, v2, 0x2

    .line 29
    .line 30
    aget v5, v5, v12

    .line 31
    .line 32
    and-int v12, v5, v7

    .line 33
    .line 34
    const/16 v13, 0x11

    .line 35
    .line 36
    const/4 v14, 0x1

    .line 37
    sget-object v15, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 38
    .line 39
    if-gt v10, v13, :cond_2

    .line 40
    .line 41
    if-eq v12, v3, :cond_1

    .line 42
    .line 43
    if-ne v12, v7, :cond_0

    .line 44
    .line 45
    move v4, v6

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    int-to-long v3, v12

    .line 48
    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    move v4, v3

    .line 53
    :goto_1
    move v3, v12

    .line 54
    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    .line 55
    .line 56
    shl-int v5, v14, v5

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v5, v6

    .line 60
    :goto_2
    and-int/2addr v9, v7

    .line 61
    int-to-long v12, v9

    .line 62
    sget-object v9, Landroidx/glance/appwidget/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/glance/appwidget/protobuf/FieldType;

    .line 63
    .line 64
    invoke-virtual {v9}, Landroidx/glance/appwidget/protobuf/FieldType;->id()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-lt v10, v9, :cond_3

    .line 69
    .line 70
    sget-object v9, Landroidx/glance/appwidget/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/glance/appwidget/protobuf/FieldType;

    .line 71
    .line 72
    invoke-virtual {v9}, Landroidx/glance/appwidget/protobuf/FieldType;->id()I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    :cond_3
    const/16 v9, 0x3f

    .line 77
    .line 78
    packed-switch v10, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    goto/16 :goto_20

    .line 82
    .line 83
    :pswitch_0
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_1b

    .line 88
    .line 89
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    mul-int/lit8 v10, v10, 0x2

    .line 104
    .line 105
    invoke-virtual {v5, v9}, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/glance/appwidget/protobuf/Schema;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    :goto_3
    add-int/2addr v5, v10

    .line 110
    :goto_4
    add-int/2addr v8, v5

    .line 111
    goto/16 :goto_20

    .line 112
    .line 113
    :pswitch_1
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_1b

    .line 118
    .line 119
    invoke-static {v12, v13, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v12

    .line 123
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    shl-long v10, v12, v14

    .line 128
    .line 129
    shr-long/2addr v12, v9

    .line 130
    xor-long/2addr v10, v12

    .line 131
    invoke-static {v10, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    :goto_5
    add-int/2addr v9, v5

    .line 136
    :goto_6
    add-int/2addr v8, v9

    .line 137
    goto/16 :goto_20

    .line 138
    .line 139
    :pswitch_2
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_1b

    .line 144
    .line 145
    invoke-static {v12, v13, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    shl-int/lit8 v10, v5, 0x1

    .line 154
    .line 155
    shr-int/lit8 v5, v5, 0x1f

    .line 156
    .line 157
    xor-int/2addr v5, v10

    .line 158
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    :goto_7
    add-int/2addr v5, v9

    .line 163
    goto :goto_4

    .line 164
    :pswitch_3
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_1b

    .line 169
    .line 170
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    :goto_8
    add-int/lit8 v5, v5, 0x8

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :pswitch_4
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_1b

    .line 182
    .line 183
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    :goto_9
    add-int/lit8 v5, v5, 0x4

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :pswitch_5
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_1b

    .line 195
    .line 196
    invoke-static {v12, v13, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    int-to-long v10, v5

    .line 205
    invoke-static {v10, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    goto :goto_7

    .line 210
    :pswitch_6
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_1b

    .line 215
    .line 216
    invoke-static {v12, v13, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    goto :goto_7

    .line 229
    :pswitch_7
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_1b

    .line 234
    .line 235
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    check-cast v5, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 240
    .line 241
    invoke-static {v11, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeBytesSize(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    goto/16 :goto_4

    .line 246
    .line 247
    :pswitch_8
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_1b

    .line 252
    .line 253
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    sget-object v10, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 262
    .line 263
    check-cast v5, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 264
    .line 265
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    invoke-virtual {v5, v9}, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/glance/appwidget/protobuf/Schema;)I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 274
    .line 275
    .line 276
    move-result v9

    .line 277
    :goto_a
    add-int/2addr v9, v5

    .line 278
    add-int/2addr v9, v10

    .line 279
    goto/16 :goto_6

    .line 280
    .line 281
    :pswitch_9
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-eqz v5, :cond_1b

    .line 286
    .line 287
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    instance-of v9, v5, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 292
    .line 293
    if-eqz v9, :cond_4

    .line 294
    .line 295
    check-cast v5, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 296
    .line 297
    invoke-static {v11, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeBytesSize(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    :goto_b
    add-int/2addr v5, v8

    .line 302
    move v8, v5

    .line 303
    goto/16 :goto_20

    .line 304
    .line 305
    :cond_4
    check-cast v5, Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 308
    .line 309
    .line 310
    move-result v9

    .line 311
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    add-int/2addr v5, v9

    .line 316
    goto :goto_b

    .line 317
    :pswitch_a
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_1b

    .line 322
    .line 323
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    add-int/2addr v5, v14

    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :pswitch_b
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_1b

    .line 335
    .line 336
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    goto/16 :goto_9

    .line 341
    .line 342
    :pswitch_c
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    if-eqz v5, :cond_1b

    .line 347
    .line 348
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    goto/16 :goto_8

    .line 353
    .line 354
    :pswitch_d
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-eqz v5, :cond_1b

    .line 359
    .line 360
    invoke-static {v12, v13, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    int-to-long v10, v5

    .line 369
    invoke-static {v10, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    goto/16 :goto_7

    .line 374
    .line 375
    :pswitch_e
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_1b

    .line 380
    .line 381
    invoke-static {v12, v13, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 382
    .line 383
    .line 384
    move-result-wide v9

    .line 385
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    invoke-static {v9, v10}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    goto/16 :goto_5

    .line 394
    .line 395
    :pswitch_f
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    if-eqz v5, :cond_1b

    .line 400
    .line 401
    invoke-static {v12, v13, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 402
    .line 403
    .line 404
    move-result-wide v9

    .line 405
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    invoke-static {v9, v10}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 410
    .line 411
    .line 412
    move-result v9

    .line 413
    goto/16 :goto_5

    .line 414
    .line 415
    :pswitch_10
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_1b

    .line 420
    .line 421
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    goto/16 :goto_9

    .line 426
    .line 427
    :pswitch_11
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-eqz v5, :cond_1b

    .line 432
    .line 433
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    goto/16 :goto_8

    .line 438
    .line 439
    :pswitch_12
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    div-int/lit8 v9, v2, 0x3

    .line 444
    .line 445
    mul-int/lit8 v9, v9, 0x2

    .line 446
    .line 447
    iget-object v10, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 448
    .line 449
    aget-object v9, v10, v9

    .line 450
    .line 451
    iget-object v10, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->mapFieldSchema:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

    .line 452
    .line 453
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    check-cast v5, Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 457
    .line 458
    if-nez v9, :cond_7

    .line 459
    .line 460
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 461
    .line 462
    .line 463
    move-result v9

    .line 464
    if-eqz v9, :cond_5

    .line 465
    .line 466
    goto/16 :goto_20

    .line 467
    .line 468
    :cond_5
    invoke-virtual {v5}, Landroidx/glance/appwidget/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 477
    .line 478
    .line 479
    move-result v9

    .line 480
    if-nez v9, :cond_6

    .line 481
    .line 482
    goto/16 :goto_20

    .line 483
    .line 484
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    check-cast v0, Ljava/util/Map$Entry;

    .line 489
    .line 490
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    const/4 v0, 0x0

    .line 497
    throw v0

    .line 498
    :cond_7
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 499
    .line 500
    .line 501
    return v6

    .line 502
    :pswitch_13
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    check-cast v5, Ljava/util/List;

    .line 507
    .line 508
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    sget-object v10, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 513
    .line 514
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    if-nez v10, :cond_8

    .line 519
    .line 520
    move v13, v6

    .line 521
    goto :goto_d

    .line 522
    :cond_8
    move v12, v6

    .line 523
    move v13, v12

    .line 524
    :goto_c
    if-ge v12, v10, :cond_9

    .line 525
    .line 526
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v14

    .line 530
    check-cast v14, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 531
    .line 532
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 533
    .line 534
    .line 535
    move-result v15

    .line 536
    mul-int/lit8 v15, v15, 0x2

    .line 537
    .line 538
    invoke-virtual {v14, v9}, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/glance/appwidget/protobuf/Schema;)I

    .line 539
    .line 540
    .line 541
    move-result v14

    .line 542
    add-int/2addr v14, v15

    .line 543
    add-int/2addr v13, v14

    .line 544
    add-int/lit8 v12, v12, 0x1

    .line 545
    .line 546
    goto :goto_c

    .line 547
    :cond_9
    :goto_d
    add-int/2addr v8, v13

    .line 548
    goto/16 :goto_20

    .line 549
    .line 550
    :pswitch_14
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    check-cast v5, Ljava/util/List;

    .line 555
    .line 556
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 557
    .line 558
    .line 559
    move-result v5

    .line 560
    if-lez v5, :cond_1b

    .line 561
    .line 562
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 567
    .line 568
    .line 569
    move-result v10

    .line 570
    :goto_e
    add-int/2addr v10, v9

    .line 571
    add-int/2addr v10, v5

    .line 572
    add-int/2addr v8, v10

    .line 573
    goto/16 :goto_20

    .line 574
    .line 575
    :pswitch_15
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v5

    .line 579
    check-cast v5, Ljava/util/List;

    .line 580
    .line 581
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    if-lez v5, :cond_1b

    .line 586
    .line 587
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 588
    .line 589
    .line 590
    move-result v9

    .line 591
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 592
    .line 593
    .line 594
    move-result v10

    .line 595
    goto :goto_e

    .line 596
    :pswitch_16
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    check-cast v5, Ljava/util/List;

    .line 601
    .line 602
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 603
    .line 604
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    mul-int/lit8 v5, v5, 0x8

    .line 609
    .line 610
    if-lez v5, :cond_1b

    .line 611
    .line 612
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 613
    .line 614
    .line 615
    move-result v9

    .line 616
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 617
    .line 618
    .line 619
    move-result v10

    .line 620
    goto :goto_e

    .line 621
    :pswitch_17
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    check-cast v5, Ljava/util/List;

    .line 626
    .line 627
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 628
    .line 629
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    mul-int/lit8 v5, v5, 0x4

    .line 634
    .line 635
    if-lez v5, :cond_1b

    .line 636
    .line 637
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 638
    .line 639
    .line 640
    move-result v9

    .line 641
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 642
    .line 643
    .line 644
    move-result v10

    .line 645
    goto :goto_e

    .line 646
    :pswitch_18
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    check-cast v5, Ljava/util/List;

    .line 651
    .line 652
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 653
    .line 654
    .line 655
    move-result v5

    .line 656
    if-lez v5, :cond_1b

    .line 657
    .line 658
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 659
    .line 660
    .line 661
    move-result v9

    .line 662
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 663
    .line 664
    .line 665
    move-result v10

    .line 666
    goto :goto_e

    .line 667
    :pswitch_19
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    check-cast v5, Ljava/util/List;

    .line 672
    .line 673
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 674
    .line 675
    .line 676
    move-result v5

    .line 677
    if-lez v5, :cond_1b

    .line 678
    .line 679
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 680
    .line 681
    .line 682
    move-result v9

    .line 683
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 684
    .line 685
    .line 686
    move-result v10

    .line 687
    goto :goto_e

    .line 688
    :pswitch_1a
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    check-cast v5, Ljava/util/List;

    .line 693
    .line 694
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 695
    .line 696
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    if-lez v5, :cond_1b

    .line 701
    .line 702
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 703
    .line 704
    .line 705
    move-result v9

    .line 706
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 707
    .line 708
    .line 709
    move-result v10

    .line 710
    goto/16 :goto_e

    .line 711
    .line 712
    :pswitch_1b
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v5

    .line 716
    check-cast v5, Ljava/util/List;

    .line 717
    .line 718
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 719
    .line 720
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 721
    .line 722
    .line 723
    move-result v5

    .line 724
    mul-int/lit8 v5, v5, 0x4

    .line 725
    .line 726
    if-lez v5, :cond_1b

    .line 727
    .line 728
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 729
    .line 730
    .line 731
    move-result v9

    .line 732
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 733
    .line 734
    .line 735
    move-result v10

    .line 736
    goto/16 :goto_e

    .line 737
    .line 738
    :pswitch_1c
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v5

    .line 742
    check-cast v5, Ljava/util/List;

    .line 743
    .line 744
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 745
    .line 746
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 747
    .line 748
    .line 749
    move-result v5

    .line 750
    mul-int/lit8 v5, v5, 0x8

    .line 751
    .line 752
    if-lez v5, :cond_1b

    .line 753
    .line 754
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 755
    .line 756
    .line 757
    move-result v9

    .line 758
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 759
    .line 760
    .line 761
    move-result v10

    .line 762
    goto/16 :goto_e

    .line 763
    .line 764
    :pswitch_1d
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v5

    .line 768
    check-cast v5, Ljava/util/List;

    .line 769
    .line 770
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 771
    .line 772
    .line 773
    move-result v5

    .line 774
    if-lez v5, :cond_1b

    .line 775
    .line 776
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 777
    .line 778
    .line 779
    move-result v9

    .line 780
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 781
    .line 782
    .line 783
    move-result v10

    .line 784
    goto/16 :goto_e

    .line 785
    .line 786
    :pswitch_1e
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v5

    .line 790
    check-cast v5, Ljava/util/List;

    .line 791
    .line 792
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 793
    .line 794
    .line 795
    move-result v5

    .line 796
    if-lez v5, :cond_1b

    .line 797
    .line 798
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 799
    .line 800
    .line 801
    move-result v9

    .line 802
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 803
    .line 804
    .line 805
    move-result v10

    .line 806
    goto/16 :goto_e

    .line 807
    .line 808
    :pswitch_1f
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v5

    .line 812
    check-cast v5, Ljava/util/List;

    .line 813
    .line 814
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 815
    .line 816
    .line 817
    move-result v5

    .line 818
    if-lez v5, :cond_1b

    .line 819
    .line 820
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 821
    .line 822
    .line 823
    move-result v9

    .line 824
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 825
    .line 826
    .line 827
    move-result v10

    .line 828
    goto/16 :goto_e

    .line 829
    .line 830
    :pswitch_20
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    check-cast v5, Ljava/util/List;

    .line 835
    .line 836
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 837
    .line 838
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 839
    .line 840
    .line 841
    move-result v5

    .line 842
    mul-int/lit8 v5, v5, 0x4

    .line 843
    .line 844
    if-lez v5, :cond_1b

    .line 845
    .line 846
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 847
    .line 848
    .line 849
    move-result v9

    .line 850
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 851
    .line 852
    .line 853
    move-result v10

    .line 854
    goto/16 :goto_e

    .line 855
    .line 856
    :pswitch_21
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v5

    .line 860
    check-cast v5, Ljava/util/List;

    .line 861
    .line 862
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 863
    .line 864
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 865
    .line 866
    .line 867
    move-result v5

    .line 868
    mul-int/lit8 v5, v5, 0x8

    .line 869
    .line 870
    if-lez v5, :cond_1b

    .line 871
    .line 872
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 873
    .line 874
    .line 875
    move-result v9

    .line 876
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 877
    .line 878
    .line 879
    move-result v10

    .line 880
    goto/16 :goto_e

    .line 881
    .line 882
    :pswitch_22
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v5

    .line 886
    check-cast v5, Ljava/util/List;

    .line 887
    .line 888
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 889
    .line 890
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 891
    .line 892
    .line 893
    move-result v9

    .line 894
    if-nez v9, :cond_a

    .line 895
    .line 896
    :goto_f
    move v10, v6

    .line 897
    goto :goto_11

    .line 898
    :cond_a
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 899
    .line 900
    .line 901
    move-result v5

    .line 902
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 903
    .line 904
    .line 905
    move-result v10

    .line 906
    :goto_10
    mul-int/2addr v10, v9

    .line 907
    add-int/2addr v10, v5

    .line 908
    :cond_b
    :goto_11
    add-int/2addr v8, v10

    .line 909
    goto/16 :goto_20

    .line 910
    .line 911
    :pswitch_23
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v5

    .line 915
    check-cast v5, Ljava/util/List;

    .line 916
    .line 917
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 918
    .line 919
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 920
    .line 921
    .line 922
    move-result v9

    .line 923
    if-nez v9, :cond_c

    .line 924
    .line 925
    goto :goto_f

    .line 926
    :cond_c
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 927
    .line 928
    .line 929
    move-result v5

    .line 930
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 931
    .line 932
    .line 933
    move-result v10

    .line 934
    goto :goto_10

    .line 935
    :pswitch_24
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v5

    .line 939
    check-cast v5, Ljava/util/List;

    .line 940
    .line 941
    invoke-static {v5, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 942
    .line 943
    .line 944
    move-result v5

    .line 945
    goto/16 :goto_4

    .line 946
    .line 947
    :pswitch_25
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    check-cast v5, Ljava/util/List;

    .line 952
    .line 953
    invoke-static {v5, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 954
    .line 955
    .line 956
    move-result v5

    .line 957
    goto/16 :goto_4

    .line 958
    .line 959
    :pswitch_26
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v5

    .line 963
    check-cast v5, Ljava/util/List;

    .line 964
    .line 965
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 966
    .line 967
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 968
    .line 969
    .line 970
    move-result v9

    .line 971
    if-nez v9, :cond_d

    .line 972
    .line 973
    goto :goto_f

    .line 974
    :cond_d
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 975
    .line 976
    .line 977
    move-result v5

    .line 978
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 979
    .line 980
    .line 981
    move-result v10

    .line 982
    goto :goto_10

    .line 983
    :pswitch_27
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v5

    .line 987
    check-cast v5, Ljava/util/List;

    .line 988
    .line 989
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 990
    .line 991
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 992
    .line 993
    .line 994
    move-result v9

    .line 995
    if-nez v9, :cond_e

    .line 996
    .line 997
    goto :goto_f

    .line 998
    :cond_e
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 999
    .line 1000
    .line 1001
    move-result v5

    .line 1002
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1003
    .line 1004
    .line 1005
    move-result v10

    .line 1006
    goto :goto_10

    .line 1007
    :pswitch_28
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v5

    .line 1011
    check-cast v5, Ljava/util/List;

    .line 1012
    .line 1013
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1014
    .line 1015
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1016
    .line 1017
    .line 1018
    move-result v9

    .line 1019
    if-nez v9, :cond_f

    .line 1020
    .line 1021
    goto :goto_f

    .line 1022
    :cond_f
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1023
    .line 1024
    .line 1025
    move-result v10

    .line 1026
    mul-int/2addr v10, v9

    .line 1027
    move v9, v6

    .line 1028
    :goto_12
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1029
    .line 1030
    .line 1031
    move-result v11

    .line 1032
    if-ge v9, v11, :cond_b

    .line 1033
    .line 1034
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v11

    .line 1038
    check-cast v11, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 1039
    .line 1040
    invoke-virtual {v11}, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;->size()I

    .line 1041
    .line 1042
    .line 1043
    move-result v11

    .line 1044
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1045
    .line 1046
    .line 1047
    move-result v12

    .line 1048
    add-int/2addr v12, v11

    .line 1049
    add-int/2addr v10, v12

    .line 1050
    add-int/lit8 v9, v9, 0x1

    .line 1051
    .line 1052
    goto :goto_12

    .line 1053
    :pswitch_29
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v5

    .line 1057
    check-cast v5, Ljava/util/List;

    .line 1058
    .line 1059
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v9

    .line 1063
    sget-object v10, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1064
    .line 1065
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1066
    .line 1067
    .line 1068
    move-result v10

    .line 1069
    if-nez v10, :cond_10

    .line 1070
    .line 1071
    move v11, v6

    .line 1072
    goto :goto_14

    .line 1073
    :cond_10
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1074
    .line 1075
    .line 1076
    move-result v11

    .line 1077
    mul-int/2addr v11, v10

    .line 1078
    move v12, v6

    .line 1079
    :goto_13
    if-ge v12, v10, :cond_11

    .line 1080
    .line 1081
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v13

    .line 1085
    check-cast v13, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 1086
    .line 1087
    invoke-virtual {v13, v9}, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/glance/appwidget/protobuf/Schema;)I

    .line 1088
    .line 1089
    .line 1090
    move-result v13

    .line 1091
    invoke-static {v13}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1092
    .line 1093
    .line 1094
    move-result v14

    .line 1095
    add-int/2addr v14, v13

    .line 1096
    add-int/2addr v11, v14

    .line 1097
    add-int/lit8 v12, v12, 0x1

    .line 1098
    .line 1099
    goto :goto_13

    .line 1100
    :cond_11
    :goto_14
    add-int/2addr v8, v11

    .line 1101
    goto/16 :goto_20

    .line 1102
    .line 1103
    :pswitch_2a
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v5

    .line 1107
    check-cast v5, Ljava/util/List;

    .line 1108
    .line 1109
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1110
    .line 1111
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1112
    .line 1113
    .line 1114
    move-result v9

    .line 1115
    if-nez v9, :cond_12

    .line 1116
    .line 1117
    goto/16 :goto_f

    .line 1118
    .line 1119
    :cond_12
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1120
    .line 1121
    .line 1122
    move-result v10

    .line 1123
    mul-int/2addr v10, v9

    .line 1124
    move v11, v6

    .line 1125
    :goto_15
    if-ge v11, v9, :cond_b

    .line 1126
    .line 1127
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v12

    .line 1131
    instance-of v13, v12, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 1132
    .line 1133
    if-eqz v13, :cond_13

    .line 1134
    .line 1135
    check-cast v12, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 1136
    .line 1137
    invoke-virtual {v12}, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;->size()I

    .line 1138
    .line 1139
    .line 1140
    move-result v12

    .line 1141
    invoke-static {v12}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1142
    .line 1143
    .line 1144
    move-result v13

    .line 1145
    add-int/2addr v13, v12

    .line 1146
    add-int/2addr v13, v10

    .line 1147
    move v10, v13

    .line 1148
    goto :goto_16

    .line 1149
    :cond_13
    check-cast v12, Ljava/lang/String;

    .line 1150
    .line 1151
    invoke-static {v12}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 1152
    .line 1153
    .line 1154
    move-result v12

    .line 1155
    add-int/2addr v12, v10

    .line 1156
    move v10, v12

    .line 1157
    :goto_16
    add-int/lit8 v11, v11, 0x1

    .line 1158
    .line 1159
    goto :goto_15

    .line 1160
    :pswitch_2b
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v5

    .line 1164
    check-cast v5, Ljava/util/List;

    .line 1165
    .line 1166
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1167
    .line 1168
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1169
    .line 1170
    .line 1171
    move-result v5

    .line 1172
    if-nez v5, :cond_14

    .line 1173
    .line 1174
    move v9, v6

    .line 1175
    goto :goto_17

    .line 1176
    :cond_14
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1177
    .line 1178
    .line 1179
    move-result v9

    .line 1180
    add-int/2addr v9, v14

    .line 1181
    mul-int/2addr v9, v5

    .line 1182
    :goto_17
    add-int/2addr v8, v9

    .line 1183
    goto/16 :goto_20

    .line 1184
    .line 1185
    :pswitch_2c
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v5

    .line 1189
    check-cast v5, Ljava/util/List;

    .line 1190
    .line 1191
    invoke-static {v5, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 1192
    .line 1193
    .line 1194
    move-result v5

    .line 1195
    goto/16 :goto_4

    .line 1196
    .line 1197
    :pswitch_2d
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v5

    .line 1201
    check-cast v5, Ljava/util/List;

    .line 1202
    .line 1203
    invoke-static {v5, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 1204
    .line 1205
    .line 1206
    move-result v5

    .line 1207
    goto/16 :goto_4

    .line 1208
    .line 1209
    :pswitch_2e
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v5

    .line 1213
    check-cast v5, Ljava/util/List;

    .line 1214
    .line 1215
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1216
    .line 1217
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1218
    .line 1219
    .line 1220
    move-result v9

    .line 1221
    if-nez v9, :cond_15

    .line 1222
    .line 1223
    goto/16 :goto_f

    .line 1224
    .line 1225
    :cond_15
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 1226
    .line 1227
    .line 1228
    move-result v5

    .line 1229
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1230
    .line 1231
    .line 1232
    move-result v10

    .line 1233
    goto/16 :goto_10

    .line 1234
    .line 1235
    :pswitch_2f
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v5

    .line 1239
    check-cast v5, Ljava/util/List;

    .line 1240
    .line 1241
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1242
    .line 1243
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1244
    .line 1245
    .line 1246
    move-result v9

    .line 1247
    if-nez v9, :cond_16

    .line 1248
    .line 1249
    goto/16 :goto_f

    .line 1250
    .line 1251
    :cond_16
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 1252
    .line 1253
    .line 1254
    move-result v5

    .line 1255
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1256
    .line 1257
    .line 1258
    move-result v10

    .line 1259
    goto/16 :goto_10

    .line 1260
    .line 1261
    :pswitch_30
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v5

    .line 1265
    check-cast v5, Ljava/util/List;

    .line 1266
    .line 1267
    sget-object v9, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1268
    .line 1269
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1270
    .line 1271
    .line 1272
    move-result v9

    .line 1273
    if-nez v9, :cond_17

    .line 1274
    .line 1275
    goto/16 :goto_f

    .line 1276
    .line 1277
    :cond_17
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 1278
    .line 1279
    .line 1280
    move-result v9

    .line 1281
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1282
    .line 1283
    .line 1284
    move-result v5

    .line 1285
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1286
    .line 1287
    .line 1288
    move-result v10

    .line 1289
    mul-int/2addr v10, v5

    .line 1290
    add-int/2addr v10, v9

    .line 1291
    goto/16 :goto_11

    .line 1292
    .line 1293
    :pswitch_31
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v5

    .line 1297
    check-cast v5, Ljava/util/List;

    .line 1298
    .line 1299
    invoke-static {v5, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 1300
    .line 1301
    .line 1302
    move-result v5

    .line 1303
    goto/16 :goto_4

    .line 1304
    .line 1305
    :pswitch_32
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v5

    .line 1309
    check-cast v5, Ljava/util/List;

    .line 1310
    .line 1311
    invoke-static {v5, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 1312
    .line 1313
    .line 1314
    move-result v5

    .line 1315
    goto/16 :goto_4

    .line 1316
    .line 1317
    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v5

    .line 1321
    if-eqz v5, :cond_1b

    .line 1322
    .line 1323
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v5

    .line 1327
    check-cast v5, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 1328
    .line 1329
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v9

    .line 1333
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1334
    .line 1335
    .line 1336
    move-result v10

    .line 1337
    mul-int/lit8 v10, v10, 0x2

    .line 1338
    .line 1339
    invoke-virtual {v5, v9}, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/glance/appwidget/protobuf/Schema;)I

    .line 1340
    .line 1341
    .line 1342
    move-result v5

    .line 1343
    goto/16 :goto_3

    .line 1344
    .line 1345
    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1346
    .line 1347
    .line 1348
    move-result v5

    .line 1349
    if-eqz v5, :cond_18

    .line 1350
    .line 1351
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1352
    .line 1353
    .line 1354
    move-result-wide v12

    .line 1355
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1356
    .line 1357
    .line 1358
    move-result v0

    .line 1359
    shl-long v10, v12, v14

    .line 1360
    .line 1361
    shr-long/2addr v12, v9

    .line 1362
    xor-long/2addr v10, v12

    .line 1363
    invoke-static {v10, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1364
    .line 1365
    .line 1366
    move-result v5

    .line 1367
    :goto_18
    add-int/2addr v5, v0

    .line 1368
    add-int/2addr v8, v5

    .line 1369
    :cond_18
    :goto_19
    move-object/from16 v0, p0

    .line 1370
    .line 1371
    goto/16 :goto_20

    .line 1372
    .line 1373
    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v5

    .line 1377
    if-eqz v5, :cond_18

    .line 1378
    .line 1379
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1380
    .line 1381
    .line 1382
    move-result v0

    .line 1383
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1384
    .line 1385
    .line 1386
    move-result v5

    .line 1387
    shl-int/lit8 v9, v0, 0x1

    .line 1388
    .line 1389
    shr-int/lit8 v0, v0, 0x1f

    .line 1390
    .line 1391
    xor-int/2addr v0, v9

    .line 1392
    invoke-static {v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1393
    .line 1394
    .line 1395
    move-result v0

    .line 1396
    :goto_1a
    add-int/2addr v0, v5

    .line 1397
    :goto_1b
    add-int/2addr v8, v0

    .line 1398
    goto :goto_19

    .line 1399
    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1400
    .line 1401
    .line 1402
    move-result v5

    .line 1403
    if-eqz v5, :cond_19

    .line 1404
    .line 1405
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1406
    .line 1407
    .line 1408
    move-result v0

    .line 1409
    :goto_1c
    add-int/lit8 v0, v0, 0x8

    .line 1410
    .line 1411
    :goto_1d
    add-int/2addr v8, v0

    .line 1412
    :cond_19
    move-object/from16 v0, p0

    .line 1413
    .line 1414
    move-object/from16 v1, p1

    .line 1415
    .line 1416
    goto/16 :goto_20

    .line 1417
    .line 1418
    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v5

    .line 1422
    if-eqz v5, :cond_19

    .line 1423
    .line 1424
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1425
    .line 1426
    .line 1427
    move-result v0

    .line 1428
    :goto_1e
    add-int/lit8 v0, v0, 0x4

    .line 1429
    .line 1430
    goto :goto_1d

    .line 1431
    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1432
    .line 1433
    .line 1434
    move-result v5

    .line 1435
    if-eqz v5, :cond_18

    .line 1436
    .line 1437
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1438
    .line 1439
    .line 1440
    move-result v0

    .line 1441
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1442
    .line 1443
    .line 1444
    move-result v5

    .line 1445
    int-to-long v9, v0

    .line 1446
    invoke-static {v9, v10}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1447
    .line 1448
    .line 1449
    move-result v0

    .line 1450
    goto :goto_1a

    .line 1451
    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1452
    .line 1453
    .line 1454
    move-result v5

    .line 1455
    if-eqz v5, :cond_18

    .line 1456
    .line 1457
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1458
    .line 1459
    .line 1460
    move-result v0

    .line 1461
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1462
    .line 1463
    .line 1464
    move-result v5

    .line 1465
    invoke-static {v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1466
    .line 1467
    .line 1468
    move-result v0

    .line 1469
    goto :goto_1a

    .line 1470
    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v5

    .line 1474
    if-eqz v5, :cond_18

    .line 1475
    .line 1476
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v0

    .line 1480
    check-cast v0, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 1481
    .line 1482
    invoke-static {v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeBytesSize(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)I

    .line 1483
    .line 1484
    .line 1485
    move-result v0

    .line 1486
    goto :goto_1b

    .line 1487
    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v5

    .line 1491
    if-eqz v5, :cond_1b

    .line 1492
    .line 1493
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v5

    .line 1497
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v9

    .line 1501
    sget-object v10, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1502
    .line 1503
    check-cast v5, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 1504
    .line 1505
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1506
    .line 1507
    .line 1508
    move-result v10

    .line 1509
    invoke-virtual {v5, v9}, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/glance/appwidget/protobuf/Schema;)I

    .line 1510
    .line 1511
    .line 1512
    move-result v5

    .line 1513
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1514
    .line 1515
    .line 1516
    move-result v9

    .line 1517
    goto/16 :goto_a

    .line 1518
    .line 1519
    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1520
    .line 1521
    .line 1522
    move-result v5

    .line 1523
    if-eqz v5, :cond_18

    .line 1524
    .line 1525
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v0

    .line 1529
    instance-of v5, v0, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 1530
    .line 1531
    if-eqz v5, :cond_1a

    .line 1532
    .line 1533
    check-cast v0, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 1534
    .line 1535
    invoke-static {v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeBytesSize(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)I

    .line 1536
    .line 1537
    .line 1538
    move-result v0

    .line 1539
    :goto_1f
    add-int/2addr v0, v8

    .line 1540
    move v8, v0

    .line 1541
    goto/16 :goto_19

    .line 1542
    .line 1543
    :cond_1a
    check-cast v0, Ljava/lang/String;

    .line 1544
    .line 1545
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1546
    .line 1547
    .line 1548
    move-result v5

    .line 1549
    invoke-static {v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 1550
    .line 1551
    .line 1552
    move-result v0

    .line 1553
    add-int/2addr v0, v5

    .line 1554
    goto :goto_1f

    .line 1555
    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1556
    .line 1557
    .line 1558
    move-result v5

    .line 1559
    if-eqz v5, :cond_19

    .line 1560
    .line 1561
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1562
    .line 1563
    .line 1564
    move-result v0

    .line 1565
    add-int/2addr v0, v14

    .line 1566
    goto/16 :goto_1d

    .line 1567
    .line 1568
    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1569
    .line 1570
    .line 1571
    move-result v5

    .line 1572
    if-eqz v5, :cond_19

    .line 1573
    .line 1574
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1575
    .line 1576
    .line 1577
    move-result v0

    .line 1578
    goto/16 :goto_1e

    .line 1579
    .line 1580
    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1581
    .line 1582
    .line 1583
    move-result v5

    .line 1584
    if-eqz v5, :cond_19

    .line 1585
    .line 1586
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1587
    .line 1588
    .line 1589
    move-result v0

    .line 1590
    goto/16 :goto_1c

    .line 1591
    .line 1592
    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v5

    .line 1596
    if-eqz v5, :cond_18

    .line 1597
    .line 1598
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1599
    .line 1600
    .line 1601
    move-result v0

    .line 1602
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1603
    .line 1604
    .line 1605
    move-result v5

    .line 1606
    int-to-long v9, v0

    .line 1607
    invoke-static {v9, v10}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1608
    .line 1609
    .line 1610
    move-result v0

    .line 1611
    goto/16 :goto_1a

    .line 1612
    .line 1613
    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1614
    .line 1615
    .line 1616
    move-result v5

    .line 1617
    if-eqz v5, :cond_18

    .line 1618
    .line 1619
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1620
    .line 1621
    .line 1622
    move-result-wide v9

    .line 1623
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1624
    .line 1625
    .line 1626
    move-result v0

    .line 1627
    invoke-static {v9, v10}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1628
    .line 1629
    .line 1630
    move-result v5

    .line 1631
    goto/16 :goto_18

    .line 1632
    .line 1633
    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1634
    .line 1635
    .line 1636
    move-result v5

    .line 1637
    if-eqz v5, :cond_18

    .line 1638
    .line 1639
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1640
    .line 1641
    .line 1642
    move-result-wide v9

    .line 1643
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1644
    .line 1645
    .line 1646
    move-result v0

    .line 1647
    invoke-static {v9, v10}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1648
    .line 1649
    .line 1650
    move-result v5

    .line 1651
    goto/16 :goto_18

    .line 1652
    .line 1653
    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1654
    .line 1655
    .line 1656
    move-result v5

    .line 1657
    if-eqz v5, :cond_19

    .line 1658
    .line 1659
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1660
    .line 1661
    .line 1662
    move-result v0

    .line 1663
    goto/16 :goto_1e

    .line 1664
    .line 1665
    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 1666
    .line 1667
    .line 1668
    move-result v5

    .line 1669
    if-eqz v5, :cond_1b

    .line 1670
    .line 1671
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1672
    .line 1673
    .line 1674
    move-result v5

    .line 1675
    goto/16 :goto_8

    .line 1676
    .line 1677
    :cond_1b
    :goto_20
    add-int/lit8 v2, v2, 0x3

    .line 1678
    .line 1679
    goto/16 :goto_0

    .line 1680
    .line 1681
    :cond_1c
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 1682
    .line 1683
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1684
    .line 1685
    .line 1686
    iget-object v0, v1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 1687
    .line 1688
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    .line 1689
    .line 1690
    .line 1691
    move-result v0

    .line 1692
    add-int/2addr v0, v8

    .line 1693
    return v0

    .line 1694
    nop

    .line 1695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    invoke-static {v4}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v8, 0x4d5

    .line 24
    .line 25
    const/16 v9, 0x4cf

    .line 26
    .line 27
    const/16 v10, 0x25

    .line 28
    .line 29
    packed-switch v4, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    mul-int/lit8 v3, v3, 0x35

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    :goto_1
    add-int/2addr v4, v3

    .line 51
    move v3, v4

    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    mul-int/lit8 v3, v3, 0x35

    .line 61
    .line 62
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    goto :goto_1

    .line 71
    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    mul-int/lit8 v3, v3, 0x35

    .line 78
    .line 79
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    goto :goto_1

    .line 84
    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    mul-int/lit8 v3, v3, 0x35

    .line 91
    .line 92
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    goto :goto_1

    .line 101
    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    mul-int/lit8 v3, v3, 0x35

    .line 108
    .line 109
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    goto :goto_1

    .line 114
    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_2

    .line 119
    .line 120
    mul-int/lit8 v3, v3, 0x35

    .line 121
    .line 122
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    goto :goto_1

    .line 127
    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    mul-int/lit8 v3, v3, 0x35

    .line 134
    .line 135
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    goto :goto_1

    .line 140
    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    mul-int/lit8 v3, v3, 0x35

    .line 147
    .line 148
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    goto :goto_1

    .line 157
    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_2

    .line 162
    .line 163
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    mul-int/lit8 v3, v3, 0x35

    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    goto :goto_1

    .line 174
    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_2

    .line 179
    .line 180
    mul-int/lit8 v3, v3, 0x35

    .line 181
    .line 182
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_2

    .line 199
    .line 200
    mul-int/lit8 v3, v3, 0x35

    .line 201
    .line 202
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Ljava/lang/Boolean;

    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    sget-object v5, Landroidx/glance/appwidget/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 213
    .line 214
    if-eqz v4, :cond_0

    .line 215
    .line 216
    :goto_2
    move v8, v9

    .line 217
    :cond_0
    add-int/2addr v8, v3

    .line 218
    move v3, v8

    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_2

    .line 226
    .line 227
    mul-int/lit8 v3, v3, 0x35

    .line 228
    .line 229
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_2

    .line 240
    .line 241
    mul-int/lit8 v3, v3, 0x35

    .line 242
    .line 243
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 244
    .line 245
    .line 246
    move-result-wide v4

    .line 247
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_2

    .line 258
    .line 259
    mul-int/lit8 v3, v3, 0x35

    .line 260
    .line 261
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_2

    .line 272
    .line 273
    mul-int/lit8 v3, v3, 0x35

    .line 274
    .line 275
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 276
    .line 277
    .line 278
    move-result-wide v4

    .line 279
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_2

    .line 290
    .line 291
    mul-int/lit8 v3, v3, 0x35

    .line 292
    .line 293
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 294
    .line 295
    .line 296
    move-result-wide v4

    .line 297
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eqz v4, :cond_2

    .line 308
    .line 309
    mul-int/lit8 v3, v3, 0x35

    .line 310
    .line 311
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    check-cast v4, Ljava/lang/Float;

    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_2

    .line 332
    .line 333
    mul-int/lit8 v3, v3, 0x35

    .line 334
    .line 335
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    check-cast v4, Ljava/lang/Double;

    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 342
    .line 343
    .line 344
    move-result-wide v4

    .line 345
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 346
    .line 347
    .line 348
    move-result-wide v4

    .line 349
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 356
    .line 357
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 368
    .line 369
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :pswitch_14
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    if-eqz v4, :cond_1

    .line 384
    .line 385
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    .line 390
    .line 391
    add-int/2addr v3, v10

    .line 392
    goto/16 :goto_4

    .line 393
    .line 394
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 395
    .line 396
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 397
    .line 398
    .line 399
    move-result-wide v4

    .line 400
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 407
    .line 408
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 415
    .line 416
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 417
    .line 418
    .line 419
    move-result-wide v4

    .line 420
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 427
    .line 428
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 435
    .line 436
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    goto/16 :goto_1

    .line 441
    .line 442
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 443
    .line 444
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    goto/16 :goto_1

    .line 449
    .line 450
    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 451
    .line 452
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :pswitch_1c
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    if-eqz v4, :cond_1

    .line 467
    .line 468
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 469
    .line 470
    .line 471
    move-result v10

    .line 472
    goto :goto_3

    .line 473
    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 474
    .line 475
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    check-cast v4, Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    goto/16 :goto_1

    .line 486
    .line 487
    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 488
    .line 489
    sget-object v4, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 490
    .line 491
    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    sget-object v5, Landroidx/glance/appwidget/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 496
    .line 497
    if-eqz v4, :cond_0

    .line 498
    .line 499
    goto/16 :goto_2

    .line 500
    .line 501
    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 502
    .line 503
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    goto/16 :goto_1

    .line 508
    .line 509
    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 510
    .line 511
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 512
    .line 513
    .line 514
    move-result-wide v4

    .line 515
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    goto/16 :goto_1

    .line 520
    .line 521
    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 522
    .line 523
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 524
    .line 525
    .line 526
    move-result v4

    .line 527
    goto/16 :goto_1

    .line 528
    .line 529
    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 530
    .line 531
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 532
    .line 533
    .line 534
    move-result-wide v4

    .line 535
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    goto/16 :goto_1

    .line 540
    .line 541
    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 542
    .line 543
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 544
    .line 545
    .line 546
    move-result-wide v4

    .line 547
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    goto/16 :goto_1

    .line 552
    .line 553
    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 554
    .line 555
    sget-object v4, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 556
    .line 557
    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    goto/16 :goto_1

    .line 566
    .line 567
    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 568
    .line 569
    sget-object v4, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 570
    .line 571
    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 572
    .line 573
    .line 574
    move-result-wide v4

    .line 575
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 576
    .line 577
    .line 578
    move-result-wide v4

    .line 579
    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/Internal;->hashLong(J)I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    goto/16 :goto_1

    .line 584
    .line 585
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :cond_3
    mul-int/lit8 v3, v3, 0x35

    .line 590
    .line 591
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 592
    .line 593
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 597
    .line 598
    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->hashCode()I

    .line 599
    .line 600
    .line 601
    move-result p0

    .line 602
    add-int/2addr p0, v3

    .line 603
    return p0

    .line 604
    nop

    .line 605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isFieldPresent(ILjava/lang/Object;)Z
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    and-int p1, p0, v1

    .line 27
    .line 28
    int-to-long v0, p1

    .line 29
    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 39
    .line 40
    .line 41
    return v5

    .line 42
    :pswitch_0
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_1
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    cmp-long p0, p0, v2

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :pswitch_2
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_3
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    cmp-long p0, p0, v2

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_4
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_5
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :pswitch_6
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_7
    sget-object p0, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;->EMPTY:Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 103
    .line 104
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    xor-int/2addr p0, v6

    .line 113
    return p0

    .line 114
    :pswitch_8
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :pswitch_9
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    instance-of p1, p0, Ljava/lang/String;

    .line 127
    .line 128
    if-eqz p1, :cond_0

    .line 129
    .line 130
    check-cast p0, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    xor-int/2addr p0, v6

    .line 137
    return p0

    .line 138
    :cond_0
    instance-of p1, p0, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 139
    .line 140
    if-eqz p1, :cond_1

    .line 141
    .line 142
    sget-object p1, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;->EMPTY:Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 143
    .line 144
    invoke-virtual {p1, p0}, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    xor-int/2addr p0, v6

    .line 149
    return p0

    .line 150
    :cond_1
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 151
    .line 152
    .line 153
    return v5

    .line 154
    :pswitch_a
    sget-object p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 155
    .line 156
    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    return p0

    .line 161
    :pswitch_b
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_3

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :pswitch_c
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 169
    .line 170
    .line 171
    move-result-wide p0

    .line 172
    cmp-long p0, p0, v2

    .line 173
    .line 174
    if-eqz p0, :cond_3

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :pswitch_d
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_3

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :pswitch_e
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 185
    .line 186
    .line 187
    move-result-wide p0

    .line 188
    cmp-long p0, p0, v2

    .line 189
    .line 190
    if-eqz p0, :cond_3

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :pswitch_f
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 194
    .line 195
    .line 196
    move-result-wide p0

    .line 197
    cmp-long p0, p0, v2

    .line 198
    .line 199
    if-eqz p0, :cond_3

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :pswitch_10
    sget-object p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 203
    .line 204
    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-eqz p0, :cond_3

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :pswitch_11
    sget-object p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 216
    .line 217
    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 218
    .line 219
    .line 220
    move-result-wide p0

    .line 221
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 222
    .line 223
    .line 224
    move-result-wide p0

    .line 225
    cmp-long p0, p0, v2

    .line 226
    .line 227
    if-eqz p0, :cond_3

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    .line 231
    .line 232
    shl-int p0, v6, p0

    .line 233
    .line 234
    invoke-static {v2, v3, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    and-int/2addr p0, p1

    .line 239
    if-eqz p0, :cond_3

    .line 240
    .line 241
    :goto_0
    return v6

    .line 242
    :cond_3
    return v5

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isFieldPresent(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 243
    invoke-virtual {p0, p2, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v6, 0xfffff

    .line 6
    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    move v2, v6

    .line 10
    move v3, v7

    .line 11
    move v8, v3

    .line 12
    :goto_0
    iget v4, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->checkInitializedCount:I

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v8, v4, :cond_b

    .line 16
    .line 17
    iget-object v4, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->intArray:[I

    .line 18
    .line 19
    aget v4, v4, v8

    .line 20
    .line 21
    iget-object v9, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 22
    .line 23
    aget v10, v9, v4

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 26
    .line 27
    .line 28
    move-result v11

    .line 29
    add-int/lit8 v12, v4, 0x2

    .line 30
    .line 31
    aget v9, v9, v12

    .line 32
    .line 33
    and-int v12, v9, v6

    .line 34
    .line 35
    ushr-int/lit8 v9, v9, 0x14

    .line 36
    .line 37
    shl-int/2addr v5, v9

    .line 38
    if-eq v12, v2, :cond_1

    .line 39
    .line 40
    if-eq v12, v6, :cond_0

    .line 41
    .line 42
    sget-object v2, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 43
    .line 44
    int-to-long v13, v12

    .line 45
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :cond_0
    move v2, v4

    .line 50
    move v4, v3

    .line 51
    move v3, v12

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v15, v3

    .line 54
    move v3, v2

    .line 55
    move v2, v4

    .line 56
    move v4, v15

    .line 57
    :goto_1
    const/high16 v9, 0x10000000

    .line 58
    .line 59
    and-int/2addr v9, v11

    .line 60
    if-eqz v9, :cond_2

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_2

    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_2
    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const/16 v12, 0x9

    .line 75
    .line 76
    if-eq v9, v12, :cond_9

    .line 77
    .line 78
    const/16 v12, 0x11

    .line 79
    .line 80
    if-eq v9, v12, :cond_9

    .line 81
    .line 82
    const/16 v5, 0x1b

    .line 83
    .line 84
    if-eq v9, v5, :cond_6

    .line 85
    .line 86
    const/16 v5, 0x3c

    .line 87
    .line 88
    if-eq v9, v5, :cond_5

    .line 89
    .line 90
    const/16 v5, 0x44

    .line 91
    .line 92
    if-eq v9, v5, :cond_5

    .line 93
    .line 94
    const/16 v5, 0x31

    .line 95
    .line 96
    if-eq v9, v5, :cond_6

    .line 97
    .line 98
    const/16 v5, 0x32

    .line 99
    .line 100
    if-eq v9, v5, :cond_3

    .line 101
    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :cond_3
    and-int v5, v11, v6

    .line 105
    .line 106
    int-to-long v9, v5

    .line 107
    invoke-static {v9, v10, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iget-object v9, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->mapFieldSchema:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    check-cast v5, Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_4

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_4
    div-int/lit8 v4, v2, 0x3

    .line 126
    .line 127
    mul-int/lit8 v4, v4, 0x2

    .line 128
    .line 129
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 130
    .line 131
    aget-object v0, v0, v4

    .line 132
    .line 133
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    throw v0

    .line 138
    :cond_5
    invoke-virtual {v0, v10, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_a

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    and-int v5, v11, v6

    .line 149
    .line 150
    int-to-long v9, v5

    .line 151
    invoke-static {v9, v10, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-interface {v2, v5}, Landroidx/glance/appwidget/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_a

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    and-int v5, v11, v6

    .line 163
    .line 164
    int-to-long v9, v5

    .line 165
    invoke-static {v9, v10, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-eqz v9, :cond_7

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_7
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    move v9, v7

    .line 183
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-ge v9, v10, :cond_a

    .line 188
    .line 189
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-interface {v2, v10}, Landroidx/glance/appwidget/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-nez v10, :cond_8

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_9
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    and-int v5, v11, v6

    .line 214
    .line 215
    int-to-long v9, v5

    .line 216
    invoke-static {v9, v10, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-interface {v2, v5}, Landroidx/glance/appwidget/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_a

    .line 225
    .line 226
    :goto_3
    return v7

    .line 227
    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 228
    .line 229
    move v2, v3

    .line 230
    move v3, v4

    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_b
    return v5
.end method

.method public final isOneofPresent(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {v0, v1, p3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 29
    .line 30
    array-length v2, v0

    .line 31
    move v3, v1

    .line 32
    :goto_0
    if-ge v3, v2, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const v5, 0xfffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v5, v4

    .line 42
    int-to-long v5, v5

    .line 43
    invoke-static {v4}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v7, 0x9

    .line 48
    .line 49
    sget-object v8, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 50
    .line 51
    if-eq v4, v7, :cond_3

    .line 52
    .line 53
    const/16 v7, 0x3c

    .line 54
    .line 55
    if-eq v4, v7, :cond_2

    .line 56
    .line 57
    const/16 v7, 0x44

    .line 58
    .line 59
    if-eq v4, v7, :cond_2

    .line 60
    .line 61
    packed-switch v4, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_0
    invoke-virtual {v8, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    iget-object v7, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->mapFieldSchema:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-object v7, v4

    .line 77
    check-cast v7, Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 78
    .line 79
    iput-boolean v1, v7, Landroidx/glance/appwidget/protobuf/MapFieldLite;->isMutable:Z

    .line 80
    .line 81
    invoke-virtual {v8, p1, v5, v6, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_1
    iget-object v4, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->listFieldSchema:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v6, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 95
    .line 96
    check-cast v4, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 97
    .line 98
    iget-boolean v5, v4, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->isMutable:Z

    .line 99
    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    iput-boolean v1, v4, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->isMutable:Z

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    aget v4, v0, v3

    .line 106
    .line 107
    invoke-virtual {p0, v4, v3, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v8, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-interface {v4, v5}, Landroidx/glance/appwidget/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v8, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-interface {v4, v5}, Landroidx/glance/appwidget/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_5
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    check-cast p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 151
    .line 152
    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 153
    .line 154
    iget-boolean p1, p0, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 155
    .line 156
    if-eqz p1, :cond_6

    .line 157
    .line 158
    iput-boolean v1, p0, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 159
    .line 160
    :cond_6
    :goto_2
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_f

    .line 17
    .line 18
    iget-object v8, v1, Landroidx/glance/appwidget/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 19
    .line 20
    iget-object v9, v1, Landroidx/glance/appwidget/protobuf/MessageSchema;->intArray:[I

    .line 21
    .line 22
    iget v10, v1, Landroidx/glance/appwidget/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 23
    .line 24
    iget v11, v1, Landroidx/glance/appwidget/protobuf/MessageSchema;->checkInitializedCount:I

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->getFieldNumber()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v1, v0}, Landroidx/glance/appwidget/protobuf/MessageSchema;->positionForFieldNumber(I)I

    .line 32
    .line 33
    .line 34
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 v14, 0x0

    .line 36
    if-gez v7, :cond_5

    .line 37
    .line 38
    const v3, 0x7fffffff

    .line 39
    .line 40
    .line 41
    if-ne v0, v3, :cond_1

    .line 42
    .line 43
    :goto_1
    if-ge v11, v10, :cond_0

    .line 44
    .line 45
    aget v0, v9, v11

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2, v13}, Landroidx/glance/appwidget/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v11, v11, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    if-eqz v13, :cond_b

    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    :goto_2
    move-object v0, v2

    .line 59
    check-cast v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 60
    .line 61
    iput-object v13, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 62
    .line 63
    goto/16 :goto_10

    .line 64
    .line 65
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    if-nez v13, :cond_2

    .line 69
    .line 70
    invoke-static {v2}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;->getBuilderFromMessage(Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v13, v0

    .line 75
    goto :goto_3

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    move-object v6, v1

    .line 78
    move/from16 v19, v11

    .line 79
    .line 80
    goto/16 :goto_12

    .line 81
    .line 82
    :cond_2
    :goto_3
    invoke-static {v14, v4, v13}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;->mergeOneFieldFrom(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    :goto_4
    if-ge v11, v10, :cond_4

    .line 90
    .line 91
    aget v0, v9, v11

    .line 92
    .line 93
    invoke-virtual {v1, v0, v2, v13}, Landroidx/glance/appwidget/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v11, v11, 0x1

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    if-eqz v13, :cond_b

    .line 100
    .line 101
    :goto_5
    goto :goto_2

    .line 102
    :cond_5
    :try_start_2
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 103
    .line 104
    .line 105
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    .line 107
    .line 108
    .line 109
    move-result v5
    :try_end_3
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    const/16 v16, 0x0

    .line 111
    .line 112
    const v17, 0xfffff

    .line 113
    .line 114
    .line 115
    sget-object v15, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 116
    .line 117
    iget-object v12, v1, Landroidx/glance/appwidget/protobuf/MessageSchema;->listFieldSchema:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

    .line 118
    .line 119
    packed-switch v5, :pswitch_data_0

    .line 120
    .line 121
    .line 122
    if-nez v13, :cond_6

    .line 123
    .line 124
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {v2}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;->getBuilderFromMessage(Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    move-object v13, v0

    .line 132
    goto :goto_7

    .line 133
    :catch_0
    move-object v6, v1

    .line 134
    move/from16 v19, v11

    .line 135
    .line 136
    :goto_6
    move-object v11, v4

    .line 137
    goto/16 :goto_e

    .line 138
    .line 139
    :cond_6
    :goto_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-static {v14, v4, v13}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;->mergeOneFieldFrom(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0
    :try_end_4
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    if-nez v0, :cond_8

    .line 147
    .line 148
    :goto_8
    if-ge v11, v10, :cond_7

    .line 149
    .line 150
    aget v0, v9, v11

    .line 151
    .line 152
    invoke-virtual {v1, v0, v2, v13}, Landroidx/glance/appwidget/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    add-int/lit8 v11, v11, 0x1

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_7
    if-eqz v13, :cond_b

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_8
    move-object v6, v1

    .line 162
    move/from16 v19, v11

    .line 163
    .line 164
    goto :goto_a

    .line 165
    :pswitch_0
    :try_start_5
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 170
    .line 171
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    const/4 v12, 0x3

    .line 176
    invoke-virtual {v4, v12}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v3, v5, v6}, Landroidx/compose/ui/text/input/GapBuffer;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 183
    .line 184
    .line 185
    move-result v5
    :try_end_5
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    and-int v5, v5, v17

    .line 187
    .line 188
    move/from16 v19, v11

    .line 189
    .line 190
    int-to-long v11, v5

    .line 191
    :try_start_6
    invoke-virtual {v15, v2, v11, v12, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :goto_9
    move-object v6, v1

    .line 198
    :goto_a
    move-object v11, v4

    .line 199
    goto/16 :goto_11

    .line 200
    .line 201
    :goto_b
    move-object v6, v1

    .line 202
    goto/16 :goto_12

    .line 203
    .line 204
    :catch_1
    :goto_c
    move-object v6, v1

    .line 205
    goto :goto_6

    .line 206
    :catchall_1
    move-exception v0

    .line 207
    move/from16 v19, v11

    .line 208
    .line 209
    goto :goto_b

    .line 210
    :catch_2
    move/from16 v19, v11

    .line 211
    .line 212
    goto :goto_c

    .line 213
    :pswitch_1
    move/from16 v19, v11

    .line 214
    .line 215
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 216
    .line 217
    .line 218
    move-result-wide v11

    .line 219
    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 220
    .line 221
    .line 222
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 225
    .line 226
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSInt64()J

    .line 227
    .line 228
    .line 229
    move-result-wide v17

    .line 230
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    goto :goto_9

    .line 241
    :catchall_2
    move-exception v0

    .line 242
    goto :goto_b

    .line 243
    :pswitch_2
    move/from16 v19, v11

    .line 244
    .line 245
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 246
    .line 247
    .line 248
    move-result-wide v11

    .line 249
    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 250
    .line 251
    .line 252
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 255
    .line 256
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSInt32()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    goto :goto_9

    .line 271
    :pswitch_3
    move/from16 v19, v11

    .line 272
    .line 273
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 274
    .line 275
    .line 276
    move-result-wide v11

    .line 277
    const/4 v3, 0x1

    .line 278
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 279
    .line 280
    .line 281
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 284
    .line 285
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSFixed64()J

    .line 286
    .line 287
    .line 288
    move-result-wide v17

    .line 289
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    goto :goto_9

    .line 300
    :pswitch_4
    move/from16 v19, v11

    .line 301
    .line 302
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 303
    .line 304
    .line 305
    move-result-wide v11

    .line 306
    const/4 v3, 0x5

    .line 307
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 308
    .line 309
    .line 310
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 313
    .line 314
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSFixed32()I

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_9

    .line 329
    .line 330
    :pswitch_5
    move/from16 v19, v11

    .line 331
    .line 332
    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 333
    .line 334
    .line 335
    iget-object v5, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v5, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 338
    .line 339
    invoke-virtual {v5}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readEnum()I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 344
    .line 345
    .line 346
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v11

    .line 350
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_9

    .line 361
    .line 362
    :pswitch_6
    move/from16 v19, v11

    .line 363
    .line 364
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 365
    .line 366
    .line 367
    move-result-wide v11

    .line 368
    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 369
    .line 370
    .line 371
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 374
    .line 375
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_9

    .line 390
    .line 391
    :pswitch_7
    move/from16 v19, v11

    .line 392
    .line 393
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 394
    .line 395
    .line 396
    move-result-wide v11

    .line 397
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_9

    .line 408
    .line 409
    :pswitch_8
    move/from16 v19, v11

    .line 410
    .line 411
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    check-cast v3, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 416
    .line 417
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    const/4 v11, 0x2

    .line 422
    invoke-virtual {v4, v11}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v4, v3, v5, v6}, Landroidx/compose/ui/text/input/GapBuffer;->mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    and-int v5, v5, v17

    .line 433
    .line 434
    int-to-long v11, v5

    .line 435
    invoke-virtual {v15, v2, v11, v12, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_9

    .line 442
    .line 443
    :pswitch_9
    move/from16 v19, v11

    .line 444
    .line 445
    invoke-virtual {v1, v3, v4, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->readString(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_9

    .line 452
    .line 453
    :pswitch_a
    move/from16 v19, v11

    .line 454
    .line 455
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 456
    .line 457
    .line 458
    move-result-wide v11

    .line 459
    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 460
    .line 461
    .line 462
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 465
    .line 466
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readBool()Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_9

    .line 481
    .line 482
    :pswitch_b
    move/from16 v19, v11

    .line 483
    .line 484
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 485
    .line 486
    .line 487
    move-result-wide v11

    .line 488
    const/4 v3, 0x5

    .line 489
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 490
    .line 491
    .line 492
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 495
    .line 496
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFixed32()I

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_9

    .line 511
    .line 512
    :pswitch_c
    move/from16 v19, v11

    .line 513
    .line 514
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 515
    .line 516
    .line 517
    move-result-wide v11

    .line 518
    const/4 v3, 0x1

    .line 519
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 520
    .line 521
    .line 522
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 525
    .line 526
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFixed64()J

    .line 527
    .line 528
    .line 529
    move-result-wide v17

    .line 530
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    goto/16 :goto_9

    .line 541
    .line 542
    :pswitch_d
    move/from16 v19, v11

    .line 543
    .line 544
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 545
    .line 546
    .line 547
    move-result-wide v11

    .line 548
    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 549
    .line 550
    .line 551
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 554
    .line 555
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readInt32()I

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_9

    .line 570
    .line 571
    :pswitch_e
    move/from16 v19, v11

    .line 572
    .line 573
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 574
    .line 575
    .line 576
    move-result-wide v11

    .line 577
    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 578
    .line 579
    .line 580
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 583
    .line 584
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt64()J

    .line 585
    .line 586
    .line 587
    move-result-wide v17

    .line 588
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_9

    .line 599
    .line 600
    :pswitch_f
    move/from16 v19, v11

    .line 601
    .line 602
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 603
    .line 604
    .line 605
    move-result-wide v11

    .line 606
    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 607
    .line 608
    .line 609
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 612
    .line 613
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readInt64()J

    .line 614
    .line 615
    .line 616
    move-result-wide v17

    .line 617
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_9

    .line 628
    .line 629
    :pswitch_10
    move/from16 v19, v11

    .line 630
    .line 631
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 632
    .line 633
    .line 634
    move-result-wide v11

    .line 635
    const/4 v3, 0x5

    .line 636
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 637
    .line 638
    .line 639
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 640
    .line 641
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 642
    .line 643
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFloat()F

    .line 644
    .line 645
    .line 646
    move-result v3

    .line 647
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_9

    .line 658
    .line 659
    :pswitch_11
    move/from16 v19, v11

    .line 660
    .line 661
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 662
    .line 663
    .line 664
    move-result-wide v11

    .line 665
    const/4 v3, 0x1

    .line 666
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 667
    .line 668
    .line 669
    iget-object v3, v4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 670
    .line 671
    check-cast v3, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 672
    .line 673
    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readDouble()D

    .line 674
    .line 675
    .line 676
    move-result-wide v17

    .line 677
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    invoke-static {v2, v11, v12, v3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v1, v0, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    goto/16 :goto_9

    .line 688
    .line 689
    :pswitch_12
    move/from16 v19, v11

    .line 690
    .line 691
    iget-object v0, v1, Landroidx/glance/appwidget/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 692
    .line 693
    div-int/lit8 v3, v7, 0x3

    .line 694
    .line 695
    const/16 v18, 0x2

    .line 696
    .line 697
    mul-int/lit8 v3, v3, 0x2

    .line 698
    .line 699
    aget-object v0, v0, v3

    .line 700
    .line 701
    invoke-virtual {v1, v7, v2, v0}, Landroidx/glance/appwidget/protobuf/MessageSchema;->mergeMap(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    throw v16
    :try_end_6
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 705
    :pswitch_13
    move/from16 v19, v11

    .line 706
    .line 707
    :try_start_7
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 708
    .line 709
    .line 710
    move-result-wide v3

    .line 711
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 712
    .line 713
    .line 714
    move-result-object v6
    :try_end_7
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 715
    move-object/from16 v5, p2

    .line 716
    .line 717
    move-object/from16 v7, p3

    .line 718
    .line 719
    :try_start_8
    invoke-virtual/range {v1 .. v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLandroidx/compose/ui/text/input/GapBuffer;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V
    :try_end_8
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 720
    .line 721
    .line 722
    move-object v4, v5

    .line 723
    goto/16 :goto_9

    .line 724
    .line 725
    :catch_3
    move-object v6, v1

    .line 726
    move-object v11, v5

    .line 727
    goto/16 :goto_e

    .line 728
    .line 729
    :catch_4
    move-object/from16 v11, p2

    .line 730
    .line 731
    :goto_d
    move-object v6, v1

    .line 732
    goto/16 :goto_e

    .line 733
    .line 734
    :pswitch_14
    move/from16 v19, v11

    .line 735
    .line 736
    :try_start_9
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 737
    .line 738
    .line 739
    move-result-wide v5

    .line 740
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 741
    .line 742
    .line 743
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 748
    .line 749
    .line 750
    goto/16 :goto_9

    .line 751
    .line 752
    :pswitch_15
    move/from16 v19, v11

    .line 753
    .line 754
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 755
    .line 756
    .line 757
    move-result-wide v5

    .line 758
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    .line 760
    .line 761
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 766
    .line 767
    .line 768
    goto/16 :goto_9

    .line 769
    .line 770
    :pswitch_16
    move/from16 v19, v11

    .line 771
    .line 772
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 773
    .line 774
    .line 775
    move-result-wide v5

    .line 776
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_9

    .line 787
    .line 788
    :pswitch_17
    move/from16 v19, v11

    .line 789
    .line 790
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 791
    .line 792
    .line 793
    move-result-wide v5

    .line 794
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 795
    .line 796
    .line 797
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 802
    .line 803
    .line 804
    goto/16 :goto_9

    .line 805
    .line 806
    :pswitch_18
    move/from16 v19, v11

    .line 807
    .line 808
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 809
    .line 810
    .line 811
    move-result-wide v5

    .line 812
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 813
    .line 814
    .line 815
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 816
    .line 817
    .line 818
    move-result-object v3

    .line 819
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/input/GapBuffer;->readEnumList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 823
    .line 824
    .line 825
    invoke-static {v2, v0, v3, v13, v8}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILandroidx/glance/appwidget/protobuf/Internal$ProtobufList;Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    goto/16 :goto_9

    .line 829
    .line 830
    :pswitch_19
    move/from16 v19, v11

    .line 831
    .line 832
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 833
    .line 834
    .line 835
    move-result-wide v5

    .line 836
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 844
    .line 845
    .line 846
    goto/16 :goto_9

    .line 847
    .line 848
    :pswitch_1a
    move/from16 v19, v11

    .line 849
    .line 850
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 851
    .line 852
    .line 853
    move-result-wide v5

    .line 854
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 855
    .line 856
    .line 857
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readBoolList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_9

    .line 865
    .line 866
    :pswitch_1b
    move/from16 v19, v11

    .line 867
    .line 868
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 869
    .line 870
    .line 871
    move-result-wide v5

    .line 872
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    .line 874
    .line 875
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 880
    .line 881
    .line 882
    goto/16 :goto_9

    .line 883
    .line 884
    :pswitch_1c
    move/from16 v19, v11

    .line 885
    .line 886
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 887
    .line 888
    .line 889
    move-result-wide v5

    .line 890
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    .line 892
    .line 893
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 898
    .line 899
    .line 900
    goto/16 :goto_9

    .line 901
    .line 902
    :pswitch_1d
    move/from16 v19, v11

    .line 903
    .line 904
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 905
    .line 906
    .line 907
    move-result-wide v5

    .line 908
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 909
    .line 910
    .line 911
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readInt32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 916
    .line 917
    .line 918
    goto/16 :goto_9

    .line 919
    .line 920
    :pswitch_1e
    move/from16 v19, v11

    .line 921
    .line 922
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 923
    .line 924
    .line 925
    move-result-wide v5

    .line 926
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 927
    .line 928
    .line 929
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 934
    .line 935
    .line 936
    goto/16 :goto_9

    .line 937
    .line 938
    :pswitch_1f
    move/from16 v19, v11

    .line 939
    .line 940
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 941
    .line 942
    .line 943
    move-result-wide v5

    .line 944
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 945
    .line 946
    .line 947
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readInt64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_9

    .line 955
    .line 956
    :pswitch_20
    move/from16 v19, v11

    .line 957
    .line 958
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 959
    .line 960
    .line 961
    move-result-wide v5

    .line 962
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    .line 964
    .line 965
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readFloatList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 970
    .line 971
    .line 972
    goto/16 :goto_9

    .line 973
    .line 974
    :pswitch_21
    move/from16 v19, v11

    .line 975
    .line 976
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 977
    .line 978
    .line 979
    move-result-wide v5

    .line 980
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 981
    .line 982
    .line 983
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readDoubleList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 988
    .line 989
    .line 990
    goto/16 :goto_9

    .line 991
    .line 992
    :pswitch_22
    move/from16 v19, v11

    .line 993
    .line 994
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 995
    .line 996
    .line 997
    move-result-wide v5

    .line 998
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1006
    .line 1007
    .line 1008
    goto/16 :goto_9

    .line 1009
    .line 1010
    :pswitch_23
    move/from16 v19, v11

    .line 1011
    .line 1012
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1013
    .line 1014
    .line 1015
    move-result-wide v5

    .line 1016
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1017
    .line 1018
    .line 1019
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1024
    .line 1025
    .line 1026
    goto/16 :goto_9

    .line 1027
    .line 1028
    :pswitch_24
    move/from16 v19, v11

    .line 1029
    .line 1030
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v5

    .line 1034
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1042
    .line 1043
    .line 1044
    goto/16 :goto_9

    .line 1045
    .line 1046
    :pswitch_25
    move/from16 v19, v11

    .line 1047
    .line 1048
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1049
    .line 1050
    .line 1051
    move-result-wide v5

    .line 1052
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    .line 1054
    .line 1055
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1060
    .line 1061
    .line 1062
    goto/16 :goto_9

    .line 1063
    .line 1064
    :pswitch_26
    move/from16 v19, v11

    .line 1065
    .line 1066
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1067
    .line 1068
    .line 1069
    move-result-wide v5

    .line 1070
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1071
    .line 1072
    .line 1073
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v3

    .line 1077
    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/input/GapBuffer;->readEnumList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 1081
    .line 1082
    .line 1083
    invoke-static {v2, v0, v3, v13, v8}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILandroidx/glance/appwidget/protobuf/Internal$ProtobufList;Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_9

    .line 1087
    .line 1088
    :pswitch_27
    move/from16 v19, v11

    .line 1089
    .line 1090
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v5

    .line 1094
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1095
    .line 1096
    .line 1097
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1102
    .line 1103
    .line 1104
    goto/16 :goto_9

    .line 1105
    .line 1106
    :pswitch_28
    move/from16 v19, v11

    .line 1107
    .line 1108
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1109
    .line 1110
    .line 1111
    move-result-wide v5

    .line 1112
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v5, v6, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readBytesList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    :try_end_9
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1120
    .line 1121
    .line 1122
    goto/16 :goto_9

    .line 1123
    .line 1124
    :pswitch_29
    move/from16 v19, v11

    .line 1125
    .line 1126
    :try_start_a
    invoke-virtual {v1, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v5
    :try_end_a
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1130
    move-object/from16 v6, p3

    .line 1131
    .line 1132
    :try_start_b
    invoke-virtual/range {v1 .. v6}, Landroidx/glance/appwidget/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILandroidx/compose/ui/text/input/GapBuffer;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V
    :try_end_b
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1133
    .line 1134
    .line 1135
    move-object v11, v4

    .line 1136
    move-object v0, v6

    .line 1137
    move-object v6, v1

    .line 1138
    goto/16 :goto_11

    .line 1139
    .line 1140
    :catch_5
    move-object v11, v4

    .line 1141
    move-object v0, v6

    .line 1142
    goto/16 :goto_d

    .line 1143
    .line 1144
    :catch_6
    move-object/from16 v0, p3

    .line 1145
    .line 1146
    goto/16 :goto_c

    .line 1147
    .line 1148
    :pswitch_2a
    move-object v0, v6

    .line 1149
    move/from16 v19, v11

    .line 1150
    .line 1151
    move-object v6, v1

    .line 1152
    move-object v11, v4

    .line 1153
    :try_start_c
    invoke-virtual {v6, v3, v11, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->readStringList(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    goto/16 :goto_11

    .line 1157
    .line 1158
    :catchall_3
    move-exception v0

    .line 1159
    goto/16 :goto_12

    .line 1160
    .line 1161
    :pswitch_2b
    move-object v0, v6

    .line 1162
    move/from16 v19, v11

    .line 1163
    .line 1164
    move-object v6, v1

    .line 1165
    move-object v11, v4

    .line 1166
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1167
    .line 1168
    .line 1169
    move-result-wide v3

    .line 1170
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1171
    .line 1172
    .line 1173
    invoke-static {v3, v4, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v1

    .line 1177
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readBoolList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1178
    .line 1179
    .line 1180
    goto/16 :goto_11

    .line 1181
    .line 1182
    :pswitch_2c
    move-object v0, v6

    .line 1183
    move/from16 v19, v11

    .line 1184
    .line 1185
    move-object v6, v1

    .line 1186
    move-object v11, v4

    .line 1187
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1188
    .line 1189
    .line 1190
    move-result-wide v3

    .line 1191
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1192
    .line 1193
    .line 1194
    invoke-static {v3, v4, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1199
    .line 1200
    .line 1201
    goto/16 :goto_11

    .line 1202
    .line 1203
    :pswitch_2d
    move-object v0, v6

    .line 1204
    move/from16 v19, v11

    .line 1205
    .line 1206
    move-object v6, v1

    .line 1207
    move-object v11, v4

    .line 1208
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1209
    .line 1210
    .line 1211
    move-result-wide v3

    .line 1212
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    .line 1214
    .line 1215
    invoke-static {v3, v4, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v1

    .line 1219
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1220
    .line 1221
    .line 1222
    goto/16 :goto_11

    .line 1223
    .line 1224
    :pswitch_2e
    move-object v0, v6

    .line 1225
    move/from16 v19, v11

    .line 1226
    .line 1227
    move-object v6, v1

    .line 1228
    move-object v11, v4

    .line 1229
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1230
    .line 1231
    .line 1232
    move-result-wide v3

    .line 1233
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1234
    .line 1235
    .line 1236
    invoke-static {v3, v4, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v1

    .line 1240
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readInt32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1241
    .line 1242
    .line 1243
    goto/16 :goto_11

    .line 1244
    .line 1245
    :pswitch_2f
    move-object v0, v6

    .line 1246
    move/from16 v19, v11

    .line 1247
    .line 1248
    move-object v6, v1

    .line 1249
    move-object v11, v4

    .line 1250
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1251
    .line 1252
    .line 1253
    move-result-wide v3

    .line 1254
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1255
    .line 1256
    .line 1257
    invoke-static {v3, v4, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1262
    .line 1263
    .line 1264
    goto/16 :goto_11

    .line 1265
    .line 1266
    :pswitch_30
    move-object v0, v6

    .line 1267
    move/from16 v19, v11

    .line 1268
    .line 1269
    move-object v6, v1

    .line 1270
    move-object v11, v4

    .line 1271
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1272
    .line 1273
    .line 1274
    move-result-wide v3

    .line 1275
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1276
    .line 1277
    .line 1278
    invoke-static {v3, v4, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v1

    .line 1282
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readInt64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1283
    .line 1284
    .line 1285
    goto/16 :goto_11

    .line 1286
    .line 1287
    :pswitch_31
    move-object v0, v6

    .line 1288
    move/from16 v19, v11

    .line 1289
    .line 1290
    move-object v6, v1

    .line 1291
    move-object v11, v4

    .line 1292
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1293
    .line 1294
    .line 1295
    move-result-wide v3

    .line 1296
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1297
    .line 1298
    .line 1299
    invoke-static {v3, v4, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v1

    .line 1303
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readFloatList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1304
    .line 1305
    .line 1306
    goto/16 :goto_11

    .line 1307
    .line 1308
    :pswitch_32
    move-object v0, v6

    .line 1309
    move/from16 v19, v11

    .line 1310
    .line 1311
    move-object v6, v1

    .line 1312
    move-object v11, v4

    .line 1313
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1314
    .line 1315
    .line 1316
    move-result-wide v3

    .line 1317
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1318
    .line 1319
    .line 1320
    invoke-static {v3, v4, v2}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v1

    .line 1324
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readDoubleList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V

    .line 1325
    .line 1326
    .line 1327
    goto/16 :goto_11

    .line 1328
    .line 1329
    :pswitch_33
    move-object v0, v6

    .line 1330
    move/from16 v19, v11

    .line 1331
    .line 1332
    move-object v6, v1

    .line 1333
    move-object v11, v4

    .line 1334
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v1

    .line 1338
    check-cast v1, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 1339
    .line 1340
    invoke-virtual {v6, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v3

    .line 1344
    const/4 v12, 0x3

    .line 1345
    invoke-virtual {v11, v12}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v11, v1, v3, v0}, Landroidx/compose/ui/text/input/GapBuffer;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v6, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 1352
    .line 1353
    .line 1354
    move-result v3

    .line 1355
    and-int v3, v3, v17

    .line 1356
    .line 1357
    int-to-long v3, v3

    .line 1358
    invoke-virtual {v15, v2, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1362
    .line 1363
    .line 1364
    goto/16 :goto_11

    .line 1365
    .line 1366
    :pswitch_34
    move-object v0, v6

    .line 1367
    move/from16 v19, v11

    .line 1368
    .line 1369
    move-object v6, v1

    .line 1370
    move-object v11, v4

    .line 1371
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1372
    .line 1373
    .line 1374
    move-result-wide v3

    .line 1375
    invoke-virtual {v11, v14}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1376
    .line 1377
    .line 1378
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1379
    .line 1380
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1381
    .line 1382
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSInt64()J

    .line 1383
    .line 1384
    .line 1385
    move-result-wide v14

    .line 1386
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1390
    .line 1391
    .line 1392
    goto/16 :goto_11

    .line 1393
    .line 1394
    :pswitch_35
    move-object v0, v6

    .line 1395
    move/from16 v19, v11

    .line 1396
    .line 1397
    move-object v6, v1

    .line 1398
    move-object v11, v4

    .line 1399
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1400
    .line 1401
    .line 1402
    move-result-wide v3

    .line 1403
    const/4 v12, 0x0

    .line 1404
    invoke-virtual {v11, v12}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1405
    .line 1406
    .line 1407
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1408
    .line 1409
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1410
    .line 1411
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSInt32()I

    .line 1412
    .line 1413
    .line 1414
    move-result v1

    .line 1415
    invoke-static {v1, v3, v4, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1419
    .line 1420
    .line 1421
    goto/16 :goto_11

    .line 1422
    .line 1423
    :pswitch_36
    move-object v0, v6

    .line 1424
    move/from16 v19, v11

    .line 1425
    .line 1426
    move-object v6, v1

    .line 1427
    move-object v11, v4

    .line 1428
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1429
    .line 1430
    .line 1431
    move-result-wide v3

    .line 1432
    const/4 v1, 0x1

    .line 1433
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1434
    .line 1435
    .line 1436
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1437
    .line 1438
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1439
    .line 1440
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSFixed64()J

    .line 1441
    .line 1442
    .line 1443
    move-result-wide v14

    .line 1444
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1448
    .line 1449
    .line 1450
    goto/16 :goto_11

    .line 1451
    .line 1452
    :pswitch_37
    move-object v0, v6

    .line 1453
    move/from16 v19, v11

    .line 1454
    .line 1455
    move-object v6, v1

    .line 1456
    move-object v11, v4

    .line 1457
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1458
    .line 1459
    .line 1460
    move-result-wide v3

    .line 1461
    const/4 v1, 0x5

    .line 1462
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1463
    .line 1464
    .line 1465
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1466
    .line 1467
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1468
    .line 1469
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSFixed32()I

    .line 1470
    .line 1471
    .line 1472
    move-result v1

    .line 1473
    invoke-static {v1, v3, v4, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1477
    .line 1478
    .line 1479
    goto/16 :goto_11

    .line 1480
    .line 1481
    :pswitch_38
    move-object v0, v6

    .line 1482
    move/from16 v19, v11

    .line 1483
    .line 1484
    move v12, v14

    .line 1485
    move-object v6, v1

    .line 1486
    move-object v11, v4

    .line 1487
    invoke-virtual {v11, v12}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1488
    .line 1489
    .line 1490
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1491
    .line 1492
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1493
    .line 1494
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readEnum()I

    .line 1495
    .line 1496
    .line 1497
    move-result v1

    .line 1498
    invoke-virtual {v6, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 1499
    .line 1500
    .line 1501
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1502
    .line 1503
    .line 1504
    move-result-wide v3

    .line 1505
    invoke-static {v1, v3, v4, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1509
    .line 1510
    .line 1511
    goto/16 :goto_11

    .line 1512
    .line 1513
    :pswitch_39
    move-object v0, v6

    .line 1514
    move/from16 v19, v11

    .line 1515
    .line 1516
    move-object v6, v1

    .line 1517
    move-object v11, v4

    .line 1518
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1519
    .line 1520
    .line 1521
    move-result-wide v3

    .line 1522
    const/4 v12, 0x0

    .line 1523
    invoke-virtual {v11, v12}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1524
    .line 1525
    .line 1526
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1527
    .line 1528
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1529
    .line 1530
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 1531
    .line 1532
    .line 1533
    move-result v1

    .line 1534
    invoke-static {v1, v3, v4, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1535
    .line 1536
    .line 1537
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1538
    .line 1539
    .line 1540
    goto/16 :goto_11

    .line 1541
    .line 1542
    :pswitch_3a
    move-object v0, v6

    .line 1543
    move/from16 v19, v11

    .line 1544
    .line 1545
    move-object v6, v1

    .line 1546
    move-object v11, v4

    .line 1547
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1548
    .line 1549
    .line 1550
    move-result-wide v3

    .line 1551
    invoke-virtual {v11}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v1

    .line 1555
    invoke-static {v2, v3, v4, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1556
    .line 1557
    .line 1558
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1559
    .line 1560
    .line 1561
    goto/16 :goto_11

    .line 1562
    .line 1563
    :pswitch_3b
    move-object v0, v6

    .line 1564
    move/from16 v19, v11

    .line 1565
    .line 1566
    move-object v6, v1

    .line 1567
    move-object v11, v4

    .line 1568
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v1

    .line 1572
    check-cast v1, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 1573
    .line 1574
    invoke-virtual {v6, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v3

    .line 1578
    const/4 v4, 0x2

    .line 1579
    invoke-virtual {v11, v4}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1580
    .line 1581
    .line 1582
    invoke-virtual {v11, v1, v3, v0}, Landroidx/compose/ui/text/input/GapBuffer;->mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v6, v7}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 1586
    .line 1587
    .line 1588
    move-result v3

    .line 1589
    and-int v3, v3, v17

    .line 1590
    .line 1591
    int-to-long v3, v3

    .line 1592
    invoke-virtual {v15, v2, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1596
    .line 1597
    .line 1598
    goto/16 :goto_11

    .line 1599
    .line 1600
    :pswitch_3c
    move-object v0, v6

    .line 1601
    move/from16 v19, v11

    .line 1602
    .line 1603
    move-object v6, v1

    .line 1604
    move-object v11, v4

    .line 1605
    invoke-virtual {v6, v3, v11, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->readString(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1609
    .line 1610
    .line 1611
    goto/16 :goto_11

    .line 1612
    .line 1613
    :pswitch_3d
    move-object v0, v6

    .line 1614
    move/from16 v19, v11

    .line 1615
    .line 1616
    move-object v6, v1

    .line 1617
    move-object v11, v4

    .line 1618
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1619
    .line 1620
    .line 1621
    move-result-wide v3

    .line 1622
    const/4 v12, 0x0

    .line 1623
    invoke-virtual {v11, v12}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1624
    .line 1625
    .line 1626
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1627
    .line 1628
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1629
    .line 1630
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readBool()Z

    .line 1631
    .line 1632
    .line 1633
    move-result v1

    .line 1634
    sget-object v5, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1635
    .line 1636
    invoke-virtual {v5, v2, v3, v4, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1640
    .line 1641
    .line 1642
    goto/16 :goto_11

    .line 1643
    .line 1644
    :pswitch_3e
    move-object v0, v6

    .line 1645
    move/from16 v19, v11

    .line 1646
    .line 1647
    move-object v6, v1

    .line 1648
    move-object v11, v4

    .line 1649
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1650
    .line 1651
    .line 1652
    move-result-wide v3

    .line 1653
    const/4 v1, 0x5

    .line 1654
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1655
    .line 1656
    .line 1657
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1658
    .line 1659
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1660
    .line 1661
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFixed32()I

    .line 1662
    .line 1663
    .line 1664
    move-result v1

    .line 1665
    invoke-static {v1, v3, v4, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1669
    .line 1670
    .line 1671
    goto/16 :goto_11

    .line 1672
    .line 1673
    :pswitch_3f
    move-object v0, v6

    .line 1674
    move/from16 v19, v11

    .line 1675
    .line 1676
    move-object v6, v1

    .line 1677
    move-object v11, v4

    .line 1678
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1679
    .line 1680
    .line 1681
    move-result-wide v3

    .line 1682
    const/4 v1, 0x1

    .line 1683
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1684
    .line 1685
    .line 1686
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1687
    .line 1688
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1689
    .line 1690
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFixed64()J

    .line 1691
    .line 1692
    .line 1693
    move-result-wide v14

    .line 1694
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1698
    .line 1699
    .line 1700
    goto/16 :goto_11

    .line 1701
    .line 1702
    :pswitch_40
    move-object v0, v6

    .line 1703
    move/from16 v19, v11

    .line 1704
    .line 1705
    move-object v6, v1

    .line 1706
    move-object v11, v4

    .line 1707
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1708
    .line 1709
    .line 1710
    move-result-wide v3

    .line 1711
    const/4 v12, 0x0

    .line 1712
    invoke-virtual {v11, v12}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1713
    .line 1714
    .line 1715
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1716
    .line 1717
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1718
    .line 1719
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readInt32()I

    .line 1720
    .line 1721
    .line 1722
    move-result v1

    .line 1723
    invoke-static {v1, v3, v4, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1724
    .line 1725
    .line 1726
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1727
    .line 1728
    .line 1729
    goto/16 :goto_11

    .line 1730
    .line 1731
    :pswitch_41
    move-object v0, v6

    .line 1732
    move/from16 v19, v11

    .line 1733
    .line 1734
    move-object v6, v1

    .line 1735
    move-object v11, v4

    .line 1736
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1737
    .line 1738
    .line 1739
    move-result-wide v3

    .line 1740
    const/4 v12, 0x0

    .line 1741
    invoke-virtual {v11, v12}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1742
    .line 1743
    .line 1744
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1745
    .line 1746
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1747
    .line 1748
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt64()J

    .line 1749
    .line 1750
    .line 1751
    move-result-wide v14

    .line 1752
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1756
    .line 1757
    .line 1758
    goto/16 :goto_11

    .line 1759
    .line 1760
    :pswitch_42
    move-object v0, v6

    .line 1761
    move/from16 v19, v11

    .line 1762
    .line 1763
    move-object v6, v1

    .line 1764
    move-object v11, v4

    .line 1765
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1766
    .line 1767
    .line 1768
    move-result-wide v3

    .line 1769
    const/4 v12, 0x0

    .line 1770
    invoke-virtual {v11, v12}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1771
    .line 1772
    .line 1773
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1774
    .line 1775
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1776
    .line 1777
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readInt64()J

    .line 1778
    .line 1779
    .line 1780
    move-result-wide v14

    .line 1781
    invoke-static {v2, v3, v4, v14, v15}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1782
    .line 1783
    .line 1784
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1785
    .line 1786
    .line 1787
    goto/16 :goto_11

    .line 1788
    .line 1789
    :pswitch_43
    move-object v0, v6

    .line 1790
    move/from16 v19, v11

    .line 1791
    .line 1792
    move-object v6, v1

    .line 1793
    move-object v11, v4

    .line 1794
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1795
    .line 1796
    .line 1797
    move-result-wide v3

    .line 1798
    const/4 v1, 0x5

    .line 1799
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1800
    .line 1801
    .line 1802
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1803
    .line 1804
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1805
    .line 1806
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFloat()F

    .line 1807
    .line 1808
    .line 1809
    move-result v1

    .line 1810
    sget-object v5, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1811
    .line 1812
    invoke-virtual {v5, v2, v3, v4, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 1813
    .line 1814
    .line 1815
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1816
    .line 1817
    .line 1818
    goto :goto_11

    .line 1819
    :pswitch_44
    move-object v0, v6

    .line 1820
    move/from16 v19, v11

    .line 1821
    .line 1822
    move-object v6, v1

    .line 1823
    move-object v11, v4

    .line 1824
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->offset(I)J

    .line 1825
    .line 1826
    .line 1827
    move-result-wide v3

    .line 1828
    const/4 v1, 0x1

    .line 1829
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 1830
    .line 1831
    .line 1832
    iget-object v1, v11, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 1833
    .line 1834
    check-cast v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 1835
    .line 1836
    invoke-virtual {v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readDouble()D

    .line 1837
    .line 1838
    .line 1839
    move-result-wide v14

    .line 1840
    sget-object v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;
    :try_end_c
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1841
    .line 1842
    move-object v1, v2

    .line 1843
    move-wide v2, v3

    .line 1844
    move-wide v4, v14

    .line 1845
    :try_start_d
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V
    :try_end_d
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1846
    .line 1847
    .line 1848
    move-object v2, v1

    .line 1849
    :try_start_e
    invoke-virtual {v6, v7, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V
    :try_end_e
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1850
    .line 1851
    .line 1852
    goto :goto_11

    .line 1853
    :catchall_4
    move-exception v0

    .line 1854
    move-object v2, v1

    .line 1855
    goto :goto_12

    .line 1856
    :catch_7
    move-object v2, v1

    .line 1857
    goto :goto_e

    .line 1858
    :catch_8
    move-object v6, v1

    .line 1859
    move/from16 v19, v11

    .line 1860
    .line 1861
    const/16 v16, 0x0

    .line 1862
    .line 1863
    goto/16 :goto_6

    .line 1864
    .line 1865
    :catch_9
    :goto_e
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1866
    .line 1867
    .line 1868
    if-nez v13, :cond_9

    .line 1869
    .line 1870
    invoke-static {v2}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;->getBuilderFromMessage(Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v0

    .line 1874
    move-object v13, v0

    .line 1875
    :cond_9
    const/4 v12, 0x0

    .line 1876
    invoke-static {v12, v11, v13}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;->mergeOneFieldFrom(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)Z

    .line 1877
    .line 1878
    .line 1879
    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1880
    if-nez v0, :cond_c

    .line 1881
    .line 1882
    move/from16 v11, v19

    .line 1883
    .line 1884
    :goto_f
    if-ge v11, v10, :cond_a

    .line 1885
    .line 1886
    aget v0, v9, v11

    .line 1887
    .line 1888
    invoke-virtual {v6, v0, v2, v13}, Landroidx/glance/appwidget/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1889
    .line 1890
    .line 1891
    add-int/lit8 v11, v11, 0x1

    .line 1892
    .line 1893
    goto :goto_f

    .line 1894
    :cond_a
    if-eqz v13, :cond_b

    .line 1895
    .line 1896
    goto/16 :goto_5

    .line 1897
    .line 1898
    :cond_b
    :goto_10
    return-void

    .line 1899
    :cond_c
    :goto_11
    move-object v1, v6

    .line 1900
    move-object v4, v11

    .line 1901
    move/from16 v11, v19

    .line 1902
    .line 1903
    move-object/from16 v6, p3

    .line 1904
    .line 1905
    goto/16 :goto_0

    .line 1906
    .line 1907
    :goto_12
    move/from16 v11, v19

    .line 1908
    .line 1909
    :goto_13
    if-ge v11, v10, :cond_d

    .line 1910
    .line 1911
    aget v1, v9, v11

    .line 1912
    .line 1913
    invoke-virtual {v6, v1, v2, v13}, Landroidx/glance/appwidget/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1914
    .line 1915
    .line 1916
    add-int/lit8 v11, v11, 0x1

    .line 1917
    .line 1918
    goto :goto_13

    .line 1919
    :cond_d
    if-eqz v13, :cond_e

    .line 1920
    .line 1921
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1922
    .line 1923
    .line 1924
    move-object v1, v2

    .line 1925
    check-cast v1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1926
    .line 1927
    iput-object v13, v1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 1928
    .line 1929
    :cond_e
    throw v0

    .line 1930
    :cond_f
    const-string v0, "Mutating immutable message: "

    .line 1931
    .line 1932
    invoke-static {v0, v2}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1933
    .line 1934
    .line 1935
    return-void

    .line 1936
    nop

    .line 1937
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1937
    invoke-static {p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1938
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1939
    :goto_0
    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 1940
    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    .line 1941
    aget v1, v1, v0

    .line 1942
    invoke-static {v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1943
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    .line 1944
    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1945
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v6, v7, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1946
    invoke-virtual {p0, v1, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_1

    .line 1947
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1948
    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1949
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v6, v7, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1950
    invoke-virtual {p0, v1, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_1

    .line 1951
    :pswitch_4
    sget-object v1, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1952
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1953
    iget-object v3, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->mapFieldSchema:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/MapFieldLite;

    move-result-object v1

    .line 1954
    invoke-static {p1, v6, v7, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 1955
    :pswitch_5
    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->listFieldSchema:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1956
    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1957
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 1958
    move-object v3, v1

    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 1959
    iget v3, v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->size:I

    .line 1960
    move-object v4, v2

    check-cast v4, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 1961
    iget v4, v4, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->size:I

    if-lez v3, :cond_2

    if-lez v4, :cond_2

    .line 1962
    move-object v5, v1

    check-cast v5, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 1963
    iget-boolean v5, v5, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->isMutable:Z

    if-nez v5, :cond_1

    add-int/2addr v4, v3

    .line 1964
    check-cast v1, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    invoke-virtual {v1, v4}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->mutableCopyWithCapacity(I)Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    move-result-object v1

    .line 1965
    :cond_1
    move-object v4, v1

    check-cast v4, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    invoke-virtual {v4, v2}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-lez v3, :cond_3

    move-object v2, v1

    .line 1966
    :cond_3
    invoke-static {p1, v6, v7, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 1967
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1968
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1969
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1970
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1971
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1972
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1973
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1974
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1975
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1976
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1977
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1978
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1979
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1980
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1981
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1982
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1983
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1984
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1985
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1986
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1987
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1988
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1989
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1990
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1991
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1992
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1993
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1994
    sget-object v1, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    move-result v2

    .line 1995
    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1996
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1997
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1998
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1999
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2000
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2001
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 2002
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2003
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2004
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 2005
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2006
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2007
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 2008
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2009
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2010
    invoke-static {v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 2011
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2012
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2013
    sget-object v1, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    move-result v2

    .line 2014
    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 2015
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2016
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2017
    sget-object v4, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    .line 2018
    invoke-virtual/range {v4 .. v9}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 2019
    invoke-virtual {p0, v0, v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_4
    move-object v5, p1

    .line 2020
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    invoke-static {p0, v5, p2}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->mergeUnknownFields(Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v5, p1

    .line 2021
    const-string p0, "Mutating immutable message: "

    invoke-static {p0, v5}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeMap(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p1, v0

    .line 9
    int-to-long v0, p1

    .line 10
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->mapFieldSchema:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-object v2, p1

    .line 22
    check-cast v2, Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 23
    .line 24
    iget-boolean v2, v2, Landroidx/glance/appwidget/protobuf/MapFieldLite;->isMutable:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    sget-object v2, Landroidx/glance/appwidget/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/MapFieldLite;->mutableCopy()Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2, p1}, Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 35
    .line 36
    .line 37
    invoke-static {p2, v0, v1, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object p1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object p1, Landroidx/glance/appwidget/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/MapFieldLite;->mutableCopy()Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p2, v0, v1, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast p1, Landroidx/glance/appwidget/protobuf/MapFieldLite;

    .line 58
    .line 59
    invoke-static {p3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    throw p0
.end method

.method public final mergeMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v3}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p3, p1, p0}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p0, p1

    .line 80
    :cond_3
    invoke-interface {p3, p0, v3}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 87
    .line 88
    aget p0, p0, p1

    .line 89
    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "Source subfield "

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p0, " is present but null: "

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2
.end method

.method public final mergeOneofMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, v1, p1, p3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v2, v2

    .line 21
    sget-object v4, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, v1, p1, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p3, v0, v5}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    invoke-interface {p3}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p3, p1, p0}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p0, p1

    .line 84
    :cond_3
    invoke-interface {p3, p0, v5}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    aget p1, v0, p1

    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v0, "Source subfield "

    .line 95
    .line 96
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, " is present but null: "

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public final mutableMessageFieldForMerge(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    sget-object p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final mutableOneofMessageFieldForMerge(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const p1, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr p0, p1

    .line 24
    int-to-long p0, p0

    .line 25
    sget-object p2, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p2, p3, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->newInstanceSchema:Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 7
    .line 8
    check-cast p0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->newMutableInstance$1()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final positionForFieldNumber(I)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->minFieldNumber:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->maxFieldNumber:I

    .line 6
    .line 7
    if-gt p1, v0, :cond_2

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    div-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-gt v1, v0, :cond_2

    .line 18
    .line 19
    add-int v2, v0, v1

    .line 20
    .line 21
    ushr-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    mul-int/lit8 v3, v2, 0x3

    .line 24
    .line 25
    aget v4, p0, v3

    .line 26
    .line 27
    if-ne p1, v4, :cond_0

    .line 28
    .line 29
    return v3

    .line 30
    :cond_0
    if-ge p1, v4, :cond_1

    .line 31
    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, -0x1

    .line 41
    return p0
.end method

.method public final readGroupList(Ljava/lang/Object;JLandroidx/compose/ui/text/input/GapBuffer;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->listFieldSchema:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3, p1}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p1, p4, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 13
    .line 14
    iget p2, p4, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 15
    .line 16
    and-int/lit8 p3, p2, 0x7

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-ne p3, v0, :cond_3

    .line 20
    .line 21
    :cond_0
    invoke-interface {p5}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p4, p3, p5, p6}, Landroidx/compose/ui/text/input/GapBuffer;->mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p5, p3}, Landroidx/glance/appwidget/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    move-object v0, p0

    .line 32
    check-cast v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 33
    .line 34
    invoke-virtual {v0, p3}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    iget p3, p4, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eq p3, p2, :cond_0

    .line 53
    .line 54
    iput p3, p4, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void

    .line 57
    :cond_3
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    throw p0
.end method

.method public final readMessageList(Ljava/lang/Object;ILandroidx/compose/ui/text/input/GapBuffer;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p2, v0

    .line 5
    int-to-long v0, p2

    .line 6
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->listFieldSchema:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p1, p3, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 18
    .line 19
    iget p2, p3, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 20
    .line 21
    and-int/lit8 v0, p2, 0x7

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    :cond_0
    invoke-interface {p4}, Landroidx/glance/appwidget/protobuf/Schema;->newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p3, v0, p4, p5}, Landroidx/compose/ui/text/input/GapBuffer;->mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p4, v0}, Landroidx/glance/appwidget/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    move-object v1, p0

    .line 37
    check-cast v1, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget v0, p3, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v0, p2, :cond_0

    .line 58
    .line 59
    iput v0, p3, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void

    .line 62
    :cond_3
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    throw p0
.end method

.method public final readString(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x2

    .line 5
    const v2, 0xfffff

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    and-int p0, p1, v2

    .line 11
    .line 12
    int-to-long p0, p0

    .line 13
    invoke-virtual {p2, v1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p2, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p3, p0, p1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-boolean p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->lite:Z

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    and-int p0, p1, v2

    .line 33
    .line 34
    int-to-long p0, p0

    .line 35
    invoke-virtual {p2, v1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p2, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p2, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p3, p0, p1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    and-int p0, p1, v2

    .line 51
    .line 52
    int-to-long p0, p0

    .line 53
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p3, p0, p1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final readStringList(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    const v3, 0xfffff

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->listFieldSchema:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    and-int/2addr p1, v3

    .line 19
    int-to-long v0, p1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, p3}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p2, p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->readStringListInternal(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    and-int/2addr p1, v3

    .line 32
    int-to-long v2, p1

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3, p3}, Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;->mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p2, p0, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readStringListInternal(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final setFieldPresent(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const p1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p1, p0

    .line 11
    int-to-long v0, p1

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    shl-int p0, p1, p0

    .line 24
    .line 25
    invoke-static {v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    or-int/2addr p0, p1

    .line 30
    invoke-static {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setOneofPresent(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {p1, v0, v1, p3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final typeAndOffsetAt(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final writeTo(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v6, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v7, v2

    .line 13
    check-cast v7, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;

    .line 14
    .line 15
    sget-object v2, Landroidx/glance/appwidget/protobuf/Writer$FieldOrder;->ASCENDING:Landroidx/glance/appwidget/protobuf/Writer$FieldOrder;

    .line 16
    .line 17
    sget-object v3, Landroidx/glance/appwidget/protobuf/Writer$FieldOrder;->DESCENDING:Landroidx/glance/appwidget/protobuf/Writer$FieldOrder;

    .line 18
    .line 19
    iget-object v9, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v10, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->mapFieldSchema:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

    .line 22
    .line 23
    const/16 v11, 0x3f

    .line 24
    .line 25
    iget-object v12, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->buffer:[I

    .line 26
    .line 27
    iget-object v13, v0, Landroidx/glance/appwidget/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 28
    .line 29
    const v14, 0xfffff

    .line 30
    .line 31
    .line 32
    const/4 v15, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    if-ne v2, v3, :cond_4

    .line 35
    .line 36
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-object v2, v1

    .line 40
    check-cast v2, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 41
    .line 42
    iget-object v2, v2, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 43
    .line 44
    invoke-virtual {v2, v6}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 45
    .line 46
    .line 47
    array-length v2, v12

    .line 48
    add-int/lit8 v2, v2, -0x3

    .line 49
    .line 50
    :goto_0
    if-ltz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    aget v5, v12, v2

    .line 57
    .line 58
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    packed-switch v13, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    :cond_0
    move-object/from16 v17, v9

    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :pswitch_0
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    if-eqz v13, :cond_0

    .line 76
    .line 77
    and-int/2addr v3, v14

    .line 78
    move-object/from16 v17, v9

    .line 79
    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    int-to-long v8, v3

    .line 83
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v6, v5, v3, v8}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :pswitch_1
    move-object/from16 v17, v9

    .line 97
    .line 98
    const/16 v16, 0x0

    .line 99
    .line 100
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_2

    .line 105
    .line 106
    and-int/2addr v3, v14

    .line 107
    int-to-long v8, v3

    .line 108
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    shl-long v18, v8, v15

    .line 113
    .line 114
    shr-long/2addr v8, v11

    .line 115
    xor-long v8, v18, v8

    .line 116
    .line 117
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :pswitch_2
    move-object/from16 v17, v9

    .line 123
    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_2

    .line 131
    .line 132
    and-int/2addr v3, v14

    .line 133
    int-to-long v8, v3

    .line 134
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    shl-int/lit8 v8, v3, 0x1

    .line 139
    .line 140
    shr-int/lit8 v3, v3, 0x1f

    .line 141
    .line 142
    xor-int/2addr v3, v8

    .line 143
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :pswitch_3
    move-object/from16 v17, v9

    .line 149
    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_2

    .line 157
    .line 158
    and-int/2addr v3, v14

    .line 159
    int-to-long v8, v3

    .line 160
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v8

    .line 164
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :pswitch_4
    move-object/from16 v17, v9

    .line 170
    .line 171
    const/16 v16, 0x0

    .line 172
    .line 173
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-eqz v8, :cond_2

    .line 178
    .line 179
    and-int/2addr v3, v14

    .line 180
    int-to-long v8, v3

    .line 181
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :pswitch_5
    move-object/from16 v17, v9

    .line 191
    .line 192
    const/16 v16, 0x0

    .line 193
    .line 194
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_2

    .line 199
    .line 200
    and-int/2addr v3, v14

    .line 201
    int-to-long v8, v3

    .line 202
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeInt32(II)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :pswitch_6
    move-object/from16 v17, v9

    .line 212
    .line 213
    const/16 v16, 0x0

    .line 214
    .line 215
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-eqz v8, :cond_2

    .line 220
    .line 221
    and-int/2addr v3, v14

    .line 222
    int-to-long v8, v3

    .line 223
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :pswitch_7
    move-object/from16 v17, v9

    .line 233
    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-eqz v8, :cond_2

    .line 241
    .line 242
    and-int/2addr v3, v14

    .line 243
    int-to-long v8, v3

    .line 244
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 249
    .line 250
    invoke-virtual {v6, v5, v3}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :pswitch_8
    move-object/from16 v17, v9

    .line 256
    .line 257
    const/16 v16, 0x0

    .line 258
    .line 259
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-eqz v8, :cond_2

    .line 264
    .line 265
    and-int/2addr v3, v14

    .line 266
    int-to-long v8, v3

    .line 267
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    check-cast v3, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 276
    .line 277
    invoke-virtual {v7, v5, v3, v8}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILandroidx/glance/appwidget/protobuf/AbstractMessageLite;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :pswitch_9
    move-object/from16 v17, v9

    .line 283
    .line 284
    const/16 v16, 0x0

    .line 285
    .line 286
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-eqz v8, :cond_2

    .line 291
    .line 292
    and-int/2addr v3, v14

    .line 293
    int-to-long v8, v3

    .line 294
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-static {v5, v3, v6}, Landroidx/glance/appwidget/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :pswitch_a
    move-object/from16 v17, v9

    .line 304
    .line 305
    const/16 v16, 0x0

    .line 306
    .line 307
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    if-eqz v8, :cond_2

    .line 312
    .line 313
    and-int/2addr v3, v14

    .line 314
    int-to-long v8, v3

    .line 315
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    check-cast v3, Ljava/lang/Boolean;

    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBool(IZ)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_1

    .line 329
    .line 330
    :pswitch_b
    move-object/from16 v17, v9

    .line 331
    .line 332
    const/16 v16, 0x0

    .line 333
    .line 334
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    if-eqz v8, :cond_2

    .line 339
    .line 340
    and-int/2addr v3, v14

    .line 341
    int-to-long v8, v3

    .line 342
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :pswitch_c
    move-object/from16 v17, v9

    .line 352
    .line 353
    const/16 v16, 0x0

    .line 354
    .line 355
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    if-eqz v8, :cond_2

    .line 360
    .line 361
    and-int/2addr v3, v14

    .line 362
    int-to-long v8, v3

    .line 363
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 364
    .line 365
    .line 366
    move-result-wide v8

    .line 367
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :pswitch_d
    move-object/from16 v17, v9

    .line 373
    .line 374
    const/16 v16, 0x0

    .line 375
    .line 376
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-eqz v8, :cond_2

    .line 381
    .line 382
    and-int/2addr v3, v14

    .line 383
    int-to-long v8, v3

    .line 384
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeInt32(II)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_1

    .line 392
    .line 393
    :pswitch_e
    move-object/from16 v17, v9

    .line 394
    .line 395
    const/16 v16, 0x0

    .line 396
    .line 397
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    if-eqz v8, :cond_2

    .line 402
    .line 403
    and-int/2addr v3, v14

    .line 404
    int-to-long v8, v3

    .line 405
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 406
    .line 407
    .line 408
    move-result-wide v8

    .line 409
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :pswitch_f
    move-object/from16 v17, v9

    .line 415
    .line 416
    const/16 v16, 0x0

    .line 417
    .line 418
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    if-eqz v8, :cond_2

    .line 423
    .line 424
    and-int/2addr v3, v14

    .line 425
    int-to-long v8, v3

    .line 426
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 427
    .line 428
    .line 429
    move-result-wide v8

    .line 430
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :pswitch_10
    move-object/from16 v17, v9

    .line 436
    .line 437
    const/16 v16, 0x0

    .line 438
    .line 439
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v8

    .line 443
    if-eqz v8, :cond_2

    .line 444
    .line 445
    and-int/2addr v3, v14

    .line 446
    int-to-long v8, v3

    .line 447
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    check-cast v3, Ljava/lang/Float;

    .line 452
    .line 453
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_1

    .line 465
    .line 466
    :pswitch_11
    move-object/from16 v17, v9

    .line 467
    .line 468
    const/16 v16, 0x0

    .line 469
    .line 470
    invoke-virtual {v0, v5, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v8

    .line 474
    if-eqz v8, :cond_2

    .line 475
    .line 476
    and-int/2addr v3, v14

    .line 477
    int-to-long v8, v3

    .line 478
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    check-cast v3, Ljava/lang/Double;

    .line 483
    .line 484
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 485
    .line 486
    .line 487
    move-result-wide v8

    .line 488
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 489
    .line 490
    .line 491
    move-result-wide v8

    .line 492
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_1

    .line 496
    .line 497
    :pswitch_12
    move-object/from16 v17, v9

    .line 498
    .line 499
    const/16 v16, 0x0

    .line 500
    .line 501
    and-int/2addr v3, v14

    .line 502
    int-to-long v8, v3

    .line 503
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    if-nez v3, :cond_1

    .line 508
    .line 509
    goto/16 :goto_1

    .line 510
    .line 511
    :cond_1
    div-int/lit8 v2, v2, 0x3

    .line 512
    .line 513
    mul-int/lit8 v2, v2, 0x2

    .line 514
    .line 515
    aget-object v0, v17, v2

    .line 516
    .line 517
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    throw v16

    .line 524
    :pswitch_13
    move-object/from16 v17, v9

    .line 525
    .line 526
    const/16 v16, 0x0

    .line 527
    .line 528
    aget v5, v12, v2

    .line 529
    .line 530
    and-int/2addr v3, v14

    .line 531
    int-to-long v8, v3

    .line 532
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    check-cast v3, Ljava/util/List;

    .line 537
    .line 538
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 539
    .line 540
    .line 541
    move-result-object v8

    .line 542
    invoke-static {v5, v3, v6, v8}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_1

    .line 546
    .line 547
    :pswitch_14
    move-object/from16 v17, v9

    .line 548
    .line 549
    const/16 v16, 0x0

    .line 550
    .line 551
    aget v5, v12, v2

    .line 552
    .line 553
    and-int/2addr v3, v14

    .line 554
    int-to-long v8, v3

    .line 555
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    check-cast v3, Ljava/util/List;

    .line 560
    .line 561
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 562
    .line 563
    .line 564
    goto/16 :goto_1

    .line 565
    .line 566
    :pswitch_15
    move-object/from16 v17, v9

    .line 567
    .line 568
    const/16 v16, 0x0

    .line 569
    .line 570
    aget v5, v12, v2

    .line 571
    .line 572
    and-int/2addr v3, v14

    .line 573
    int-to-long v8, v3

    .line 574
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    check-cast v3, Ljava/util/List;

    .line 579
    .line 580
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 581
    .line 582
    .line 583
    goto/16 :goto_1

    .line 584
    .line 585
    :pswitch_16
    move-object/from16 v17, v9

    .line 586
    .line 587
    const/16 v16, 0x0

    .line 588
    .line 589
    aget v5, v12, v2

    .line 590
    .line 591
    and-int/2addr v3, v14

    .line 592
    int-to-long v8, v3

    .line 593
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    check-cast v3, Ljava/util/List;

    .line 598
    .line 599
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_1

    .line 603
    .line 604
    :pswitch_17
    move-object/from16 v17, v9

    .line 605
    .line 606
    const/16 v16, 0x0

    .line 607
    .line 608
    aget v5, v12, v2

    .line 609
    .line 610
    and-int/2addr v3, v14

    .line 611
    int-to-long v8, v3

    .line 612
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    check-cast v3, Ljava/util/List;

    .line 617
    .line 618
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 619
    .line 620
    .line 621
    goto/16 :goto_1

    .line 622
    .line 623
    :pswitch_18
    move-object/from16 v17, v9

    .line 624
    .line 625
    const/16 v16, 0x0

    .line 626
    .line 627
    aget v5, v12, v2

    .line 628
    .line 629
    and-int/2addr v3, v14

    .line 630
    int-to-long v8, v3

    .line 631
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    check-cast v3, Ljava/util/List;

    .line 636
    .line 637
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 638
    .line 639
    .line 640
    goto/16 :goto_1

    .line 641
    .line 642
    :pswitch_19
    move-object/from16 v17, v9

    .line 643
    .line 644
    const/16 v16, 0x0

    .line 645
    .line 646
    aget v5, v12, v2

    .line 647
    .line 648
    and-int/2addr v3, v14

    .line 649
    int-to-long v8, v3

    .line 650
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    check-cast v3, Ljava/util/List;

    .line 655
    .line 656
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_1

    .line 660
    .line 661
    :pswitch_1a
    move-object/from16 v17, v9

    .line 662
    .line 663
    const/16 v16, 0x0

    .line 664
    .line 665
    aget v5, v12, v2

    .line 666
    .line 667
    and-int/2addr v3, v14

    .line 668
    int-to-long v8, v3

    .line 669
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    check-cast v3, Ljava/util/List;

    .line 674
    .line 675
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_1

    .line 679
    .line 680
    :pswitch_1b
    move-object/from16 v17, v9

    .line 681
    .line 682
    const/16 v16, 0x0

    .line 683
    .line 684
    aget v5, v12, v2

    .line 685
    .line 686
    and-int/2addr v3, v14

    .line 687
    int-to-long v8, v3

    .line 688
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    check-cast v3, Ljava/util/List;

    .line 693
    .line 694
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_1

    .line 698
    .line 699
    :pswitch_1c
    move-object/from16 v17, v9

    .line 700
    .line 701
    const/16 v16, 0x0

    .line 702
    .line 703
    aget v5, v12, v2

    .line 704
    .line 705
    and-int/2addr v3, v14

    .line 706
    int-to-long v8, v3

    .line 707
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    check-cast v3, Ljava/util/List;

    .line 712
    .line 713
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_1

    .line 717
    .line 718
    :pswitch_1d
    move-object/from16 v17, v9

    .line 719
    .line 720
    const/16 v16, 0x0

    .line 721
    .line 722
    aget v5, v12, v2

    .line 723
    .line 724
    and-int/2addr v3, v14

    .line 725
    int-to-long v8, v3

    .line 726
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    check-cast v3, Ljava/util/List;

    .line 731
    .line 732
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_1

    .line 736
    .line 737
    :pswitch_1e
    move-object/from16 v17, v9

    .line 738
    .line 739
    const/16 v16, 0x0

    .line 740
    .line 741
    aget v5, v12, v2

    .line 742
    .line 743
    and-int/2addr v3, v14

    .line 744
    int-to-long v8, v3

    .line 745
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    check-cast v3, Ljava/util/List;

    .line 750
    .line 751
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 752
    .line 753
    .line 754
    goto/16 :goto_1

    .line 755
    .line 756
    :pswitch_1f
    move-object/from16 v17, v9

    .line 757
    .line 758
    const/16 v16, 0x0

    .line 759
    .line 760
    aget v5, v12, v2

    .line 761
    .line 762
    and-int/2addr v3, v14

    .line 763
    int-to-long v8, v3

    .line 764
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    check-cast v3, Ljava/util/List;

    .line 769
    .line 770
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_1

    .line 774
    .line 775
    :pswitch_20
    move-object/from16 v17, v9

    .line 776
    .line 777
    const/16 v16, 0x0

    .line 778
    .line 779
    aget v5, v12, v2

    .line 780
    .line 781
    and-int/2addr v3, v14

    .line 782
    int-to-long v8, v3

    .line 783
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    check-cast v3, Ljava/util/List;

    .line 788
    .line 789
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 790
    .line 791
    .line 792
    goto/16 :goto_1

    .line 793
    .line 794
    :pswitch_21
    move-object/from16 v17, v9

    .line 795
    .line 796
    const/16 v16, 0x0

    .line 797
    .line 798
    aget v5, v12, v2

    .line 799
    .line 800
    and-int/2addr v3, v14

    .line 801
    int-to-long v8, v3

    .line 802
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    check-cast v3, Ljava/util/List;

    .line 807
    .line 808
    invoke-static {v5, v3, v6, v15}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_1

    .line 812
    .line 813
    :pswitch_22
    move-object/from16 v17, v9

    .line 814
    .line 815
    const/16 v16, 0x0

    .line 816
    .line 817
    aget v5, v12, v2

    .line 818
    .line 819
    and-int/2addr v3, v14

    .line 820
    int-to-long v8, v3

    .line 821
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    check-cast v3, Ljava/util/List;

    .line 826
    .line 827
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 828
    .line 829
    .line 830
    goto/16 :goto_1

    .line 831
    .line 832
    :pswitch_23
    move-object/from16 v17, v9

    .line 833
    .line 834
    const/16 v16, 0x0

    .line 835
    .line 836
    aget v5, v12, v2

    .line 837
    .line 838
    and-int/2addr v3, v14

    .line 839
    int-to-long v8, v3

    .line 840
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    check-cast v3, Ljava/util/List;

    .line 845
    .line 846
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 847
    .line 848
    .line 849
    goto/16 :goto_1

    .line 850
    .line 851
    :pswitch_24
    move-object/from16 v17, v9

    .line 852
    .line 853
    const/16 v16, 0x0

    .line 854
    .line 855
    aget v5, v12, v2

    .line 856
    .line 857
    and-int/2addr v3, v14

    .line 858
    int-to-long v8, v3

    .line 859
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v3

    .line 863
    check-cast v3, Ljava/util/List;

    .line 864
    .line 865
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 866
    .line 867
    .line 868
    goto/16 :goto_1

    .line 869
    .line 870
    :pswitch_25
    move-object/from16 v17, v9

    .line 871
    .line 872
    const/16 v16, 0x0

    .line 873
    .line 874
    aget v5, v12, v2

    .line 875
    .line 876
    and-int/2addr v3, v14

    .line 877
    int-to-long v8, v3

    .line 878
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v3

    .line 882
    check-cast v3, Ljava/util/List;

    .line 883
    .line 884
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_1

    .line 888
    .line 889
    :pswitch_26
    move-object/from16 v17, v9

    .line 890
    .line 891
    const/16 v16, 0x0

    .line 892
    .line 893
    aget v5, v12, v2

    .line 894
    .line 895
    and-int/2addr v3, v14

    .line 896
    int-to-long v8, v3

    .line 897
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    check-cast v3, Ljava/util/List;

    .line 902
    .line 903
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_1

    .line 907
    .line 908
    :pswitch_27
    move-object/from16 v17, v9

    .line 909
    .line 910
    const/16 v16, 0x0

    .line 911
    .line 912
    aget v5, v12, v2

    .line 913
    .line 914
    and-int/2addr v3, v14

    .line 915
    int-to-long v8, v3

    .line 916
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v3

    .line 920
    check-cast v3, Ljava/util/List;

    .line 921
    .line 922
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 923
    .line 924
    .line 925
    goto/16 :goto_1

    .line 926
    .line 927
    :pswitch_28
    move-object/from16 v17, v9

    .line 928
    .line 929
    const/16 v16, 0x0

    .line 930
    .line 931
    aget v5, v12, v2

    .line 932
    .line 933
    and-int/2addr v3, v14

    .line 934
    int-to-long v8, v3

    .line 935
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    check-cast v3, Ljava/util/List;

    .line 940
    .line 941
    invoke-static {v5, v3, v6}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 942
    .line 943
    .line 944
    goto/16 :goto_1

    .line 945
    .line 946
    :pswitch_29
    move-object/from16 v17, v9

    .line 947
    .line 948
    const/16 v16, 0x0

    .line 949
    .line 950
    aget v5, v12, v2

    .line 951
    .line 952
    and-int/2addr v3, v14

    .line 953
    int-to-long v8, v3

    .line 954
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    check-cast v3, Ljava/util/List;

    .line 959
    .line 960
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 961
    .line 962
    .line 963
    move-result-object v8

    .line 964
    invoke-static {v5, v3, v6, v8}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 965
    .line 966
    .line 967
    goto/16 :goto_1

    .line 968
    .line 969
    :pswitch_2a
    move-object/from16 v17, v9

    .line 970
    .line 971
    const/16 v16, 0x0

    .line 972
    .line 973
    aget v5, v12, v2

    .line 974
    .line 975
    and-int/2addr v3, v14

    .line 976
    int-to-long v8, v3

    .line 977
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v3

    .line 981
    check-cast v3, Ljava/util/List;

    .line 982
    .line 983
    invoke-static {v5, v3, v6}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 984
    .line 985
    .line 986
    goto/16 :goto_1

    .line 987
    .line 988
    :pswitch_2b
    move-object/from16 v17, v9

    .line 989
    .line 990
    const/16 v16, 0x0

    .line 991
    .line 992
    aget v5, v12, v2

    .line 993
    .line 994
    and-int/2addr v3, v14

    .line 995
    int-to-long v8, v3

    .line 996
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v3

    .line 1000
    check-cast v3, Ljava/util/List;

    .line 1001
    .line 1002
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 1003
    .line 1004
    .line 1005
    goto/16 :goto_1

    .line 1006
    .line 1007
    :pswitch_2c
    move-object/from16 v17, v9

    .line 1008
    .line 1009
    const/16 v16, 0x0

    .line 1010
    .line 1011
    aget v5, v12, v2

    .line 1012
    .line 1013
    and-int/2addr v3, v14

    .line 1014
    int-to-long v8, v3

    .line 1015
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v3

    .line 1019
    check-cast v3, Ljava/util/List;

    .line 1020
    .line 1021
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 1022
    .line 1023
    .line 1024
    goto/16 :goto_1

    .line 1025
    .line 1026
    :pswitch_2d
    move-object/from16 v17, v9

    .line 1027
    .line 1028
    const/16 v16, 0x0

    .line 1029
    .line 1030
    aget v5, v12, v2

    .line 1031
    .line 1032
    and-int/2addr v3, v14

    .line 1033
    int-to-long v8, v3

    .line 1034
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v3

    .line 1038
    check-cast v3, Ljava/util/List;

    .line 1039
    .line 1040
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 1041
    .line 1042
    .line 1043
    goto/16 :goto_1

    .line 1044
    .line 1045
    :pswitch_2e
    move-object/from16 v17, v9

    .line 1046
    .line 1047
    const/16 v16, 0x0

    .line 1048
    .line 1049
    aget v5, v12, v2

    .line 1050
    .line 1051
    and-int/2addr v3, v14

    .line 1052
    int-to-long v8, v3

    .line 1053
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v3

    .line 1057
    check-cast v3, Ljava/util/List;

    .line 1058
    .line 1059
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 1060
    .line 1061
    .line 1062
    goto/16 :goto_1

    .line 1063
    .line 1064
    :pswitch_2f
    move-object/from16 v17, v9

    .line 1065
    .line 1066
    const/16 v16, 0x0

    .line 1067
    .line 1068
    aget v5, v12, v2

    .line 1069
    .line 1070
    and-int/2addr v3, v14

    .line 1071
    int-to-long v8, v3

    .line 1072
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v3

    .line 1076
    check-cast v3, Ljava/util/List;

    .line 1077
    .line 1078
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 1079
    .line 1080
    .line 1081
    goto/16 :goto_1

    .line 1082
    .line 1083
    :pswitch_30
    move-object/from16 v17, v9

    .line 1084
    .line 1085
    const/16 v16, 0x0

    .line 1086
    .line 1087
    aget v5, v12, v2

    .line 1088
    .line 1089
    and-int/2addr v3, v14

    .line 1090
    int-to-long v8, v3

    .line 1091
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v3

    .line 1095
    check-cast v3, Ljava/util/List;

    .line 1096
    .line 1097
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 1098
    .line 1099
    .line 1100
    goto/16 :goto_1

    .line 1101
    .line 1102
    :pswitch_31
    move-object/from16 v17, v9

    .line 1103
    .line 1104
    const/16 v16, 0x0

    .line 1105
    .line 1106
    aget v5, v12, v2

    .line 1107
    .line 1108
    and-int/2addr v3, v14

    .line 1109
    int-to-long v8, v3

    .line 1110
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v3

    .line 1114
    check-cast v3, Ljava/util/List;

    .line 1115
    .line 1116
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 1117
    .line 1118
    .line 1119
    goto/16 :goto_1

    .line 1120
    .line 1121
    :pswitch_32
    move-object/from16 v17, v9

    .line 1122
    .line 1123
    const/16 v16, 0x0

    .line 1124
    .line 1125
    aget v5, v12, v2

    .line 1126
    .line 1127
    and-int/2addr v3, v14

    .line 1128
    int-to-long v8, v3

    .line 1129
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v3

    .line 1133
    check-cast v3, Ljava/util/List;

    .line 1134
    .line 1135
    invoke-static {v5, v3, v6, v4}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 1136
    .line 1137
    .line 1138
    goto/16 :goto_1

    .line 1139
    .line 1140
    :pswitch_33
    move-object/from16 v17, v9

    .line 1141
    .line 1142
    const/16 v16, 0x0

    .line 1143
    .line 1144
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v8

    .line 1148
    if-eqz v8, :cond_2

    .line 1149
    .line 1150
    and-int/2addr v3, v14

    .line 1151
    int-to-long v8, v3

    .line 1152
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v3

    .line 1156
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v8

    .line 1160
    invoke-virtual {v6, v5, v3, v8}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 1161
    .line 1162
    .line 1163
    goto/16 :goto_1

    .line 1164
    .line 1165
    :pswitch_34
    move-object/from16 v17, v9

    .line 1166
    .line 1167
    const/16 v16, 0x0

    .line 1168
    .line 1169
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v8

    .line 1173
    if-eqz v8, :cond_2

    .line 1174
    .line 1175
    and-int/2addr v3, v14

    .line 1176
    int-to-long v8, v3

    .line 1177
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1178
    .line 1179
    .line 1180
    move-result-wide v8

    .line 1181
    shl-long v18, v8, v15

    .line 1182
    .line 1183
    shr-long/2addr v8, v11

    .line 1184
    xor-long v8, v18, v8

    .line 1185
    .line 1186
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 1187
    .line 1188
    .line 1189
    goto/16 :goto_1

    .line 1190
    .line 1191
    :pswitch_35
    move-object/from16 v17, v9

    .line 1192
    .line 1193
    const/16 v16, 0x0

    .line 1194
    .line 1195
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v8

    .line 1199
    if-eqz v8, :cond_2

    .line 1200
    .line 1201
    and-int/2addr v3, v14

    .line 1202
    int-to-long v8, v3

    .line 1203
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1204
    .line 1205
    .line 1206
    move-result v3

    .line 1207
    shl-int/lit8 v8, v3, 0x1

    .line 1208
    .line 1209
    shr-int/lit8 v3, v3, 0x1f

    .line 1210
    .line 1211
    xor-int/2addr v3, v8

    .line 1212
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 1213
    .line 1214
    .line 1215
    goto/16 :goto_1

    .line 1216
    .line 1217
    :pswitch_36
    move-object/from16 v17, v9

    .line 1218
    .line 1219
    const/16 v16, 0x0

    .line 1220
    .line 1221
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1222
    .line 1223
    .line 1224
    move-result v8

    .line 1225
    if-eqz v8, :cond_2

    .line 1226
    .line 1227
    and-int/2addr v3, v14

    .line 1228
    int-to-long v8, v3

    .line 1229
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1230
    .line 1231
    .line 1232
    move-result-wide v8

    .line 1233
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_1

    .line 1237
    .line 1238
    :pswitch_37
    move-object/from16 v17, v9

    .line 1239
    .line 1240
    const/16 v16, 0x0

    .line 1241
    .line 1242
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v8

    .line 1246
    if-eqz v8, :cond_2

    .line 1247
    .line 1248
    and-int/2addr v3, v14

    .line 1249
    int-to-long v8, v3

    .line 1250
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1251
    .line 1252
    .line 1253
    move-result v3

    .line 1254
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 1255
    .line 1256
    .line 1257
    goto/16 :goto_1

    .line 1258
    .line 1259
    :pswitch_38
    move-object/from16 v17, v9

    .line 1260
    .line 1261
    const/16 v16, 0x0

    .line 1262
    .line 1263
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v8

    .line 1267
    if-eqz v8, :cond_2

    .line 1268
    .line 1269
    and-int/2addr v3, v14

    .line 1270
    int-to-long v8, v3

    .line 1271
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1272
    .line 1273
    .line 1274
    move-result v3

    .line 1275
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeInt32(II)V

    .line 1276
    .line 1277
    .line 1278
    goto/16 :goto_1

    .line 1279
    .line 1280
    :pswitch_39
    move-object/from16 v17, v9

    .line 1281
    .line 1282
    const/16 v16, 0x0

    .line 1283
    .line 1284
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v8

    .line 1288
    if-eqz v8, :cond_2

    .line 1289
    .line 1290
    and-int/2addr v3, v14

    .line 1291
    int-to-long v8, v3

    .line 1292
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1293
    .line 1294
    .line 1295
    move-result v3

    .line 1296
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 1297
    .line 1298
    .line 1299
    goto/16 :goto_1

    .line 1300
    .line 1301
    :pswitch_3a
    move-object/from16 v17, v9

    .line 1302
    .line 1303
    const/16 v16, 0x0

    .line 1304
    .line 1305
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v8

    .line 1309
    if-eqz v8, :cond_2

    .line 1310
    .line 1311
    and-int/2addr v3, v14

    .line 1312
    int-to-long v8, v3

    .line 1313
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v3

    .line 1317
    check-cast v3, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 1318
    .line 1319
    invoke-virtual {v6, v5, v3}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)V

    .line 1320
    .line 1321
    .line 1322
    goto/16 :goto_1

    .line 1323
    .line 1324
    :pswitch_3b
    move-object/from16 v17, v9

    .line 1325
    .line 1326
    const/16 v16, 0x0

    .line 1327
    .line 1328
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1329
    .line 1330
    .line 1331
    move-result v8

    .line 1332
    if-eqz v8, :cond_2

    .line 1333
    .line 1334
    and-int/2addr v3, v14

    .line 1335
    int-to-long v8, v3

    .line 1336
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v3

    .line 1340
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v8

    .line 1344
    check-cast v3, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 1345
    .line 1346
    invoke-virtual {v7, v5, v3, v8}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILandroidx/glance/appwidget/protobuf/AbstractMessageLite;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 1347
    .line 1348
    .line 1349
    goto/16 :goto_1

    .line 1350
    .line 1351
    :pswitch_3c
    move-object/from16 v17, v9

    .line 1352
    .line 1353
    const/16 v16, 0x0

    .line 1354
    .line 1355
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1356
    .line 1357
    .line 1358
    move-result v8

    .line 1359
    if-eqz v8, :cond_2

    .line 1360
    .line 1361
    and-int/2addr v3, v14

    .line 1362
    int-to-long v8, v3

    .line 1363
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v3

    .line 1367
    invoke-static {v5, v3, v6}, Landroidx/glance/appwidget/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 1368
    .line 1369
    .line 1370
    goto/16 :goto_1

    .line 1371
    .line 1372
    :pswitch_3d
    move-object/from16 v17, v9

    .line 1373
    .line 1374
    const/16 v16, 0x0

    .line 1375
    .line 1376
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1377
    .line 1378
    .line 1379
    move-result v8

    .line 1380
    if-eqz v8, :cond_2

    .line 1381
    .line 1382
    and-int/2addr v3, v14

    .line 1383
    int-to-long v8, v3

    .line 1384
    sget-object v3, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1385
    .line 1386
    invoke-virtual {v3, v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v3

    .line 1390
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBool(IZ)V

    .line 1391
    .line 1392
    .line 1393
    goto/16 :goto_1

    .line 1394
    .line 1395
    :pswitch_3e
    move-object/from16 v17, v9

    .line 1396
    .line 1397
    const/16 v16, 0x0

    .line 1398
    .line 1399
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1400
    .line 1401
    .line 1402
    move-result v8

    .line 1403
    if-eqz v8, :cond_2

    .line 1404
    .line 1405
    and-int/2addr v3, v14

    .line 1406
    int-to-long v8, v3

    .line 1407
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1408
    .line 1409
    .line 1410
    move-result v3

    .line 1411
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 1412
    .line 1413
    .line 1414
    goto/16 :goto_1

    .line 1415
    .line 1416
    :pswitch_3f
    move-object/from16 v17, v9

    .line 1417
    .line 1418
    const/16 v16, 0x0

    .line 1419
    .line 1420
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1421
    .line 1422
    .line 1423
    move-result v8

    .line 1424
    if-eqz v8, :cond_2

    .line 1425
    .line 1426
    and-int/2addr v3, v14

    .line 1427
    int-to-long v8, v3

    .line 1428
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1429
    .line 1430
    .line 1431
    move-result-wide v8

    .line 1432
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 1433
    .line 1434
    .line 1435
    goto/16 :goto_1

    .line 1436
    .line 1437
    :pswitch_40
    move-object/from16 v17, v9

    .line 1438
    .line 1439
    const/16 v16, 0x0

    .line 1440
    .line 1441
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1442
    .line 1443
    .line 1444
    move-result v8

    .line 1445
    if-eqz v8, :cond_2

    .line 1446
    .line 1447
    and-int/2addr v3, v14

    .line 1448
    int-to-long v8, v3

    .line 1449
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1450
    .line 1451
    .line 1452
    move-result v3

    .line 1453
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeInt32(II)V

    .line 1454
    .line 1455
    .line 1456
    goto :goto_1

    .line 1457
    :pswitch_41
    move-object/from16 v17, v9

    .line 1458
    .line 1459
    const/16 v16, 0x0

    .line 1460
    .line 1461
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1462
    .line 1463
    .line 1464
    move-result v8

    .line 1465
    if-eqz v8, :cond_2

    .line 1466
    .line 1467
    and-int/2addr v3, v14

    .line 1468
    int-to-long v8, v3

    .line 1469
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1470
    .line 1471
    .line 1472
    move-result-wide v8

    .line 1473
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 1474
    .line 1475
    .line 1476
    goto :goto_1

    .line 1477
    :pswitch_42
    move-object/from16 v17, v9

    .line 1478
    .line 1479
    const/16 v16, 0x0

    .line 1480
    .line 1481
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1482
    .line 1483
    .line 1484
    move-result v8

    .line 1485
    if-eqz v8, :cond_2

    .line 1486
    .line 1487
    and-int/2addr v3, v14

    .line 1488
    int-to-long v8, v3

    .line 1489
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1490
    .line 1491
    .line 1492
    move-result-wide v8

    .line 1493
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 1494
    .line 1495
    .line 1496
    goto :goto_1

    .line 1497
    :pswitch_43
    move-object/from16 v17, v9

    .line 1498
    .line 1499
    const/16 v16, 0x0

    .line 1500
    .line 1501
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1502
    .line 1503
    .line 1504
    move-result v8

    .line 1505
    if-eqz v8, :cond_2

    .line 1506
    .line 1507
    and-int/2addr v3, v14

    .line 1508
    int-to-long v8, v3

    .line 1509
    sget-object v3, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1510
    .line 1511
    invoke-virtual {v3, v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 1512
    .line 1513
    .line 1514
    move-result v3

    .line 1515
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1516
    .line 1517
    .line 1518
    move-result v3

    .line 1519
    invoke-virtual {v7, v5, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 1520
    .line 1521
    .line 1522
    goto :goto_1

    .line 1523
    :pswitch_44
    move-object/from16 v17, v9

    .line 1524
    .line 1525
    const/16 v16, 0x0

    .line 1526
    .line 1527
    invoke-virtual {v0, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1528
    .line 1529
    .line 1530
    move-result v8

    .line 1531
    if-eqz v8, :cond_2

    .line 1532
    .line 1533
    and-int/2addr v3, v14

    .line 1534
    int-to-long v8, v3

    .line 1535
    sget-object v3, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1536
    .line 1537
    invoke-virtual {v3, v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 1538
    .line 1539
    .line 1540
    move-result-wide v8

    .line 1541
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 1542
    .line 1543
    .line 1544
    move-result-wide v8

    .line 1545
    invoke-virtual {v7, v8, v9, v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 1546
    .line 1547
    .line 1548
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x3

    .line 1549
    .line 1550
    move-object/from16 v9, v17

    .line 1551
    .line 1552
    goto/16 :goto_0

    .line 1553
    .line 1554
    :cond_3
    return-void

    .line 1555
    :cond_4
    move-object/from16 v17, v9

    .line 1556
    .line 1557
    const/16 v16, 0x0

    .line 1558
    .line 1559
    array-length v8, v12

    .line 1560
    move v2, v4

    .line 1561
    move v5, v2

    .line 1562
    move v3, v14

    .line 1563
    :goto_2
    if-ge v2, v8, :cond_c

    .line 1564
    .line 1565
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 1566
    .line 1567
    .line 1568
    move-result v9

    .line 1569
    move/from16 v18, v11

    .line 1570
    .line 1571
    aget v11, v12, v2

    .line 1572
    .line 1573
    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/MessageSchema;->type(I)I

    .line 1574
    .line 1575
    .line 1576
    move-result v4

    .line 1577
    move/from16 v20, v15

    .line 1578
    .line 1579
    const/16 v15, 0x11

    .line 1580
    .line 1581
    move/from16 v21, v14

    .line 1582
    .line 1583
    sget-object v14, Landroidx/glance/appwidget/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1584
    .line 1585
    if-gt v4, v15, :cond_7

    .line 1586
    .line 1587
    add-int/lit8 v15, v2, 0x2

    .line 1588
    .line 1589
    aget v15, v12, v15

    .line 1590
    .line 1591
    move/from16 v22, v4

    .line 1592
    .line 1593
    and-int v4, v15, v21

    .line 1594
    .line 1595
    if-eq v4, v3, :cond_6

    .line 1596
    .line 1597
    move/from16 v3, v21

    .line 1598
    .line 1599
    if-ne v4, v3, :cond_5

    .line 1600
    .line 1601
    move/from16 v24, v8

    .line 1602
    .line 1603
    move v3, v9

    .line 1604
    const/4 v5, 0x0

    .line 1605
    goto :goto_3

    .line 1606
    :cond_5
    move/from16 v24, v8

    .line 1607
    .line 1608
    move v3, v9

    .line 1609
    int-to-long v8, v4

    .line 1610
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1611
    .line 1612
    .line 1613
    move-result v5

    .line 1614
    goto :goto_3

    .line 1615
    :cond_6
    move/from16 v23, v3

    .line 1616
    .line 1617
    move/from16 v24, v8

    .line 1618
    .line 1619
    move v3, v9

    .line 1620
    move/from16 v4, v23

    .line 1621
    .line 1622
    :goto_3
    ushr-int/lit8 v8, v15, 0x14

    .line 1623
    .line 1624
    shl-int v8, v20, v8

    .line 1625
    .line 1626
    :goto_4
    const v21, 0xfffff

    .line 1627
    .line 1628
    .line 1629
    goto :goto_5

    .line 1630
    :cond_7
    move/from16 v23, v3

    .line 1631
    .line 1632
    move/from16 v22, v4

    .line 1633
    .line 1634
    move/from16 v24, v8

    .line 1635
    .line 1636
    move v3, v9

    .line 1637
    move/from16 v4, v23

    .line 1638
    .line 1639
    const/4 v8, 0x0

    .line 1640
    goto :goto_4

    .line 1641
    :goto_5
    and-int v3, v3, v21

    .line 1642
    .line 1643
    move v15, v8

    .line 1644
    int-to-long v8, v3

    .line 1645
    packed-switch v22, :pswitch_data_1

    .line 1646
    .line 1647
    .line 1648
    :cond_8
    :goto_6
    move v3, v4

    .line 1649
    move v4, v5

    .line 1650
    const/16 v19, 0x0

    .line 1651
    .line 1652
    goto/16 :goto_a

    .line 1653
    .line 1654
    :pswitch_45
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1655
    .line 1656
    .line 1657
    move-result v3

    .line 1658
    if-eqz v3, :cond_8

    .line 1659
    .line 1660
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v3

    .line 1664
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v8

    .line 1668
    invoke-virtual {v6, v11, v3, v8}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 1669
    .line 1670
    .line 1671
    goto :goto_6

    .line 1672
    :pswitch_46
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1673
    .line 1674
    .line 1675
    move-result v3

    .line 1676
    if-eqz v3, :cond_8

    .line 1677
    .line 1678
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1679
    .line 1680
    .line 1681
    move-result-wide v8

    .line 1682
    shl-long v14, v8, v20

    .line 1683
    .line 1684
    shr-long v8, v8, v18

    .line 1685
    .line 1686
    xor-long/2addr v8, v14

    .line 1687
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 1688
    .line 1689
    .line 1690
    goto :goto_6

    .line 1691
    :pswitch_47
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1692
    .line 1693
    .line 1694
    move-result v3

    .line 1695
    if-eqz v3, :cond_8

    .line 1696
    .line 1697
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1698
    .line 1699
    .line 1700
    move-result v3

    .line 1701
    shl-int/lit8 v8, v3, 0x1

    .line 1702
    .line 1703
    shr-int/lit8 v3, v3, 0x1f

    .line 1704
    .line 1705
    xor-int/2addr v3, v8

    .line 1706
    invoke-virtual {v7, v11, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 1707
    .line 1708
    .line 1709
    goto :goto_6

    .line 1710
    :pswitch_48
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1711
    .line 1712
    .line 1713
    move-result v3

    .line 1714
    if-eqz v3, :cond_8

    .line 1715
    .line 1716
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1717
    .line 1718
    .line 1719
    move-result-wide v8

    .line 1720
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 1721
    .line 1722
    .line 1723
    goto :goto_6

    .line 1724
    :pswitch_49
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1725
    .line 1726
    .line 1727
    move-result v3

    .line 1728
    if-eqz v3, :cond_8

    .line 1729
    .line 1730
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1731
    .line 1732
    .line 1733
    move-result v3

    .line 1734
    invoke-virtual {v7, v11, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 1735
    .line 1736
    .line 1737
    goto :goto_6

    .line 1738
    :pswitch_4a
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1739
    .line 1740
    .line 1741
    move-result v3

    .line 1742
    if-eqz v3, :cond_8

    .line 1743
    .line 1744
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1745
    .line 1746
    .line 1747
    move-result v3

    .line 1748
    invoke-virtual {v7, v11, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeInt32(II)V

    .line 1749
    .line 1750
    .line 1751
    goto :goto_6

    .line 1752
    :pswitch_4b
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1753
    .line 1754
    .line 1755
    move-result v3

    .line 1756
    if-eqz v3, :cond_8

    .line 1757
    .line 1758
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1759
    .line 1760
    .line 1761
    move-result v3

    .line 1762
    invoke-virtual {v7, v11, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 1763
    .line 1764
    .line 1765
    goto :goto_6

    .line 1766
    :pswitch_4c
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1767
    .line 1768
    .line 1769
    move-result v3

    .line 1770
    if-eqz v3, :cond_8

    .line 1771
    .line 1772
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v3

    .line 1776
    check-cast v3, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 1777
    .line 1778
    invoke-virtual {v6, v11, v3}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)V

    .line 1779
    .line 1780
    .line 1781
    goto/16 :goto_6

    .line 1782
    .line 1783
    :pswitch_4d
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1784
    .line 1785
    .line 1786
    move-result v3

    .line 1787
    if-eqz v3, :cond_8

    .line 1788
    .line 1789
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v3

    .line 1793
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v8

    .line 1797
    check-cast v3, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 1798
    .line 1799
    invoke-virtual {v7, v11, v3, v8}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILandroidx/glance/appwidget/protobuf/AbstractMessageLite;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 1800
    .line 1801
    .line 1802
    goto/16 :goto_6

    .line 1803
    .line 1804
    :pswitch_4e
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1805
    .line 1806
    .line 1807
    move-result v3

    .line 1808
    if-eqz v3, :cond_8

    .line 1809
    .line 1810
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v3

    .line 1814
    invoke-static {v11, v3, v6}, Landroidx/glance/appwidget/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 1815
    .line 1816
    .line 1817
    goto/16 :goto_6

    .line 1818
    .line 1819
    :pswitch_4f
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1820
    .line 1821
    .line 1822
    move-result v3

    .line 1823
    if-eqz v3, :cond_8

    .line 1824
    .line 1825
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v3

    .line 1829
    check-cast v3, Ljava/lang/Boolean;

    .line 1830
    .line 1831
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1832
    .line 1833
    .line 1834
    move-result v3

    .line 1835
    invoke-virtual {v7, v11, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBool(IZ)V

    .line 1836
    .line 1837
    .line 1838
    goto/16 :goto_6

    .line 1839
    .line 1840
    :pswitch_50
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1841
    .line 1842
    .line 1843
    move-result v3

    .line 1844
    if-eqz v3, :cond_8

    .line 1845
    .line 1846
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1847
    .line 1848
    .line 1849
    move-result v3

    .line 1850
    invoke-virtual {v7, v11, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 1851
    .line 1852
    .line 1853
    goto/16 :goto_6

    .line 1854
    .line 1855
    :pswitch_51
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1856
    .line 1857
    .line 1858
    move-result v3

    .line 1859
    if-eqz v3, :cond_8

    .line 1860
    .line 1861
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1862
    .line 1863
    .line 1864
    move-result-wide v8

    .line 1865
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 1866
    .line 1867
    .line 1868
    goto/16 :goto_6

    .line 1869
    .line 1870
    :pswitch_52
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1871
    .line 1872
    .line 1873
    move-result v3

    .line 1874
    if-eqz v3, :cond_8

    .line 1875
    .line 1876
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1877
    .line 1878
    .line 1879
    move-result v3

    .line 1880
    invoke-virtual {v7, v11, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeInt32(II)V

    .line 1881
    .line 1882
    .line 1883
    goto/16 :goto_6

    .line 1884
    .line 1885
    :pswitch_53
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1886
    .line 1887
    .line 1888
    move-result v3

    .line 1889
    if-eqz v3, :cond_8

    .line 1890
    .line 1891
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1892
    .line 1893
    .line 1894
    move-result-wide v8

    .line 1895
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 1896
    .line 1897
    .line 1898
    goto/16 :goto_6

    .line 1899
    .line 1900
    :pswitch_54
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1901
    .line 1902
    .line 1903
    move-result v3

    .line 1904
    if-eqz v3, :cond_8

    .line 1905
    .line 1906
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1907
    .line 1908
    .line 1909
    move-result-wide v8

    .line 1910
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 1911
    .line 1912
    .line 1913
    goto/16 :goto_6

    .line 1914
    .line 1915
    :pswitch_55
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1916
    .line 1917
    .line 1918
    move-result v3

    .line 1919
    if-eqz v3, :cond_8

    .line 1920
    .line 1921
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v3

    .line 1925
    check-cast v3, Ljava/lang/Float;

    .line 1926
    .line 1927
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 1928
    .line 1929
    .line 1930
    move-result v3

    .line 1931
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1932
    .line 1933
    .line 1934
    move-result v3

    .line 1935
    invoke-virtual {v7, v11, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 1936
    .line 1937
    .line 1938
    goto/16 :goto_6

    .line 1939
    .line 1940
    :pswitch_56
    invoke-virtual {v0, v11, v2, v1}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1941
    .line 1942
    .line 1943
    move-result v3

    .line 1944
    if-eqz v3, :cond_8

    .line 1945
    .line 1946
    invoke-static {v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v3

    .line 1950
    check-cast v3, Ljava/lang/Double;

    .line 1951
    .line 1952
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 1953
    .line 1954
    .line 1955
    move-result-wide v8

    .line 1956
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 1957
    .line 1958
    .line 1959
    move-result-wide v8

    .line 1960
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 1961
    .line 1962
    .line 1963
    goto/16 :goto_6

    .line 1964
    .line 1965
    :pswitch_57
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v3

    .line 1969
    if-nez v3, :cond_9

    .line 1970
    .line 1971
    goto/16 :goto_6

    .line 1972
    .line 1973
    :cond_9
    div-int/lit8 v2, v2, 0x3

    .line 1974
    .line 1975
    mul-int/lit8 v2, v2, 0x2

    .line 1976
    .line 1977
    aget-object v0, v17, v2

    .line 1978
    .line 1979
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1980
    .line 1981
    .line 1982
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 1983
    .line 1984
    .line 1985
    throw v16

    .line 1986
    :pswitch_58
    aget v3, v12, v2

    .line 1987
    .line 1988
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v8

    .line 1992
    check-cast v8, Ljava/util/List;

    .line 1993
    .line 1994
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v9

    .line 1998
    invoke-static {v3, v8, v6, v9}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 1999
    .line 2000
    .line 2001
    goto/16 :goto_6

    .line 2002
    .line 2003
    :pswitch_59
    aget v3, v12, v2

    .line 2004
    .line 2005
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2006
    .line 2007
    .line 2008
    move-result-object v8

    .line 2009
    check-cast v8, Ljava/util/List;

    .line 2010
    .line 2011
    move/from16 v11, v20

    .line 2012
    .line 2013
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2014
    .line 2015
    .line 2016
    goto/16 :goto_6

    .line 2017
    .line 2018
    :pswitch_5a
    move/from16 v11, v20

    .line 2019
    .line 2020
    aget v3, v12, v2

    .line 2021
    .line 2022
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v8

    .line 2026
    check-cast v8, Ljava/util/List;

    .line 2027
    .line 2028
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2029
    .line 2030
    .line 2031
    goto/16 :goto_6

    .line 2032
    .line 2033
    :pswitch_5b
    move/from16 v11, v20

    .line 2034
    .line 2035
    aget v3, v12, v2

    .line 2036
    .line 2037
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v8

    .line 2041
    check-cast v8, Ljava/util/List;

    .line 2042
    .line 2043
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2044
    .line 2045
    .line 2046
    goto/16 :goto_6

    .line 2047
    .line 2048
    :pswitch_5c
    move/from16 v11, v20

    .line 2049
    .line 2050
    aget v3, v12, v2

    .line 2051
    .line 2052
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v8

    .line 2056
    check-cast v8, Ljava/util/List;

    .line 2057
    .line 2058
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2059
    .line 2060
    .line 2061
    goto/16 :goto_6

    .line 2062
    .line 2063
    :pswitch_5d
    move/from16 v11, v20

    .line 2064
    .line 2065
    aget v3, v12, v2

    .line 2066
    .line 2067
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v8

    .line 2071
    check-cast v8, Ljava/util/List;

    .line 2072
    .line 2073
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2074
    .line 2075
    .line 2076
    goto/16 :goto_6

    .line 2077
    .line 2078
    :pswitch_5e
    move/from16 v11, v20

    .line 2079
    .line 2080
    aget v3, v12, v2

    .line 2081
    .line 2082
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v8

    .line 2086
    check-cast v8, Ljava/util/List;

    .line 2087
    .line 2088
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2089
    .line 2090
    .line 2091
    goto/16 :goto_6

    .line 2092
    .line 2093
    :pswitch_5f
    move/from16 v11, v20

    .line 2094
    .line 2095
    aget v3, v12, v2

    .line 2096
    .line 2097
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v8

    .line 2101
    check-cast v8, Ljava/util/List;

    .line 2102
    .line 2103
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2104
    .line 2105
    .line 2106
    goto/16 :goto_6

    .line 2107
    .line 2108
    :pswitch_60
    move/from16 v11, v20

    .line 2109
    .line 2110
    aget v3, v12, v2

    .line 2111
    .line 2112
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v8

    .line 2116
    check-cast v8, Ljava/util/List;

    .line 2117
    .line 2118
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2119
    .line 2120
    .line 2121
    goto/16 :goto_6

    .line 2122
    .line 2123
    :pswitch_61
    move/from16 v11, v20

    .line 2124
    .line 2125
    aget v3, v12, v2

    .line 2126
    .line 2127
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v8

    .line 2131
    check-cast v8, Ljava/util/List;

    .line 2132
    .line 2133
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2134
    .line 2135
    .line 2136
    goto/16 :goto_6

    .line 2137
    .line 2138
    :pswitch_62
    move/from16 v11, v20

    .line 2139
    .line 2140
    aget v3, v12, v2

    .line 2141
    .line 2142
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v8

    .line 2146
    check-cast v8, Ljava/util/List;

    .line 2147
    .line 2148
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2149
    .line 2150
    .line 2151
    goto/16 :goto_6

    .line 2152
    .line 2153
    :pswitch_63
    move/from16 v11, v20

    .line 2154
    .line 2155
    aget v3, v12, v2

    .line 2156
    .line 2157
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v8

    .line 2161
    check-cast v8, Ljava/util/List;

    .line 2162
    .line 2163
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2164
    .line 2165
    .line 2166
    goto/16 :goto_6

    .line 2167
    .line 2168
    :pswitch_64
    move/from16 v11, v20

    .line 2169
    .line 2170
    aget v3, v12, v2

    .line 2171
    .line 2172
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v8

    .line 2176
    check-cast v8, Ljava/util/List;

    .line 2177
    .line 2178
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2179
    .line 2180
    .line 2181
    goto/16 :goto_6

    .line 2182
    .line 2183
    :pswitch_65
    move/from16 v11, v20

    .line 2184
    .line 2185
    aget v3, v12, v2

    .line 2186
    .line 2187
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v8

    .line 2191
    check-cast v8, Ljava/util/List;

    .line 2192
    .line 2193
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2194
    .line 2195
    .line 2196
    goto/16 :goto_6

    .line 2197
    .line 2198
    :pswitch_66
    move/from16 v11, v20

    .line 2199
    .line 2200
    aget v3, v12, v2

    .line 2201
    .line 2202
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v8

    .line 2206
    check-cast v8, Ljava/util/List;

    .line 2207
    .line 2208
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2209
    .line 2210
    .line 2211
    goto/16 :goto_6

    .line 2212
    .line 2213
    :pswitch_67
    aget v3, v12, v2

    .line 2214
    .line 2215
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v8

    .line 2219
    check-cast v8, Ljava/util/List;

    .line 2220
    .line 2221
    const/4 v11, 0x0

    .line 2222
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2223
    .line 2224
    .line 2225
    :goto_7
    move v3, v4

    .line 2226
    move v4, v5

    .line 2227
    move/from16 v19, v11

    .line 2228
    .line 2229
    :cond_a
    :goto_8
    const/16 v20, 0x1

    .line 2230
    .line 2231
    goto/16 :goto_a

    .line 2232
    .line 2233
    :pswitch_68
    const/4 v11, 0x0

    .line 2234
    aget v3, v12, v2

    .line 2235
    .line 2236
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v8

    .line 2240
    check-cast v8, Ljava/util/List;

    .line 2241
    .line 2242
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2243
    .line 2244
    .line 2245
    goto :goto_7

    .line 2246
    :pswitch_69
    const/4 v11, 0x0

    .line 2247
    aget v3, v12, v2

    .line 2248
    .line 2249
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v8

    .line 2253
    check-cast v8, Ljava/util/List;

    .line 2254
    .line 2255
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2256
    .line 2257
    .line 2258
    goto :goto_7

    .line 2259
    :pswitch_6a
    const/4 v11, 0x0

    .line 2260
    aget v3, v12, v2

    .line 2261
    .line 2262
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2263
    .line 2264
    .line 2265
    move-result-object v8

    .line 2266
    check-cast v8, Ljava/util/List;

    .line 2267
    .line 2268
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2269
    .line 2270
    .line 2271
    goto :goto_7

    .line 2272
    :pswitch_6b
    const/4 v11, 0x0

    .line 2273
    aget v3, v12, v2

    .line 2274
    .line 2275
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v8

    .line 2279
    check-cast v8, Ljava/util/List;

    .line 2280
    .line 2281
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2282
    .line 2283
    .line 2284
    goto :goto_7

    .line 2285
    :pswitch_6c
    const/4 v11, 0x0

    .line 2286
    aget v3, v12, v2

    .line 2287
    .line 2288
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v8

    .line 2292
    check-cast v8, Ljava/util/List;

    .line 2293
    .line 2294
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2295
    .line 2296
    .line 2297
    goto :goto_7

    .line 2298
    :pswitch_6d
    aget v3, v12, v2

    .line 2299
    .line 2300
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v8

    .line 2304
    check-cast v8, Ljava/util/List;

    .line 2305
    .line 2306
    invoke-static {v3, v8, v6}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 2307
    .line 2308
    .line 2309
    :goto_9
    move v3, v4

    .line 2310
    move v4, v5

    .line 2311
    const/16 v19, 0x0

    .line 2312
    .line 2313
    goto :goto_8

    .line 2314
    :pswitch_6e
    aget v3, v12, v2

    .line 2315
    .line 2316
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v8

    .line 2320
    check-cast v8, Ljava/util/List;

    .line 2321
    .line 2322
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v9

    .line 2326
    invoke-static {v3, v8, v6, v9}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 2327
    .line 2328
    .line 2329
    goto :goto_9

    .line 2330
    :pswitch_6f
    aget v3, v12, v2

    .line 2331
    .line 2332
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v8

    .line 2336
    check-cast v8, Ljava/util/List;

    .line 2337
    .line 2338
    invoke-static {v3, v8, v6}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 2339
    .line 2340
    .line 2341
    goto :goto_9

    .line 2342
    :pswitch_70
    aget v3, v12, v2

    .line 2343
    .line 2344
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2345
    .line 2346
    .line 2347
    move-result-object v8

    .line 2348
    check-cast v8, Ljava/util/List;

    .line 2349
    .line 2350
    const/4 v11, 0x0

    .line 2351
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2352
    .line 2353
    .line 2354
    goto/16 :goto_7

    .line 2355
    .line 2356
    :pswitch_71
    const/4 v11, 0x0

    .line 2357
    aget v3, v12, v2

    .line 2358
    .line 2359
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v8

    .line 2363
    check-cast v8, Ljava/util/List;

    .line 2364
    .line 2365
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2366
    .line 2367
    .line 2368
    goto/16 :goto_7

    .line 2369
    .line 2370
    :pswitch_72
    const/4 v11, 0x0

    .line 2371
    aget v3, v12, v2

    .line 2372
    .line 2373
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v8

    .line 2377
    check-cast v8, Ljava/util/List;

    .line 2378
    .line 2379
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2380
    .line 2381
    .line 2382
    goto/16 :goto_7

    .line 2383
    .line 2384
    :pswitch_73
    const/4 v11, 0x0

    .line 2385
    aget v3, v12, v2

    .line 2386
    .line 2387
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v8

    .line 2391
    check-cast v8, Ljava/util/List;

    .line 2392
    .line 2393
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2394
    .line 2395
    .line 2396
    goto/16 :goto_7

    .line 2397
    .line 2398
    :pswitch_74
    const/4 v11, 0x0

    .line 2399
    aget v3, v12, v2

    .line 2400
    .line 2401
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v8

    .line 2405
    check-cast v8, Ljava/util/List;

    .line 2406
    .line 2407
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2408
    .line 2409
    .line 2410
    goto/16 :goto_7

    .line 2411
    .line 2412
    :pswitch_75
    const/4 v11, 0x0

    .line 2413
    aget v3, v12, v2

    .line 2414
    .line 2415
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v8

    .line 2419
    check-cast v8, Ljava/util/List;

    .line 2420
    .line 2421
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2422
    .line 2423
    .line 2424
    goto/16 :goto_7

    .line 2425
    .line 2426
    :pswitch_76
    const/4 v11, 0x0

    .line 2427
    aget v3, v12, v2

    .line 2428
    .line 2429
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v8

    .line 2433
    check-cast v8, Ljava/util/List;

    .line 2434
    .line 2435
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2436
    .line 2437
    .line 2438
    goto/16 :goto_7

    .line 2439
    .line 2440
    :pswitch_77
    const/4 v11, 0x0

    .line 2441
    aget v3, v12, v2

    .line 2442
    .line 2443
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v8

    .line 2447
    check-cast v8, Ljava/util/List;

    .line 2448
    .line 2449
    invoke-static {v3, v8, v6, v11}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;Z)V

    .line 2450
    .line 2451
    .line 2452
    goto/16 :goto_7

    .line 2453
    .line 2454
    :pswitch_78
    move v3, v4

    .line 2455
    move v4, v5

    .line 2456
    move v5, v15

    .line 2457
    const/16 v19, 0x0

    .line 2458
    .line 2459
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2460
    .line 2461
    .line 2462
    move-result v5

    .line 2463
    if-eqz v5, :cond_a

    .line 2464
    .line 2465
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v5

    .line 2469
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v8

    .line 2473
    invoke-virtual {v6, v11, v5, v8}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 2474
    .line 2475
    .line 2476
    goto/16 :goto_8

    .line 2477
    .line 2478
    :pswitch_79
    move v3, v4

    .line 2479
    move v4, v5

    .line 2480
    move v5, v15

    .line 2481
    const/16 v19, 0x0

    .line 2482
    .line 2483
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2484
    .line 2485
    .line 2486
    move-result v5

    .line 2487
    if-eqz v5, :cond_a

    .line 2488
    .line 2489
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2490
    .line 2491
    .line 2492
    move-result-wide v8

    .line 2493
    const/16 v20, 0x1

    .line 2494
    .line 2495
    shl-long v14, v8, v20

    .line 2496
    .line 2497
    shr-long v8, v8, v18

    .line 2498
    .line 2499
    xor-long/2addr v8, v14

    .line 2500
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 2501
    .line 2502
    .line 2503
    goto/16 :goto_a

    .line 2504
    .line 2505
    :pswitch_7a
    move v3, v4

    .line 2506
    move v4, v5

    .line 2507
    move v5, v15

    .line 2508
    const/16 v19, 0x0

    .line 2509
    .line 2510
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2511
    .line 2512
    .line 2513
    move-result v5

    .line 2514
    if-eqz v5, :cond_b

    .line 2515
    .line 2516
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2517
    .line 2518
    .line 2519
    move-result v0

    .line 2520
    shl-int/lit8 v5, v0, 0x1

    .line 2521
    .line 2522
    shr-int/lit8 v0, v0, 0x1f

    .line 2523
    .line 2524
    xor-int/2addr v0, v5

    .line 2525
    invoke-virtual {v7, v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2526
    .line 2527
    .line 2528
    goto/16 :goto_a

    .line 2529
    .line 2530
    :pswitch_7b
    move v3, v4

    .line 2531
    move v4, v5

    .line 2532
    move v5, v15

    .line 2533
    const/16 v19, 0x0

    .line 2534
    .line 2535
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2536
    .line 2537
    .line 2538
    move-result v5

    .line 2539
    if-eqz v5, :cond_b

    .line 2540
    .line 2541
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2542
    .line 2543
    .line 2544
    move-result-wide v8

    .line 2545
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 2546
    .line 2547
    .line 2548
    goto/16 :goto_a

    .line 2549
    .line 2550
    :pswitch_7c
    move v3, v4

    .line 2551
    move v4, v5

    .line 2552
    move v5, v15

    .line 2553
    const/16 v19, 0x0

    .line 2554
    .line 2555
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2556
    .line 2557
    .line 2558
    move-result v5

    .line 2559
    if-eqz v5, :cond_b

    .line 2560
    .line 2561
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2562
    .line 2563
    .line 2564
    move-result v0

    .line 2565
    invoke-virtual {v7, v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 2566
    .line 2567
    .line 2568
    goto/16 :goto_a

    .line 2569
    .line 2570
    :pswitch_7d
    move v3, v4

    .line 2571
    move v4, v5

    .line 2572
    move v5, v15

    .line 2573
    const/16 v19, 0x0

    .line 2574
    .line 2575
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2576
    .line 2577
    .line 2578
    move-result v5

    .line 2579
    if-eqz v5, :cond_b

    .line 2580
    .line 2581
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2582
    .line 2583
    .line 2584
    move-result v0

    .line 2585
    invoke-virtual {v7, v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeInt32(II)V

    .line 2586
    .line 2587
    .line 2588
    goto/16 :goto_a

    .line 2589
    .line 2590
    :pswitch_7e
    move v3, v4

    .line 2591
    move v4, v5

    .line 2592
    move v5, v15

    .line 2593
    const/16 v19, 0x0

    .line 2594
    .line 2595
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2596
    .line 2597
    .line 2598
    move-result v5

    .line 2599
    if-eqz v5, :cond_b

    .line 2600
    .line 2601
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2602
    .line 2603
    .line 2604
    move-result v0

    .line 2605
    invoke-virtual {v7, v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2606
    .line 2607
    .line 2608
    goto/16 :goto_a

    .line 2609
    .line 2610
    :pswitch_7f
    move v3, v4

    .line 2611
    move v4, v5

    .line 2612
    move v5, v15

    .line 2613
    const/16 v19, 0x0

    .line 2614
    .line 2615
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2616
    .line 2617
    .line 2618
    move-result v5

    .line 2619
    if-eqz v5, :cond_b

    .line 2620
    .line 2621
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2622
    .line 2623
    .line 2624
    move-result-object v0

    .line 2625
    check-cast v0, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 2626
    .line 2627
    invoke-virtual {v6, v11, v0}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)V

    .line 2628
    .line 2629
    .line 2630
    goto/16 :goto_a

    .line 2631
    .line 2632
    :pswitch_80
    move v3, v4

    .line 2633
    move v4, v5

    .line 2634
    move v5, v15

    .line 2635
    const/16 v19, 0x0

    .line 2636
    .line 2637
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2638
    .line 2639
    .line 2640
    move-result v5

    .line 2641
    if-eqz v5, :cond_b

    .line 2642
    .line 2643
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2644
    .line 2645
    .line 2646
    move-result-object v5

    .line 2647
    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/glance/appwidget/protobuf/Schema;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v8

    .line 2651
    check-cast v5, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 2652
    .line 2653
    invoke-virtual {v7, v11, v5, v8}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILandroidx/glance/appwidget/protobuf/AbstractMessageLite;Landroidx/glance/appwidget/protobuf/Schema;)V

    .line 2654
    .line 2655
    .line 2656
    goto/16 :goto_a

    .line 2657
    .line 2658
    :pswitch_81
    move v3, v4

    .line 2659
    move v4, v5

    .line 2660
    move v5, v15

    .line 2661
    const/16 v19, 0x0

    .line 2662
    .line 2663
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2664
    .line 2665
    .line 2666
    move-result v5

    .line 2667
    if-eqz v5, :cond_b

    .line 2668
    .line 2669
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2670
    .line 2671
    .line 2672
    move-result-object v0

    .line 2673
    invoke-static {v11, v0, v6}, Landroidx/glance/appwidget/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 2674
    .line 2675
    .line 2676
    goto/16 :goto_a

    .line 2677
    .line 2678
    :pswitch_82
    move v3, v4

    .line 2679
    move v4, v5

    .line 2680
    move v5, v15

    .line 2681
    const/16 v19, 0x0

    .line 2682
    .line 2683
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2684
    .line 2685
    .line 2686
    move-result v5

    .line 2687
    if-eqz v5, :cond_b

    .line 2688
    .line 2689
    sget-object v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2690
    .line 2691
    invoke-virtual {v0, v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 2692
    .line 2693
    .line 2694
    move-result v0

    .line 2695
    invoke-virtual {v7, v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBool(IZ)V

    .line 2696
    .line 2697
    .line 2698
    goto/16 :goto_a

    .line 2699
    .line 2700
    :pswitch_83
    move v3, v4

    .line 2701
    move v4, v5

    .line 2702
    move v5, v15

    .line 2703
    const/16 v19, 0x0

    .line 2704
    .line 2705
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2706
    .line 2707
    .line 2708
    move-result v5

    .line 2709
    if-eqz v5, :cond_b

    .line 2710
    .line 2711
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2712
    .line 2713
    .line 2714
    move-result v0

    .line 2715
    invoke-virtual {v7, v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 2716
    .line 2717
    .line 2718
    goto/16 :goto_a

    .line 2719
    .line 2720
    :pswitch_84
    move v3, v4

    .line 2721
    move v4, v5

    .line 2722
    move v5, v15

    .line 2723
    const/16 v19, 0x0

    .line 2724
    .line 2725
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2726
    .line 2727
    .line 2728
    move-result v5

    .line 2729
    if-eqz v5, :cond_b

    .line 2730
    .line 2731
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2732
    .line 2733
    .line 2734
    move-result-wide v8

    .line 2735
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 2736
    .line 2737
    .line 2738
    goto/16 :goto_a

    .line 2739
    .line 2740
    :pswitch_85
    move v3, v4

    .line 2741
    move v4, v5

    .line 2742
    move v5, v15

    .line 2743
    const/16 v19, 0x0

    .line 2744
    .line 2745
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2746
    .line 2747
    .line 2748
    move-result v5

    .line 2749
    if-eqz v5, :cond_b

    .line 2750
    .line 2751
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2752
    .line 2753
    .line 2754
    move-result v0

    .line 2755
    invoke-virtual {v7, v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeInt32(II)V

    .line 2756
    .line 2757
    .line 2758
    goto :goto_a

    .line 2759
    :pswitch_86
    move v3, v4

    .line 2760
    move v4, v5

    .line 2761
    move v5, v15

    .line 2762
    const/16 v19, 0x0

    .line 2763
    .line 2764
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2765
    .line 2766
    .line 2767
    move-result v5

    .line 2768
    if-eqz v5, :cond_b

    .line 2769
    .line 2770
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2771
    .line 2772
    .line 2773
    move-result-wide v8

    .line 2774
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 2775
    .line 2776
    .line 2777
    goto :goto_a

    .line 2778
    :pswitch_87
    move v3, v4

    .line 2779
    move v4, v5

    .line 2780
    move v5, v15

    .line 2781
    const/16 v19, 0x0

    .line 2782
    .line 2783
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2784
    .line 2785
    .line 2786
    move-result v5

    .line 2787
    if-eqz v5, :cond_b

    .line 2788
    .line 2789
    invoke-virtual {v14, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2790
    .line 2791
    .line 2792
    move-result-wide v8

    .line 2793
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64(JI)V

    .line 2794
    .line 2795
    .line 2796
    goto :goto_a

    .line 2797
    :pswitch_88
    move v3, v4

    .line 2798
    move v4, v5

    .line 2799
    move v5, v15

    .line 2800
    const/16 v19, 0x0

    .line 2801
    .line 2802
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2803
    .line 2804
    .line 2805
    move-result v5

    .line 2806
    if-eqz v5, :cond_b

    .line 2807
    .line 2808
    sget-object v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2809
    .line 2810
    invoke-virtual {v0, v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 2811
    .line 2812
    .line 2813
    move-result v0

    .line 2814
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2815
    .line 2816
    .line 2817
    move-result v0

    .line 2818
    invoke-virtual {v7, v11, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed32(II)V

    .line 2819
    .line 2820
    .line 2821
    goto :goto_a

    .line 2822
    :pswitch_89
    move v3, v4

    .line 2823
    move v4, v5

    .line 2824
    move v5, v15

    .line 2825
    const/16 v19, 0x0

    .line 2826
    .line 2827
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    .line 2828
    .line 2829
    .line 2830
    move-result v5

    .line 2831
    if-eqz v5, :cond_b

    .line 2832
    .line 2833
    sget-object v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2834
    .line 2835
    invoke-virtual {v0, v8, v9, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 2836
    .line 2837
    .line 2838
    move-result-wide v8

    .line 2839
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2840
    .line 2841
    .line 2842
    move-result-wide v8

    .line 2843
    invoke-virtual {v7, v8, v9, v11}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeFixed64(JI)V

    .line 2844
    .line 2845
    .line 2846
    :cond_b
    :goto_a
    add-int/lit8 v2, v2, 0x3

    .line 2847
    .line 2848
    move-object/from16 v0, p0

    .line 2849
    .line 2850
    move v5, v4

    .line 2851
    move/from16 v11, v18

    .line 2852
    .line 2853
    move/from16 v4, v19

    .line 2854
    .line 2855
    move/from16 v15, v20

    .line 2856
    .line 2857
    move/from16 v14, v21

    .line 2858
    .line 2859
    move/from16 v8, v24

    .line 2860
    .line 2861
    goto/16 :goto_2

    .line 2862
    .line 2863
    :cond_c
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2864
    .line 2865
    .line 2866
    move-object v0, v1

    .line 2867
    check-cast v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 2868
    .line 2869
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 2870
    .line 2871
    invoke-virtual {v0, v6}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 2872
    .line 2873
    .line 2874
    return-void

    .line 2875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2876
    .line 2877
    .line 2878
    .line 2879
    .line 2880
    .line 2881
    .line 2882
    .line 2883
    .line 2884
    .line 2885
    .line 2886
    .line 2887
    .line 2888
    .line 2889
    .line 2890
    .line 2891
    .line 2892
    .line 2893
    .line 2894
    .line 2895
    .line 2896
    .line 2897
    .line 2898
    .line 2899
    .line 2900
    .line 2901
    .line 2902
    .line 2903
    .line 2904
    .line 2905
    .line 2906
    .line 2907
    .line 2908
    .line 2909
    .line 2910
    .line 2911
    .line 2912
    .line 2913
    .line 2914
    .line 2915
    .line 2916
    .line 2917
    .line 2918
    .line 2919
    .line 2920
    .line 2921
    .line 2922
    .line 2923
    .line 2924
    .line 2925
    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    .line 2932
    .line 2933
    .line 2934
    .line 2935
    .line 2936
    .line 2937
    .line 2938
    .line 2939
    .line 2940
    .line 2941
    .line 2942
    .line 2943
    .line 2944
    .line 2945
    .line 2946
    .line 2947
    .line 2948
    .line 2949
    .line 2950
    .line 2951
    .line 2952
    .line 2953
    .line 2954
    .line 2955
    .line 2956
    .line 2957
    .line 2958
    .line 2959
    .line 2960
    .line 2961
    .line 2962
    .line 2963
    .line 2964
    .line 2965
    .line 2966
    .line 2967
    .line 2968
    .line 2969
    .line 2970
    .line 2971
    .line 2972
    .line 2973
    .line 2974
    .line 2975
    .line 2976
    .line 2977
    .line 2978
    .line 2979
    .line 2980
    .line 2981
    .line 2982
    .line 2983
    .line 2984
    .line 2985
    .line 2986
    .line 2987
    .line 2988
    .line 2989
    .line 2990
    .line 2991
    .line 2992
    .line 2993
    .line 2994
    .line 2995
    .line 2996
    .line 2997
    .line 2998
    .line 2999
    .line 3000
    .line 3001
    .line 3002
    .line 3003
    .line 3004
    .line 3005
    .line 3006
    .line 3007
    .line 3008
    .line 3009
    .line 3010
    .line 3011
    .line 3012
    .line 3013
    .line 3014
    .line 3015
    .line 3016
    .line 3017
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method
